## `wordpress:beta-7.2-fpm`

```console
$ docker pull wordpress@sha256:4717a5db662cdd662d31df3efaa3f13e6455c6c3caf9e28e80e18fbc47187202
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v5
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

### `wordpress:beta-7.2-fpm` - linux; amd64

```console
$ docker pull wordpress@sha256:ecf33ad8c775c86d473141bfac54fdfe8a3347c476fa9aa5edd37659200bd39b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.2 MB (278170550 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65a215ee8a6d2245a3deaab6250695b0b5e47d14983a417d62507296e1363400`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:18:36 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 24 Nov 2026 04:18:52 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 24 Nov 2026 04:18:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:18:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 24 Nov 2026 04:18:52 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 24 Nov 2026 04:18:52 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:18:52 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:18:52 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 24 Nov 2026 04:18:52 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 24 Nov 2026 04:18:52 GMT
ENV PHP_VERSION=8.3.37
# Tue, 24 Nov 2026 04:18:52 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.37.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.37.tar.xz.asc
# Tue, 24 Nov 2026 04:18:52 GMT
ENV PHP_SHA256=0237af84478b7a7649d3964153f1b8653d622550b846f56d63062de683fb86bb
# Tue, 24 Nov 2026 04:24:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 24 Nov 2026 04:24:59 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:27:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 24 Nov 2026 04:27:13 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:27:13 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 24 Nov 2026 04:27:13 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 24 Nov 2026 04:27:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Nov 2026 04:27:13 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 04:27:13 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 24 Nov 2026 04:27:13 GMT
STOPSIGNAL SIGQUIT
# Tue, 24 Nov 2026 04:27:13 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 24 Nov 2026 04:27:13 GMT
CMD ["php-fpm"]
# Tue, 24 Nov 2026 21:26:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:28:02 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 24 Nov 2026 21:28:02 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Tue, 24 Nov 2026 21:28:02 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 24 Nov 2026 21:28:05 GMT
RUN set -eux; 	version='7.2-RC3'; 	sha1='cb8d8695a1a3c04aeb5b444b1ccd1720c175d979'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Tue, 24 Nov 2026 21:28:05 GMT
VOLUME [/var/www/html]
# Tue, 24 Nov 2026 21:28:05 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Tue, 24 Nov 2026 21:28:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 21:28:05 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Tue, 24 Nov 2026 21:28:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 21:28:05 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:40748add9f4f6f944f334cbfc286590d6e93f60fb06f6ee7ffa1b894080ad861`  
		Last Modified: Tue, 24 Nov 2026 03:40:27 GMT  
		Size: 29.8 MB (29842182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfbdaed166edcb535a60ab03e61320b069abc485c8b8c9565d6e32a5ee28bd68`  
		Last Modified: Tue, 24 Nov 2026 04:21:58 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bacbed2e41fefe19acf5a8003de2273d53217183fdc7676f75e343fa9d48a14f`  
		Last Modified: Tue, 24 Nov 2026 04:22:01 GMT  
		Size: 117.8 MB (117839073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3452f368159f2286c6a5aad7c32ee9c08a94beb36b0c24ccadd4c0d4c93cf95`  
		Last Modified: Tue, 24 Nov 2026 04:21:58 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65a0f8c3a8601699d149f5cb102a606f43d75171769ea443274113ed8861c657`  
		Last Modified: Tue, 24 Nov 2026 04:27:23 GMT  
		Size: 12.8 MB (12830269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db926177680dac728cda7405bdee3a1e286fdabfa5debe79350b0ce49f8c7e9f`  
		Last Modified: Tue, 24 Nov 2026 04:27:23 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91ccf92f0e61ded1a0bce6fffe64f91a649d5213234aed340bb85fe161f87bdb`  
		Last Modified: Tue, 24 Nov 2026 04:27:23 GMT  
		Size: 12.0 MB (11953887 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e615b489985af39bfd46729ed560ce0c8c1d2adb7a3d50f73f6d318bfde603`  
		Last Modified: Tue, 24 Nov 2026 04:27:23 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfc5fc3ed702fff0bca9db2216bf376b2519be79294455d7a1435396208cb945`  
		Last Modified: Tue, 24 Nov 2026 04:27:24 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e997ee9351ff33affbce858d306284c408d149fb1c4567c211954a03b43eeb2b`  
		Last Modified: Tue, 24 Nov 2026 04:27:24 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:190210dcb9900b13d8d3fe6acb3616e97bbb77cee5daf9928ca63b1687228ef7`  
		Last Modified: Tue, 24 Nov 2026 04:27:24 GMT  
		Size: 9.3 KB (9254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2eb3797c95cbf98136e75e89c4b941e4ef05bda57943b4f4e12f590d39c6595`  
		Last Modified: Tue, 24 Nov 2026 21:28:24 GMT  
		Size: 33.6 MB (33566621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad7f958a92ae25d69b92199c1d5f45a934513c1c765352727f044009780ac4a7`  
		Last Modified: Tue, 24 Nov 2026 21:28:24 GMT  
		Size: 29.9 MB (29932513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56aeae73b38da536f741fd6514bd17f7ad2c4112c8f72d4578802835dd44d077`  
		Last Modified: Tue, 24 Nov 2026 21:28:22 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd31d053d8b3261e576d52f11e09c0f46d86af1a03c746b76d9f31b95a7bf3f`  
		Last Modified: Tue, 24 Nov 2026 21:28:22 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99e1bbb75e262d94ccd9188cd8e40493e541f882444b08355a2e2372eab3ab3e`  
		Last Modified: Tue, 24 Nov 2026 21:28:25 GMT  
		Size: 42.2 MB (42187742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f355e7305b7df9e492bca662b7f8feaa6c9bb81d62a018737fcea5e4c49b0e4`  
		Last Modified: Tue, 24 Nov 2026 21:28:24 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae35c4bd37d9d2c0c3e404e5a565a1119c796e95bdff3fa8f66225abc026b7c`  
		Last Modified: Tue, 24 Nov 2026 21:28:25 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b077487590be4f4c6a157158b1b278777588545b7c9b74f5f58a497804d87f6`  
		Last Modified: Tue, 24 Nov 2026 21:28:25 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.2-fpm` - unknown; unknown

```console
$ docker pull wordpress@sha256:a2fe9e82507d81af7c2ab6fce9906d8206d69d076c84054aa1074b63c5957dcf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8232837 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ddb934eb347cb931634eb5173268f60e1129fb9bcb5af43e2775a9128d7c23ea`

```dockerfile
```

-	Layers:
	-	`sha256:1bf28f66afa8c991e3e2787f8b957fb72db273f1b9530d57fd02c70ce8b333df`  
		Last Modified: Tue, 24 Nov 2026 21:28:22 GMT  
		Size: 8.2 MB (8179089 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0667b3b4e18484e7e629ee653d15813d46d1b95f74e90424d08753e9c2d28d1c`  
		Last Modified: Tue, 24 Nov 2026 21:28:22 GMT  
		Size: 53.7 KB (53748 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.2-fpm` - linux; arm variant v5

```console
$ docker pull wordpress@sha256:b023a656d674f8d6e928efe90424fbf6d76c4ce15b3e237f29e2cc3c154a997d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **246.7 MB (246655485 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0986879776b200505c6c1943260b6b11c05b425bfd879bcf62477d1040905e2`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:21:11 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 24 Nov 2026 04:21:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 24 Nov 2026 04:21:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:21:33 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 24 Nov 2026 04:21:33 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 24 Nov 2026 04:21:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:21:33 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:21:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 24 Nov 2026 04:21:33 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 24 Nov 2026 04:21:33 GMT
ENV PHP_VERSION=8.3.37
# Tue, 24 Nov 2026 04:21:33 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.37.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.37.tar.xz.asc
# Tue, 24 Nov 2026 04:21:33 GMT
ENV PHP_SHA256=0237af84478b7a7649d3964153f1b8653d622550b846f56d63062de683fb86bb
# Tue, 24 Nov 2026 04:25:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 24 Nov 2026 04:25:19 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:28:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 24 Nov 2026 04:28:03 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:28:03 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 24 Nov 2026 04:28:03 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 24 Nov 2026 04:28:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Nov 2026 04:28:03 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 04:28:03 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 24 Nov 2026 04:28:03 GMT
STOPSIGNAL SIGQUIT
# Tue, 24 Nov 2026 04:28:03 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 24 Nov 2026 04:28:03 GMT
CMD ["php-fpm"]
# Tue, 24 Nov 2026 21:26:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:28:23 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 24 Nov 2026 21:28:23 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Tue, 24 Nov 2026 21:28:23 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 24 Nov 2026 21:28:27 GMT
RUN set -eux; 	version='7.2-RC3'; 	sha1='cb8d8695a1a3c04aeb5b444b1ccd1720c175d979'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Tue, 24 Nov 2026 21:28:27 GMT
VOLUME [/var/www/html]
# Tue, 24 Nov 2026 21:28:27 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Tue, 24 Nov 2026 21:28:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 21:28:27 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Tue, 24 Nov 2026 21:28:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 21:28:27 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f6fba286691ca1912507e9abe69b4f333f067bb9769520ed16554fd664c33962`  
		Last Modified: Tue, 24 Nov 2026 03:40:21 GMT  
		Size: 28.0 MB (28008785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19b7a0440152e0c2d231affd955d1efeb62a16e156772ebe60fcb91827c7c826`  
		Last Modified: Tue, 24 Nov 2026 04:24:59 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:228774f73794b1a9f953ea65f6a010f33d9e546177f632efb645bee7c88be32d`  
		Last Modified: Tue, 24 Nov 2026 04:25:02 GMT  
		Size: 94.9 MB (94884635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70281b901c0da09a435daf28a79ea0f541024f75b36c7dc62f52782ff45a0203`  
		Last Modified: Tue, 24 Nov 2026 04:24:59 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efe6f04bd803429f3db27e38a507e30cdc3d97f4738c54aa5669a7cb68a1ff8b`  
		Last Modified: Tue, 24 Nov 2026 04:28:13 GMT  
		Size: 12.8 MB (12827360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35dfc7b8fd0ed865535a7b21e57fe8ee3cec746047c869310a563e8184ea8fbe`  
		Last Modified: Tue, 24 Nov 2026 04:28:13 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff1a3487f50ee83c1c251ac2d178d6be959338de9c30bd0a39ed7e9e1bd6713`  
		Last Modified: Tue, 24 Nov 2026 04:28:13 GMT  
		Size: 10.7 MB (10738954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:442b2a09165546548f12704fa7495e1a3a90bebd96b960e5afe8d06aefa36143`  
		Last Modified: Tue, 24 Nov 2026 04:28:13 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b924f9e3eddc3b02a9e54b7493212835f617f96872253f693c25fb7b6d332b87`  
		Last Modified: Tue, 24 Nov 2026 04:28:14 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de4bd883d843ae08bea0060fd21ba25810c75f09849f4ba4754647d80e5516b1`  
		Last Modified: Tue, 24 Nov 2026 04:28:14 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f8a4bfb442dd0464f7e7386dc896d1d71225454fde8603be1f9d46d3e8fbc8`  
		Last Modified: Tue, 24 Nov 2026 04:28:14 GMT  
		Size: 9.3 KB (9253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:221a71c321e8a84dffbdc17806007a7cb94a713e077a97dbd61d8a66634357b0`  
		Last Modified: Tue, 24 Nov 2026 21:28:45 GMT  
		Size: 30.7 MB (30673459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e78c19077411d8b3b69b1c9dcb6036b24dd40e69681043124bbeb6d454cf20d4`  
		Last Modified: Tue, 24 Nov 2026 21:28:45 GMT  
		Size: 27.3 MB (27316275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fec8d3641024401b7dd8431893d9ee9fed24e02c8170f7ab53c6d9837180bbec`  
		Last Modified: Tue, 24 Nov 2026 21:28:43 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dee25d0088077b8d7114de4de1fba7f41160fc384812d37f7ec54f89157c934c`  
		Last Modified: Tue, 24 Nov 2026 21:28:43 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8518262fd1873610df5def4d4bf77dd8feb8e6c14f081c7aeece0be8915bf3d`  
		Last Modified: Tue, 24 Nov 2026 21:28:46 GMT  
		Size: 42.2 MB (42187742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d21411d1d6751df1183da8ce79c87bbd91c31db3e1291407b9e780bd600d627`  
		Last Modified: Tue, 24 Nov 2026 21:28:45 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3f2aa0c1ece8bf1ea8617317ee835d0224420787a83a4189853ec42c78c1569`  
		Last Modified: Tue, 24 Nov 2026 21:28:46 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa8a4916a2d570170a722871b266a90a72d8a9b3a9d1fb4a809f80fc093fab3`  
		Last Modified: Tue, 24 Nov 2026 21:28:46 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.2-fpm` - unknown; unknown

```console
$ docker pull wordpress@sha256:8513678ea05aca541d80749cc3ef7fc7a86eda70fa31ecedc42fa9d00947ca1d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8026551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6601e184e97a98d9aed08797631ef2671fedb5de31dc9283c3839805829aabff`

```dockerfile
```

-	Layers:
	-	`sha256:8589718c5165fbc8dbb5d0273bf93c13828f84b079077b05bf50375deb813dc3`  
		Last Modified: Tue, 24 Nov 2026 21:28:44 GMT  
		Size: 8.0 MB (7972635 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16f6747523aa4bc87d8189d7991ea471627d6dc0c34bef11229a5e692ab51fb4`  
		Last Modified: Tue, 24 Nov 2026 21:28:43 GMT  
		Size: 53.9 KB (53916 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.2-fpm` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:973289725626001d4eb0e4ffcf585410ea0471d189cc0575251133bb0d6afc5d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.9 MB (232944831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb77ba835c6f2ad46c17618f2642f08a9a2b70601284250cbbd5e8fa6e43084e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:24:26 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 24 Nov 2026 04:24:43 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 24 Nov 2026 04:24:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:24:43 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 24 Nov 2026 04:24:44 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 24 Nov 2026 04:24:44 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:24:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:24:44 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 24 Nov 2026 04:24:44 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 24 Nov 2026 04:24:44 GMT
ENV PHP_VERSION=8.3.37
# Tue, 24 Nov 2026 04:24:44 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.37.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.37.tar.xz.asc
# Tue, 24 Nov 2026 04:24:44 GMT
ENV PHP_SHA256=0237af84478b7a7649d3964153f1b8653d622550b846f56d63062de683fb86bb
# Tue, 24 Nov 2026 04:44:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 24 Nov 2026 04:44:30 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:46:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 24 Nov 2026 04:46:57 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:46:57 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 24 Nov 2026 04:46:57 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 24 Nov 2026 04:46:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Nov 2026 04:46:57 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 04:46:57 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 24 Nov 2026 04:46:57 GMT
STOPSIGNAL SIGQUIT
# Tue, 24 Nov 2026 04:46:57 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 24 Nov 2026 04:46:57 GMT
CMD ["php-fpm"]
# Tue, 24 Nov 2026 21:30:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:31:49 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 24 Nov 2026 21:31:49 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Tue, 24 Nov 2026 21:31:49 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 24 Nov 2026 21:31:52 GMT
RUN set -eux; 	version='7.2-RC3'; 	sha1='cb8d8695a1a3c04aeb5b444b1ccd1720c175d979'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Tue, 24 Nov 2026 21:31:52 GMT
VOLUME [/var/www/html]
# Tue, 24 Nov 2026 21:31:52 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Tue, 24 Nov 2026 21:31:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 21:31:52 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Tue, 24 Nov 2026 21:31:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 21:31:52 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:c720f3b38fb800619bf9fa0d867869c69ddd3a3f80e5316158c99a0cbe84f60f`  
		Last Modified: Tue, 24 Nov 2026 03:40:47 GMT  
		Size: 26.3 MB (26262460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a8f9b7d88d72ca701f72832b28fc3b2ff31ed3efcf6c480347726ba56b4dcb0`  
		Last Modified: Tue, 24 Nov 2026 04:27:44 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24f2d4482a736b8c1e05c65bc649604fecf1283bb8d5ff50e5eca73aa4d4d14e`  
		Last Modified: Tue, 24 Nov 2026 04:27:48 GMT  
		Size: 86.3 MB (86257206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97eb76d571b821562a95b7e06dc35b6017829a3dbb1491b1a96e99579979b5a3`  
		Last Modified: Tue, 24 Nov 2026 04:27:44 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96880fd535bbeaff75cd60660c839faa58f87d9ceb526d1c7d4c3fd43ed4ecd2`  
		Last Modified: Tue, 24 Nov 2026 04:47:07 GMT  
		Size: 12.8 MB (12827547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8979d3fc2554b060b016dcc4453e3ae67b9d55b49ed2d243fe090be820294ba`  
		Last Modified: Tue, 24 Nov 2026 04:47:06 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce53f0b4435d4476b4e18523467a76fa012fda525870425e59e65089e32a6fe9`  
		Last Modified: Tue, 24 Nov 2026 04:47:07 GMT  
		Size: 10.1 MB (10123704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1ab99439080b87c467dc5a8d37a962f6a8128c3de7c99aa87b6df787188799e`  
		Last Modified: Tue, 24 Nov 2026 04:47:06 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b3a60e08c62787b4d3857d1b3e6d135d22ae0d16e55e586037ca5c3c823f698`  
		Last Modified: Tue, 24 Nov 2026 04:47:07 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:532e13a8b976e5ff8869eef977579661f852e1628c3dc19ab23fc0cd8c9d25fa`  
		Last Modified: Tue, 24 Nov 2026 04:47:07 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00f7ae7c64e815dfd13ff970997ea1a26cf7e0e1254fa16e030084a2c6faacec`  
		Last Modified: Tue, 24 Nov 2026 04:47:08 GMT  
		Size: 9.3 KB (9253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75dc781d2a04114d70734f9dbdcaea63a1d25bceaa224b883bda02e15e9ba1eb`  
		Last Modified: Tue, 24 Nov 2026 21:32:10 GMT  
		Size: 29.5 MB (29524863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1731c863e4e64c11cb9f114e5bc34874ea92832b64b5485e1de5076dcf0406e8`  
		Last Modified: Tue, 24 Nov 2026 21:32:10 GMT  
		Size: 25.7 MB (25743030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55253f143bab4c37deaf88326474bdaf28447e70c1c895b59d3d48f85ec6ccd5`  
		Last Modified: Tue, 24 Nov 2026 21:32:08 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c964b3a19911eaa1300c15459849c6f9186ebcfecf523a3c0e820b1626acb08c`  
		Last Modified: Tue, 24 Nov 2026 21:32:08 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2191d2de940ec048e022e06351ab91c024e38a8adbf3cc5d621abeb097d2159`  
		Last Modified: Tue, 24 Nov 2026 21:32:11 GMT  
		Size: 42.2 MB (42187748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c03a79919da299b47ad2cd690dd53d8524a7b72ea8d6e4020e4c4c4774319395`  
		Last Modified: Tue, 24 Nov 2026 21:32:10 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b422f8b7abf3f333b2fa53ed32c94b3e34ecd15800bf43b5bd747df9ef89a8e`  
		Last Modified: Tue, 24 Nov 2026 21:32:11 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e0744e8c63b89fa434d134a84730be5acac86799c18983663c96f8fc13b37bf`  
		Last Modified: Tue, 24 Nov 2026 21:32:11 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.2-fpm` - unknown; unknown

```console
$ docker pull wordpress@sha256:c0be854d8cd0010e57c1a86297bda64a04273a3a4fb86a0494fb746d5a4d9709
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (8031359 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:326c3d372522885d19e3030984b8a180192d8995f95548f6a6143698bb6c0087`

```dockerfile
```

-	Layers:
	-	`sha256:087d5aadfb209dd61117bcf9091f99c78890d18936ffda6eb06bd6b7643aa653`  
		Last Modified: Tue, 24 Nov 2026 21:32:09 GMT  
		Size: 8.0 MB (7977443 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f920262a1253a1157ae5f2de85d36ec101e90221982b206ea981ff75a136f7c`  
		Last Modified: Tue, 24 Nov 2026 21:32:08 GMT  
		Size: 53.9 KB (53916 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.2-fpm` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:681b90db45d11ec9cd7c9b05e1bd5a0bf3d2fabf01636d785cfb066369675665
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270687380 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dadf5b5fc3e63e8c84ee6fe2af9d7e6ed9fd1baad5f6f64154a383eba90bf58b`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 24 Nov 2026 04:19:19 GMT
ENV PHP_VERSION=8.3.37
# Tue, 24 Nov 2026 04:19:19 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.37.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.37.tar.xz.asc
# Tue, 24 Nov 2026 04:19:19 GMT
ENV PHP_SHA256=0237af84478b7a7649d3964153f1b8653d622550b846f56d63062de683fb86bb
# Tue, 24 Nov 2026 04:26:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 24 Nov 2026 04:26:43 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:30:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 24 Nov 2026 04:30:26 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:30:26 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 24 Nov 2026 04:30:26 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 24 Nov 2026 04:30:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Nov 2026 04:30:26 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 04:30:26 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 24 Nov 2026 04:30:26 GMT
STOPSIGNAL SIGQUIT
# Tue, 24 Nov 2026 04:30:26 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 24 Nov 2026 04:30:26 GMT
CMD ["php-fpm"]
# Tue, 24 Nov 2026 21:25:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:26:55 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 24 Nov 2026 21:26:55 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Tue, 24 Nov 2026 21:26:56 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 24 Nov 2026 21:26:58 GMT
RUN set -eux; 	version='7.2-RC3'; 	sha1='cb8d8695a1a3c04aeb5b444b1ccd1720c175d979'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Tue, 24 Nov 2026 21:26:58 GMT
VOLUME [/var/www/html]
# Tue, 24 Nov 2026 21:26:58 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Tue, 24 Nov 2026 21:26:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 21:26:58 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Tue, 24 Nov 2026 21:26:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 21:26:58 GMT
CMD ["php-fpm"]
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
	-	`sha256:377789f3bfc53f9fbd0033d0a9ddbc57b7d6661162371e67b0d04aca33e926a4`  
		Last Modified: Tue, 24 Nov 2026 04:30:37 GMT  
		Size: 12.8 MB (12829825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7255375cba12659ac89601e32030864a8ecd564394de46810122996ea426779`  
		Last Modified: Tue, 24 Nov 2026 04:29:18 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:420418564f5a8e9ac799309442a4352887524d7b793df8e9f057c89d8e3d312f`  
		Last Modified: Tue, 24 Nov 2026 04:30:37 GMT  
		Size: 12.0 MB (11978008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcdbe62d91f5834f5214d108d5273bac9aeb61f0b7342ea5b023fa22a8097f52`  
		Last Modified: Tue, 24 Nov 2026 04:30:36 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:991cb55f34964ea8cf3bc0aa364c461b89de854044a690bd50a27ffbcf1d9db3`  
		Last Modified: Tue, 24 Nov 2026 04:30:37 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dde28a8cee58068d05650263332ebd1fdb26d1f63cca10b7ca61d707cc357da9`  
		Last Modified: Tue, 24 Nov 2026 04:30:37 GMT  
		Size: 241.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1491cc7824f8515b3648d36e60ca021effbc86be7c93eabac0aa05b47cfa4ea5`  
		Last Modified: Tue, 24 Nov 2026 04:30:38 GMT  
		Size: 9.3 KB (9253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b034404572e2fc00d0b24a8129b00b917ce01f596c413d76e73b28098163003`  
		Last Modified: Tue, 24 Nov 2026 21:27:17 GMT  
		Size: 35.0 MB (35034390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aac609cfa866494f2dae6b258d9e0795b7ed270f77b9502da7078e1d53ce314b`  
		Last Modified: Tue, 24 Nov 2026 21:27:17 GMT  
		Size: 28.3 MB (28261315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ed5e7691860f949c18490d964e3e3170420115f3c27810a69f29822a1355f4a`  
		Last Modified: Tue, 24 Nov 2026 21:27:16 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:002866d31cceae8fb4c9cd9dca72d1695dbe3b6a704d17d93568b3680137ebb7`  
		Last Modified: Tue, 24 Nov 2026 21:27:16 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17949e40c5568503793f761826f54b8b0af05c22ecbe0f3ea4ba2847cccf0116`  
		Last Modified: Tue, 24 Nov 2026 21:27:18 GMT  
		Size: 42.2 MB (42187752 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51772e000f72b3a86e64168f0f3050bd7ffbfa832e70ff2c5d6151b4498a59d7`  
		Last Modified: Tue, 24 Nov 2026 21:27:17 GMT  
		Size: 2.4 KB (2440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b47f089467a1ca761850d63c9a21fd3200bdfe3af16f4d020939b2a82fd93317`  
		Last Modified: Tue, 24 Nov 2026 21:27:18 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dfef5321c718dbab6546b0bbf4941b972c4afdf40f9b43d2b988319b579c1ae`  
		Last Modified: Tue, 24 Nov 2026 21:27:18 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.2-fpm` - unknown; unknown

```console
$ docker pull wordpress@sha256:266bf35cfc4f7eb9c1c9346d360cb3b354a161b7ffa15a48b39155f3f5320b34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8329561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f01fe2e430dd90480d8998bf3270d3e8656474668764705e6a5e8fcdd8f5144`

```dockerfile
```

-	Layers:
	-	`sha256:927b3534e804b58eb64764f01ed4c25d80043fa25fb6d0754f01e6314c61af39`  
		Last Modified: Tue, 24 Nov 2026 21:27:16 GMT  
		Size: 8.3 MB (8275586 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4437a6262f027bbac2511c7f43127fa66147393fb4095333133930cf6033f13e`  
		Last Modified: Tue, 24 Nov 2026 21:27:15 GMT  
		Size: 54.0 KB (53975 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.2-fpm` - linux; 386

```console
$ docker pull wordpress@sha256:a8a9b2aa045f6901b55a0261ee741ba9363d3b706c40c470f83bbc8692ca554d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **275.8 MB (275837150 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ac280070778fe43041f5909e2a24b7511e95e0dee7ae7d993ca8963ba685999`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:15:59 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 24 Nov 2026 04:16:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 24 Nov 2026 04:16:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:16:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 24 Nov 2026 04:16:21 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 24 Nov 2026 04:16:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:16:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:16:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 24 Nov 2026 04:16:21 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 24 Nov 2026 04:16:21 GMT
ENV PHP_VERSION=8.3.37
# Tue, 24 Nov 2026 04:16:21 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.37.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.37.tar.xz.asc
# Tue, 24 Nov 2026 04:16:21 GMT
ENV PHP_SHA256=0237af84478b7a7649d3964153f1b8653d622550b846f56d63062de683fb86bb
# Tue, 24 Nov 2026 04:24:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 24 Nov 2026 04:24:56 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:28:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 24 Nov 2026 04:28:10 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:28:10 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 24 Nov 2026 04:28:10 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 24 Nov 2026 04:28:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Nov 2026 04:28:10 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 04:28:10 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 24 Nov 2026 04:28:10 GMT
STOPSIGNAL SIGQUIT
# Tue, 24 Nov 2026 04:28:10 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 24 Nov 2026 04:28:10 GMT
CMD ["php-fpm"]
# Tue, 24 Nov 2026 21:25:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 21:26:44 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 24 Nov 2026 21:26:44 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Tue, 24 Nov 2026 21:26:45 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 24 Nov 2026 21:26:47 GMT
RUN set -eux; 	version='7.2-RC3'; 	sha1='cb8d8695a1a3c04aeb5b444b1ccd1720c175d979'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Tue, 24 Nov 2026 21:26:47 GMT
VOLUME [/var/www/html]
# Tue, 24 Nov 2026 21:26:47 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Tue, 24 Nov 2026 21:26:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 21:26:48 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Tue, 24 Nov 2026 21:26:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 21:26:48 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:7fb9e5f471a439ab129e9fe258623bccb6c4da1d0313890202b55fd6b5839533`  
		Last Modified: Tue, 24 Nov 2026 03:40:30 GMT  
		Size: 31.4 MB (31357919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a520816d32b3d2003166f9edec30d52030a58bfe5ca400f55447a2ad0df0fd2`  
		Last Modified: Tue, 24 Nov 2026 04:20:39 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4e0ea71e67b09b0b1542fc3c96b37cbe3b22e635f0d8244e369c4beaba39460`  
		Last Modified: Tue, 24 Nov 2026 04:20:42 GMT  
		Size: 116.1 MB (116139630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f470bd9789ac58d81f07ac0fdcdd3f627a804c5764b95cce7d9ec196424f3126`  
		Last Modified: Tue, 24 Nov 2026 04:20:39 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:055e2ffc0be80664738305b814d09de505d5897e9c151452ea00fb309df607c2`  
		Last Modified: Tue, 24 Nov 2026 04:28:21 GMT  
		Size: 12.8 MB (12829190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0826f6277f458944408b31c7a9a6111d3891ba2b1ad9759dd2351ecf7b9d19b`  
		Last Modified: Tue, 24 Nov 2026 04:28:20 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:095d9bac21add2d7b569374bd0814409d4bdb5502976a638be2096ee87e6f348`  
		Last Modified: Tue, 24 Nov 2026 04:28:21 GMT  
		Size: 12.2 MB (12236652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:873db8498b86c12ecc123f17dc4020fd1e36b5ceaa8a5f0338b04a952292a234`  
		Last Modified: Tue, 24 Nov 2026 04:28:20 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14d6dd26839e2733ebb83be70701d7749502e237d334ab06602355cae966c7bf`  
		Last Modified: Tue, 24 Nov 2026 04:28:21 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc84300c85e8208d58de6d0ecb1a79d5bd6b9071268ff5298a354adcee22e64b`  
		Last Modified: Tue, 24 Nov 2026 04:28:21 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd1825ff00eab5b7ad2e72eabb81c22d27d2905e86f7b4e1b027bb0424b85000`  
		Last Modified: Tue, 24 Nov 2026 04:28:22 GMT  
		Size: 9.3 KB (9251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6c80a85284d360824280c781ecf54bb398220d349a65af95847c5dfe2db46bf`  
		Last Modified: Tue, 24 Nov 2026 21:27:06 GMT  
		Size: 33.1 MB (33067784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0de379e239deecf0046b54eb17b92566e91704e17e8f3937aa78e9cb7841623`  
		Last Modified: Tue, 24 Nov 2026 21:27:06 GMT  
		Size: 28.0 MB (27999973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ac5dd1ad02840c934fc4d08e49619c5a6c95e1587ccc614e4c8875be35b37e1`  
		Last Modified: Tue, 24 Nov 2026 21:27:05 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ce23abd879aeda52ec5207358fe586d6f7833f706883123f9766ea91350d956`  
		Last Modified: Tue, 24 Nov 2026 21:27:05 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9c1fa7843fc93f5ed97021998f0bdc207b23447692888edf8c97f8c1dd8c0c2`  
		Last Modified: Tue, 24 Nov 2026 21:27:07 GMT  
		Size: 42.2 MB (42187740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4de636b8557d89cefad6b851e4b954994440c790fdcee0f8fafb3d0ebf26e0bc`  
		Last Modified: Tue, 24 Nov 2026 21:27:06 GMT  
		Size: 2.4 KB (2439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a864d3064fdf18b45f0842be5b32ff7b5fe6938c44d05ca8a4578d3061232197`  
		Last Modified: Tue, 24 Nov 2026 21:27:08 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a74e2350726f8f55eefa7fced0a5f7c9a35ad3be5b571bbf867f51360c852401`  
		Last Modified: Tue, 24 Nov 2026 21:27:08 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.2-fpm` - unknown; unknown

```console
$ docker pull wordpress@sha256:6932d39400b1941125aad697a344e57fe59414870e19be88c15e8b38d94ea6ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8205805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f198ce603786fd2aada69617b0e5543b3d46c783656ef0afdda611961d08e39`

```dockerfile
```

-	Layers:
	-	`sha256:32ed0bfe449879aab4d223a4c39f2d017132f70c0bfab22d04e21b825d0bfd1a`  
		Last Modified: Tue, 24 Nov 2026 21:27:05 GMT  
		Size: 8.2 MB (8152119 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:462977e7531aff6256cb20ef4bc968c9647e91e51065aab9c05205aa55f6ff70`  
		Last Modified: Tue, 24 Nov 2026 21:27:05 GMT  
		Size: 53.7 KB (53686 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.2-fpm` - linux; ppc64le

```console
$ docker pull wordpress@sha256:c89b062afc620c13ed51d989107bacf237f547bda3c59734b15e53f23d08d955
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.7 MB (273670582 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a91328411ceaae1dedd6d749195a0546bf5db60791a1ab1dde75bd1ecdc0ce5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:45:01 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 24 Nov 2026 04:45:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 24 Nov 2026 04:45:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:45:38 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 24 Nov 2026 04:45:38 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 24 Nov 2026 04:45:38 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:45:38 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:45:38 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 24 Nov 2026 04:45:38 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 24 Nov 2026 04:45:38 GMT
ENV PHP_VERSION=8.3.37
# Tue, 24 Nov 2026 04:45:38 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.37.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.37.tar.xz.asc
# Tue, 24 Nov 2026 04:45:38 GMT
ENV PHP_SHA256=0237af84478b7a7649d3964153f1b8653d622550b846f56d63062de683fb86bb
# Tue, 24 Nov 2026 05:41:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 24 Nov 2026 05:41:03 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 05:50:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 24 Nov 2026 05:50:04 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 05:50:04 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 24 Nov 2026 05:50:05 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 24 Nov 2026 05:50:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Nov 2026 05:50:05 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 05:50:05 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 24 Nov 2026 05:50:05 GMT
STOPSIGNAL SIGQUIT
# Tue, 24 Nov 2026 05:50:05 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 24 Nov 2026 05:50:05 GMT
CMD ["php-fpm"]
# Tue, 24 Nov 2026 13:35:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 13:39:24 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 24 Nov 2026 13:39:24 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Tue, 24 Nov 2026 13:39:25 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 24 Nov 2026 23:10:59 GMT
RUN set -eux; 	version='7.2-RC3'; 	sha1='cb8d8695a1a3c04aeb5b444b1ccd1720c175d979'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Tue, 24 Nov 2026 23:10:59 GMT
VOLUME [/var/www/html]
# Tue, 24 Nov 2026 23:10:59 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Tue, 24 Nov 2026 23:11:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 23:11:00 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Tue, 24 Nov 2026 23:11:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 23:11:00 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:6d599ee149161123db04af161af351247dbcd557ec08f78d82de0c89b6844f6c`  
		Last Modified: Tue, 24 Nov 2026 03:42:42 GMT  
		Size: 33.7 MB (33652639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f8f5ce7d31213d5f9c5607f76270fc6ef86556267bebb4755a23a5aebf877e8`  
		Last Modified: Tue, 24 Nov 2026 04:50:43 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89e987991216317ea818c73d42c843dda577c5014fe08681bb0113a9eea7c58a`  
		Last Modified: Tue, 24 Nov 2026 04:50:47 GMT  
		Size: 109.6 MB (109613218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f1fff38c69adcef57aee572a5bd36021c5f41099326c1e2c1543cf3a9ec95da`  
		Last Modified: Tue, 24 Nov 2026 04:50:43 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d425df3bef8c3534611bf51753c71959c8a96ad8bbef36825729f701c80ccbc6`  
		Last Modified: Tue, 24 Nov 2026 05:45:15 GMT  
		Size: 12.8 MB (12829167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d85e0c6d2c9fd361865af4e27c0d759162b5dccef4ff268e0d11ca045e3577f2`  
		Last Modified: Tue, 24 Nov 2026 05:45:14 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0ea3b39aaad8e04e471e888116c6953aac6ebcbf61bfbbec29b7340498e1c64`  
		Last Modified: Tue, 24 Nov 2026 05:50:27 GMT  
		Size: 12.5 MB (12496745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68e38e2a45d09250664fb9fbe4510d3c7247cdc82e88fe11f39c74807b1f08c9`  
		Last Modified: Tue, 24 Nov 2026 05:50:26 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4e5261ae065489fa22978aac468481bac8099229ebeb64109152c138244d4e3`  
		Last Modified: Tue, 24 Nov 2026 05:50:26 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfb982b8e3b284401223fea332e2a6876179579b7386b8130536d5d16c3c7b91`  
		Last Modified: Tue, 24 Nov 2026 05:50:26 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc40f85d24669b2223b95cd3f0dddecef1ccc393b1d24c67e29282a25566c1ac`  
		Last Modified: Tue, 24 Nov 2026 05:50:27 GMT  
		Size: 9.3 KB (9252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5f929a732de22fa43bbaac2b2388a8cb7602ec67b545fbdc6b0c05d6ffb853b`  
		Last Modified: Tue, 24 Nov 2026 13:40:11 GMT  
		Size: 33.6 MB (33624320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0006d6a5c0e38960b879cd2d3629d738763b683b4cbddbd7e3e70c477197d70b`  
		Last Modified: Tue, 24 Nov 2026 13:40:11 GMT  
		Size: 29.2 MB (29248498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7840305420af3348d9738367fa81354fcbc46520723448fb05bc57866027130`  
		Last Modified: Tue, 24 Nov 2026 13:40:09 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92300f0abde6291b21154ffccf5c5ee975364c9f7634fa16b083ca02eb139757`  
		Last Modified: Tue, 24 Nov 2026 13:40:09 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eff8784f6d1b520cb67685969915fc690afc206f4dbb059abf96acce71640092`  
		Last Modified: Tue, 24 Nov 2026 23:11:41 GMT  
		Size: 42.2 MB (42187734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a87038224c696eee973a4cc1a193c8300ddf93dd71bb703574f4a5b0b700bb0b`  
		Last Modified: Tue, 24 Nov 2026 23:11:40 GMT  
		Size: 2.4 KB (2439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22c11b7688e6380b0e4a45fdaedc17acb38c967753a3cde8068916f419976b18`  
		Last Modified: Tue, 24 Nov 2026 23:11:40 GMT  
		Size: 1.8 KB (1763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:949d727eb08b0129eb9f9cd64c5b47cd4dea8132bbfd6190ddc3956ac9b7e40b`  
		Last Modified: Tue, 24 Nov 2026 23:11:40 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.2-fpm` - unknown; unknown

```console
$ docker pull wordpress@sha256:d091485c464085957b8c7766edb62d83d9a109fc89c4ab007a44d1a593c24413
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8233691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35da4c6b04f39a33955a99f1a5ffbd5c89a355331bcb4e3ecd6aa74d7d4958f3`

```dockerfile
```

-	Layers:
	-	`sha256:6773dd525adb5ad9da8d48dfe3f7d2cca518329b23db598f85545cec2b875442`  
		Last Modified: Tue, 24 Nov 2026 23:11:40 GMT  
		Size: 8.2 MB (8179865 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f171afe3788e6350d4708cf3dc6f497da8d546ebf40380a8c37988c418ec0a5b`  
		Last Modified: Tue, 24 Nov 2026 23:11:39 GMT  
		Size: 53.8 KB (53826 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.2-fpm` - linux; riscv64

```console
$ docker pull wordpress@sha256:a5e83c7b98cbb57ab28950fa376394a6f7a180602f1c637a18dd322e4e609def
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.3 MB (299250912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d37f8ed0488f20d398100a5cd6665b92b3fa100c2bd950b7e4f3b88c3cec962`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 17:45:51 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 05 Nov 2026 17:47:56 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 05 Nov 2026 17:47:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 17:47:56 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 17:47:57 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 17:47:57 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 17:47:57 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 17:47:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 17:47:57 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 05 Nov 2026 17:47:57 GMT
ENV PHP_VERSION=8.3.37
# Thu, 05 Nov 2026 17:47:57 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.37.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.37.tar.xz.asc
# Thu, 05 Nov 2026 17:47:57 GMT
ENV PHP_SHA256=0237af84478b7a7649d3964153f1b8653d622550b846f56d63062de683fb86bb
# Fri, 20 Nov 2026 20:20:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Fri, 20 Nov 2026 20:20:35 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 23:08:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 20 Nov 2026 23:08:08 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 23:08:09 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 20 Nov 2026 23:08:10 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 20 Nov 2026 23:08:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 20 Nov 2026 23:08:10 GMT
WORKDIR /var/www/html
# Fri, 20 Nov 2026 23:08:10 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Fri, 20 Nov 2026 23:08:10 GMT
STOPSIGNAL SIGQUIT
# Fri, 20 Nov 2026 23:08:10 GMT
EXPOSE map[9000/tcp:{}]
# Fri, 20 Nov 2026 23:08:10 GMT
CMD ["php-fpm"]
# Mon, 23 Nov 2026 20:30:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 20:48:29 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Mon, 23 Nov 2026 20:48:29 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Mon, 23 Nov 2026 20:48:30 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 24 Nov 2026 02:17:54 GMT
RUN set -eux; 	version='7.2-RC2'; 	sha1='723bc521dfb8a34350ecbe9750e4f6d16c6a0701'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Tue, 24 Nov 2026 02:17:54 GMT
VOLUME [/var/www/html]
# Tue, 24 Nov 2026 02:17:54 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Tue, 24 Nov 2026 02:17:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 02:17:55 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Tue, 24 Nov 2026 02:17:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 02:17:55 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:4b8428ae1a4b0dfd18fb4aa2bf9a6a71d7217123155666c4225a7e1b9aa074af`  
		Last Modified: Thu, 05 Nov 2026 07:38:54 GMT  
		Size: 28.3 MB (28346184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88ee3b34ab458576b12b268eaaf021028ee8777997ce35131ec24ca408496b85`  
		Last Modified: Thu, 05 Nov 2026 18:51:04 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:381f462a32390761c89c1b87546bae3cfb5592c67f835bf1f95235509ed04c5e`  
		Last Modified: Thu, 05 Nov 2026 18:51:31 GMT  
		Size: 146.6 MB (146579061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a16f8071ad7d5d5200e591f19e5a9005447451fd465a7ff4020e9788d1fbbb71`  
		Last Modified: Thu, 05 Nov 2026 18:51:04 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e2e6529bb1086e976ad01e28048ae2ba52bc8bd8017845a49eb2d2dd0fe492a`  
		Last Modified: Fri, 20 Nov 2026 21:16:21 GMT  
		Size: 12.8 MB (12844194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fe0f630e3654435a1f9389638bb93e5dd940e78da9e1d666d4d35987b5e52b6`  
		Last Modified: Fri, 20 Nov 2026 21:16:17 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e324db1811346ad3e51eb1e00acc45484ab41ce97500b46ff9a354545ff19af0`  
		Last Modified: Fri, 20 Nov 2026 23:11:09 GMT  
		Size: 11.6 MB (11591154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6e523a13f5c00b94e8082351f1e281a40ef3da8dd408352971dfcc84acca4fb`  
		Last Modified: Fri, 20 Nov 2026 23:11:07 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:247c93627d4292b8f63d7733cb1748325aa39de86c52f446518695ef0d158dfb`  
		Last Modified: Fri, 20 Nov 2026 23:11:07 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:169a4c6564213a1590d1d9ef9b852c5f5b98483d46e288443a81957f8d2848ba`  
		Last Modified: Fri, 20 Nov 2026 23:11:07 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d44aec25ae397f6984dfce256095363b27f3cf21a268a34e45313572df5c383`  
		Last Modified: Fri, 20 Nov 2026 23:11:09 GMT  
		Size: 9.3 KB (9263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bebea471e56049ed1697e1e0c0d972c12fd9e6207877a82c34cddc1e2d8fa7a7`  
		Last Modified: Mon, 23 Nov 2026 20:53:27 GMT  
		Size: 31.1 MB (31090924 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c238e29b98f393dd6f83198519a9080691ee1a517d70d3a03fbe19a61e24d1f0`  
		Last Modified: Mon, 23 Nov 2026 20:53:25 GMT  
		Size: 26.7 MB (26684058 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffe4e7fb8013597fb0578630af66cd468254e5c3cdf64f2ffd99dd61d6f8e16b`  
		Last Modified: Mon, 23 Nov 2026 20:53:14 GMT  
		Size: 318.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:653039567a9508510cfb854d58526c937ecbdcc0aed86b0b626cd88a45e524b0`  
		Last Modified: Mon, 23 Nov 2026 20:53:14 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a687b75376980e04be06410fb9316adf613a3028d026f630d87410417fcd837`  
		Last Modified: Tue, 24 Nov 2026 02:22:46 GMT  
		Size: 42.1 MB (42097017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:411b6c5df8bf962e3d08968d583af770714528ad1b1578c3ceea9b6a4353df6b`  
		Last Modified: Tue, 24 Nov 2026 02:22:39 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2b789291f649ba38cd8c94e1597dcc3dd662659d378d129e7732ad8239ffe78`  
		Last Modified: Tue, 24 Nov 2026 02:22:39 GMT  
		Size: 1.8 KB (1769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7527701750f310b6d6a2738620a76662f70c40f831421101410c26ae1258608a`  
		Last Modified: Tue, 24 Nov 2026 02:22:39 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.2-fpm` - unknown; unknown

```console
$ docker pull wordpress@sha256:411ac7f7aa64206f9eab829eee40f5a62a4b0262689e355d7a186c299c34262c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8298592 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0024907b1896b85848cb559e92aaaa0fee7275869424d5b730c830381f46f6b3`

```dockerfile
```

-	Layers:
	-	`sha256:c20191a66b28e4942a3b50d935c3b1baf5ec891a9d893445a00cc9c94aff7933`  
		Last Modified: Tue, 24 Nov 2026 02:22:40 GMT  
		Size: 8.2 MB (8244766 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:993c12bdeef584e73ccb054f9bc5b197f803c447800a256f320359b710c98de4`  
		Last Modified: Tue, 24 Nov 2026 02:22:38 GMT  
		Size: 53.8 KB (53826 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.2-fpm` - linux; s390x

```console
$ docker pull wordpress@sha256:116771035dc1301022ffd886ce0cd4512090ebbe81fdd5dc4d7624f83f37e6eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.7 MB (248667488 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d809e95289c156555874ec69a70f18f31d52a858551642455ca6ed9d80513ab`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 23 Nov 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1795392000'
# Tue, 24 Nov 2026 04:16:22 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 24 Nov 2026 04:16:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 24 Nov 2026 04:16:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 24 Nov 2026 04:16:36 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 24 Nov 2026 04:16:37 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 24 Nov 2026 04:16:37 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:16:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 24 Nov 2026 04:16:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 24 Nov 2026 04:16:37 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 24 Nov 2026 04:16:37 GMT
ENV PHP_VERSION=8.3.37
# Tue, 24 Nov 2026 04:16:37 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.37.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.37.tar.xz.asc
# Tue, 24 Nov 2026 04:16:37 GMT
ENV PHP_SHA256=0237af84478b7a7649d3964153f1b8653d622550b846f56d63062de683fb86bb
# Tue, 24 Nov 2026 04:30:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 24 Nov 2026 04:30:29 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:33:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 24 Nov 2026 04:33:19 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 04:33:19 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 24 Nov 2026 04:33:19 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 24 Nov 2026 04:33:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 24 Nov 2026 04:33:19 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 04:33:19 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 24 Nov 2026 04:33:19 GMT
STOPSIGNAL SIGQUIT
# Tue, 24 Nov 2026 04:33:19 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 24 Nov 2026 04:33:19 GMT
CMD ["php-fpm"]
# Tue, 24 Nov 2026 05:33:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 24 Nov 2026 05:34:25 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 24 Nov 2026 05:34:25 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Tue, 24 Nov 2026 05:34:25 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 24 Nov 2026 21:31:07 GMT
RUN set -eux; 	version='7.2-RC3'; 	sha1='cb8d8695a1a3c04aeb5b444b1ccd1720c175d979'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Tue, 24 Nov 2026 21:31:07 GMT
VOLUME [/var/www/html]
# Tue, 24 Nov 2026 21:31:07 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Tue, 24 Nov 2026 21:31:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 21:31:07 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Tue, 24 Nov 2026 21:31:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 24 Nov 2026 21:31:07 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:91ebccdf019d96a72e787fff6138b9e04ff9a7ff70e743fc708f540300557922`  
		Last Modified: Tue, 24 Nov 2026 03:40:01 GMT  
		Size: 29.9 MB (29910026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da60e8f79b2858fb492441512f76f2c49057b0d1abb4f9de6b2dc867dafcc063`  
		Last Modified: Tue, 24 Nov 2026 04:19:36 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1abe10b798f52d575f19affeb15246c3caf3e86bb2aa5492972842df597cfebd`  
		Last Modified: Tue, 24 Nov 2026 04:19:38 GMT  
		Size: 92.6 MB (92570324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c0fde7a72c979be6285246b12ed6242fbc2e49f60b30adc8e9fd06e3635708b`  
		Last Modified: Tue, 24 Nov 2026 04:19:36 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f887fc569cd15b02ed7fc22fea02e2f4e2bbbad874b10c6bbf674fb6d4241f44`  
		Last Modified: Tue, 24 Nov 2026 04:33:35 GMT  
		Size: 12.8 MB (12828381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79702de27a59bbf0b46d0ed58c49e6d575444d242234e7853ead04ed97da8410`  
		Last Modified: Tue, 24 Nov 2026 04:33:35 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62cfbff2e2c883d86754777b9fb3032eb5e3f33acee21ee3fbf21dae494a0e5e`  
		Last Modified: Tue, 24 Nov 2026 04:33:35 GMT  
		Size: 11.8 MB (11822195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:091b09cfda7aa847d6587100fe1df6c38f1e985061e263c278679826bbc721d1`  
		Last Modified: Tue, 24 Nov 2026 04:33:34 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7568cea9b596803e3863c9664028d9e605d85862b5cf3312a55f6189c6e45deb`  
		Last Modified: Tue, 24 Nov 2026 04:33:35 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a615e4a9b9cb1a5b43af36d68ffa11943451b0364e4e8ef65d85c57b709178a6`  
		Last Modified: Tue, 24 Nov 2026 04:33:35 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a7315898f467a78f8a70a3e0e0152fddb3522b011feda52c4d1e4d1afa10f2c`  
		Last Modified: Tue, 24 Nov 2026 04:33:36 GMT  
		Size: 9.3 KB (9254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc41831842f40a495ea3a081cf06d17ca31b496c8ceb37119b4b2821529889b5`  
		Last Modified: Tue, 24 Nov 2026 05:34:50 GMT  
		Size: 32.0 MB (32015312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad82fb545f4fcf40eee7ecd1b8de5c98f0862c4d49ad557d8e82b12a28467d24`  
		Last Modified: Tue, 24 Nov 2026 05:34:50 GMT  
		Size: 27.3 MB (27315237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59b70d9db74ba08fad6f2e0cbe64156b142e5a4249ca4930c5e20ac5be455fe6`  
		Last Modified: Tue, 24 Nov 2026 05:34:50 GMT  
		Size: 312.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f08db7739aba9f6fb3138fc1a703ec55f3db406b26cacfd6bae2f8d084df7be0`  
		Last Modified: Tue, 24 Nov 2026 05:34:50 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4c3753444b112a7e52f46bf485f5996333dbfeafcc010ec3d951931e2349b04`  
		Last Modified: Tue, 24 Nov 2026 21:31:32 GMT  
		Size: 42.2 MB (42187750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ef2fb2c150451155c01c84121a9b35e722b0c18e77e8ae5bdd04a4f7e331ce9`  
		Last Modified: Tue, 24 Nov 2026 21:31:31 GMT  
		Size: 2.4 KB (2439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e4b92911a08f1a9fcf4dd4336451e6a9df886d94b8e23c12412168a68338425`  
		Last Modified: Tue, 24 Nov 2026 21:31:31 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93c97aebd29f4f25f5689c76940579e3685108de6773cafb18498ab44ad3c492`  
		Last Modified: Tue, 24 Nov 2026 21:31:31 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.2-fpm` - unknown; unknown

```console
$ docker pull wordpress@sha256:dba6fbdfa0146cec4eb240b79119306eede1ea2624427df9c36d49ba0545058a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.0 MB (7951975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:744e851bfd54ec26bbad3faaff8e5b26251b492d005514c6885b0374b3837586`

```dockerfile
```

-	Layers:
	-	`sha256:ef3dbf3031107b3c1b630735c4483c76251fb07539ad9a3656fd43c170ccb235`  
		Last Modified: Tue, 24 Nov 2026 21:31:31 GMT  
		Size: 7.9 MB (7898236 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8a40240e3a5a67a3913193ba8d1598fabc89f7732e8a051bc8578436668ee1f`  
		Last Modified: Tue, 24 Nov 2026 21:31:31 GMT  
		Size: 53.7 KB (53739 bytes)  
		MIME: application/vnd.in-toto+json
