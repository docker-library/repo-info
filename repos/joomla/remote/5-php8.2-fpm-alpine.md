## `joomla:5-php8.2-fpm-alpine`

```console
$ docker pull joomla@sha256:f7499882e971b9977e3c32f6618ff976bed404505b56945441f76a5a5e21b049
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

### `joomla:5-php8.2-fpm-alpine` - linux; amd64

```console
$ docker pull joomla@sha256:79b44e83904914143a557ca261f4146c7d11393f97216def879918aac44769bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.3 MB (100262882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9c07fd64821815ac9f46e31100e939ab0d85477659003fcebdb81ded0bf21a48`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 02 Jul 2026 20:35:54 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 02 Jul 2026 20:35:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 02 Jul 2026 20:35:54 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 02 Jul 2026 20:35:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:35:55 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:35:55 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:35:55 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:35:55 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:35:55 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 02 Jul 2026 20:35:55 GMT
ENV PHP_VERSION=8.2.32
# Thu, 02 Jul 2026 20:35:55 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.32.tar.xz.asc
# Thu, 02 Jul 2026 20:35:55 GMT
ENV PHP_SHA256=e02aa173c236c12791696254d607da680e6d5516f8f5c2339642de7c4f944bd2
# Thu, 02 Jul 2026 20:49:39 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 02 Jul 2026 20:49:39 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:52:30 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 02 Jul 2026 20:52:30 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:52:30 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 02 Jul 2026 20:52:31 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 02 Jul 2026 20:52:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 02 Jul 2026 20:52:31 GMT
WORKDIR /var/www/html
# Thu, 02 Jul 2026 20:52:31 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 02 Jul 2026 20:52:31 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 20:52:31 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 02 Jul 2026 20:52:31 GMT
CMD ["php-fpm"]
# Thu, 02 Jul 2026 21:22:34 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 02 Jul 2026 21:22:34 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 02 Jul 2026 21:22:34 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 		zstd 	; # buildkit
# Thu, 02 Jul 2026 21:24:20 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 		pecl install APCu-5.1.26; 	pecl install memcached-3.3.0; 	pecl install redis-6.2.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 02 Jul 2026 21:24:21 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 02 Jul 2026 21:24:21 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Thu, 02 Jul 2026 21:24:21 GMT
VOLUME [/var/www/html]
# Thu, 02 Jul 2026 21:24:21 GMT
ENV JOOMLA_VERSION=5.4.6
# Thu, 02 Jul 2026 21:24:21 GMT
ENV JOOMLA_SHA512=d4198b32a37cea890b24ab219b7d267e6a6df3373530d5e76eb7f4563868ef6caebefa7a2b9290065146ef733db2b0becc18d69f291730c767a25aa158cb9c16
# Thu, 02 Jul 2026 21:24:22 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/5.4.6/Joomla_5.4.6-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Thu, 02 Jul 2026 21:24:22 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 21:24:22 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 02 Jul 2026 21:24:22 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 21:24:22 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47681e82f2c13917de71ae35578a0f28324c0ebc890dece162a2abbc74b15baf`  
		Last Modified: Thu, 02 Jul 2026 20:39:21 GMT  
		Size: 3.5 MB (3474611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d1bab1508a8c7c32887efa704e3ecbeb1502794e5cb526938e6386dfabaa270`  
		Last Modified: Thu, 02 Jul 2026 20:39:21 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2477cf78ef5ef96283c3f4021ec9d0dbe454a337bebf8b44a6e3f6360ab49a21`  
		Last Modified: Thu, 02 Jul 2026 20:39:21 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efe2614350383891dcd63b5091c0e007881db7d4535ae067011e253f135723f4`  
		Last Modified: Thu, 02 Jul 2026 20:52:38 GMT  
		Size: 12.2 MB (12185077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d1025395d845b533b5d27f901c2fe3b5c52adef57bac6cd427dedbd3e2475d`  
		Last Modified: Thu, 02 Jul 2026 20:52:38 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1445e114069988add9fc7b6e47b30f6e224fe71cf68cf11b3ad9764d15a65743`  
		Last Modified: Thu, 02 Jul 2026 20:52:38 GMT  
		Size: 13.2 MB (13173260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fa2c8cf3d13093e4d1b8c29f5386cafc3c576bd9f193a8568db81597b240105`  
		Last Modified: Thu, 02 Jul 2026 20:52:38 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4012fc204ca1d54cdb0b94f7fe871799b3e0f84a3bc5e98e4fd104b6186a5ac`  
		Last Modified: Thu, 02 Jul 2026 20:52:39 GMT  
		Size: 22.3 KB (22347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83b46989e38859c02323c32e69542d196c2ed882cd6e813877946a1317bdf418`  
		Last Modified: Thu, 02 Jul 2026 20:52:39 GMT  
		Size: 22.4 KB (22366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89e43177296a3d23d964a7fa06032c87b8d889966ae987e1bb78aa44c285fa05`  
		Last Modified: Thu, 02 Jul 2026 20:52:40 GMT  
		Size: 9.2 KB (9250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2a0317bb6f989f6c2a27b6f11cc903aa615f727f5737c36e660a618162c6455`  
		Last Modified: Thu, 02 Jul 2026 21:24:31 GMT  
		Size: 33.0 MB (32982919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee1f4607416e0754b85ef50a2f0172c030c245370004d18d60815adf162a136e`  
		Last Modified: Thu, 02 Jul 2026 21:24:30 GMT  
		Size: 7.2 MB (7151156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79bbc5ba7c9e2473d77350daabe5ef8e710ed314fed578151777a7fbc044461e`  
		Last Modified: Thu, 02 Jul 2026 21:24:30 GMT  
		Size: 72.0 KB (72049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c920b650edf5799c980adf5fe69c37672569f90f923d1b067920f000251fb459`  
		Last Modified: Thu, 02 Jul 2026 21:24:30 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3050bb26577e602a21c65b2000c89cad27d0a26088a038ca3693bf087511c69e`  
		Last Modified: Thu, 02 Jul 2026 21:24:32 GMT  
		Size: 27.3 MB (27314222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc3446b30663ebd8ce3ff66c11d1135c2159547f8dd121ae5a467a99d1ae078b`  
		Last Modified: Thu, 02 Jul 2026 21:24:31 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2ee0acbaca408547df9bdbfb356b67166fcaa6d4aa41a7dbaf2f42b934c8442`  
		Last Modified: Thu, 02 Jul 2026 21:24:32 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.2-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:3a3085505900df6d4df9146098cf9748cfb4bea3dc38fb66b7d3d88c07ea3c60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 KB (45715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6060b1afa43dabcfdbba75cd1185890bfb304ec8643d0bc2d475bd05eccc4dc3`

```dockerfile
```

-	Layers:
	-	`sha256:b86b62ac9bc78f2ebc3af84b16207fa31aa10fcafb0c8e580fb963a1c6314820`  
		Last Modified: Thu, 02 Jul 2026 21:24:29 GMT  
		Size: 45.7 KB (45715 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.2-fpm-alpine` - linux; arm variant v6

```console
$ docker pull joomla@sha256:acf7453e5488c0288e3aeb4427609d033cb3a15e89e1b66fa9a35cf2023fa9f8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **95.3 MB (95270694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65d46b72fbb8702e2a333404ae19e1ee15af5f66cfa9fc29bb9fa8792acfd6d8`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Thu, 02 Jul 2026 20:33:11 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 02 Jul 2026 20:33:11 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 02 Jul 2026 20:33:11 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 02 Jul 2026 20:33:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:33:11 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:33:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:33:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:33:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:33:11 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 02 Jul 2026 20:33:11 GMT
ENV PHP_VERSION=8.2.32
# Thu, 02 Jul 2026 20:33:11 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.32.tar.xz.asc
# Thu, 02 Jul 2026 20:33:11 GMT
ENV PHP_SHA256=e02aa173c236c12791696254d607da680e6d5516f8f5c2339642de7c4f944bd2
# Thu, 02 Jul 2026 20:51:06 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 02 Jul 2026 20:51:06 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:53:45 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 02 Jul 2026 20:53:45 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:53:46 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 02 Jul 2026 20:53:47 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 02 Jul 2026 20:53:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 02 Jul 2026 20:53:47 GMT
WORKDIR /var/www/html
# Thu, 02 Jul 2026 20:53:47 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 02 Jul 2026 20:53:47 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 20:53:47 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 02 Jul 2026 20:53:47 GMT
CMD ["php-fpm"]
# Thu, 02 Jul 2026 21:15:02 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 02 Jul 2026 21:15:02 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 02 Jul 2026 21:15:02 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 		zstd 	; # buildkit
# Thu, 02 Jul 2026 21:17:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 		pecl install APCu-5.1.26; 	pecl install memcached-3.3.0; 	pecl install redis-6.2.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 02 Jul 2026 21:17:33 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 02 Jul 2026 21:17:33 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Thu, 02 Jul 2026 21:17:33 GMT
VOLUME [/var/www/html]
# Thu, 02 Jul 2026 21:17:33 GMT
ENV JOOMLA_VERSION=5.4.6
# Thu, 02 Jul 2026 21:17:33 GMT
ENV JOOMLA_SHA512=d4198b32a37cea890b24ab219b7d267e6a6df3373530d5e76eb7f4563868ef6caebefa7a2b9290065146ef733db2b0becc18d69f291730c767a25aa158cb9c16
# Thu, 02 Jul 2026 21:17:35 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/5.4.6/Joomla_5.4.6-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Thu, 02 Jul 2026 21:17:35 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 21:17:35 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 02 Jul 2026 21:17:35 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 21:17:35 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e0bf76a957decb9048adc86f33123424047a77eac07f8d93bacb8cdd392c030`  
		Last Modified: Thu, 02 Jul 2026 20:36:35 GMT  
		Size: 3.4 MB (3431431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30a0d0808760329bb287b0ee13e5548cdd45a97368a79ceab65401caa3c9e88a`  
		Last Modified: Thu, 02 Jul 2026 20:36:34 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57df3da5426039b73ffc7b1916adc1f18fb718167c5610a208ccb62405b44759`  
		Last Modified: Thu, 02 Jul 2026 20:36:35 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef859f9c1a37b5faa3b6b8ab91f57047dc4f4760319ce9d2b00c88d120aaa906`  
		Last Modified: Thu, 02 Jul 2026 20:53:52 GMT  
		Size: 12.2 MB (12185067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11973451af92a94736a8c1764f1d6effc2f0fd6c6c322008dd16c5732c4df6a8`  
		Last Modified: Thu, 02 Jul 2026 20:53:52 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f12404d75e0c7d50e2de9f6d58faed66d37ca00e00f59aa58db479527d9fe6d`  
		Last Modified: Thu, 02 Jul 2026 20:53:52 GMT  
		Size: 11.9 MB (11921060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b568e458a555c8d97866940b1b1443b5195221644f64de778d3df5e065a07205`  
		Last Modified: Thu, 02 Jul 2026 20:53:52 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6defe2df6dd364f1ab11f9170224d54287987f11c0ec2ee4bb01273a80d57120`  
		Last Modified: Thu, 02 Jul 2026 20:53:53 GMT  
		Size: 22.1 KB (22124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84df8863eae25d141f07b3d2a5839df6b3ff1cba1b6f118670bd4d6750cd5bce`  
		Last Modified: Thu, 02 Jul 2026 20:53:53 GMT  
		Size: 22.1 KB (22143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be74fd56379e350e95d9e5f680cd114c69eed9b8017e1d12dd2dce80c46914c0`  
		Last Modified: Thu, 02 Jul 2026 20:53:54 GMT  
		Size: 9.2 KB (9250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:903578a10586e47755d1d8ce345562d638e0953eebf797436fc6bc473eade312`  
		Last Modified: Thu, 02 Jul 2026 21:17:43 GMT  
		Size: 29.9 MB (29882427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43c97a810e478bfd862f4e15d659e57da4165ab39ff205b1e57026798f3862b9`  
		Last Modified: Thu, 02 Jul 2026 21:17:43 GMT  
		Size: 6.8 MB (6848244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07a08f083f96181888e1456017ef830b4c2dccdd6254797cb2b30a888844737f`  
		Last Modified: Thu, 02 Jul 2026 21:17:42 GMT  
		Size: 72.0 KB (72045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e10fffe03be0534f882be5da82a8684ff5fb6b4cb887bcbf3ee51508a31f9165`  
		Last Modified: Thu, 02 Jul 2026 21:17:42 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b38430d8d66cf63719750d399671de54a5754206a5cb7af31fed25935ba8b63`  
		Last Modified: Thu, 02 Jul 2026 21:17:44 GMT  
		Size: 27.3 MB (27314226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d64ec5744de6e4f3732c92da3857a28f743df34aa083d81465afe254ed3b8395`  
		Last Modified: Thu, 02 Jul 2026 21:17:39 GMT  
		Size: 3.7 KB (3655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:795f6e2ca7e5ad4897c8f5e34209503e69dc111ebdbd4d228799d6bd19dca1f6`  
		Last Modified: Thu, 02 Jul 2026 21:17:39 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.2-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:72a761c3f8bc44911089e3319bdcebdee9379b667459ac6006c1387928299827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 KB (45839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7f049eec888454ea80b13e2f4a13c1ad27155f9e41340a12061564a1084ed79`

```dockerfile
```

-	Layers:
	-	`sha256:88bda41c35039907d1295be8480d92552be8c15ac3b5b54045c8f8f05c891e0f`  
		Last Modified: Thu, 02 Jul 2026 21:17:42 GMT  
		Size: 45.8 KB (45839 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.2-fpm-alpine` - linux; arm variant v7

```console
$ docker pull joomla@sha256:5a1e372b36613bc28c58eb33265e5ee2a571b9e13fa14366deaacb749ff4d096
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **92.4 MB (92356116 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:569eed7722bf8897687fc97d895a5bd40d7b06cc6bd1261f43ae02da72c315af`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Thu, 02 Jul 2026 21:01:40 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 02 Jul 2026 21:01:40 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 02 Jul 2026 21:01:40 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 02 Jul 2026 21:01:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 21:01:40 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 21:01:40 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 21:01:40 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 21:01:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 21:01:40 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 02 Jul 2026 21:01:40 GMT
ENV PHP_VERSION=8.2.32
# Thu, 02 Jul 2026 21:01:40 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.32.tar.xz.asc
# Thu, 02 Jul 2026 21:01:40 GMT
ENV PHP_SHA256=e02aa173c236c12791696254d607da680e6d5516f8f5c2339642de7c4f944bd2
# Thu, 02 Jul 2026 21:07:57 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 02 Jul 2026 21:07:57 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 21:10:42 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 02 Jul 2026 21:10:42 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 21:10:42 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 02 Jul 2026 21:10:43 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 02 Jul 2026 21:10:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 02 Jul 2026 21:10:43 GMT
WORKDIR /var/www/html
# Thu, 02 Jul 2026 21:10:43 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 02 Jul 2026 21:10:43 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 21:10:43 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 02 Jul 2026 21:10:43 GMT
CMD ["php-fpm"]
# Thu, 02 Jul 2026 22:17:32 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 02 Jul 2026 22:17:32 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 02 Jul 2026 22:17:32 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 		zstd 	; # buildkit
# Thu, 02 Jul 2026 22:20:04 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 		pecl install APCu-5.1.26; 	pecl install memcached-3.3.0; 	pecl install redis-6.2.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 02 Jul 2026 22:20:05 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 02 Jul 2026 22:20:05 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Thu, 02 Jul 2026 22:20:05 GMT
VOLUME [/var/www/html]
# Thu, 02 Jul 2026 22:20:05 GMT
ENV JOOMLA_VERSION=5.4.6
# Thu, 02 Jul 2026 22:20:05 GMT
ENV JOOMLA_SHA512=d4198b32a37cea890b24ab219b7d267e6a6df3373530d5e76eb7f4563868ef6caebefa7a2b9290065146ef733db2b0becc18d69f291730c767a25aa158cb9c16
# Thu, 02 Jul 2026 22:20:07 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/5.4.6/Joomla_5.4.6-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Thu, 02 Jul 2026 22:20:07 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 22:20:07 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 02 Jul 2026 22:20:07 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 22:20:07 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd45fdd2adad809e84e6fb05359130d079874168e483d5921fb560f1479f7244`  
		Last Modified: Thu, 02 Jul 2026 21:04:37 GMT  
		Size: 3.2 MB (3244845 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee9e29a2f17a3736ce2237e69ac61547f8cb5c21aa753ba982b333863b5a45af`  
		Last Modified: Thu, 02 Jul 2026 21:04:37 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be6e1c1225fa3fab08120ee98716c15309ccc3efd98f6ea28e72f20c9378db5d`  
		Last Modified: Thu, 02 Jul 2026 21:04:37 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08e320eaa130b1565dc4129787d23c1ff6a642c92f697632b66c8ace6b11307a`  
		Last Modified: Thu, 02 Jul 2026 21:10:50 GMT  
		Size: 12.2 MB (12185079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e99e1981f266a4bbc36a4f048abb0165cffbd7bd6d3bd82e5d1ca4e4014494a`  
		Last Modified: Thu, 02 Jul 2026 21:10:49 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36aa66240f45496b4089b4faf66661c04a77dcab139aa864da0e0ef3ab54f747`  
		Last Modified: Thu, 02 Jul 2026 21:10:50 GMT  
		Size: 11.2 MB (11222834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf1af2013ed80878a82009c37fe605c3ed7ae90ff150a0816720ac7734919225`  
		Last Modified: Thu, 02 Jul 2026 21:10:50 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb10d58e61aba2c5f3bb0f55c1d64e4378af28426f04848fa1008a260bc79fbf`  
		Last Modified: Thu, 02 Jul 2026 21:10:51 GMT  
		Size: 22.1 KB (22128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:195a3ff49e74309530e656e94129c5f6683b6574fb10937d67cda729ccb4d29c`  
		Last Modified: Thu, 02 Jul 2026 21:10:51 GMT  
		Size: 22.1 KB (22147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50f88b47de07768d7c676b3fb866c9eedd6938ae087b4683bccc4efc24eed5b1`  
		Last Modified: Thu, 02 Jul 2026 21:10:51 GMT  
		Size: 9.2 KB (9250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d26dad52a2cb7512dbb1e11a1215a9e018ed6233d2e5f5f5ca7afc96002f8d0b`  
		Last Modified: Thu, 02 Jul 2026 22:20:15 GMT  
		Size: 28.1 MB (28132278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b77e6bae817305150dc21ef89d1ec09ae25dd23dec5f19b561cfb01b88ad18c0`  
		Last Modified: Thu, 02 Jul 2026 22:20:14 GMT  
		Size: 6.9 MB (6861491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5474ed4d2eabe73981dc525f45d5b905e1354ff1830faf8a309388ea844a6b4c`  
		Last Modified: Thu, 02 Jul 2026 22:20:14 GMT  
		Size: 72.0 KB (72037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4e04f62b186061f5a62b4c9db003ca8844bb64363daca98930b390b0c1d7ced`  
		Last Modified: Thu, 02 Jul 2026 22:20:14 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4545d10ec0ad014831fa006a638e8111f38d6bd82574f1126189a9ab564071c`  
		Last Modified: Thu, 02 Jul 2026 22:20:16 GMT  
		Size: 27.3 MB (27314184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ba7521369ce28694122b6f531a936cd03a622398be79323215706f6be9f8354`  
		Last Modified: Thu, 02 Jul 2026 22:20:16 GMT  
		Size: 3.7 KB (3655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c602039edb45138429e02d00188eb1bb5b0e2dce089e340a62403643aeb99214`  
		Last Modified: Thu, 02 Jul 2026 22:20:16 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.2-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:b04c9dade753c52c6901766af4b308e508db5cab7f9e4d8886ecbaab5fd0c2b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 KB (45838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:135cce1dbf19bebb5118fc4b561d9e89503efb199583d19cb715baf3f4a971c9`

```dockerfile
```

-	Layers:
	-	`sha256:db770839be40dbdd4f6c9d01869aa9733287bc6c0fae7b2a2bcc06796ce18e36`  
		Last Modified: Thu, 02 Jul 2026 22:20:14 GMT  
		Size: 45.8 KB (45838 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.2-fpm-alpine` - linux; arm64 variant v8

```console
$ docker pull joomla@sha256:37519b87df574ac7a520786eea9a2f71d679d764d48e0a09318bd67b2cc656f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.0 MB (100032992 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7398edc30395614495b98f47497da188130abc69a0ac1ae9f4ac2242ecbad1a5`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 02 Jul 2026 20:41:03 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 02 Jul 2026 20:41:03 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 02 Jul 2026 20:41:03 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 02 Jul 2026 20:41:03 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:41:03 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:41:03 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:41:03 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:41:03 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:41:03 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 02 Jul 2026 20:41:03 GMT
ENV PHP_VERSION=8.2.32
# Thu, 02 Jul 2026 20:41:03 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.32.tar.xz.asc
# Thu, 02 Jul 2026 20:41:03 GMT
ENV PHP_SHA256=e02aa173c236c12791696254d607da680e6d5516f8f5c2339642de7c4f944bd2
# Thu, 02 Jul 2026 20:52:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 02 Jul 2026 20:52:52 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:56:50 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 02 Jul 2026 20:56:50 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:56:51 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 02 Jul 2026 20:56:51 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 02 Jul 2026 20:56:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 02 Jul 2026 20:56:51 GMT
WORKDIR /var/www/html
# Thu, 02 Jul 2026 20:56:51 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 02 Jul 2026 20:56:51 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 20:56:51 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 02 Jul 2026 20:56:51 GMT
CMD ["php-fpm"]
# Thu, 02 Jul 2026 21:27:26 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 02 Jul 2026 21:27:26 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 02 Jul 2026 21:27:26 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 		zstd 	; # buildkit
# Thu, 02 Jul 2026 21:29:30 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 		pecl install APCu-5.1.26; 	pecl install memcached-3.3.0; 	pecl install redis-6.2.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 02 Jul 2026 21:29:31 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 02 Jul 2026 21:29:31 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Thu, 02 Jul 2026 21:29:31 GMT
VOLUME [/var/www/html]
# Thu, 02 Jul 2026 21:29:31 GMT
ENV JOOMLA_VERSION=5.4.6
# Thu, 02 Jul 2026 21:29:31 GMT
ENV JOOMLA_SHA512=d4198b32a37cea890b24ab219b7d267e6a6df3373530d5e76eb7f4563868ef6caebefa7a2b9290065146ef733db2b0becc18d69f291730c767a25aa158cb9c16
# Thu, 02 Jul 2026 21:29:32 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/5.4.6/Joomla_5.4.6-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Thu, 02 Jul 2026 21:29:32 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 21:29:32 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 02 Jul 2026 21:29:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 21:29:32 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c1f1d99c11e875e32a0f13ed8099d739c5924af3db221c7cc76e64855e1fcfc`  
		Last Modified: Thu, 02 Jul 2026 20:44:31 GMT  
		Size: 3.5 MB (3484711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abbe1991818d5f93dfda9f3ac2e8b815f18049749c04e59200e47213bdc971eb`  
		Last Modified: Thu, 02 Jul 2026 20:44:31 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:503131bea32b91b716ffe2261e0e1ee276bbf5f6debe33c5daa284e28b9bb6dd`  
		Last Modified: Thu, 02 Jul 2026 20:44:31 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:537d0fe41c3bdb56997078797a14ea1e2c25abf462c8badbf827f7c9b24263c8`  
		Last Modified: Thu, 02 Jul 2026 20:56:58 GMT  
		Size: 12.2 MB (12185064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b6bb6086ff4f328366b15262a156c0afe65a0dad3a000101bf99fc48e087254`  
		Last Modified: Thu, 02 Jul 2026 20:56:58 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70ba11edbeefa73dd2480a58ea47306b0e3feb444175cb820913c48c60960ba3`  
		Last Modified: Thu, 02 Jul 2026 20:56:58 GMT  
		Size: 13.1 MB (13077846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7be850059ac44faa2f1419c48b1d5d0f88ba54c136e8dc97a8dcad14d41d378`  
		Last Modified: Thu, 02 Jul 2026 20:56:58 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2401e9f9f56d347f18ca437258e4f4c5c6462fee05df228d36512789f09f66a`  
		Last Modified: Thu, 02 Jul 2026 20:56:59 GMT  
		Size: 22.2 KB (22167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6174533ff196c10cad1a4df71ad6f30893c2035b59c7a18991bb7725a4e1839a`  
		Last Modified: Thu, 02 Jul 2026 20:56:59 GMT  
		Size: 22.2 KB (22172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4866d1e9e7a67f1147b45e649e0004e3f8e2a8d220ff1a46dd7a64e2ddd1ddba`  
		Last Modified: Thu, 02 Jul 2026 20:57:00 GMT  
		Size: 9.2 KB (9250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe3aebd32847c93428cf06544bec5ef68b6dbf8a7fae86e637b258f86478c263`  
		Last Modified: Thu, 02 Jul 2026 21:29:40 GMT  
		Size: 32.6 MB (32600405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd235f18ca57d8a8819533a4d10f23627761ca21d9894edeabd5a5046c2e1587`  
		Last Modified: Thu, 02 Jul 2026 21:29:40 GMT  
		Size: 7.1 MB (7052833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fbfa9da3c8b2d4aceffac6449c92fb7d61bbf8f05978ebca9cf1e4c59b4828a`  
		Last Modified: Thu, 02 Jul 2026 21:29:40 GMT  
		Size: 72.0 KB (72032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04135ea9cdb600d6a5381344f2118485781bbbd870c7a3b7f4ea861be68fc0e5`  
		Last Modified: Thu, 02 Jul 2026 21:29:39 GMT  
		Size: 384.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f83501799091b32931a6fbf4be05e0dababda9f87aaa0c6d09d50c1b33c1a48`  
		Last Modified: Thu, 02 Jul 2026 21:29:41 GMT  
		Size: 27.3 MB (27314244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:689970665f3bb066f47e07f8b7081f43bbb8b35a2ecbce3ab349c39f49d4d477`  
		Last Modified: Thu, 02 Jul 2026 21:29:41 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de8d12bd77ced980b553445746c5ca3cb0e839b4864843709e70b706e91d2bb4`  
		Last Modified: Thu, 02 Jul 2026 21:29:41 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.2-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:d134c80df0e0ddd1ee685efbec37d8ccee014eceefd2a8dbf8bb28acc271df76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.9 KB (45867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:544e4abdc2e83a025a807bac4b1edf4688b1a58982a4ac7237f123c7c3c75cd5`

```dockerfile
```

-	Layers:
	-	`sha256:bee035aeb47f0ad69d617ad379e2bc11a97a0fbc1db14a7b8598b6dbc0e02038`  
		Last Modified: Thu, 02 Jul 2026 21:29:39 GMT  
		Size: 45.9 KB (45867 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.2-fpm-alpine` - linux; 386

```console
$ docker pull joomla@sha256:ff1e17fc27248a07d7c163930945c16e4ee785441c071aa6a1c21984f0e07a36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100925667 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4aeaaa539ee871e481dccb7d38d611cbf20aeba7eb2ff3873ee7ac6be4e0502a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Thu, 02 Jul 2026 20:40:31 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 02 Jul 2026 20:40:31 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 02 Jul 2026 20:40:31 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 02 Jul 2026 20:40:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:40:31 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:40:31 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:40:31 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:40:31 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:40:31 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 02 Jul 2026 20:40:31 GMT
ENV PHP_VERSION=8.2.32
# Thu, 02 Jul 2026 20:40:31 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.32.tar.xz.asc
# Thu, 02 Jul 2026 20:40:31 GMT
ENV PHP_SHA256=e02aa173c236c12791696254d607da680e6d5516f8f5c2339642de7c4f944bd2
# Thu, 02 Jul 2026 20:50:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 02 Jul 2026 20:50:42 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:53:32 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 02 Jul 2026 20:53:32 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 20:53:33 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 02 Jul 2026 20:53:34 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 02 Jul 2026 20:53:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 02 Jul 2026 20:53:34 GMT
WORKDIR /var/www/html
# Thu, 02 Jul 2026 20:53:34 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 02 Jul 2026 20:53:34 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 20:53:34 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 02 Jul 2026 20:53:34 GMT
CMD ["php-fpm"]
# Thu, 02 Jul 2026 21:22:46 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 02 Jul 2026 21:22:46 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 02 Jul 2026 21:22:46 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 		zstd 	; # buildkit
# Thu, 02 Jul 2026 21:24:39 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 		pecl install APCu-5.1.26; 	pecl install memcached-3.3.0; 	pecl install redis-6.2.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 02 Jul 2026 21:24:40 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 02 Jul 2026 21:24:40 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Thu, 02 Jul 2026 21:24:40 GMT
VOLUME [/var/www/html]
# Thu, 02 Jul 2026 21:24:40 GMT
ENV JOOMLA_VERSION=5.4.6
# Thu, 02 Jul 2026 21:24:40 GMT
ENV JOOMLA_SHA512=d4198b32a37cea890b24ab219b7d267e6a6df3373530d5e76eb7f4563868ef6caebefa7a2b9290065146ef733db2b0becc18d69f291730c767a25aa158cb9c16
# Thu, 02 Jul 2026 21:24:41 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/5.4.6/Joomla_5.4.6-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Thu, 02 Jul 2026 21:24:41 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 21:24:41 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 02 Jul 2026 21:24:41 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 21:24:41 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4a8a5e819b2f71213a87cd85c637abbb6ebc94a0e0559d2e54ad6ca7e636064`  
		Last Modified: Thu, 02 Jul 2026 20:43:58 GMT  
		Size: 3.5 MB (3505457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06565033312600fd902c2dc86a640b718128d90accd2694659301de91b93c13e`  
		Last Modified: Thu, 02 Jul 2026 20:43:58 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:272f728676f7fd70ee082c0cc7fc72192feb22dd9291b2eebd2b4f0fba28ee59`  
		Last Modified: Thu, 02 Jul 2026 20:43:58 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:068e220fd87fb32e19cb329146e8d854b8b3e299f120c27512bb2d830d2d8047`  
		Last Modified: Thu, 02 Jul 2026 20:53:41 GMT  
		Size: 12.2 MB (12185061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8201c962a2e7667e299f92a89d816d1c63500ac8c3c7f60623a36086f688bb`  
		Last Modified: Thu, 02 Jul 2026 20:53:40 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d5294e72ffa3654159355eae57fac63cd8353f158332118b51bd681249ac675`  
		Last Modified: Thu, 02 Jul 2026 20:53:41 GMT  
		Size: 13.5 MB (13452292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b9605ef06f64fd189d816b968c980ccbebc1f42d55be017d491d4fffd34a884`  
		Last Modified: Thu, 02 Jul 2026 20:53:40 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2cf95931ed96f14c5a886de456aae8a4ba1a179f925ca6c1d54a6c9e0356b2d`  
		Last Modified: Thu, 02 Jul 2026 20:53:41 GMT  
		Size: 22.4 KB (22357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76410c3cbf1683f3ec3b039d9c7b503ecd01296ec0d30a633c1b660eecba0ec4`  
		Last Modified: Thu, 02 Jul 2026 20:53:42 GMT  
		Size: 22.4 KB (22362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8145a8387f0fac1afa8adec38de31f1884af2e9903c31784c75598bacc30fc2`  
		Last Modified: Thu, 02 Jul 2026 20:53:42 GMT  
		Size: 9.3 KB (9253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f33d97f6853c69be9ebcdf85d85ff248068621e49ead5781ec7c03639d3130cc`  
		Last Modified: Thu, 02 Jul 2026 21:24:49 GMT  
		Size: 33.4 MB (33402893 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:052aae774ada73b72e346adf0c3bdf6b11fc36aac6c8a33a7861cab460aa9f88`  
		Last Modified: Thu, 02 Jul 2026 21:24:48 GMT  
		Size: 7.3 MB (7260398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2966e9d5205b3a709aebee97d16293c80cbba47b2de6f5bd44c99eefc2b937c7`  
		Last Modified: Thu, 02 Jul 2026 21:24:48 GMT  
		Size: 72.0 KB (72011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a0764823f717118c3f925a2822cf09f35894930fdedef47bae166f3f9202f67`  
		Last Modified: Thu, 02 Jul 2026 21:24:48 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fe13390872ae51cc79eeafc07f6d36b46474ae39bd2d79f97ba7a706bc6d95e`  
		Last Modified: Thu, 02 Jul 2026 21:24:50 GMT  
		Size: 27.3 MB (27314208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24ddef2713bceb304773b5a2c1ae5e72afea807ee41dd47e33dd5cab8bcfa82b`  
		Last Modified: Thu, 02 Jul 2026 21:24:49 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fef02294e1132c1e55526dce2da45e942098cd6676622456a55988770f4611c`  
		Last Modified: Thu, 02 Jul 2026 21:24:50 GMT  
		Size: 1.1 KB (1067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.2-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:efe24d386d64f4f7186c9b58446be686bd09b7ffa123863abb070a8b49c2a546
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 KB (45680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db75fa28efc2bfa7bc170c12110a5a22f34fe18101ccf72fcf5c1e5ec77d6cc9`

```dockerfile
```

-	Layers:
	-	`sha256:5e4f97bdadc10c5f59a587fe111425902b9a1869324ed0f610469956000af2ff`  
		Last Modified: Thu, 02 Jul 2026 21:24:48 GMT  
		Size: 45.7 KB (45680 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.2-fpm-alpine` - linux; ppc64le

```console
$ docker pull joomla@sha256:fbec2753066c0ef81d727e1ef1804b4921d8cdacc4d96f7f0805b7b4322fbd8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.3 MB (102312686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:739e0b35cc90551a5db62a4cd2ebda6b3f4169a2e42a5fd6982dcd15e6072094`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Tue, 16 Jun 2026 00:16:58 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 16 Jun 2026 00:16:58 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Tue, 16 Jun 2026 00:16:58 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 16 Jun 2026 00:16:58 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 16 Jun 2026 00:16:59 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 16 Jun 2026 00:16:59 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 16 Jun 2026 00:16:59 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 16 Jun 2026 00:16:59 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 16 Jun 2026 00:16:59 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Tue, 16 Jun 2026 00:16:59 GMT
ENV PHP_VERSION=8.2.31
# Tue, 16 Jun 2026 00:16:59 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.31.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.31.tar.xz.asc
# Tue, 16 Jun 2026 00:16:59 GMT
ENV PHP_SHA256=95eae411d594fe6f6e5678b76645dc13ae47d3c0a5325c1d969b58dea56ee45a
# Tue, 16 Jun 2026 00:36:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Tue, 16 Jun 2026 00:36:45 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 16 Jun 2026 00:43:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 16 Jun 2026 00:43:15 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 16 Jun 2026 00:43:16 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 16 Jun 2026 00:43:17 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 16 Jun 2026 00:43:17 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 16 Jun 2026 00:43:18 GMT
WORKDIR /var/www/html
# Tue, 16 Jun 2026 00:43:18 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 16 Jun 2026 00:43:18 GMT
STOPSIGNAL SIGQUIT
# Tue, 16 Jun 2026 00:43:18 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 16 Jun 2026 00:43:18 GMT
CMD ["php-fpm"]
# Tue, 16 Jun 2026 01:39:09 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Tue, 16 Jun 2026 01:39:09 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 16 Jun 2026 01:39:09 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 		zstd 	; # buildkit
# Tue, 16 Jun 2026 01:42:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 		pecl install APCu-5.1.26; 	pecl install memcached-3.3.0; 	pecl install redis-6.2.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 16 Jun 2026 01:42:47 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Tue, 16 Jun 2026 01:42:48 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Tue, 16 Jun 2026 01:42:48 GMT
VOLUME [/var/www/html]
# Tue, 16 Jun 2026 01:42:48 GMT
ENV JOOMLA_VERSION=5.4.6
# Tue, 16 Jun 2026 01:42:48 GMT
ENV JOOMLA_SHA512=d4198b32a37cea890b24ab219b7d267e6a6df3373530d5e76eb7f4563868ef6caebefa7a2b9290065146ef733db2b0becc18d69f291730c767a25aa158cb9c16
# Tue, 16 Jun 2026 01:42:53 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/5.4.6/Joomla_5.4.6-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Tue, 16 Jun 2026 01:42:54 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Tue, 16 Jun 2026 01:42:54 GMT
COPY makedb.php /makedb.php # buildkit
# Tue, 16 Jun 2026 01:42:54 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 16 Jun 2026 01:42:54 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:538b9da4fa7a0b9d4db76eaa5e7475a9b26aebc92ecdbad7795d33e8c5862bfa`  
		Last Modified: Tue, 16 Jun 2026 00:21:30 GMT  
		Size: 3.6 MB (3637828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b72717bce2b969f044f4c03b530bca77062f0b0d4dfc1eb2f53b9a1459bcf77c`  
		Last Modified: Tue, 16 Jun 2026 00:21:30 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fecffaea7a9240f30a6d71b76e5cba5e41c27f6ab0409cce52536feeb7b55db`  
		Last Modified: Tue, 16 Jun 2026 00:21:30 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d3cc95e232801592bb07b60442c8cbbad93d97845f7b7d8b760577741c59344`  
		Last Modified: Tue, 16 Jun 2026 00:40:44 GMT  
		Size: 12.2 MB (12183416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4257b9d74b8090fa6c96322d249c3bb095f37b813e29a7b97113eb6daf60bf7`  
		Last Modified: Tue, 16 Jun 2026 00:40:43 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0144c0fb4bd7ba73dcabe5fbd87c3b3023997ba00e2ca743ca3d30daca104890`  
		Last Modified: Tue, 16 Jun 2026 00:43:30 GMT  
		Size: 13.7 MB (13720827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a9bc9c14e4243fab5070d07e13231f008155924d52bd23d8e4f536eec18c14e`  
		Last Modified: Tue, 16 Jun 2026 00:43:29 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a57f91920b667f6cf158404eb8df98ac48772c5f23b9e82654fb53afb752d27`  
		Last Modified: Tue, 16 Jun 2026 00:43:29 GMT  
		Size: 22.2 KB (22189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72bf7fe87ef6627c939969ba5da0a289f18c9c56b94254d50e76f33b9fe931ff`  
		Last Modified: Tue, 16 Jun 2026 00:43:29 GMT  
		Size: 22.2 KB (22213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e24ae7dce6dd9ef7361bf82677e7938151545b9e4159e398f18a86d81c63c219`  
		Last Modified: Tue, 16 Jun 2026 00:43:31 GMT  
		Size: 9.3 KB (9253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b9858221bad55e66446b061daf6ae002cea779292100c6a35ec9a092f1e8c7a`  
		Last Modified: Tue, 16 Jun 2026 01:43:07 GMT  
		Size: 34.2 MB (34175917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:734b4ec6932d828e2ac73779089a3348120db2cff363b4c86bdc799177da5066`  
		Last Modified: Tue, 16 Jun 2026 01:43:07 GMT  
		Size: 7.3 MB (7332213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:870d2f6dfec4ada12a9ace7efde10cb20c4f5e9e8d1359b53e6b41f43cd38254`  
		Last Modified: Tue, 16 Jun 2026 01:43:06 GMT  
		Size: 72.1 KB (72064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44f8c40d272b1b46dab5f603727c622de2e168b7f3d502f9d6ebcabb7a68c676`  
		Last Modified: Tue, 16 Jun 2026 01:43:06 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:375a27ed042301af45252bd6aabd58563eda837e35eb840c482cb6eb2a1d318c`  
		Last Modified: Tue, 16 Jun 2026 01:43:08 GMT  
		Size: 27.3 MB (27314129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be00c66c6f584a7fd22b66b15a422c7212c74d33431489ad1349344a0ced11d`  
		Last Modified: Tue, 16 Jun 2026 01:43:07 GMT  
		Size: 3.7 KB (3654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74d034a60240af4f40e36caf0e555bb4474f371ae1ba379624037da4eaa9f856`  
		Last Modified: Tue, 16 Jun 2026 01:43:08 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.2-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:bfffc23cf2758c0c91d971ced881dc8a32774216d9426039aec346ba8259689d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 KB (45761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bf0ddb06f9da9fa90b8ab5237980440208a589075f759c5b643fba2184be486`

```dockerfile
```

-	Layers:
	-	`sha256:cb335679afb26d54be3b4f04a3ff807ed286a4117caaa6d04dc866ece0e185e6`  
		Last Modified: Tue, 16 Jun 2026 01:43:06 GMT  
		Size: 45.8 KB (45761 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.2-fpm-alpine` - linux; riscv64

```console
$ docker pull joomla@sha256:f217694ebe7b000ff8fd3fc91d404658a5357a79ffd6798f84ce70251a5d403e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.1 MB (99132336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd4e8c4ebcd6def53c5692add7d23aa90bca4d6cc5cde35bdca3fb45ecd85b9c`
-	Entrypoint: `["\/entrypoint.sh"]`
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
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_VERSION=8.2.31
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.31.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.31.tar.xz.asc
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_SHA256=95eae411d594fe6f6e5678b76645dc13ae47d3c0a5325c1d969b58dea56ee45a
# Wed, 17 Jun 2026 17:53:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 17 Jun 2026 17:53:18 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 17 Jun 2026 19:30:16 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 17 Jun 2026 19:30:17 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 17 Jun 2026 19:30:21 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 17 Jun 2026 19:30:26 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 17 Jun 2026 19:30:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 17 Jun 2026 19:30:26 GMT
WORKDIR /var/www/html
# Wed, 17 Jun 2026 19:30:26 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Wed, 17 Jun 2026 19:30:26 GMT
STOPSIGNAL SIGQUIT
# Wed, 17 Jun 2026 19:30:26 GMT
EXPOSE map[9000/tcp:{}]
# Wed, 17 Jun 2026 19:30:26 GMT
CMD ["php-fpm"]
# Fri, 19 Jun 2026 03:31:45 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Fri, 19 Jun 2026 03:31:45 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Fri, 19 Jun 2026 03:31:45 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 		zstd 	; # buildkit
# Fri, 19 Jun 2026 03:58:14 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 		pecl install APCu-5.1.26; 	pecl install memcached-3.3.0; 	pecl install redis-6.2.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Fri, 19 Jun 2026 03:58:20 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Fri, 19 Jun 2026 03:58:20 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Fri, 19 Jun 2026 03:58:20 GMT
VOLUME [/var/www/html]
# Fri, 19 Jun 2026 03:58:20 GMT
ENV JOOMLA_VERSION=5.4.6
# Fri, 19 Jun 2026 03:58:20 GMT
ENV JOOMLA_SHA512=d4198b32a37cea890b24ab219b7d267e6a6df3373530d5e76eb7f4563868ef6caebefa7a2b9290065146ef733db2b0becc18d69f291730c767a25aa158cb9c16
# Fri, 19 Jun 2026 03:58:33 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/5.4.6/Joomla_5.4.6-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Fri, 19 Jun 2026 03:58:34 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Fri, 19 Jun 2026 03:58:34 GMT
COPY makedb.php /makedb.php # buildkit
# Fri, 19 Jun 2026 03:58:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Fri, 19 Jun 2026 03:58:34 GMT
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
	-	`sha256:6340dc440b771df25c2a08b142cc387f1c4ca1778fa560d6d62ccb2bdf7f2347`  
		Last Modified: Wed, 17 Jun 2026 18:41:55 GMT  
		Size: 12.2 MB (12183421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4da85b9605162e706595effd00dfae4543fee621321a98beb9766146fdeb3ae`  
		Last Modified: Wed, 17 Jun 2026 18:41:51 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b4fe75b2b794cb77afaf2038c4f8a3223ee4ade1e943427e629724b6e41d663`  
		Last Modified: Wed, 17 Jun 2026 19:31:15 GMT  
		Size: 12.4 MB (12379241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c614013a6ef67ff0952212b3a362a8bde6d215ead9e9b4bb0bf7f6d67376106`  
		Last Modified: Wed, 17 Jun 2026 19:31:13 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3309badb85c96228537572b1f3195c7f2cc34983c65936d97aa286c5cde63509`  
		Last Modified: Wed, 17 Jun 2026 19:31:13 GMT  
		Size: 22.2 KB (22183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d68a7e92b65635829bc868088effce48548745de60f36074e13a4f1ea66e19f4`  
		Last Modified: Wed, 17 Jun 2026 19:31:13 GMT  
		Size: 22.2 KB (22199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfccd78d16d3d4df704ebc14c4b020845ac5590d0439d9b154c2862870dfa85f`  
		Last Modified: Wed, 17 Jun 2026 19:31:15 GMT  
		Size: 9.3 KB (9253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2231cb28018fddd53ba867b9b4d76c20b20df256577a8c18aa1e1a384562049`  
		Last Modified: Fri, 19 Jun 2026 03:59:46 GMT  
		Size: 32.7 MB (32733995 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38708c245b4ff20d9eb9c8b19c68170e26cd0cd2ce37d89ed473f4ab1a47c083`  
		Last Modified: Fri, 19 Jun 2026 03:59:38 GMT  
		Size: 7.2 MB (7207258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c821ba9534417728787902ef5049e223637f68ca3c990c3abb24ec6fef81caa2`  
		Last Modified: Fri, 19 Jun 2026 03:59:36 GMT  
		Size: 72.0 KB (72049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:769ec025cb4f30429b1d6a79bdaa0b13ca1536b22437110bfc77f28bdad85d6e`  
		Last Modified: Fri, 19 Jun 2026 03:59:36 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:504004aa34b1e6133dd80663d553663f1d15034a84b48665ddd48f0c753744aa`  
		Last Modified: Fri, 19 Jun 2026 03:59:46 GMT  
		Size: 27.3 MB (27314440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e1a24fd4caa08992f2d1c5c8c19ceb86d08e8bccaf598b2a4460fee01631603`  
		Last Modified: Fri, 19 Jun 2026 03:59:38 GMT  
		Size: 3.7 KB (3653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:925277ea2e0aaa2ed535c3a867810de8577760a78aa29850924fd196b60f33b0`  
		Last Modified: Fri, 19 Jun 2026 03:59:41 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.2-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:2fb36ee20386030dca39829512cf945c0e1d183606cdc0939324e123c874c953
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 KB (45760 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:32fd969b930911a93b2be4d0cf095ba80d0b3b351d534d29578e2d44c38391aa`

```dockerfile
```

-	Layers:
	-	`sha256:f88955a093e833438c5c2d9a4f0bbea35b468fba445e8b777f920d3c455c46da`  
		Last Modified: Fri, 19 Jun 2026 03:59:36 GMT  
		Size: 45.8 KB (45760 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.2-fpm-alpine` - linux; s390x

```console
$ docker pull joomla@sha256:c982e426a773595e46f1034c343e603f049095cd086395c68b0663da2d7fe0b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.5 MB (101463139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:035b647cd35dca2159611a2b3cb61f1ae01edf97b8f4d7d697f04f6b15432cbf`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Thu, 02 Jul 2026 20:41:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 02 Jul 2026 20:41:15 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 02 Jul 2026 20:41:15 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 02 Jul 2026 20:41:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:41:15 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:41:15 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:41:15 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:41:15 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:41:15 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 02 Jul 2026 20:41:15 GMT
ENV PHP_VERSION=8.2.32
# Thu, 02 Jul 2026 20:41:15 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.32.tar.xz.asc
# Thu, 02 Jul 2026 20:41:15 GMT
ENV PHP_SHA256=e02aa173c236c12791696254d607da680e6d5516f8f5c2339642de7c4f944bd2
# Thu, 02 Jul 2026 21:36:33 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 02 Jul 2026 21:36:33 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 21:41:18 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 02 Jul 2026 21:41:18 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 21:41:18 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 02 Jul 2026 21:41:19 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 02 Jul 2026 21:41:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 02 Jul 2026 21:41:19 GMT
WORKDIR /var/www/html
# Thu, 02 Jul 2026 21:41:19 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 02 Jul 2026 21:41:19 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 21:41:19 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 02 Jul 2026 21:41:19 GMT
CMD ["php-fpm"]
# Thu, 02 Jul 2026 22:35:44 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 02 Jul 2026 22:35:44 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 02 Jul 2026 22:35:44 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 		zstd 	; # buildkit
# Thu, 02 Jul 2026 22:38:04 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 		pecl install APCu-5.1.26; 	pecl install memcached-3.3.0; 	pecl install redis-6.2.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 02 Jul 2026 22:38:04 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 02 Jul 2026 22:38:04 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Thu, 02 Jul 2026 22:38:04 GMT
VOLUME [/var/www/html]
# Thu, 02 Jul 2026 22:38:04 GMT
ENV JOOMLA_VERSION=5.4.6
# Thu, 02 Jul 2026 22:38:04 GMT
ENV JOOMLA_SHA512=d4198b32a37cea890b24ab219b7d267e6a6df3373530d5e76eb7f4563868ef6caebefa7a2b9290065146ef733db2b0becc18d69f291730c767a25aa158cb9c16
# Thu, 02 Jul 2026 22:38:06 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/5.4.6/Joomla_5.4.6-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Thu, 02 Jul 2026 22:38:06 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 02 Jul 2026 22:38:06 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 02 Jul 2026 22:38:06 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 02 Jul 2026 22:38:06 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:456e3629146fe5c0dd41d3f3705f9e0e9c8d1ee227a9fad524cc647d65e3b35d`  
		Last Modified: Thu, 02 Jul 2026 20:46:59 GMT  
		Size: 3.7 MB (3666071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01d30c580e70f09376af9a8db44fc8ea6906e116df2e527d0dd2cc1ff4e3b256`  
		Last Modified: Thu, 02 Jul 2026 20:46:58 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c796754067eb590ee1e69f477e650c40d2d561ee9e24c969dcc40dd2595f2d`  
		Last Modified: Thu, 02 Jul 2026 20:46:58 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d9c1faefe31fa7d48eb9ecc792e5dbf93bfb6c812641a0e563d100da05b2a9`  
		Last Modified: Thu, 02 Jul 2026 21:41:31 GMT  
		Size: 12.2 MB (12185060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81a2f1a9726f345be52520165f7dd1e6dda9eddce34694c5250f9b09fa3dd4b4`  
		Last Modified: Thu, 02 Jul 2026 21:41:31 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78734e4a63fcefae1374344bd243fcaf801b840ff32b33b0377acea84c5e53af`  
		Last Modified: Thu, 02 Jul 2026 21:41:31 GMT  
		Size: 13.0 MB (13038152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f694c3fe46589451e10eedf8d1a406e5986589d8db6b5b458d64c22f097467e`  
		Last Modified: Thu, 02 Jul 2026 21:41:31 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7ccc3caa3d6a966df22ba55d9ca879dd1b0a6bd411a50dd66c1d693efc09cb`  
		Last Modified: Thu, 02 Jul 2026 21:41:32 GMT  
		Size: 22.1 KB (22142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff29ac39c1caa15ee05f2e6dee26b57391783ccc8ecbf129a35c00fe0962f75a`  
		Last Modified: Thu, 02 Jul 2026 21:41:32 GMT  
		Size: 22.2 KB (22162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bab0801500e3c8afb51eb9bc3420c6d666d4d6f96c5230d7630a854713e013df`  
		Last Modified: Thu, 02 Jul 2026 21:41:32 GMT  
		Size: 9.3 KB (9252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16a23c9e1b19dda2363679a782359f0cb8ed6abc72ad12bf97b1fcecefc603b4`  
		Last Modified: Thu, 02 Jul 2026 22:38:20 GMT  
		Size: 34.1 MB (34144715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35eb3dbebc86f27283100073939d0e6c01a6eaa92cd09efef42a5c9a6d0dddf8`  
		Last Modified: Thu, 02 Jul 2026 22:38:19 GMT  
		Size: 7.3 MB (7270774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6810db9231b2fa5065164c896ff8adb95b65702e0f689cac37b3f433687fcd3b`  
		Last Modified: Thu, 02 Jul 2026 22:38:18 GMT  
		Size: 72.1 KB (72061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f9683eb9c86380cb71b59183a6fb72fa9682da4c95c7c828a5968c2fbe40257`  
		Last Modified: Thu, 02 Jul 2026 22:38:18 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0f02e67ea8655b12563f14609a559573695954d5294f7fff257edf5cf3a2ec6`  
		Last Modified: Thu, 02 Jul 2026 22:38:20 GMT  
		Size: 27.3 MB (27314194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4754c2f8ee7aafb61924975b487abd11b2aa69b3f768ff18e63e14cf3bc4a9b5`  
		Last Modified: Thu, 02 Jul 2026 22:38:19 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a29ba5d0ed2054cad9ecb08850d4c1d5924c12646686b068d4d23da83588df0`  
		Last Modified: Thu, 02 Jul 2026 22:38:20 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.2-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:ac68da104becc4bfba08fed6aca212e7551e1f3f04879569db427b6ee19125d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 KB (45715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f263e580451500805d3eb672062f7f1b3941a45b7f3664f6667b85fd25048838`

```dockerfile
```

-	Layers:
	-	`sha256:63f99f11ec21629a3343a508cbb4373189312dbf45d6ef3255c8d01e461ded8b`  
		Last Modified: Thu, 02 Jul 2026 22:38:18 GMT  
		Size: 45.7 KB (45715 bytes)  
		MIME: application/vnd.in-toto+json
