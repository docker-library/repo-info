## `drupal:php8.4-fpm`

```console
$ docker pull drupal@sha256:649a795ba7cd58d6515ed3c6a2fc7d873753f0221e45b6117fa4a7c63e0afc8a
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
	-	linux; amd64
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

### `drupal:php8.4-fpm` - linux; amd64

```console
$ docker pull drupal@sha256:406157578cd490746eb2e5c94ad6a778a71f45ce8c65875d96433a2462abcd55
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.0 MB (211035666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2156988b097de5c87ac0ce62debacd4b9d2e8d47ff5b188627f92b4642a289d`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:18:23 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 24 Nov 2026 04:18:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 24 Nov 2026 04:18:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:18:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 24 Nov 2026 04:18:39 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 24 Nov 2026 04:18:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:18:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:18:39 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 24 Nov 2026 04:18:39 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Tue, 24 Nov 2026 04:18:39 GMT
ENV PHP_VERSION=8.4.28
# Tue, 24 Nov 2026 04:18:39 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Tue, 24 Nov 2026 04:18:39 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Tue, 24 Nov 2026 04:22:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 24 Nov 2026 04:22:08 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:24:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 24 Nov 2026 04:24:42 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:24:42 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 24 Nov 2026 04:24:42 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 24 Nov 2026 04:24:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Nov 2026 04:24:42 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 04:24:42 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 24 Nov 2026 04:24:42 GMT
STOPSIGNAL SIGQUIT
# Tue, 24 Nov 2026 04:24:42 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 24 Nov 2026 04:24:42 GMT
CMD ["php-fpm"]
# Tue, 24 Nov 2026 05:22:56 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:22:56 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Tue, 24 Nov 2026 05:22:56 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 05:22:56 GMT
ENV DRUPAL_VERSION=11.4.13
# Tue, 24 Nov 2026 05:22:56 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 24 Nov 2026 05:22:56 GMT
WORKDIR /opt/drupal
# Tue, 24 Nov 2026 05:23:02 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 24 Nov 2026 05:23:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec84627466425733e15486983d7c9562082bc7e39c6e39f36fc72182090b66ce`  
		Last Modified: Tue, 24 Nov 2026 04:21:51 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73ee7b12ebfd9f004e75d6656eec881d8fcd3d79bc19059a69dcfcec79090fb5`  
		Last Modified: Tue, 24 Nov 2026 04:21:54 GMT  
		Size: 117.8 MB (117839080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3507836ac28045b5090dfb82e1c75846cf2d381a9a7c38d36069e972d11ab2f1`  
		Last Modified: Tue, 24 Nov 2026 04:21:51 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6d6e29baeb1c475ef669327a1942cc6aaa0e7e562e7b7ea89a35ba16d41b808`  
		Last Modified: Tue, 24 Nov 2026 04:24:52 GMT  
		Size: 14.1 MB (14059371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2975424d14f397f7d0b7c0a2b4e4e2119dfb41ca1f30aa4911dec5ee59bffbb`  
		Last Modified: Tue, 24 Nov 2026 04:24:52 GMT  
		Size: 483.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1be9e87f4f87ef28fb823eab4540793feacc8bb7a3ef321b2f8d5ed4991cd4bb`  
		Last Modified: Tue, 24 Nov 2026 04:24:53 GMT  
		Size: 13.9 MB (13888690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ec12eb8e688b25a28e401cd42289764105d78a15a2e9226bd477f18d4ba94b6`  
		Last Modified: Tue, 24 Nov 2026 04:24:52 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac00860762005af850b369a2b82d1fde48598882ab62bd92d05f1eab2d59f1b4`  
		Last Modified: Tue, 24 Nov 2026 04:24:53 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40db6ccacdea8a54b002ea49e9d683066f10e574a1463271066d88a7cfda4fac`  
		Last Modified: Tue, 24 Nov 2026 04:24:53 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbe3d8098d4465967a052de5dd7e54263a8ba0b2c6f4ae869dc6993d8f678562`  
		Last Modified: Tue, 24 Nov 2026 04:24:54 GMT  
		Size: 9.3 KB (9267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cae2e8d0c784bfb670de1ee0035ee8723cd824dcd8eef89795abd7abd9365c5`  
		Last Modified: Tue, 24 Nov 2026 05:23:20 GMT  
		Size: 10.8 MB (10793355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84fd05bc4a83c4ba01d9a8dc68544a1e4d58c4acecf20a4475e35980b9db1a87`  
		Last Modified: Tue, 24 Nov 2026 05:23:20 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5df1a394529ebf14b9450d0d4a2020d144508ef6a76d524f55994287e2b566a0`  
		Last Modified: Tue, 24 Nov 2026 05:23:20 GMT  
		Size: 879.8 KB (879792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c825cdde2b4bb9b0dd4f73d8d81f56bd061cbbdf08063ffae040992298327613`  
		Last Modified: Tue, 24 Nov 2026 05:23:20 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fc14a5c4acd254fdbf5e021627886544496e37457c265f9b7fe0444eb07ca53`  
		Last Modified: Tue, 24 Nov 2026 05:23:21 GMT  
		Size: 23.7 MB (23719593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.4-fpm` - unknown; unknown

```console
$ docker pull drupal@sha256:72c768974709e02bd4616eebed76689ca0366902abedf9d98b2ba9cdb4b638f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6978492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9228b952540cc1c8e6fbe0b006f526fc74cac930863aa2b7dc41f6192277998f`

```dockerfile
```

-	Layers:
	-	`sha256:1dcdbbf6e97610ccd9fb675c0d96a380e88faecf806ee87bb56fee86f7ee4212`  
		Last Modified: Tue, 24 Nov 2026 05:23:20 GMT  
		Size: 6.9 MB (6942623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:94e2b65ddbeca85827bc7c2d964397aade036b48031ebeded9df563b1ef74745`  
		Last Modified: Tue, 24 Nov 2026 05:23:19 GMT  
		Size: 35.9 KB (35869 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.4-fpm` - linux; arm variant v7

```console
$ docker pull drupal@sha256:06d619fc363e0d02ee093d52d31ef845406ca9841a8bac64a4b5807b82929b23
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **169.5 MB (169478135 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4e5dd06939884a76ed281386b24caf6c0d45a0e293f6d38f2dbd4264e4b2fbe`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:28:41 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 24 Nov 2026 04:29:02 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 24 Nov 2026 04:29:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:29:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 24 Nov 2026 04:29:02 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 24 Nov 2026 04:29:02 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:29:02 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:29:02 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 24 Nov 2026 04:29:02 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Tue, 24 Nov 2026 04:29:02 GMT
ENV PHP_VERSION=8.4.28
# Tue, 24 Nov 2026 04:29:02 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Tue, 24 Nov 2026 04:29:02 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Tue, 24 Nov 2026 04:36:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 24 Nov 2026 04:36:17 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:39:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 24 Nov 2026 04:39:02 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:39:02 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 24 Nov 2026 04:39:02 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 24 Nov 2026 04:39:02 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Nov 2026 04:39:02 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 04:39:02 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 24 Nov 2026 04:39:02 GMT
STOPSIGNAL SIGQUIT
# Tue, 24 Nov 2026 04:39:02 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 24 Nov 2026 04:39:02 GMT
CMD ["php-fpm"]
# Tue, 24 Nov 2026 06:24:30 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 06:24:30 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Tue, 24 Nov 2026 06:24:30 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 06:24:30 GMT
ENV DRUPAL_VERSION=11.4.13
# Tue, 24 Nov 2026 06:24:30 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 24 Nov 2026 06:24:30 GMT
WORKDIR /opt/drupal
# Tue, 24 Nov 2026 06:24:37 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 24 Nov 2026 06:24:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:c720f3b38fb800619bf9fa0d867869c69ddd3a3f80e5316158c99a0cbe84f60f`  
		Last Modified: Tue, 24 Nov 2026 03:40:47 GMT  
		Size: 26.3 MB (26262460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf3a9ae8f98a27f51b397a66e42d0088dd75f5f00fdda11eeb716d168c44276d`  
		Last Modified: Tue, 24 Nov 2026 04:32:43 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4857bf97a7a8f14f4e10d4cfc6c77aeff42553d1053e7d29ffbbd28f991ae603`  
		Last Modified: Tue, 24 Nov 2026 04:32:45 GMT  
		Size: 86.3 MB (86257046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:883fd99d687754b2bf51f8f6081259b0bccc9cd63895aa2a9ee65952e3d7a0eb`  
		Last Modified: Tue, 24 Nov 2026 04:32:42 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf5e713b4755786409ca0176ca01d58d5564e24b0c5e5d1f1511406aa1436c9`  
		Last Modified: Tue, 24 Nov 2026 04:39:12 GMT  
		Size: 14.1 MB (14056687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14a85c16fc27bc3950cc51c696ce4faa0846501a06b5ed9bae97f446e58b6c2c`  
		Last Modified: Tue, 24 Nov 2026 04:39:12 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:143fb95af8eafdda6d03bb49375e9096ca116baf240aa6b8fb6b45d6bfc38007`  
		Last Modified: Tue, 24 Nov 2026 04:39:12 GMT  
		Size: 11.7 MB (11719466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6a1519227120efa2f70f3f301357cc039f24947ee7d3f6f5338834f2e7310d7`  
		Last Modified: Tue, 24 Nov 2026 04:39:12 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccd9efedab2a84ee1565343df1ea8ac59d5ae5d1c3ee2ad9e04b116591466a18`  
		Last Modified: Tue, 24 Nov 2026 04:39:13 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:494dba2109f1b701bc64a9720befb3504bff4d662939054b0984f60ac6a65ee3`  
		Last Modified: Tue, 24 Nov 2026 04:39:13 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:666e83a38cc1ed156de582ef7c80be431e07ae1e06ffc4d588fa9f0e7d022c89`  
		Last Modified: Tue, 24 Nov 2026 04:39:14 GMT  
		Size: 9.3 KB (9267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3bcda8300bc831b4c79d9bf53532da683af9230feb039caaa5353ae34c00098`  
		Last Modified: Tue, 24 Nov 2026 06:24:55 GMT  
		Size: 6.6 MB (6569401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec5d9e7c47db135432c23892adb1876cec82a2e96c45913d8e183c29286f9d5a`  
		Last Modified: Tue, 24 Nov 2026 06:24:54 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f046cfdec3e8071f12fa4d8e2bd8047bc7f670df8174b6b8b8cd7a47bfd403e8`  
		Last Modified: Tue, 24 Nov 2026 06:24:54 GMT  
		Size: 879.8 KB (879793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d07ad309241d0b3c057d18300c2c0d88af2a3a4ecaab994233b0539d9742d5dd`  
		Last Modified: Tue, 24 Nov 2026 06:24:54 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68667504b6e2e661489363d92af1fac7511d9af70e2b9c3de31e4932493fc87b`  
		Last Modified: Tue, 24 Nov 2026 06:24:56 GMT  
		Size: 23.7 MB (23719683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.4-fpm` - unknown; unknown

```console
$ docker pull drupal@sha256:97522f2db842f290be325ec136f22f078307f620d5dc2102ce9c094fe46dbd6f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.8 MB (6782767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e2ab823ef43bf334843e86e8cb96d852231708bfb1a464aa6e38473fd3236cb`

```dockerfile
```

-	Layers:
	-	`sha256:9c6bbe0bb0911f2a145b24db9ed4970f9bec4f33160b44742d056599e14d415b`  
		Last Modified: Tue, 24 Nov 2026 06:24:55 GMT  
		Size: 6.7 MB (6746750 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb42b7628470183eb72f7622df3965199ce44fb1864a1ee53112e1c4396687c5`  
		Last Modified: Tue, 24 Nov 2026 06:24:54 GMT  
		Size: 36.0 KB (36017 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.4-fpm` - linux; arm64 variant v8

```console
$ docker pull drupal@sha256:818b37e07a48e1e56806d3b6ddebd2d0cbde74e16d38c2f97c862d00ef1ffaf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.9 MB (201903769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eafaacf2a80cf618fc7a032f020718d3eff493314a3e7cc711fdbc5227d9a33c`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:19:03 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 24 Nov 2026 04:19:19 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 24 Nov 2026 04:19:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:19:19 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 24 Nov 2026 04:19:19 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 24 Nov 2026 04:19:19 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:19:19 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:19:19 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 24 Nov 2026 04:19:19 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Tue, 24 Nov 2026 04:19:19 GMT
ENV PHP_VERSION=8.4.28
# Tue, 24 Nov 2026 04:19:19 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Tue, 24 Nov 2026 04:19:19 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Tue, 24 Nov 2026 04:23:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 24 Nov 2026 04:23:14 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:26:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 24 Nov 2026 04:26:16 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:26:16 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 24 Nov 2026 04:26:16 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 24 Nov 2026 04:26:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Nov 2026 04:26:16 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 04:26:17 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 24 Nov 2026 04:26:17 GMT
STOPSIGNAL SIGQUIT
# Tue, 24 Nov 2026 04:26:17 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 24 Nov 2026 04:26:17 GMT
CMD ["php-fpm"]
# Tue, 24 Nov 2026 05:35:00 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:35:00 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Tue, 24 Nov 2026 05:35:00 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 05:35:00 GMT
ENV DRUPAL_VERSION=11.4.13
# Tue, 24 Nov 2026 05:35:00 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 24 Nov 2026 05:35:00 GMT
WORKDIR /opt/drupal
# Tue, 24 Nov 2026 05:35:06 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 24 Nov 2026 05:35:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:48fb00926fe468d83ca04ee6775f36350d17e0f328dfcb03aadb5de0c52ae3f6`  
		Last Modified: Tue, 24 Nov 2026 03:40:29 GMT  
		Size: 30.2 MB (30198034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55d06a63a8a67f886ac60a26305aff67aae0c72b38bbb0d3ed9c57bdd815c645`  
		Last Modified: Tue, 24 Nov 2026 04:22:56 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f63861a63c47ecae1b84200c14d88f4232e82e39d93cbda0ae988f317ff11277`  
		Last Modified: Tue, 24 Nov 2026 04:23:00 GMT  
		Size: 110.2 MB (110179797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d4a59709138579cc83c613936874092b7dabc12b31f085d5a2b2b4adc44b784`  
		Last Modified: Tue, 24 Nov 2026 04:22:56 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79528eef1d060244b1b13edfa5f6586e6c5785f6d7ffb1b546a04c917d95d2d4`  
		Last Modified: Tue, 24 Nov 2026 04:26:28 GMT  
		Size: 14.1 MB (14058925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ea0d4019a2ad654a0899c095a8f68a3ff57b855d4e3f40bb59727e9afd75fbc`  
		Last Modified: Tue, 24 Nov 2026 04:26:27 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7376caee84deac65ef922fd14657ad280b0af8092d441df4869d9c2b91a8c810`  
		Last Modified: Tue, 24 Nov 2026 04:26:28 GMT  
		Size: 13.5 MB (13549826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b1b322786224a0de84d6b12df91a3907409774c6dca144d68292ce76cadda21`  
		Last Modified: Tue, 24 Nov 2026 04:26:27 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c25058283cabfded685e19547c73091ed391d82797ed2c64f9332de9c2c0913`  
		Last Modified: Tue, 24 Nov 2026 04:26:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44abaf47ba69824ff40bc8f2f759cc7617878c04039f8094d6280810dfb9fdbd`  
		Last Modified: Tue, 24 Nov 2026 04:26:28 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8d02b65d41fb3536c7fb75ef122ab68c735ec9e70f7bf580b3d676f6b06c241`  
		Last Modified: Tue, 24 Nov 2026 04:26:29 GMT  
		Size: 9.3 KB (9266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68756f2579a9426ed545ba8d96efd49489c7acbd909185af0fbe87b06726fbcc`  
		Last Modified: Tue, 24 Nov 2026 05:35:24 GMT  
		Size: 9.3 MB (9304267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:121430b1a1edb3edda5f3fb92accce79476e2e59b7592af80f7aacbb420afd5c`  
		Last Modified: Tue, 24 Nov 2026 05:35:24 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:473ec471774d2ff376bb174a9ce7ba8a206a383fa67e88a233c9ee72292591f8`  
		Last Modified: Tue, 24 Nov 2026 05:35:24 GMT  
		Size: 879.8 KB (879792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73ad36a2b29ba60423bad467dd5c1743585a776c162d2c7769c205de059b899d`  
		Last Modified: Tue, 24 Nov 2026 05:35:24 GMT  
		Size: 113.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1192bbab5acebce80f897f684e8ca90b2bf4b63c969dde7804a4fa2c835e4795`  
		Last Modified: Tue, 24 Nov 2026 05:35:25 GMT  
		Size: 23.7 MB (23719531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.4-fpm` - unknown; unknown

```console
$ docker pull drupal@sha256:c8924018f75286342943921c61b999e665e8754033dab244f62773824f7d76fb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7076118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb21dccaaf2dced007b6c483c53ef5b11ba109031e6abdb2c3fc16d72d0251d5`

```dockerfile
```

-	Layers:
	-	`sha256:5c51e06f402848b63d72ec11d3f820a8ce3bf7017d2070e26808bc8cf605febb`  
		Last Modified: Tue, 24 Nov 2026 05:35:24 GMT  
		Size: 7.0 MB (7040047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dbfba4222f0d1b8771d3f8b0616a8e710a2be5732e2056207991a1ce779eda8a`  
		Last Modified: Tue, 24 Nov 2026 05:35:23 GMT  
		Size: 36.1 KB (36071 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.4-fpm` - linux; 386

```console
$ docker pull drupal@sha256:2210c4e2485da2763ab04ae5de24a80b3cfa5d0483f39dd05e409fd9d9bbf205
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.9 MB (208877674 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c83f78a4bd7c99651c9cae0358f7963f3a3e1158acfe488ef3eb163f8829dcea`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:22:55 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 24 Nov 2026 04:23:12 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 24 Nov 2026 04:23:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:23:12 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 24 Nov 2026 04:23:13 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 24 Nov 2026 04:23:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:23:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:23:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 24 Nov 2026 04:23:13 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Tue, 24 Nov 2026 04:23:13 GMT
ENV PHP_VERSION=8.4.28
# Tue, 24 Nov 2026 04:23:13 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Tue, 24 Nov 2026 04:23:13 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Tue, 24 Nov 2026 04:23:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 24 Nov 2026 04:23:21 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:26:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 24 Nov 2026 04:26:06 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:26:06 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 24 Nov 2026 04:26:06 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 24 Nov 2026 04:26:06 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Nov 2026 04:26:06 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 04:26:06 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 24 Nov 2026 04:26:06 GMT
STOPSIGNAL SIGQUIT
# Tue, 24 Nov 2026 04:26:06 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 24 Nov 2026 04:26:06 GMT
CMD ["php-fpm"]
# Tue, 24 Nov 2026 05:27:09 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:27:09 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Tue, 24 Nov 2026 05:27:09 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 05:27:09 GMT
ENV DRUPAL_VERSION=11.4.13
# Tue, 24 Nov 2026 05:27:09 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 24 Nov 2026 05:27:09 GMT
WORKDIR /opt/drupal
# Tue, 24 Nov 2026 05:27:16 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 24 Nov 2026 05:27:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:7fb9e5f471a439ab129e9fe258623bccb6c4da1d0313890202b55fd6b5839533`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 31.4 MB (31357919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77ac62d02e743dc57e20eb59c53e397e4b8ca35e98a7afa24d79e39fdaf9529d`  
		Last Modified: Tue, 24 Nov 2026 04:26:25 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac9919aa3623a4c248819406bf753068e4b8caf1dc4185029d55eac7ec23edc0`  
		Last Modified: Tue, 24 Nov 2026 04:26:29 GMT  
		Size: 116.1 MB (116139284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be3f9e9b50fda7cf63a6ae4fe25ac5523c67d6bc8587bb7c63770a57963b59a5`  
		Last Modified: Tue, 24 Nov 2026 04:26:25 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c30abea95373231f04cb9764f66c5d9d390949f46097648979c09f9a4af21791`  
		Last Modified: Tue, 24 Nov 2026 04:26:26 GMT  
		Size: 14.1 MB (14058220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c9ce55fe07294e939f8eeaf1f56d2b927863dc36af8b68b040eb1a28e6baadb`  
		Last Modified: Tue, 24 Nov 2026 04:26:27 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07ce470a55f8cb5a440d37f5ccae822d6c66be735c442c80601fa4b9f97e7ec5`  
		Last Modified: Tue, 24 Nov 2026 04:26:28 GMT  
		Size: 14.3 MB (14261803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade6d7b98305bf5175b0d8bfcd701863532b3c9f435c2872368cb2d5419836ec`  
		Last Modified: Tue, 24 Nov 2026 04:26:28 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:627f53ce928e0b85007e35eb1d6ad3449a193b0b011b4f0b15245c57b3987982`  
		Last Modified: Tue, 24 Nov 2026 04:26:28 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c12664fcd66e5da401c583126e108fad3b4ac5e08c0d9ec67b36e7b0a55a1d30`  
		Last Modified: Tue, 24 Nov 2026 04:26:29 GMT  
		Size: 241.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0800fad61a52a5b765008d6d7c46cd297df622343a03962f063b485b5801e7f4`  
		Last Modified: Tue, 24 Nov 2026 04:26:29 GMT  
		Size: 9.3 KB (9267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:397ac2b6064e0aad5cccebac55057e5dc8520b6a682d3402fc8ea4e506037f32`  
		Last Modified: Tue, 24 Nov 2026 05:27:33 GMT  
		Size: 8.4 MB (8447782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77036b32d3bcb6c33602b19a2b7293e35d3728a5d8b1ae46ab73aafb328328b1`  
		Last Modified: Tue, 24 Nov 2026 05:27:32 GMT  
		Size: 311.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48c33113016811d9f2cf0b7706ce59b64a27491357c71c1b5823e2862f98b84f`  
		Last Modified: Tue, 24 Nov 2026 05:27:32 GMT  
		Size: 879.8 KB (879789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:631afd9688c633f3c2e6ac9ffad090c2b9a2925000601548e390d78af64cec0d`  
		Last Modified: Tue, 24 Nov 2026 05:27:32 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dfee742d34fa71660cc5d5484acb7e6cbfde1f46ff82030ef15b9f2eec8b618`  
		Last Modified: Tue, 24 Nov 2026 05:27:34 GMT  
		Size: 23.7 MB (23719281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.4-fpm` - unknown; unknown

```console
$ docker pull drupal@sha256:ed471ff6be383788dc99789c4a62e6ca9a2ea32d25308b08d0eaa3ba26af70a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6952090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75d478c567e57e07511236cd5d1bf9fc5dabd2917931674294abd2cc4547d868`

```dockerfile
```

-	Layers:
	-	`sha256:b50b0d26d83a61248133c60e242023ce1e19f64df38cd9d75de313fb29752e48`  
		Last Modified: Tue, 24 Nov 2026 05:27:32 GMT  
		Size: 6.9 MB (6916291 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd64c077e4254148451c2e2fdbb562590476da6279372afb670602a28e1bdbd2`  
		Last Modified: Tue, 24 Nov 2026 05:27:32 GMT  
		Size: 35.8 KB (35799 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.4-fpm` - linux; ppc64le

```console
$ docker pull drupal@sha256:df93c9b4e1807a5a0cf284779eb5182422f19676dffe7113f40a0f649529601c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.3 MB (205280371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27e62f99ce80f8fc3b07ceb2c43a2cb13c4740bbe981dca00306f1cd9543902e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:51:14 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 05 Nov 2026 07:51:49 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 05 Nov 2026 07:51:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:51:49 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 07:51:49 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 07:51:49 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:51:49 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:51:49 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 07:51:49 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 05 Nov 2026 07:51:49 GMT
ENV PHP_VERSION=8.4.28
# Thu, 05 Nov 2026 07:51:49 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Thu, 05 Nov 2026 07:51:49 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Thu, 19 Nov 2026 15:08:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 19 Nov 2026 15:08:58 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:18:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 15:18:57 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:18:57 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 15:18:58 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 15:18:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:18:58 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:18:59 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 15:18:59 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 15:18:59 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 15:18:59 GMT
CMD ["php-fpm"]
# Thu, 19 Nov 2026 21:20:55 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 19 Nov 2026 21:20:58 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 19 Nov 2026 21:20:59 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 21:21:00 GMT
ENV DRUPAL_VERSION=11.4.13
# Thu, 19 Nov 2026 21:21:00 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 19 Nov 2026 21:21:00 GMT
WORKDIR /opt/drupal
# Thu, 19 Nov 2026 21:31:35 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Thu, 19 Nov 2026 21:31:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c7268b190588f776dc9e7d85c3d3e7cd51ab40a5eb161341e7cafba8aa8db15`  
		Last Modified: Thu, 05 Nov 2026 07:57:24 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:531972258920b8490e62ebec510a08a421787308f63d34f6bc4d9b6b8d8abc78`  
		Last Modified: Thu, 05 Nov 2026 07:57:28 GMT  
		Size: 109.6 MB (109611291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b985c27ef371a30298e699042d2ad9aefa1c4153215a3857a6bb042ad47cde`  
		Last Modified: Thu, 05 Nov 2026 07:57:24 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff47c08a324b525741b1ab19f93b70a4f0f5debfa24a9dedb1f57d2a5b34e13a`  
		Last Modified: Thu, 19 Nov 2026 15:14:11 GMT  
		Size: 14.1 MB (14073392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc55fa133226d2be37f187e57f32710b4d8b5e8694f255cbd7257f6057e1022f`  
		Last Modified: Thu, 19 Nov 2026 15:14:10 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64bb4c3334935269f8c1342924210c2d5f8eba46b3710da0a7f99e4317588dcd`  
		Last Modified: Thu, 19 Nov 2026 15:19:23 GMT  
		Size: 14.5 MB (14500188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07afea04dc0577d697b20d8226a1a1c89d799ac23ded8723bdfdcf5893e23032`  
		Last Modified: Thu, 19 Nov 2026 15:19:23 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d42e87662ec2d4f60087cc842cb60cb808f862f2a39f1dd0bdc20fcba787343`  
		Last Modified: Thu, 19 Nov 2026 15:19:23 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807e30eb49d2c459ef7f7580dc4d39f22343117f5011698cebf6d169eaa582fc`  
		Last Modified: Thu, 19 Nov 2026 15:19:23 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef74070740e6485a8bcfe538d32c8e46c523bf97b2f89a0dbe13fc1fdd73c5c6`  
		Last Modified: Thu, 19 Nov 2026 15:19:24 GMT  
		Size: 9.3 KB (9275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ffc2030c5e5eaf0cf6067c188cfd775aeedeb84712939aab980cf938f0371f`  
		Last Modified: Thu, 19 Nov 2026 21:22:09 GMT  
		Size: 8.8 MB (8815226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3465d5586af0971bda80e9e1c1353de4dbbf210a48aaea62351e3f55ad036bfc`  
		Last Modified: Thu, 19 Nov 2026 21:22:09 GMT  
		Size: 317.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df39d625aef259a67a075a496356b673d75c03b236d2004b003ef17e7a4504fd`  
		Last Modified: Thu, 19 Nov 2026 21:22:09 GMT  
		Size: 879.8 KB (879797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb7e33c2ac7cdbd22c7056969c59ca1b5d33213d007866af548464c6ca6b6631`  
		Last Modified: Thu, 19 Nov 2026 21:22:09 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:056cda1c7862aef8d7817d64939f239d403ce73943df8358d0b33b2cb69ce2f1`  
		Last Modified: Thu, 19 Nov 2026 21:32:17 GMT  
		Size: 23.7 MB (23719192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.4-fpm` - unknown; unknown

```console
$ docker pull drupal@sha256:c3414d3a46ca42d31341d6e2d92162e5c96bf43cf799cd8461af5dd767c52296
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (6978810 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a44511dfbdd313a76066c8005c3dc92e8c92f64feffb16c2bd7045f78336d98`

```dockerfile
```

-	Layers:
	-	`sha256:d036c74fc3bd2f3ef92c88b44f7fd8d9ff86d18dd24785f8c1dd193ac1a073b9`  
		Last Modified: Fri, 20 Nov 2026 21:00:19 GMT  
		Size: 6.9 MB (6942864 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1451a30c4d5451d9a44dada6302b0e5bc8569280514a9957c9925b2d52f2a3fe`  
		Last Modified: Fri, 20 Nov 2026 21:00:19 GMT  
		Size: 35.9 KB (35946 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.4-fpm` - linux; riscv64

```console
$ docker pull drupal@sha256:d83c35813332aa266a9bd54e45b5842a6c03d290565f3adefbcfddb4c5a183cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.9 MB (233907220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d38512c0457903b140058703cf5e3cb94541243e710dcba3d18afc883334d81a`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793059200'
# Fri, 30 Oct 2026 23:55:10 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Fri, 30 Oct 2026 23:57:16 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 30 Oct 2026 23:57:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Fri, 30 Oct 2026 23:57:16 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 30 Oct 2026 23:57:17 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Fri, 30 Oct 2026 23:57:17 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Fri, 30 Oct 2026 23:57:17 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Fri, 30 Oct 2026 23:57:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Fri, 30 Oct 2026 23:57:17 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Fri, 30 Oct 2026 23:57:17 GMT
ENV PHP_VERSION=8.4.27
# Fri, 30 Oct 2026 23:57:17 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Fri, 30 Oct 2026 23:57:17 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Sat, 31 Oct 2026 07:20:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 31 Oct 2026 07:20:11 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 31 Oct 2026 10:19:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 31 Oct 2026 10:19:41 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 31 Oct 2026 10:19:41 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sat, 31 Oct 2026 10:19:42 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 31 Oct 2026 10:19:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 31 Oct 2026 10:19:42 GMT
WORKDIR /var/www/html
# Sat, 31 Oct 2026 10:19:43 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Sat, 31 Oct 2026 10:19:43 GMT
STOPSIGNAL SIGQUIT
# Sat, 31 Oct 2026 10:19:43 GMT
EXPOSE map[9000/tcp:{}]
# Sat, 31 Oct 2026 10:19:43 GMT
CMD ["php-fpm"]
# Wed, 04 Nov 2026 18:48:05 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 04 Nov 2026 18:48:05 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Wed, 04 Nov 2026 18:48:06 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Wed, 04 Nov 2026 18:48:06 GMT
ENV DRUPAL_VERSION=11.4.11
# Wed, 04 Nov 2026 18:48:06 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Wed, 04 Nov 2026 18:48:06 GMT
WORKDIR /opt/drupal
# Wed, 04 Nov 2026 19:42:34 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Wed, 04 Nov 2026 19:42:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:a81ae23cfcc12d03cee9e3704fa559c027af15fefe8c60924add8fd17e4c98c1`  
		Last Modified: Wed, 28 Oct 2026 18:39:27 GMT  
		Size: 28.3 MB (28345669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:308faa844a17024435a384738b946fe634eb003f73552debd9138a5ade8890c1`  
		Last Modified: Sat, 31 Oct 2026 00:59:45 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef30f1d6dd17dd75b1fea228d9d3c4083d2fb81fa539a838d60488eecfd56187`  
		Last Modified: Sat, 31 Oct 2026 01:00:13 GMT  
		Size: 146.6 MB (146579136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a343d1d5a63ef08db486d375ae7c6f3e31ace53c10bb304e378584154b0c59e7`  
		Last Modified: Sat, 31 Oct 2026 00:59:45 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19da6e196766af6d1499964709c38ffce434f5d4946dc73b0187f3b06338dde2`  
		Last Modified: Sat, 31 Oct 2026 08:19:58 GMT  
		Size: 14.0 MB (14025012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5925388a7239c6e176fabfa4521c34c993a89df773ca658cfd9da2ca78a74ca1`  
		Last Modified: Sat, 31 Oct 2026 08:19:53 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99f9949dabe658ea471963e18da0088a3bdc5b28c05f99ab505938ace2cb60b0`  
		Last Modified: Sat, 31 Oct 2026 10:22:45 GMT  
		Size: 13.3 MB (13324625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64e226699a3ec011e1a0118ec5cccc9aa0970a5c9e0657b31e587191f940f7a8`  
		Last Modified: Sat, 31 Oct 2026 10:22:43 GMT  
		Size: 2.5 KB (2456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:593d9abd6e10967ed2310c5fad94ea7ea89f93f5a5f2c11d78a85757526d8d97`  
		Last Modified: Sat, 31 Oct 2026 10:22:43 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:286c35d071c600b8dc2b15912e1f09e1f301c8a457073bf1b6fb0d64ee7c49a5`  
		Last Modified: Sat, 31 Oct 2026 10:22:43 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a2e28526521a06a515337ba083de8e711172c0754ffe1605130a2b4b845020d`  
		Last Modified: Sat, 31 Oct 2026 10:22:44 GMT  
		Size: 9.3 KB (9271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49c74b26cd2d6d4f3cb75a1e41dbf095e912e6cb374bb2b9abc43201239d13b5`  
		Last Modified: Wed, 04 Nov 2026 18:54:03 GMT  
		Size: 7.1 MB (7054192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9708973030ab48bc7520d540f5b72caedd9dcc4ff182c4731311fef13d0b7cd0`  
		Last Modified: Wed, 04 Nov 2026 18:54:01 GMT  
		Size: 317.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bff8a751eb1519af0905c21d65d64374ae638e1395d760c069575bbdde7686b`  
		Last Modified: Wed, 04 Nov 2026 18:54:01 GMT  
		Size: 876.2 KB (876210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03bd818f31baf825c2ae16aa1f978238f56da8fcd8020315fdf4191acfd3ecb2`  
		Last Modified: Wed, 04 Nov 2026 18:54:01 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d44ed71d33fa89c170115d1ad7285fcb8560dcac52eef7f80f403873387f98bf`  
		Last Modified: Wed, 04 Nov 2026 19:47:39 GMT  
		Size: 23.7 MB (23688741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.4-fpm` - unknown; unknown

```console
$ docker pull drupal@sha256:a5478de5157322d3b1b767537b71c81549b219eee402d4bb7cf70ced59cf2792
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.1 MB (7050451 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa1ed61c51bd58900dd2865afc9e2e4ee3ab69daf90a4711c53fe500a438bdb9`

```dockerfile
```

-	Layers:
	-	`sha256:fb755112b6e69967fd54c4df177942430fe8226aa2d27b9bb13ce7fe28472b28`  
		Last Modified: Wed, 04 Nov 2026 19:47:36 GMT  
		Size: 7.0 MB (7014505 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6b9eaeb43be0b448a45fc066ea9ad17d382051dd8d40810a7ed52ebbb47ab97`  
		Last Modified: Wed, 04 Nov 2026 19:47:34 GMT  
		Size: 35.9 KB (35946 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.4-fpm` - linux; s390x

```console
$ docker pull drupal@sha256:5c36949160ac68f6e19d727905ba881122d898358b8b1e89492b33386176de4e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **182.3 MB (182264283 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae93c590ccfa3fc6e4c21a05f7c18f21689c8c86e2b7e8222a3b6a75b6dae669`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:16:16 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 05 Nov 2026 07:16:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 05 Nov 2026 07:16:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:16:29 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 07:16:29 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 07:16:29 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:16:29 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:16:29 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 07:16:29 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 05 Nov 2026 07:16:29 GMT
ENV PHP_VERSION=8.4.28
# Thu, 05 Nov 2026 07:16:29 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Thu, 05 Nov 2026 07:16:29 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Thu, 19 Nov 2026 14:35:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 19 Nov 2026 14:35:41 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:42:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:42:51 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:42:51 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:42:52 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:42:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:42:52 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:42:52 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 14:42:52 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 14:42:52 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 14:42:52 GMT
CMD ["php-fpm"]
# Thu, 19 Nov 2026 16:12:24 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 19 Nov 2026 16:12:24 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 19 Nov 2026 16:12:24 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 16:12:24 GMT
ENV DRUPAL_VERSION=11.4.13
# Thu, 19 Nov 2026 16:12:24 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 19 Nov 2026 16:12:24 GMT
WORKDIR /opt/drupal
# Thu, 19 Nov 2026 16:14:17 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Thu, 19 Nov 2026 16:14:17 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dc90f18d381c1c190bbd05548eb25d4919b5bcb4150305b2066bb6f6a0eac1f`  
		Last Modified: Thu, 05 Nov 2026 07:19:51 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6064727183bb56538cc6371082e5cf86589847304ddb2ccb1d606fa7a75240e2`  
		Last Modified: Thu, 05 Nov 2026 07:19:53 GMT  
		Size: 92.6 MB (92569560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a7fb2d82fb764d012f892370b22cac9c131ee57ce786c706df99509bd396c16`  
		Last Modified: Thu, 05 Nov 2026 07:19:51 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08cee317cdc66d064723362134701d85688a5da0e1bdaacd4647ad85b6b4c142`  
		Last Modified: Thu, 19 Nov 2026 14:39:05 GMT  
		Size: 14.1 MB (14072659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd18497fc971b0d544014c73ee90e087fbd75f2752bc11e63c18b56c87f8cd73`  
		Last Modified: Thu, 19 Nov 2026 14:39:04 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8acaa8ccfc9578452b57d8906b0b2332fac713bd9e226771733973ea45cf0687`  
		Last Modified: Thu, 19 Nov 2026 14:43:07 GMT  
		Size: 13.7 MB (13730186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d846462d4449b1cb65cae2678777eb3bbda04eb7b08a113a0ea88dfbbc692bd`  
		Last Modified: Thu, 19 Nov 2026 14:43:07 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1dcdc0a783c9fba15c5f643bcd4d7e42f5455d5b65d923578013a0abe5f6a32`  
		Last Modified: Thu, 19 Nov 2026 14:43:07 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d71d4e581f51d8465d9ac6b745bdb0ebb921d4652be99d4c077dabb8e9df3641`  
		Last Modified: Thu, 19 Nov 2026 14:43:07 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:697c78ae09dd0098d25eed581817b9c07d9b231b25121f56d299c99b0c253001`  
		Last Modified: Thu, 19 Nov 2026 14:43:08 GMT  
		Size: 9.3 KB (9271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:801945c94475aab1d6b3221c65d6a56b9c4076e7f11286f338723aa5776c70a4`  
		Last Modified: Thu, 19 Nov 2026 16:12:59 GMT  
		Size: 7.4 MB (7355254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a643e64cd5840eb2c210913857434b535f7f39a79d36187dfee72dc4526bc016`  
		Last Modified: Thu, 19 Nov 2026 16:12:59 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34f6d8e22107fc5f67f406267e357632047df2a5e58a5189b56a39fe92cecc66`  
		Last Modified: Thu, 19 Nov 2026 16:12:59 GMT  
		Size: 879.8 KB (879791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49e63de1f8760213f37737e15374c6d7fbd590f08c1e5037c9d1710fe7a61923`  
		Last Modified: Thu, 19 Nov 2026 16:12:54 GMT  
		Size: 113.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c79d59c701a89119af4f3d3445e9a09cfb076acb5f6f6fd3d1cc12cc227329cb`  
		Last Modified: Thu, 19 Nov 2026 16:14:42 GMT  
		Size: 23.7 MB (23719087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.4-fpm` - unknown; unknown

```console
$ docker pull drupal@sha256:4d349d722b4c4670f222ca748f01e8d866604bbcc329d8e8fbda66c0251901dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6710700 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d2b428aeb4a41a4f1742d7ef77986bc56fa02b487c5bd0a03f1f868e9b00bc7d`

```dockerfile
```

-	Layers:
	-	`sha256:85bad43fd35c44c309b6fb59148edf9a157d85af903336ad798a94e2675cc1d9`  
		Last Modified: Fri, 20 Nov 2026 19:57:05 GMT  
		Size: 6.7 MB (6674843 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1693d313b2cc448173acb02be5fad26f366cfda9d28f9bc62cb200a743657b81`  
		Last Modified: Fri, 20 Nov 2026 19:57:04 GMT  
		Size: 35.9 KB (35857 bytes)  
		MIME: application/vnd.in-toto+json
