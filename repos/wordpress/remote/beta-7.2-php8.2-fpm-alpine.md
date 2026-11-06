## `wordpress:beta-7.2-php8.2-fpm-alpine`

```console
$ docker pull wordpress@sha256:13faf73f0723401da98c563a6d70745fc7e74d0be818918a05067eaee8c52fae
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

### `wordpress:beta-7.2-php8.2-fpm-alpine` - linux; amd64

```console
$ docker pull wordpress@sha256:c4296e2f7870a41315479d39dc0479a9af3aab386c6087b5e71d0a14a4883bcb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.1 MB (118135183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:263b37e8f9d826a7fe52a531568b6c34ad60f1ba9406ddecad21dbab10048ef8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:04:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 19:04:21 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 19:04:21 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 19:04:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 19:04:21 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 19:04:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 19:04:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 19:04:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 19:04:21 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 05 Nov 2026 19:04:21 GMT
ENV PHP_VERSION=8.2.35
# Thu, 05 Nov 2026 19:04:21 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.35.tar.xz.asc
# Thu, 05 Nov 2026 19:04:21 GMT
ENV PHP_SHA256=5737b98601fe5ab1b8c5db0c82ed3158acb9283ed3081ffe2faffb9ac81455e6
# Thu, 05 Nov 2026 19:04:23 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 19:04:23 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:07:08 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 19:07:08 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:07:08 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 19:07:09 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 19:07:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 19:07:09 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 19:07:09 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 05 Nov 2026 19:07:09 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 19:07:09 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 05 Nov 2026 19:07:09 GMT
CMD ["php-fpm"]
# Thu, 05 Nov 2026 20:13:36 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 		imagemagick-heic 	; # buildkit
# Thu, 05 Nov 2026 20:14:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 05 Nov 2026 20:14:16 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Thu, 05 Nov 2026 20:14:16 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 05 Nov 2026 20:14:19 GMT
RUN set -eux; 	version='7.2-beta4'; 	sha1='10ece733e01d895936afb85e1862b94954242f91'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Thu, 05 Nov 2026 20:14:19 GMT
VOLUME [/var/www/html]
# Thu, 05 Nov 2026 20:14:19 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Thu, 05 Nov 2026 20:14:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 20:14:19 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Thu, 05 Nov 2026 20:14:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 20:14:19 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feb882b057ee5a2fec78e241c0030e6d8ce85884d193388ddb2191b13eb1e730`  
		Last Modified: Thu, 05 Nov 2026 19:07:16 GMT  
		Size: 3.5 MB (3496434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5a2058f2fc9d8cd3f9fe56f7ff7379bacf4e5c7d300b12502c481084a095627`  
		Last Modified: Thu, 05 Nov 2026 19:07:15 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c5bcecc2d58bbc5d081a917062f6f57c162bbdee0b04492b2ccbcb1029a8029`  
		Last Modified: Thu, 05 Nov 2026 19:07:15 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba262cd712b4ab08d6374c7ee4c645e13a712c2703c7863bb1862a5f49112349`  
		Last Modified: Thu, 05 Nov 2026 19:07:16 GMT  
		Size: 12.2 MB (12239440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac19663a0ab26bb4e7f6b4faacb733a456b7a322d2cda9c177bd478c7d666c3a`  
		Last Modified: Thu, 05 Nov 2026 19:07:16 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46b900389c8265239d634f19fef314740dddb0bda3c1f08acfb7598b20e78800`  
		Last Modified: Thu, 05 Nov 2026 19:07:17 GMT  
		Size: 13.2 MB (13217730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55246b4586f7154f5a0269191af414f006e160d844a75f0b73a190f8009ac235`  
		Last Modified: Thu, 05 Nov 2026 19:07:17 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4bc11e8a6bfeadcba58f89ea0883310bff03d851c9a3948e021884d8fef67b5`  
		Last Modified: Thu, 05 Nov 2026 19:07:17 GMT  
		Size: 22.3 KB (22340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5db262a3dae7bfddf61ca945b0d67cb2afe1c2892d776aee1d408a7da23ee20`  
		Last Modified: Thu, 05 Nov 2026 19:07:18 GMT  
		Size: 22.4 KB (22357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30756da07f957bde650d9f5077d3b0f9596be3040c3fcafd1783d223f5db2c9d`  
		Last Modified: Thu, 05 Nov 2026 19:07:18 GMT  
		Size: 9.2 KB (9250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:336a22b4dcd24a146dd7848dbdbc1d0d38b40d70f6a3830389dffd349217e5eb`  
		Last Modified: Thu, 05 Nov 2026 20:14:32 GMT  
		Size: 34.5 MB (34536608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a0a12862109d8e2a96d026f49148db4554252abeae73f8ffcbb95d0be8f346b`  
		Last Modified: Thu, 05 Nov 2026 20:14:30 GMT  
		Size: 8.7 MB (8742528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80728dc212dbe1477326190df3f0d541c08dec2b540361163cefe8d2d2568181`  
		Last Modified: Thu, 05 Nov 2026 20:14:30 GMT  
		Size: 309.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c58bd0876fb3ee34962bd91b972784e66ef61dba21b83a1b1fb46a6aaacc66ec`  
		Last Modified: Thu, 05 Nov 2026 20:14:30 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56c3f6f7e8e3b70154040b697b9f62816017217bcbe109bca18e708ed9330eab`  
		Last Modified: Thu, 05 Nov 2026 20:14:33 GMT  
		Size: 42.0 MB (41985616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14b50aaf2be162a2a4aeb912265e9e55d7f4bd649040e01595432cdb12ab5cc4`  
		Last Modified: Thu, 05 Nov 2026 20:14:32 GMT  
		Size: 2.4 KB (2436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ded589728d46e95488540d2c6f0f47f7ad6913ec3cf9e969bd9091d6c20f19ff`  
		Last Modified: Thu, 05 Nov 2026 20:14:32 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac2bc5cf39390d606c3d124c332c346e0d6a54310cf9d9bf7141cb217770be6`  
		Last Modified: Thu, 05 Nov 2026 20:14:33 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.2-php8.2-fpm-alpine` - unknown; unknown

```console
$ docker pull wordpress@sha256:32b3d9bd3784ecf4c4bfa100fc05383f898d84c0e126d25029f52dfaf57b7c64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1175993 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5f010400582384ba3474d9dcd58575095ca6820dde1751dc445dc1690f7b2e6`

```dockerfile
```

-	Layers:
	-	`sha256:ac2443908b5311f87f7e92748a4969b9267152da6526e53d50cc2643f6aa4ff7`  
		Last Modified: Thu, 05 Nov 2026 20:14:30 GMT  
		Size: 1.1 MB (1123819 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f7e4a091d22c3380e860aef75e2297cc77dbedbc84403401f8d892f31c91e3f`  
		Last Modified: Thu, 05 Nov 2026 20:14:30 GMT  
		Size: 52.2 KB (52174 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.2-php8.2-fpm-alpine` - linux; arm variant v6

```console
$ docker pull wordpress@sha256:978865eae767e6055e6758262c8ec0d6ff0b5ba993a25ca91ceead931b4f6241
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.6 MB (110605324 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:39392c0b9e652f57a1729a97a5412505cce44d98fd919089ac866ca401abfeec`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:32:42 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:32:42 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:32:42 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:32:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:32:42 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:32:42 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:32:42 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:32:42 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:32:42 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 05 Nov 2026 18:32:42 GMT
ENV PHP_VERSION=8.2.35
# Thu, 05 Nov 2026 18:32:42 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.35.tar.xz.asc
# Thu, 05 Nov 2026 18:32:42 GMT
ENV PHP_SHA256=5737b98601fe5ab1b8c5db0c82ed3158acb9283ed3081ffe2faffb9ac81455e6
# Thu, 05 Nov 2026 18:35:48 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:35:48 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:38:28 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 18:38:28 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:38:29 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 18:38:29 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 18:38:29 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 18:38:29 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 18:38:29 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 05 Nov 2026 18:38:29 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 18:38:29 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 05 Nov 2026 18:38:29 GMT
CMD ["php-fpm"]
# Thu, 05 Nov 2026 19:28:43 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 		imagemagick-heic 	; # buildkit
# Thu, 05 Nov 2026 19:29:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 05 Nov 2026 19:29:52 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Thu, 05 Nov 2026 19:29:52 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 05 Nov 2026 19:29:56 GMT
RUN set -eux; 	version='7.2-beta4'; 	sha1='10ece733e01d895936afb85e1862b94954242f91'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Thu, 05 Nov 2026 19:29:56 GMT
VOLUME [/var/www/html]
# Thu, 05 Nov 2026 19:29:56 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Thu, 05 Nov 2026 19:29:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:29:56 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Thu, 05 Nov 2026 19:29:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:29:56 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4964b793cbde39dd7bce89044b898cd7cd769f278a912f481d6e60597cf73d9`  
		Last Modified: Thu, 05 Nov 2026 18:35:36 GMT  
		Size: 3.5 MB (3455728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7103c9dd4f9db30a36b9d21c1c4cf170a3df760f99339aee9baf508ebf76946`  
		Last Modified: Thu, 05 Nov 2026 18:35:36 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e5100c29a0e9fac41f400dea8d1d844d6b542ef1cd5d70a7b1be1773fc873cb`  
		Last Modified: Thu, 05 Nov 2026 18:35:36 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0bbb9a7a269ed16b6004cf68d6bdc0151c24a26942991b920a161c4aed574a5`  
		Last Modified: Thu, 05 Nov 2026 18:38:35 GMT  
		Size: 12.2 MB (12239452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abe5175be6822880ec411c8dea2c1f2b73dbf42b72005e4525322b3cbc15b607`  
		Last Modified: Thu, 05 Nov 2026 18:38:35 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5251324a2e0f5d8dd6a1989b1dd7274bc1d6d170f13b59108e28df95040704e7`  
		Last Modified: Thu, 05 Nov 2026 18:38:35 GMT  
		Size: 12.0 MB (11962340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be0e83a7f62950e61266c08c6b30f65fb2b90870e7def58e2409d0f0bdb24907`  
		Last Modified: Thu, 05 Nov 2026 18:38:35 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:665232ec0f3d200dbae0cf3621081428645fd903b08517efe5f825a943a10f2b`  
		Last Modified: Thu, 05 Nov 2026 18:38:36 GMT  
		Size: 22.1 KB (22136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f328d051b61fcb49b150c4bb30cd91ffcc0bd3c8e15cc00e5318b17c0785f04`  
		Last Modified: Thu, 05 Nov 2026 18:38:36 GMT  
		Size: 22.1 KB (22148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f836ad6dfec0acf5e5bdacc049074523c961ffc27b5d80ac9e5e98b7fda57e4f`  
		Last Modified: Thu, 05 Nov 2026 18:38:37 GMT  
		Size: 9.3 KB (9252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28fa1d00051a6023d4b71ae40f329ab3038112ed1ffd6861f84d397ace3c5222`  
		Last Modified: Thu, 05 Nov 2026 19:30:05 GMT  
		Size: 30.8 MB (30787659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:413bd3bc62d8f1311fe14db2b7cc21cdee1901eb9418d1f1222d5a3be34375d7`  
		Last Modified: Thu, 05 Nov 2026 19:30:04 GMT  
		Size: 6.6 MB (6553361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41d68ca4933427b4d5ce03321762ebc2692dfa617bdff1764c9f0bbee93040dc`  
		Last Modified: Thu, 05 Nov 2026 19:30:04 GMT  
		Size: 309.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55c5310394dab42b6f08816347dd9458d237e161d8cec5b54e27bb9477227663`  
		Last Modified: Thu, 05 Nov 2026 19:30:04 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14036c4b24fa3b2c1bfb01d8d71af801eb9d38a573de9b5882763fe4ed79fcb7`  
		Last Modified: Thu, 05 Nov 2026 19:30:06 GMT  
		Size: 42.0 MB (41985633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15ea7c30dd9980352d2f9c0bf815ff332bdf763dd07d3f26952e929f6be05d2a`  
		Last Modified: Thu, 05 Nov 2026 19:30:05 GMT  
		Size: 2.4 KB (2439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab4b90721780caa78bde86b3041c6bd29f29dcf84be9751b3febe262eb80cba0`  
		Last Modified: Thu, 05 Nov 2026 19:30:06 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3027e616dd0e8014ad0237bbe9395cd5963fd2e49086459838b67d0197e5b16`  
		Last Modified: Thu, 05 Nov 2026 19:30:06 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.2-php8.2-fpm-alpine` - unknown; unknown

```console
$ docker pull wordpress@sha256:947d30ee5cc0d92241f110a7aac485ebcf8c3175295c624da4db8cda26914785
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **52.1 KB (52104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6171e9742d1b033243912c9910c72e2354bfcbb682e44884cdcbff1dc37f417`

```dockerfile
```

-	Layers:
	-	`sha256:699f5d9bb445632178e2e7dfc688effe467619462341b821e1097f45cd88d1f5`  
		Last Modified: Thu, 05 Nov 2026 19:30:04 GMT  
		Size: 52.1 KB (52104 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.2-php8.2-fpm-alpine` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:f6e5e4a607f64c73df63d795fb15c45fc1cd6be159a4f8dcdac9c59fa4554d40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **108.7 MB (108681269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58620723d8c7257808ed646ce4bfe318356d0a0ae8c65807a6049ae4d14787de`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:30:37 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:30:37 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:30:37 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:30:37 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:30:37 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:30:37 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:30:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:30:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:30:37 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 05 Nov 2026 18:30:37 GMT
ENV PHP_VERSION=8.2.35
# Thu, 05 Nov 2026 18:30:37 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.35.tar.xz.asc
# Thu, 05 Nov 2026 18:30:37 GMT
ENV PHP_SHA256=5737b98601fe5ab1b8c5db0c82ed3158acb9283ed3081ffe2faffb9ac81455e6
# Thu, 05 Nov 2026 18:33:46 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:33:46 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:36:29 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 18:36:29 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:36:29 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 18:36:30 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 18:36:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 18:36:30 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 18:36:30 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 05 Nov 2026 18:36:30 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 18:36:30 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 05 Nov 2026 18:36:30 GMT
CMD ["php-fpm"]
# Thu, 05 Nov 2026 19:36:44 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 		imagemagick-heic 	; # buildkit
# Thu, 05 Nov 2026 19:37:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 05 Nov 2026 19:37:53 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Thu, 05 Nov 2026 19:37:53 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 05 Nov 2026 19:37:56 GMT
RUN set -eux; 	version='7.2-beta4'; 	sha1='10ece733e01d895936afb85e1862b94954242f91'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Thu, 05 Nov 2026 19:37:56 GMT
VOLUME [/var/www/html]
# Thu, 05 Nov 2026 19:37:56 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Thu, 05 Nov 2026 19:37:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:37:57 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Thu, 05 Nov 2026 19:37:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:37:57 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce390dde0a218645f5f05c185f9d62c9f2be7ef324ef2ed63ab35c36c241edcc`  
		Last Modified: Thu, 05 Nov 2026 18:33:35 GMT  
		Size: 3.3 MB (3266212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9301253f4abf854728aab3194f14a0904113c4776dbe708bb03b03314e132243`  
		Last Modified: Thu, 05 Nov 2026 18:33:34 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:416f7f6c7ec893fc11b45c87bc9e4aaef335411a915cd4275f406ee7355f535c`  
		Last Modified: Thu, 05 Nov 2026 18:33:34 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:591b2629985ae6b6e477dc72e399b399d4c03fd8f53922c659165f4af39e3ac1`  
		Last Modified: Thu, 05 Nov 2026 18:36:37 GMT  
		Size: 12.2 MB (12239454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46f413aa325902684f459d3ca17e2c98ec477f4bb63b786a97e5fbf78db94e49`  
		Last Modified: Thu, 05 Nov 2026 18:36:36 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:698a0706d815aa466d2cfc876019f5968f54d1eb45eacc163db82db6337cfc4c`  
		Last Modified: Thu, 05 Nov 2026 18:36:36 GMT  
		Size: 11.3 MB (11257504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59dff84b18fb7b69f104b894a1d0182b830822dce7c6f20e1ba65ef86520b538`  
		Last Modified: Thu, 05 Nov 2026 18:36:36 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ada0dda416bd50710f5539aeff8d736f4b5b66984e560861d287186ab2b8124`  
		Last Modified: Thu, 05 Nov 2026 18:36:37 GMT  
		Size: 22.1 KB (22135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:676a1e8d937d2688f64adf867648341a62376fd7bdfd5f6b44a5b4038014d4cf`  
		Last Modified: Thu, 05 Nov 2026 18:36:37 GMT  
		Size: 22.2 KB (22155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a68543e89839c87539b9e57963b4adf085ef2a4ac286af3e8c722cf2850de202`  
		Last Modified: Thu, 05 Nov 2026 18:36:38 GMT  
		Size: 9.3 KB (9252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f5d6b5e8910777203b96039763920751f635d37c7a14f68f5c819054ed9a4bc`  
		Last Modified: Thu, 05 Nov 2026 19:38:08 GMT  
		Size: 29.0 MB (28952586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f5ad63368f3c05a24a3d0a3bc557daf9edbe2d85a2b9fd1612fc868e9d3b298`  
		Last Modified: Thu, 05 Nov 2026 19:38:08 GMT  
		Size: 7.6 MB (7649397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3796788a7dcccd10bc469d343437172a12639b2d70b11d943f9ce52a81c68271`  
		Last Modified: Thu, 05 Nov 2026 19:38:07 GMT  
		Size: 310.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f93ca81883230409bdd4b7c49da87a5ac5dfa151b54a37fd97fd79188bd231f2`  
		Last Modified: Thu, 05 Nov 2026 19:38:07 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4c3f72ee64159d26866d08878ad5756d4523198509c231994fca880f7cb0998`  
		Last Modified: Thu, 05 Nov 2026 19:38:10 GMT  
		Size: 42.0 MB (41985618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dba9e80ecc8073bd47d43ae135f8ebd8fa1513e9bcc3068934a5f4715a4923e4`  
		Last Modified: Thu, 05 Nov 2026 19:38:09 GMT  
		Size: 2.4 KB (2438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84ed74cf3b07e747f97b4c334416aa34b845eea2eca9214a5f0067c5f3147f79`  
		Last Modified: Thu, 05 Nov 2026 19:38:09 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6452bb10106754c887297929999d359dbc94adfda271ac1a710d910aaff1ba2`  
		Last Modified: Thu, 05 Nov 2026 19:38:10 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.2-php8.2-fpm-alpine` - unknown; unknown

```console
$ docker pull wordpress@sha256:77b846f07883c4970765dd9b4a7b4b29971dfa228d9dc40c8450bca63d4334ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1174279 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cba5b51163a8028bc7282536ba44b9b4bd1c940b651447b90a759fa29b13cc9`

```dockerfile
```

-	Layers:
	-	`sha256:67be168fab7c53fe07f22a8379f07d01fa4c568d25e70448f15e40773e2dcb53`  
		Last Modified: Thu, 05 Nov 2026 19:38:07 GMT  
		Size: 1.1 MB (1121961 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:615d8994f5d85d1b058053f14ae0df698c65517f70f6851b6fb78f3107f656f4`  
		Last Modified: Thu, 05 Nov 2026 19:38:07 GMT  
		Size: 52.3 KB (52318 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.2-php8.2-fpm-alpine` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:5e5b130bd6891c3f09aa3f2770fcf21e68f07d41619f1fbc877c77a53b5c566b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.7 MB (117703510 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eff49fb16e05099f0ff8db5d4229e17533a9c13ac8e59b7b1b647ad4c841a269`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:55:11 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:55:11 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:55:11 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:55:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:55:11 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:55:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:55:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:55:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:55:11 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 05 Nov 2026 18:55:11 GMT
ENV PHP_VERSION=8.2.35
# Thu, 05 Nov 2026 18:55:11 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.35.tar.xz.asc
# Thu, 05 Nov 2026 18:55:11 GMT
ENV PHP_SHA256=5737b98601fe5ab1b8c5db0c82ed3158acb9283ed3081ffe2faffb9ac81455e6
# Thu, 05 Nov 2026 18:58:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:58:47 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:02:38 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 19:02:38 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:02:39 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 19:02:39 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 19:02:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 19:02:40 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 19:02:40 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 05 Nov 2026 19:02:40 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 19:02:40 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 05 Nov 2026 19:02:40 GMT
CMD ["php-fpm"]
# Thu, 05 Nov 2026 20:13:05 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 		imagemagick-heic 	; # buildkit
# Thu, 05 Nov 2026 20:13:55 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 05 Nov 2026 20:13:55 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Thu, 05 Nov 2026 20:13:55 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 05 Nov 2026 20:13:58 GMT
RUN set -eux; 	version='7.2-beta4'; 	sha1='10ece733e01d895936afb85e1862b94954242f91'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Thu, 05 Nov 2026 20:13:58 GMT
VOLUME [/var/www/html]
# Thu, 05 Nov 2026 20:13:58 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Thu, 05 Nov 2026 20:13:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 20:13:58 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Thu, 05 Nov 2026 20:13:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 20:13:58 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16bb998498e8dd58cc6b9ba08a3cb0957604a4d9799f3bf510cdfb5da5f8a142`  
		Last Modified: Thu, 05 Nov 2026 18:58:36 GMT  
		Size: 3.5 MB (3512471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:682e295bf87ef63c0896bda2142feb20a0bbd7720cc63cc0f9394dd1528442d9`  
		Last Modified: Thu, 05 Nov 2026 18:58:36 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2c5bccc9cb92cf8cca61b3eeabf6d25d4c2dc70014f6c86c0ff64a76b675f7e`  
		Last Modified: Thu, 05 Nov 2026 18:58:36 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1deb6f4bae9cd43c6c959716f5dafc6add7a5e918765553b83227f434216a62e`  
		Last Modified: Thu, 05 Nov 2026 19:02:46 GMT  
		Size: 12.2 MB (12239431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c08bda079c033336caa31f31d6b0674c540b5ff18bf43c1a4ac1b320908cb5f5`  
		Last Modified: Thu, 05 Nov 2026 19:02:46 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9d698ded6a36b7064137ae123fd146abb97ace203beb851534e31277082186f`  
		Last Modified: Thu, 05 Nov 2026 19:02:46 GMT  
		Size: 13.1 MB (13114250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:028cdb2722b819e4d6b5d4c2ad52c83cdbdf7be14c9032d77036b5d37076a091`  
		Last Modified: Thu, 05 Nov 2026 19:02:46 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e7dc877b0446ac7fe70f153c27f1d5db413870566b5d01c7ae368d2d265c4a1`  
		Last Modified: Thu, 05 Nov 2026 19:02:47 GMT  
		Size: 22.2 KB (22165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ff3126efecd31314e2905332d179862ff8a3c0552a9a3ac02e8c160f393a69c`  
		Last Modified: Thu, 05 Nov 2026 19:02:47 GMT  
		Size: 22.2 KB (22174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64431241db19cdebd85e471a07563ad0b9e7aa66e181f12fd958cea569a5ccc3`  
		Last Modified: Thu, 05 Nov 2026 19:02:48 GMT  
		Size: 9.3 KB (9253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c2803d2aca5c88dce69f1d7133c07b61698a017a538b63cfea7eb3d254d183`  
		Last Modified: Thu, 05 Nov 2026 20:14:10 GMT  
		Size: 33.7 MB (33720475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0997d1a3355bd08d158bba0fc7e74f378159d8d081e21261591dcb07505777ca`  
		Last Modified: Thu, 05 Nov 2026 20:14:10 GMT  
		Size: 8.9 MB (8877866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e0ab5ae54c44a7a43099d02dfff9819ca708f99958912126a59787a347d5742`  
		Last Modified: Thu, 05 Nov 2026 20:14:09 GMT  
		Size: 308.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dcf42e21c3912116d7c5c2f77b4e5552cae449492229b7c5022b1d4cbf0bb82`  
		Last Modified: Thu, 05 Nov 2026 20:14:09 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d0734ce0423d498e165034b3dc7e55858e3e20b52225b7fdcee4002ed0b178a`  
		Last Modified: Thu, 05 Nov 2026 20:14:12 GMT  
		Size: 42.0 MB (41985625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:437dde257f94da09bade39bc5fccec96e9e7963f2a9c50a5b51000528dd476da`  
		Last Modified: Thu, 05 Nov 2026 20:14:11 GMT  
		Size: 2.4 KB (2438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9968f249f8e7e5324a7678695885fca9321fd98a45bcd1b7c303d8bb21f14b2c`  
		Last Modified: Thu, 05 Nov 2026 20:14:11 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30087121203a4eebe798bb3d18c09b88f82ccb4215dbfdcea1fa1b84a195ce26`  
		Last Modified: Thu, 05 Nov 2026 20:14:12 GMT  
		Size: 191.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.2-php8.2-fpm-alpine` - unknown; unknown

```console
$ docker pull wordpress@sha256:f1e82a89325cc9375d136bbcb5a99988dd73a757ef462a256bd0e1d55ae45939
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1174334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9116c680d114bc68cc14f92d35cd813df95de73b620325efb87dbf1d32c830a7`

```dockerfile
```

-	Layers:
	-	`sha256:1748e38b706a6c6182503fef8d9e61e13fea5d7b91e85389063ef20a80ac88b7`  
		Last Modified: Thu, 05 Nov 2026 20:14:10 GMT  
		Size: 1.1 MB (1121981 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:61a7632aadd6b87300e967b1972b02ab0b74d2e3064c4b2a74263e6c5cb2c88d`  
		Last Modified: Thu, 05 Nov 2026 20:14:09 GMT  
		Size: 52.4 KB (52353 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.2-php8.2-fpm-alpine` - linux; 386

```console
$ docker pull wordpress@sha256:be46fa536bb385ecaf12ba8f383e552b6d19a406d56ac15a5aa703709c6e35a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **117.6 MB (117624745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a00ba18dd102098cdce610a87bfe9a5eed21a627af484d1b63d59e16d21146a6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:35 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:16:35 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:16:35 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:16:35 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:16:35 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:16:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:16:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:16:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:16:35 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 05 Nov 2026 18:16:35 GMT
ENV PHP_VERSION=8.2.35
# Thu, 05 Nov 2026 18:16:35 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.35.tar.xz.asc
# Thu, 05 Nov 2026 18:16:35 GMT
ENV PHP_SHA256=5737b98601fe5ab1b8c5db0c82ed3158acb9283ed3081ffe2faffb9ac81455e6
# Thu, 05 Nov 2026 18:23:55 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:23:56 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:26:42 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 18:26:43 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:26:43 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 18:26:44 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 18:26:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 18:26:44 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 18:26:44 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 05 Nov 2026 18:26:44 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 18:26:44 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 05 Nov 2026 18:26:44 GMT
CMD ["php-fpm"]
# Thu, 05 Nov 2026 18:43:54 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 		imagemagick-heic 	; # buildkit
# Thu, 05 Nov 2026 18:44:38 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 05 Nov 2026 18:44:38 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Thu, 05 Nov 2026 18:44:38 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 05 Nov 2026 18:45:02 GMT
RUN set -eux; 	version='7.2-beta4'; 	sha1='10ece733e01d895936afb85e1862b94954242f91'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Thu, 05 Nov 2026 18:45:02 GMT
VOLUME [/var/www/html]
# Thu, 05 Nov 2026 18:45:02 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Thu, 05 Nov 2026 18:45:02 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:45:02 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Thu, 05 Nov 2026 18:45:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:45:02 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65a0e4b2384aaf1431781581eb91ea8b71c2eb77be02f584a02b1ca5aa52d72f`  
		Last Modified: Thu, 05 Nov 2026 18:20:11 GMT  
		Size: 3.5 MB (3532749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bacfbc4398892ee8d38d0da741b851cd87c62a44033a410717b11f5cff6000b2`  
		Last Modified: Thu, 05 Nov 2026 18:20:10 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b593db032876cd213206cc1cf61473a6a407cc84758d1b22951166593057e7`  
		Last Modified: Thu, 05 Nov 2026 18:20:10 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac98cc4e621803264061cf9f578bd98b430bdee568253451fcb98f239e77c3a`  
		Last Modified: Thu, 05 Nov 2026 18:26:50 GMT  
		Size: 12.2 MB (12239428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:621fae1c54dbd4b26d7269dcfce64290e4e221c80b87577a3c5891bd554a5bba`  
		Last Modified: Thu, 05 Nov 2026 18:26:50 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb180f8f52d10e37a1e43dbaee935e47d2739416dcbe54e80578bcdc99f92031`  
		Last Modified: Thu, 05 Nov 2026 18:26:51 GMT  
		Size: 13.5 MB (13523342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e8aa44a02add644f68eb33de4c0f7a426c334c2589232d3354b22f7fcd2ab38`  
		Last Modified: Thu, 05 Nov 2026 18:26:50 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79d55248bd2eb114e0fa0b8e8efc5d374bbc46cdd9338212d62974413a43ddfd`  
		Last Modified: Thu, 05 Nov 2026 18:26:51 GMT  
		Size: 22.3 KB (22342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5313394b52eaf4b8d71bf8e101dc8a955574ee5d3e48c5aca847b804a4ff6552`  
		Last Modified: Thu, 05 Nov 2026 18:26:51 GMT  
		Size: 22.4 KB (22354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a45dbd76dd82e7638eb94517f995716b290574fd1c103cf59e48d450dd532cb4`  
		Last Modified: Thu, 05 Nov 2026 18:26:52 GMT  
		Size: 9.2 KB (9250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:401514d2db26757550e50a1baf8b5916b580eb652e60a50059cbcd2917759bf1`  
		Last Modified: Thu, 05 Nov 2026 18:44:51 GMT  
		Size: 34.7 MB (34693889 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d67554b2dfdd21ecfd365b4eb58db3a48ec8da0c6139c2681bbc2abbc587d984`  
		Last Modified: Thu, 05 Nov 2026 18:44:51 GMT  
		Size: 7.9 MB (7906204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:821de23d3ec7e0f38defcb66de7f99fac04baa45225a179f1873fecd8c8b9d6b`  
		Last Modified: Thu, 05 Nov 2026 18:44:50 GMT  
		Size: 310.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b21f7562b739e3a1005672493afd6c854c45f643e0b012413f33cd8189ee1fac`  
		Last Modified: Thu, 05 Nov 2026 18:44:50 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3d67d69559b213e37b65f023b1936df795b4d5a61ea81f7aac070c83692bda2`  
		Last Modified: Thu, 05 Nov 2026 18:45:13 GMT  
		Size: 42.0 MB (41985614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c7bf647ea8f062d57f6f169ba2e28a57d92c9c6329a90359b52fee10f77057c`  
		Last Modified: Thu, 05 Nov 2026 18:45:12 GMT  
		Size: 2.4 KB (2435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee186807f296617be5f53d7e70a6e0f1f6974fb06fba26479a00b67178dc2760`  
		Last Modified: Thu, 05 Nov 2026 18:45:12 GMT  
		Size: 1.8 KB (1760 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e53321a46cf22536b795e2e02b5a524bbdc0cd7356c5ba2ca1f628359f26473e`  
		Last Modified: Thu, 05 Nov 2026 18:45:12 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.2-php8.2-fpm-alpine` - unknown; unknown

```console
$ docker pull wordpress@sha256:50bd5c16ce5c39299744818dd15d4f054cb4949350fc8429b7add7b5d2c2eecb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1175926 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d29715b1e304ef8cdc42d4fd1c4c37624017ef039b374653d4826a2f886e8562`

```dockerfile
```

-	Layers:
	-	`sha256:b20f8fdea1fa40cb21c4a6090ea6b9b562966d64a307ac23db8e0a49bb47c957`  
		Last Modified: Thu, 05 Nov 2026 18:45:12 GMT  
		Size: 1.1 MB (1123794 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b50c5034cdeb0cf02ca068b7350299d9b6024151d356e699a7ef06c193c64de`  
		Last Modified: Thu, 05 Nov 2026 18:45:12 GMT  
		Size: 52.1 KB (52132 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.2-php8.2-fpm-alpine` - linux; ppc64le

```console
$ docker pull wordpress@sha256:7081a43bdf2d997c03aeb442254bcc9a5f2f02c663e3b1feb03bb3359bf81fcc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **119.8 MB (119808041 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4051c44be946065d69d0bfcd1e97f8cbb30ba5142a5c0c26681a4fb471aedc52`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 05 Nov 2026 21:37:46 GMT
ENV PHP_VERSION=8.2.35
# Thu, 05 Nov 2026 21:37:46 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.35.tar.xz.asc
# Thu, 05 Nov 2026 21:37:46 GMT
ENV PHP_SHA256=5737b98601fe5ab1b8c5db0c82ed3158acb9283ed3081ffe2faffb9ac81455e6
# Thu, 05 Nov 2026 22:37:38 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 22:37:40 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 22:43:10 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 22:43:16 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 22:43:19 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 22:43:21 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 22:43:21 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 22:43:21 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 22:43:22 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 05 Nov 2026 22:43:22 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 22:43:22 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 05 Nov 2026 22:43:22 GMT
CMD ["php-fpm"]
# Fri, 06 Nov 2026 09:56:02 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 		imagemagick-heic 	; # buildkit
# Fri, 06 Nov 2026 09:57:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Fri, 06 Nov 2026 09:57:50 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Fri, 06 Nov 2026 09:57:51 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Fri, 06 Nov 2026 10:07:08 GMT
RUN set -eux; 	version='7.2-beta4'; 	sha1='10ece733e01d895936afb85e1862b94954242f91'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Fri, 06 Nov 2026 10:07:09 GMT
VOLUME [/var/www/html]
# Fri, 06 Nov 2026 10:07:09 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Fri, 06 Nov 2026 10:07:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 06 Nov 2026 10:07:09 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Fri, 06 Nov 2026 10:07:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Nov 2026 10:07:09 GMT
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
	-	`sha256:8f078e973fafc8e0575fd96fe43cd0b2f917489477fba5d0a34e8706ce3f6a74`  
		Last Modified: Thu, 05 Nov 2026 22:42:14 GMT  
		Size: 12.2 MB (12239441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb581f142a472fd6ce902e2a350a65a0b32b679a0846ae49616373d44b1f163f`  
		Last Modified: Thu, 05 Nov 2026 22:42:14 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b4db14c286312e106ae4f7fa12be5233727705579f2f63cd5053f087cb206bc`  
		Last Modified: Thu, 05 Nov 2026 22:43:35 GMT  
		Size: 13.8 MB (13775932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76d165e8248afd1460aca238d2f3886f4a0be4794241b3bee14cb7ef733f84d`  
		Last Modified: Thu, 05 Nov 2026 22:43:35 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1efa3f0462c24186d9e20d53888b4deea9e0f179761ba32ce748be3f587899d2`  
		Last Modified: Thu, 05 Nov 2026 22:43:35 GMT  
		Size: 22.2 KB (22180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ec3069a6dff93e09324b34186bfe71ce21fa526054bb75fdf125c479881a8f8`  
		Last Modified: Thu, 05 Nov 2026 22:43:35 GMT  
		Size: 22.2 KB (22208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f98415a56082c4c353c79f50db1750d7a2652e7757e9cc2e652da197b6b1343`  
		Last Modified: Thu, 05 Nov 2026 22:43:36 GMT  
		Size: 9.3 KB (9254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1a5ea3539f48d974e810f0adfd1ddb3ad15a99f2b6347e71f195cbc638de99c`  
		Last Modified: Fri, 06 Nov 2026 09:58:35 GMT  
		Size: 35.7 MB (35672690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3743630aab928a04b786fdf1022bca53e30ecd315e0bf56f68c3b35fdb166e24`  
		Last Modified: Fri, 06 Nov 2026 09:58:34 GMT  
		Size: 8.6 MB (8576847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cd9844e99819b660f0dbe430a1ad27693419fffa2193b7c5456e83a88fc252b`  
		Last Modified: Fri, 06 Nov 2026 09:58:34 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75290dd0d341ef7fefe8210f9b5106d8279aced87773720eba7a6cdc44fdace4`  
		Last Modified: Fri, 06 Nov 2026 09:58:34 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afc262f8365ddeabd3950aa2c0e382f424a105ced4403aa933d663e2807d3b97`  
		Last Modified: Fri, 06 Nov 2026 10:07:33 GMT  
		Size: 42.0 MB (41985625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fa626ea8feb145d72007022ad400ecc85894f57b482708371d16f144d038824`  
		Last Modified: Fri, 06 Nov 2026 10:07:32 GMT  
		Size: 2.4 KB (2439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f336cc6d012c31ed2660d809a7f4a64542274c66ea892bd5e665f96f83daeec`  
		Last Modified: Fri, 06 Nov 2026 10:07:32 GMT  
		Size: 1.8 KB (1768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e4e4daeb727d5456bf753b324cd2e9662fe4afea433ae1f1293032fa3361cb1`  
		Last Modified: Fri, 06 Nov 2026 10:07:32 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.2-php8.2-fpm-alpine` - unknown; unknown

```console
$ docker pull wordpress@sha256:4e274a17ee72c75c02551e676c834058f022d42b90b7ddf581a6bd23d185b4c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1174186 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:add1522242b8cc15e4467097efd3e7cd4a91829fab3237d7b03c37c11c9cfeee`

```dockerfile
```

-	Layers:
	-	`sha256:01d0830c8e4fb44e664e917f8f7f4bfcc5589d735d967216cf9e8b6fc08a922a`  
		Last Modified: Fri, 06 Nov 2026 10:07:32 GMT  
		Size: 1.1 MB (1121958 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:713814d5f9054276fd7564633859ed80e823f6e6afc70ed37145b1be19e341a7`  
		Last Modified: Fri, 06 Nov 2026 10:07:32 GMT  
		Size: 52.2 KB (52228 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.2-php8.2-fpm-alpine` - linux; riscv64

```console
$ docker pull wordpress@sha256:e8206d34f8db216d6acb78b5007168dcb110cb823e643bff4dcaa78e45e5d7f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **114.5 MB (114453487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbacfe53e59e1c4a46554c37885d8ae1141f160405f5fb20edc0240d6b37388a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Sat, 24 Oct 2026 16:59:15 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Sat, 24 Oct 2026 16:59:15 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 24 Oct 2026 16:59:15 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 24 Oct 2026 16:59:15 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHP_VERSION=8.2.35
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.35.tar.xz.asc
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHP_SHA256=5737b98601fe5ab1b8c5db0c82ed3158acb9283ed3081ffe2faffb9ac81455e6
# Sun, 25 Oct 2026 16:54:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Sun, 25 Oct 2026 16:54:13 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sun, 25 Oct 2026 18:38:47 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sun, 25 Oct 2026 18:38:47 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sun, 25 Oct 2026 18:38:52 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sun, 25 Oct 2026 18:38:56 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sun, 25 Oct 2026 18:38:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sun, 25 Oct 2026 18:38:57 GMT
WORKDIR /var/www/html
# Sun, 25 Oct 2026 18:38:57 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Sun, 25 Oct 2026 18:38:57 GMT
STOPSIGNAL SIGQUIT
# Sun, 25 Oct 2026 18:38:57 GMT
EXPOSE map[9000/tcp:{}]
# Sun, 25 Oct 2026 18:38:57 GMT
CMD ["php-fpm"]
# Sun, 01 Nov 2026 09:19:26 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 		imagemagick-heic 	; # buildkit
# Sun, 01 Nov 2026 09:33:00 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Sun, 01 Nov 2026 09:33:01 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Sun, 01 Nov 2026 09:33:01 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Wed, 04 Nov 2026 14:49:52 GMT
RUN set -eux; 	version='7.2-beta4'; 	sha1='10ece733e01d895936afb85e1862b94954242f91'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Wed, 04 Nov 2026 14:49:53 GMT
VOLUME [/var/www/html]
# Wed, 04 Nov 2026 14:49:53 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Wed, 04 Nov 2026 14:49:53 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 04 Nov 2026 14:49:53 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Wed, 04 Nov 2026 14:49:53 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 04 Nov 2026 14:49:53 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c78eff1dba649354d5f1624680b39758fd75d4c2f426fb2d4e2be86e1ad12e27`  
		Last Modified: Sat, 24 Oct 2026 18:03:49 GMT  
		Size: 3.6 MB (3637070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adff7d7e828c2b89fff33664584cc15a414f868fa8f6880adb903e1b1ee78be6`  
		Last Modified: Sat, 24 Oct 2026 18:03:48 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ffc140b5c63bfa44ee1e29819cfa6b34b26660b67cda72d06898efd07d37316`  
		Last Modified: Sat, 24 Oct 2026 18:03:48 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aae64206ca35fe28d1cd6ef90d6465e7b910aa3653ac80c6d14b879c91305fa`  
		Last Modified: Sun, 25 Oct 2026 17:46:13 GMT  
		Size: 12.2 MB (12239471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45465ed1f42398b5f7e66d62531ca771013442635566a6bbc7b28844d4a44aa6`  
		Last Modified: Sun, 25 Oct 2026 17:46:09 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0c12e4bb96b6b2cf36bde224e48ec3851ac6a8c2c7759ae4b5eb8f5d80bd389`  
		Last Modified: Sun, 25 Oct 2026 18:39:57 GMT  
		Size: 12.4 MB (12425381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30ab5b1b29e10f3249149e0c29bed02b37ec573b412504779aeca24bcd0345cb`  
		Last Modified: Sun, 25 Oct 2026 18:39:55 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:548ea87808b22d4b390fe3038401880ba8453ce5baed076d3163ec5791fb6c3b`  
		Last Modified: Sun, 25 Oct 2026 18:39:56 GMT  
		Size: 22.2 KB (22188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46120fab5d4a251d58b68820ee6db894b8e256e2d47bd0dbf4e22cdd65cde95e`  
		Last Modified: Sun, 25 Oct 2026 18:39:55 GMT  
		Size: 22.2 KB (22204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c6faee47f6433062574397f552d3eff7f5382d41bd9966361a09a9292ae8e04`  
		Last Modified: Sun, 25 Oct 2026 18:39:57 GMT  
		Size: 9.3 KB (9253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b9d5e3dca453a72f6658269fe80c0f392531107786b032e6622c7b598cad78f`  
		Last Modified: Sun, 01 Nov 2026 09:35:30 GMT  
		Size: 33.7 MB (33655593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:089abf47ae52c721a2013e13f8d3619fb2105b99134980347d90dfc8d917d17b`  
		Last Modified: Sun, 01 Nov 2026 09:35:22 GMT  
		Size: 6.9 MB (6866794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a4a85bacfbd72750a38892b55f805d328bfdd441ed42a41c94e73fdfefd0030`  
		Last Modified: Sun, 01 Nov 2026 09:35:20 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2461274c317116a5b4cb6237669b812233cfcadae7c57a89c4585236b8da779`  
		Last Modified: Sun, 01 Nov 2026 09:35:20 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12514bbae1f30d8de4c15ba6eb95377a8311b1ede15532f1f8afa4f2cae07d91`  
		Last Modified: Wed, 04 Nov 2026 14:52:12 GMT  
		Size: 42.0 MB (41985626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:152452fb42e8f6a3405adea907b08b41ccae1b9e366b510eafeffdb1af32e219`  
		Last Modified: Wed, 04 Nov 2026 14:52:05 GMT  
		Size: 2.4 KB (2442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89cbec0969068f73076fddff0c14d3b9ff52354aad5d7ccf6583219cb59db8b4`  
		Last Modified: Wed, 04 Nov 2026 14:52:05 GMT  
		Size: 1.8 KB (1771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57309d34b41694c905462d034486f9d9193d26299dd31c1183a0490eef7ec709`  
		Last Modified: Wed, 04 Nov 2026 14:52:05 GMT  
		Size: 200.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.2-php8.2-fpm-alpine` - unknown; unknown

```console
$ docker pull wordpress@sha256:2b40666fbf40ebe618d1210f08f214f48bec9beac59e178565096aa4a9c52d5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1174178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d512174461a7be75e30ea5640571db010a59e5fbbf281bf7fc0eed90e85ed216`

```dockerfile
```

-	Layers:
	-	`sha256:af05405b715bf431f74c0b32b10efba7e3e06f7013fa9ec6c03e3316f1368fce`  
		Last Modified: Wed, 04 Nov 2026 14:52:05 GMT  
		Size: 1.1 MB (1121950 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29cbf1782aaf209fd28ab0f0384c135bac28eb9a4ceb58a322062efcb7a4f7aa`  
		Last Modified: Wed, 04 Nov 2026 14:52:05 GMT  
		Size: 52.2 KB (52228 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.2-php8.2-fpm-alpine` - linux; s390x

```console
$ docker pull wordpress@sha256:9bcd1133fe9c7483d064db3e1d2873a2db65dc2b39a5a4ddbcb83c8af61b25dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **118.5 MB (118475375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9c5c643f465e58b6f67fb10e732d4aecfab67f07c0c89a910f0821b44b7dc57`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:18:58 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:18:58 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:18:58 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:18:58 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHP_VERSION=8.2.35
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.35.tar.xz.asc
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHP_SHA256=5737b98601fe5ab1b8c5db0c82ed3158acb9283ed3081ffe2faffb9ac81455e6
# Thu, 05 Nov 2026 18:47:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:47:03 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:51:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 18:51:41 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:51:42 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 18:51:44 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 18:51:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 18:51:44 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 18:51:45 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 05 Nov 2026 18:51:45 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 18:51:45 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 05 Nov 2026 18:51:45 GMT
CMD ["php-fpm"]
# Thu, 05 Nov 2026 21:36:06 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 		imagemagick-heic 	; # buildkit
# Thu, 05 Nov 2026 21:37:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 05 Nov 2026 21:37:24 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Thu, 05 Nov 2026 21:37:25 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 05 Nov 2026 21:37:28 GMT
RUN set -eux; 	version='7.2-beta4'; 	sha1='10ece733e01d895936afb85e1862b94954242f91'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Thu, 05 Nov 2026 21:37:29 GMT
VOLUME [/var/www/html]
# Thu, 05 Nov 2026 21:37:29 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Thu, 05 Nov 2026 21:37:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 21:37:29 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Thu, 05 Nov 2026 21:37:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 21:37:29 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9722c0427342697b5cdc3ada96c16379515126b96d9784dc533dd21780acaa3d`  
		Last Modified: Thu, 05 Nov 2026 18:24:02 GMT  
		Size: 3.7 MB (3690989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6cce96afb7d29f5567987a267924cefd3043f5bf382a8f086e4ca582accbaf8`  
		Last Modified: Thu, 05 Nov 2026 18:24:02 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8531dc7abbb6c03e22a51e331a5b8ec6512eb261a07cb4b271b34d6fdd2c2253`  
		Last Modified: Thu, 05 Nov 2026 18:24:02 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40eed50893f9069cca4f92a71d3eb47b54cf2a2c8e8bd50f563538dfc9407f59`  
		Last Modified: Thu, 05 Nov 2026 18:52:02 GMT  
		Size: 12.2 MB (12239441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0bb533e59c95ba8c9f8e64fab19578ab3a59e97db31ad57dcc95fea820bf65d`  
		Last Modified: Thu, 05 Nov 2026 18:52:01 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f368de0a4602f2495c90700b4141a786c8e91d719cb8de04bdfaf8fc38bc3f0`  
		Last Modified: Thu, 05 Nov 2026 18:52:02 GMT  
		Size: 13.1 MB (13087669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d18622eb28ff16dbd21d057a7040cb674f5d452afa284fe259c10d9a8698797`  
		Last Modified: Thu, 05 Nov 2026 18:52:02 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aad7203562a9650a2e3fd0395a03a17b2a9eef9f9f74304b46a651aff0095ed`  
		Last Modified: Thu, 05 Nov 2026 18:52:02 GMT  
		Size: 22.1 KB (22129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:989d9365aec3a9ecfd8e8a0687e60bf12f6e29c702c5cf25193e1a159f4cb61e`  
		Last Modified: Thu, 05 Nov 2026 18:52:03 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:765eca62f2991f5c2c916927c45b1ec5ebd9969c965a96eed7348baaaa20e11c`  
		Last Modified: Thu, 05 Nov 2026 18:52:03 GMT  
		Size: 9.2 KB (9247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31582b5f3f2f03db413d2585c142da9b680bac83e230d15ff86b6a149f2cdde5`  
		Last Modified: Thu, 05 Nov 2026 21:37:59 GMT  
		Size: 35.3 MB (35295244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03db98107e42479ea8ae4dbe8faf8c4dd51afa4ea1c51d55168f849ea9b8965b`  
		Last Modified: Thu, 05 Nov 2026 21:37:58 GMT  
		Size: 8.4 MB (8392985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:915d39b65eba5439af88354efdee0fdbe7cb856a024e2d89ff49c34ebba62d6c`  
		Last Modified: Thu, 05 Nov 2026 21:37:58 GMT  
		Size: 310.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b1b9dbb7bff3116e4660a63ae17022c6aa9557f3e747ef1d17f87cfe8608277`  
		Last Modified: Thu, 05 Nov 2026 21:37:58 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4d619a5e05cc01b9b10faaa60bfe1c64f7db4866551f31bfe3c0e05d5bd6192`  
		Last Modified: Thu, 05 Nov 2026 21:38:00 GMT  
		Size: 42.0 MB (41985631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4267bb372519ff2d601b8d5ff39b9555423373657651b067a300ba6672b9375f`  
		Last Modified: Thu, 05 Nov 2026 21:37:59 GMT  
		Size: 2.4 KB (2438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb93e681ec2a616b9849fbf51ee6d645af64af068124a9d221c48a98ee2e7091`  
		Last Modified: Thu, 05 Nov 2026 21:38:00 GMT  
		Size: 1.8 KB (1763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:711334668d4895692a12539fb3c2ed2aec44450dab3762353932a1f181195a9a`  
		Last Modified: Thu, 05 Nov 2026 21:38:00 GMT  
		Size: 192.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.2-php8.2-fpm-alpine` - unknown; unknown

```console
$ docker pull wordpress@sha256:16f8dd2b7ea59bb0d76fc690826c966de26ce55dc1902197ec269e5ccd6e67cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1174097 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90e4170a310c9fda61ae925f032faf9061d7ec92be4dfeb294e5dbbf570e87e6`

```dockerfile
```

-	Layers:
	-	`sha256:60f2ec6d16f8998d548ca7f5254317455ac4e114e96450245619842dca7835fb`  
		Last Modified: Thu, 05 Nov 2026 21:37:58 GMT  
		Size: 1.1 MB (1121924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bc43d05578cf665741159928fe493a2d736f2091ba50bf2d4ed5fb8b138aee0`  
		Last Modified: Thu, 05 Nov 2026 21:37:58 GMT  
		Size: 52.2 KB (52173 bytes)  
		MIME: application/vnd.in-toto+json
