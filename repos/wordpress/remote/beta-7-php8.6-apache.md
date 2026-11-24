## `wordpress:beta-7-php8.6-apache`

```console
$ docker pull wordpress@sha256:886edf353ed528e4ad7d141a18f64b6fc05c1334f9b7a15b8cf2fcba665ee970
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
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
	-	linux; s390x
	-	unknown; unknown

### `wordpress:beta-7-php8.6-apache` - linux; amd64

```console
$ docker pull wordpress@sha256:2cb54a53d74728b12a34a978f051560400081fe168f3d0e3952823f9a27addc2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.5 MB (280539541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68ca8a6c58c85614384d31bacf73ba66d5d480ca161a0c287463f71aa928264f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 14:40:44 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 19 Nov 2026 14:41:03 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 19 Nov 2026 14:41:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 14:41:03 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:41:03 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:41:03 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 19 Nov 2026 14:41:03 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 19 Nov 2026 15:16:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 19 Nov 2026 15:16:18 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 19 Nov 2026 15:16:18 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 19 Nov 2026 15:16:18 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 15:16:18 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 15:16:18 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 15:16:18 GMT
ENV GPG_KEYS=D95C03BC702BE9515344AE3374E44BC9067701A5 016895DE9A475111D537A6E69134FF30BC5A99B5 5CFF17B64DC1C244F5D0EAC3E43535E2EB19010E
# Thu, 19 Nov 2026 15:16:18 GMT
ENV PHP_VERSION=8.6.0
# Thu, 19 Nov 2026 15:16:18 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.6.0.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.6.0.tar.xz.asc
# Thu, 19 Nov 2026 15:16:18 GMT
ENV PHP_SHA256=5f84beaa3d763aee1e4feed99bf54ec692c383b322e25626807b589238c3a087
# Thu, 19 Nov 2026 15:16:25 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 19 Nov 2026 15:16:25 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:18:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-pic 				--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		php --version # buildkit
# Thu, 19 Nov 2026 15:18:44 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:18:44 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 15:18:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:18:44 GMT
STOPSIGNAL SIGWINCH
# Thu, 19 Nov 2026 15:18:44 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:18:44 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:18:44 GMT
EXPOSE map[80/tcp:{}]
# Thu, 19 Nov 2026 15:18:44 GMT
CMD ["apache2-foreground"]
# Mon, 23 Nov 2026 23:42:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 23:43:28 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		libonig-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 		mbstring 	; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Mon, 23 Nov 2026 23:43:28 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Mon, 23 Nov 2026 23:43:28 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Mon, 23 Nov 2026 23:43:28 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Mon, 23 Nov 2026 23:43:31 GMT
RUN set -eux; 	version='7.2-RC2'; 	sha1='723bc521dfb8a34350ecbe9750e4f6d16c6a0701'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Mon, 23 Nov 2026 23:43:31 GMT
VOLUME [/var/www/html]
# Mon, 23 Nov 2026 23:43:31 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Mon, 23 Nov 2026 23:43:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:43:31 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Mon, 23 Nov 2026 23:43:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:43:31 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3848432db037661e8270f7693f6387399a90e057b89aa721a006d5db72f71e0d`  
		Last Modified: Thu, 19 Nov 2026 14:43:42 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed6d659a6743bafb3c548ae7f11c55c26ddb028bb748b1c945024437fbae8962`  
		Last Modified: Thu, 19 Nov 2026 14:43:45 GMT  
		Size: 117.8 MB (117838032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0817546dee2af72301b59796ff6c35bbb72448436ff81d640cf0fa520dda95f6`  
		Last Modified: Thu, 19 Nov 2026 14:43:42 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26d0e56d25ff4dc18333229c2b565fabff06b7c4823afda13863357785bbdbe3`  
		Last Modified: Thu, 19 Nov 2026 15:18:54 GMT  
		Size: 4.3 MB (4258929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59a0b2fd5c4e1747d6dacbbfcc04b422039a75d368c255d9137c2163c8b88cbf`  
		Last Modified: Thu, 19 Nov 2026 15:18:54 GMT  
		Size: 436.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60032f3d7adbc906e8f5007ba251e61269dbb2b84ba8b004d7af5734f118fa8d`  
		Last Modified: Thu, 19 Nov 2026 15:18:54 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc20852826feeb31444bb780b4b4706a3dd1fc7f67a925468b8b8584db0adaf0`  
		Last Modified: Thu, 19 Nov 2026 15:18:55 GMT  
		Size: 15.3 MB (15314218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfe2546e2329f05091b5d751229f9db400a3fddd5b04c32f80de62a4f74b5cea`  
		Last Modified: Thu, 19 Nov 2026 15:18:55 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7018748a7bc5c0612cd8a5de27096910c77a732d2d911936f07b583eff0b3f07`  
		Last Modified: Thu, 19 Nov 2026 15:18:56 GMT  
		Size: 14.1 MB (14113024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68f8fe08b9e20f027e40bc18f0eea6432a9d2f7248ae7872d323d8a62621c5e2`  
		Last Modified: Thu, 19 Nov 2026 15:18:56 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38447e79719db41cb3f051f48fdc49046fe227961050b00df591629f0e391095`  
		Last Modified: Thu, 19 Nov 2026 15:18:56 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:368b832465cdd497a4da0a6e7df4c74ae793ddf6086af6bf6d61898f9d0c8ca5`  
		Last Modified: Thu, 19 Nov 2026 15:18:56 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd54f796bad95787b0cc67419acd97e707b8bae2f56d75233c2d5ee0977db67a`  
		Last Modified: Mon, 23 Nov 2026 23:43:50 GMT  
		Size: 33.4 MB (33428275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac3023c746365dc802284dc264d920d1b695823eb61e03260e8880a54f9acad8`  
		Last Modified: Mon, 23 Nov 2026 23:43:50 GMT  
		Size: 23.6 MB (23604484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a71ec2b6a6e66267bfd95ac7911824f044fb9cb6c24d21dd1b578daf11f09720`  
		Last Modified: Mon, 23 Nov 2026 23:43:49 GMT  
		Size: 318.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed0adb217c38e164c85cf6794a894f7e25f79b6344b3d08598ef176e3dd87c93`  
		Last Modified: Mon, 23 Nov 2026 23:43:49 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b77e2f91ad83118a2e051984e963118b0a117a9ae74ada3304d8ccb544cfd48`  
		Last Modified: Mon, 23 Nov 2026 23:43:50 GMT  
		Size: 18.8 KB (18804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f25359087eaa2f598e23873404675c5152fa51e2d659187ba7b62fecd3313bd`  
		Last Modified: Mon, 23 Nov 2026 23:43:51 GMT  
		Size: 42.1 MB (42097009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fa4c2e734b57f977c95270d4144e1d1ecbcc47b73d304f5551739df48784976`  
		Last Modified: Mon, 23 Nov 2026 23:43:51 GMT  
		Size: 2.4 KB (2444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b87aa135ac6f1803f26230d9ebad30d1346eaacd5fcb39a714f697077a23d0f3`  
		Last Modified: Mon, 23 Nov 2026 23:43:51 GMT  
		Size: 1.8 KB (1775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77dd1dd1f938569feeb505eb204164909b5c55061207de224a908bd1a5452720`  
		Last Modified: Mon, 23 Nov 2026 23:43:52 GMT  
		Size: 199.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7-php8.6-apache` - unknown; unknown

```console
$ docker pull wordpress@sha256:8b108a989a50af281763d8d8a05d71f591f1d64b5f49dc25a3b75cd3dd512645
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8463211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63f5244b658e9c7e7caf5047eb6a2e28967c7022a83db2063b222d17d5ca130b`

```dockerfile
```

-	Layers:
	-	`sha256:a7719a4d45890b1a4ba46cef2ceef2d91c47563b5e9657890bb7a278b40b0b20`  
		Last Modified: Mon, 23 Nov 2026 23:43:49 GMT  
		Size: 8.4 MB (8399260 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:71ab7fee154ec7f0ecc049519a299b08fb02e3f510dd59366ceafc30361e8b12`  
		Last Modified: Mon, 23 Nov 2026 23:43:49 GMT  
		Size: 64.0 KB (63951 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7-php8.6-apache` - linux; arm variant v5

```console
$ docker pull wordpress@sha256:aa1f62bda116c328da42c51e99fd44209bf9aa3e8e2796fb571e6dc465d988c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.8 MB (247818011 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f4b32147e4d8365dece306e82461f0527dd77c1bf4191539cf0c85397bc461f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 14:28:48 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 19 Nov 2026 14:29:11 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 19 Nov 2026 14:29:11 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 14:29:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:29:11 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:29:11 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 19 Nov 2026 14:29:11 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 19 Nov 2026 15:52:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 19 Nov 2026 15:52:15 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 19 Nov 2026 15:52:15 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 19 Nov 2026 15:52:15 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 15:52:15 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 15:52:15 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 15:52:15 GMT
ENV GPG_KEYS=D95C03BC702BE9515344AE3374E44BC9067701A5 016895DE9A475111D537A6E69134FF30BC5A99B5 5CFF17B64DC1C244F5D0EAC3E43535E2EB19010E
# Thu, 19 Nov 2026 15:52:15 GMT
ENV PHP_VERSION=8.6.0
# Thu, 19 Nov 2026 15:52:15 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.6.0.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.6.0.tar.xz.asc
# Thu, 19 Nov 2026 15:52:15 GMT
ENV PHP_SHA256=5f84beaa3d763aee1e4feed99bf54ec692c383b322e25626807b589238c3a087
# Thu, 19 Nov 2026 15:52:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 19 Nov 2026 15:52:27 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:55:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-pic 				--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		php --version # buildkit
# Thu, 19 Nov 2026 15:55:40 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:55:40 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 15:55:40 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:55:40 GMT
STOPSIGNAL SIGWINCH
# Thu, 19 Nov 2026 15:55:40 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:55:40 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:55:40 GMT
EXPOSE map[80/tcp:{}]
# Thu, 19 Nov 2026 15:55:40 GMT
CMD ["apache2-foreground"]
# Mon, 23 Nov 2026 23:43:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 23:44:47 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		libonig-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 		mbstring 	; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Mon, 23 Nov 2026 23:44:47 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Mon, 23 Nov 2026 23:44:47 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Mon, 23 Nov 2026 23:44:47 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Mon, 23 Nov 2026 23:44:50 GMT
RUN set -eux; 	version='7.2-RC2'; 	sha1='723bc521dfb8a34350ecbe9750e4f6d16c6a0701'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Mon, 23 Nov 2026 23:44:50 GMT
VOLUME [/var/www/html]
# Mon, 23 Nov 2026 23:44:50 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Mon, 23 Nov 2026 23:44:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:50 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Mon, 23 Nov 2026 23:44:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:50 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:a2cd843a82972cc66a24a17025d58e4b75019395058fd3a090b196a2b5d8ac77`  
		Last Modified: Thu, 05 Nov 2026 06:16:00 GMT  
		Size: 28.0 MB (28019610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56bc935a495cdc6a25f72afeafe05d459f59f6d5347e7f3e39b7f2de588f2c06`  
		Last Modified: Thu, 19 Nov 2026 14:32:49 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:653c0daa5ebc338241491b2fd92ec4b8bab61add77c32c282f313e71f4bba212`  
		Last Modified: Thu, 19 Nov 2026 14:32:53 GMT  
		Size: 94.9 MB (94884066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05b2dc5445340d0d49466ba95869c117b16092dbbfd82bb93ae3318e6330de55`  
		Last Modified: Thu, 19 Nov 2026 14:32:47 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fded0038965cbcd1d4f8e8add32b27fd7ae502009bd5bc90e3cfd66162b48c4e`  
		Last Modified: Thu, 19 Nov 2026 15:55:57 GMT  
		Size: 4.1 MB (4114658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c25f5517cbfae4f559a7d550a5b8203939220749c97f9416b1500f60eda05c02`  
		Last Modified: Thu, 19 Nov 2026 15:55:57 GMT  
		Size: 435.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d12829dcfab8ff7b9634e1ae75e2770d8b4217f01746e5b83a4918eeac4facf1`  
		Last Modified: Thu, 19 Nov 2026 15:55:57 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:133f94fababe0dfb74f8f9745fbb8b20b40715c6baf018a6ceaff3378ce81700`  
		Last Modified: Thu, 19 Nov 2026 15:55:57 GMT  
		Size: 15.3 MB (15311923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db83b39fe2409ca7b7ae3f577e5ecdde7480a62da525c998fbcdfbfe16afc2f7`  
		Last Modified: Thu, 19 Nov 2026 15:55:58 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b01f1339b8cccfd27539fd380ae34650628e90fb2ded2737332d4f140cba6eab`  
		Last Modified: Thu, 19 Nov 2026 15:55:58 GMT  
		Size: 11.9 MB (11923297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ff5d136e53756ceb9f13b9f3284a7aefde372818538df763d85b019c29cf564`  
		Last Modified: Thu, 19 Nov 2026 15:55:58 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eff5aadd66a8e270189e4eb6b57f0a31550ca67c3c94a62a30eb0d440932c1b0`  
		Last Modified: Thu, 19 Nov 2026 15:55:59 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1984272509f93043bdffc60a66059a95db2faa0d9330db0b380f5589451b55d0`  
		Last Modified: Thu, 19 Nov 2026 15:55:59 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3603d48afab9c990a15128821e30006dc5878aecf5dc5887fc658fbbc41f3ce`  
		Last Modified: Mon, 23 Nov 2026 23:45:09 GMT  
		Size: 30.6 MB (30559568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f8d05dbb050ff9be4f4b165d4c82a64ee41e8ea8c9b92756cc251c96bdbca16`  
		Last Modified: Mon, 23 Nov 2026 23:45:08 GMT  
		Size: 20.9 MB (20878436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6dac4a9c9a2fbd1818abffe90817ead8576117265f1ce770da3a8ae50fb26dcb`  
		Last Modified: Mon, 23 Nov 2026 23:45:08 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9278d5c88e04f08ec6269f40b6b5dc877b8dfbaa9655bd4484874de647191e59`  
		Last Modified: Mon, 23 Nov 2026 23:45:08 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f6b4cff0c879c420db951e24a52abd50428826c3d0781bf48d605dfc50aad8f`  
		Last Modified: Mon, 23 Nov 2026 23:45:09 GMT  
		Size: 18.8 KB (18802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9447d7ec8f273fad5a5fc4ec26c5017072ba2de6f47bc9bd41e3d13ca00ce463`  
		Last Modified: Mon, 23 Nov 2026 23:45:10 GMT  
		Size: 42.1 MB (42097017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f202aab8617c09c0a550d7ccdf5b41026457850907a6ff38ea17ed277c148bdf`  
		Last Modified: Mon, 23 Nov 2026 23:45:10 GMT  
		Size: 2.4 KB (2443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e91c15e80a28758bdf9e92b3667da4262c9e6f45c5dd41eb402f9db2443da19`  
		Last Modified: Mon, 23 Nov 2026 23:45:10 GMT  
		Size: 1.8 KB (1771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac5c32f6fdbdd24b8863d9f3ec5ca92bbccfc9d0ceb55b8d08b868ce3c8844a8`  
		Last Modified: Mon, 23 Nov 2026 23:45:10 GMT  
		Size: 199.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7-php8.6-apache` - unknown; unknown

```console
$ docker pull wordpress@sha256:8d69bbb69be4c8ea10e6c5205a24ee3f62541c2acee7991645af5e4ad14e1ef2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8256682 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ddacf11dd70b9c1101fab2d064963702ea1b30776371439a00b09801e3136bc`

```dockerfile
```

-	Layers:
	-	`sha256:518a453cc164bc83e643b159cdf9d73e41a24d9e73d35cf916432b03e52769f0`  
		Last Modified: Mon, 23 Nov 2026 23:45:08 GMT  
		Size: 8.2 MB (8192551 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:72579acd29816d8adf5e17049db06a6b769fd717c4827e7dd42539960ea48b5f`  
		Last Modified: Mon, 23 Nov 2026 23:45:07 GMT  
		Size: 64.1 KB (64131 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7-php8.6-apache` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:5933b46593b657d83c26a2cb70a293dea3914af543641d9c234370a8dbc4afc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.8 MB (234810892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:66ff11cc88ccae2754d15dd305277f76d63fa703c6ead028c802a93a94e1ccb5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 14:24:41 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 19 Nov 2026 14:24:58 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 19 Nov 2026 14:24:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 14:24:58 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:24:59 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:24:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 19 Nov 2026 14:24:59 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 19 Nov 2026 15:35:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 19 Nov 2026 15:35:19 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 19 Nov 2026 15:35:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 19 Nov 2026 15:35:19 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 15:35:19 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 15:35:19 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 15:35:19 GMT
ENV GPG_KEYS=D95C03BC702BE9515344AE3374E44BC9067701A5 016895DE9A475111D537A6E69134FF30BC5A99B5 5CFF17B64DC1C244F5D0EAC3E43535E2EB19010E
# Thu, 19 Nov 2026 15:35:19 GMT
ENV PHP_VERSION=8.6.0
# Thu, 19 Nov 2026 15:35:19 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.6.0.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.6.0.tar.xz.asc
# Thu, 19 Nov 2026 15:35:19 GMT
ENV PHP_SHA256=5f84beaa3d763aee1e4feed99bf54ec692c383b322e25626807b589238c3a087
# Thu, 19 Nov 2026 15:35:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 19 Nov 2026 15:35:29 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:38:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-pic 				--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		php --version # buildkit
# Thu, 19 Nov 2026 15:38:21 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:38:21 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 15:38:21 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:38:21 GMT
STOPSIGNAL SIGWINCH
# Thu, 19 Nov 2026 15:38:21 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:38:21 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:38:21 GMT
EXPOSE map[80/tcp:{}]
# Thu, 19 Nov 2026 15:38:21 GMT
CMD ["apache2-foreground"]
# Mon, 23 Nov 2026 23:42:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 23:44:29 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		libonig-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 		mbstring 	; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Mon, 23 Nov 2026 23:44:29 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Mon, 23 Nov 2026 23:44:29 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Mon, 23 Nov 2026 23:44:29 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Mon, 23 Nov 2026 23:44:32 GMT
RUN set -eux; 	version='7.2-RC2'; 	sha1='723bc521dfb8a34350ecbe9750e4f6d16c6a0701'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Mon, 23 Nov 2026 23:44:32 GMT
VOLUME [/var/www/html]
# Mon, 23 Nov 2026 23:44:32 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Mon, 23 Nov 2026 23:44:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:44:32 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Mon, 23 Nov 2026 23:44:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:44:32 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eda6ebe6743fceea13f211295ae15e09a0d91c1bfb3ce56faa33bf557b038cb3`  
		Last Modified: Thu, 19 Nov 2026 14:28:24 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9832f4c759e9adb2c36fc7a0c6e5bb329904783696a3557bbf6bd510b05d9e06`  
		Last Modified: Thu, 19 Nov 2026 14:28:26 GMT  
		Size: 86.3 MB (86257057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92f18155169adbecbe840eaec4bfbb08f07677966ac7b0bd4999e576bc8af2d2`  
		Last Modified: Thu, 19 Nov 2026 14:28:23 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8175f4812ba5374d4a76e2333f213b07a6498888c5cc9d23a9202e3a63029b11`  
		Last Modified: Thu, 19 Nov 2026 15:38:32 GMT  
		Size: 3.8 MB (3783119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82f916d08efa0f3fc864a76bda339028403d31a7ddf439546c972ce72112188f`  
		Last Modified: Thu, 19 Nov 2026 15:38:32 GMT  
		Size: 432.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24ebc14e762d5d212beeff653b54a7370749fa3879c8fd998779f04d1d09ec93`  
		Last Modified: Thu, 19 Nov 2026 15:38:32 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c18972006aec595ad6e32a2fb7189506ab74baac61690fe706b7aa2d937d2de`  
		Last Modified: Thu, 19 Nov 2026 15:38:32 GMT  
		Size: 15.3 MB (15312124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d3b21b780d213291a2e2565ddbf3da46f35414b9351fa6e5eb1459733add6ef`  
		Last Modified: Thu, 19 Nov 2026 15:38:33 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eeb6f27e8cb19774e1aeba87ea24c4fcf4e5de25ee10acf345bdb645c76f9cf0`  
		Last Modified: Thu, 19 Nov 2026 15:38:33 GMT  
		Size: 11.3 MB (11316818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eb015b813f4cd7d7c5f7aebba854ce3ad057315fbacc2f08b80064bafa5ffa0`  
		Last Modified: Thu, 19 Nov 2026 15:38:33 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb68891f1b5804c59b48e5441b522b90a15ddc3e90e33a58d1e1e1c11fd89f2e`  
		Last Modified: Thu, 19 Nov 2026 15:38:34 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49d266f268547680bdbf270ad5fb179b3f76f690c4be753635416b6fab4d4e0a`  
		Last Modified: Thu, 19 Nov 2026 15:38:34 GMT  
		Size: 889.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad43643ccd34441621a7b3ed22dc8901ed704b13cc89f70da4b5b5ca93379c04`  
		Last Modified: Mon, 23 Nov 2026 23:44:50 GMT  
		Size: 29.4 MB (29425078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3818ba036f6181f7ca5d8bfbece068f6aaae157897d4c5664d8fd9bcdaff012`  
		Last Modified: Mon, 23 Nov 2026 23:44:50 GMT  
		Size: 20.3 MB (20317347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b7d78f1eaf6c58707627002305263cb0e11de699005c63de11ac3671805ec1c`  
		Last Modified: Mon, 23 Nov 2026 23:44:49 GMT  
		Size: 318.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e67f01d3c739081df52c8f36a8850bfd6e342219ea1a9661ae40dec2b89c360`  
		Last Modified: Mon, 23 Nov 2026 23:44:49 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6943cc3bed24f474a7408cd844814cf02d9932686108ddc31b6368e3f784e12e`  
		Last Modified: Mon, 23 Nov 2026 23:44:51 GMT  
		Size: 18.8 KB (18802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:768cc5c0764c79ec6bc7292c479d380441b5472d300a2c8096872c925083f5f4`  
		Last Modified: Mon, 23 Nov 2026 23:44:52 GMT  
		Size: 42.1 MB (42097018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:194b5413ec1fdb9dc8dc78ce31d071013fca03e7b08edcef7b4ccbda1ce608fa`  
		Last Modified: Mon, 23 Nov 2026 23:44:52 GMT  
		Size: 2.4 KB (2444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9e65371a5d5a1baaf8b2ea1bfb4f6a620266c44ea30896f20439f61fa7a66be`  
		Last Modified: Mon, 23 Nov 2026 23:44:52 GMT  
		Size: 1.8 KB (1771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9af6ccb331b8f17bb424ad38b2915ba2d626ee21cb176da2d881d903ea5b8c6f`  
		Last Modified: Mon, 23 Nov 2026 23:44:52 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7-php8.6-apache` - unknown; unknown

```console
$ docker pull wordpress@sha256:367f33bf8dea66fb735dfdaab57d2ef5fec8da9bcd2318a5119f707379dae1ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.3 MB (8260968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:843304b8c76b23f2f6e6150c8324a298ed7859c7c8fa6e4a06026575ecc9a90c`

```dockerfile
```

-	Layers:
	-	`sha256:a72c1fe65220b31c41835fb343a566edb9da0dd472d61abdac3c4d4bccdfa6dd`  
		Last Modified: Mon, 23 Nov 2026 23:44:49 GMT  
		Size: 8.2 MB (8196837 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3de7874a178861eb036cb00b14beca90870e2d49d9be5164f908f86e68854707`  
		Last Modified: Mon, 23 Nov 2026 23:44:49 GMT  
		Size: 64.1 KB (64131 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7-php8.6-apache` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:d5fb0493448c23b498ba96d3adfd669ff5c7319a1a7b833428c1e829c727fa63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.0 MB (273015869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c40ade5965ddbf73619e792c39938df257eb7c3ddfeddb3c6490f900274ffe98`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 14:27:58 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 19 Nov 2026 14:28:16 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 19 Nov 2026 14:28:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 14:28:16 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:28:16 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:28:16 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 19 Nov 2026 14:28:16 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 19 Nov 2026 14:32:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 19 Nov 2026 14:32:12 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 19 Nov 2026 14:32:13 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 19 Nov 2026 14:32:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:32:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:32:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:32:13 GMT
ENV GPG_KEYS=D95C03BC702BE9515344AE3374E44BC9067701A5 016895DE9A475111D537A6E69134FF30BC5A99B5 5CFF17B64DC1C244F5D0EAC3E43535E2EB19010E
# Thu, 19 Nov 2026 14:32:13 GMT
ENV PHP_VERSION=8.6.0
# Thu, 19 Nov 2026 14:32:13 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.6.0.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.6.0.tar.xz.asc
# Thu, 19 Nov 2026 14:32:13 GMT
ENV PHP_SHA256=5f84beaa3d763aee1e4feed99bf54ec692c383b322e25626807b589238c3a087
# Thu, 19 Nov 2026 15:17:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 19 Nov 2026 15:17:18 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:20:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-pic 				--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		php --version # buildkit
# Thu, 19 Nov 2026 15:20:23 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:20:23 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 15:20:23 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:20:23 GMT
STOPSIGNAL SIGWINCH
# Thu, 19 Nov 2026 15:20:23 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:20:23 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:20:23 GMT
EXPOSE map[80/tcp:{}]
# Thu, 19 Nov 2026 15:20:23 GMT
CMD ["apache2-foreground"]
# Mon, 23 Nov 2026 23:42:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 23:43:17 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		libonig-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 		mbstring 	; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Mon, 23 Nov 2026 23:43:17 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Mon, 23 Nov 2026 23:43:17 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Mon, 23 Nov 2026 23:43:17 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Mon, 23 Nov 2026 23:43:20 GMT
RUN set -eux; 	version='7.2-RC2'; 	sha1='723bc521dfb8a34350ecbe9750e4f6d16c6a0701'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Mon, 23 Nov 2026 23:43:20 GMT
VOLUME [/var/www/html]
# Mon, 23 Nov 2026 23:43:20 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Mon, 23 Nov 2026 23:43:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:43:20 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Mon, 23 Nov 2026 23:43:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:43:20 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed23f911911fe3eb2ebecc5eae72264778d5ad91650731f5b78c0690766982d5`  
		Last Modified: Thu, 19 Nov 2026 14:31:55 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61c8d806091d181011788e675c7bdd081dce92c57a41a752beed37e6d10d1421`  
		Last Modified: Thu, 19 Nov 2026 14:31:59 GMT  
		Size: 110.2 MB (110178834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1f77412f730207bdbd3b239dedc46973cc5ee4c2d402db377940a81ac22e4b8`  
		Last Modified: Thu, 19 Nov 2026 14:31:55 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f30e0fbf43fd513abb2634b5925e5ae2e71fadd9554ce081ba24677e2718702`  
		Last Modified: Thu, 19 Nov 2026 14:35:39 GMT  
		Size: 4.3 MB (4330397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aedf45ac27cce6c69b3b5de289b52c913bda85cdfe5919f5b106ca7937c7cb7`  
		Last Modified: Thu, 19 Nov 2026 14:35:38 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73c454ea4259f68bdaca9ce1c87d6e44e37ae97c09b2ff45966673ddeeb4dffc`  
		Last Modified: Thu, 19 Nov 2026 14:35:38 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e21ed19c1535fe71b3c4fa45029899cbad54af29f8f4b4048be9d26f61f7641a`  
		Last Modified: Thu, 19 Nov 2026 15:20:35 GMT  
		Size: 15.3 MB (15328932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:430a4a14e1993f6f919003d7ba423d7186837ba575e5a82fbb45170150fcd2df`  
		Last Modified: Thu, 19 Nov 2026 15:20:24 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3169e5a4c686a2fb4cc334536129fc0f3227e36797373d06f65c0294a7731fba`  
		Last Modified: Thu, 19 Nov 2026 15:20:35 GMT  
		Size: 13.5 MB (13457921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:434a6e002f1364d69bc89b301b1f8580fefbd6793fcd70379160a4ed0e3b94d1`  
		Last Modified: Thu, 19 Nov 2026 15:20:34 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0281edd849912620c71ab98e48f9786df36994bbf0af3e0b33119d99117f31e`  
		Last Modified: Thu, 19 Nov 2026 15:20:34 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:382601e0a5ba56d655635182cd1d500699d903a5199f7bdc97c173178656dd38`  
		Last Modified: Thu, 19 Nov 2026 15:20:35 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a78a03b9c7992cf85614d634c35ad742ee368fb12f2121e8d7ac4e34c757b9ad`  
		Last Modified: Mon, 23 Nov 2026 23:43:39 GMT  
		Size: 34.9 MB (34909061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53c74b05af37f2ba414c66642859c7ef375d245c0e83dee538a11ada1f38b7c7`  
		Last Modified: Mon, 23 Nov 2026 23:43:38 GMT  
		Size: 22.5 MB (22470229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d59dcd8139e278e1b56999fd6836a5e75848e97b922010a751de40bcb454fc7`  
		Last Modified: Mon, 23 Nov 2026 23:43:37 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee50e8baafd363c64dcda6c7fb278f3993f4365bb71761605f7ef33bc63181a2`  
		Last Modified: Mon, 23 Nov 2026 23:43:37 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b282967766b88df484cb4c0205b886b11a6d465fb71292775991a8a62d3234c`  
		Last Modified: Mon, 23 Nov 2026 23:43:39 GMT  
		Size: 18.8 KB (18799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1426201e39f58822c0f4a9beb9055a3710d4b0e84c4fc8e3a9dd8b13936b4cb0`  
		Last Modified: Mon, 23 Nov 2026 23:43:40 GMT  
		Size: 42.1 MB (42097029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b051fff32c42b0c4553a43b54518530469cd09f48ff0e43b9d3608e845da9d95`  
		Last Modified: Mon, 23 Nov 2026 23:43:40 GMT  
		Size: 2.4 KB (2445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c11a89026738d252c8c7489bf4aacdb641a4cfb0aa9db3fbd6fc1f86d7968e8`  
		Last Modified: Mon, 23 Nov 2026 23:43:40 GMT  
		Size: 1.8 KB (1774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01432e5db5bec6194221a92b92f5349e9f6b964fdb9d1ff9401f3552044b583f`  
		Last Modified: Mon, 23 Nov 2026 23:43:40 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7-php8.6-apache` - unknown; unknown

```console
$ docker pull wordpress@sha256:778b48ceaf7e856257aee278fcc2cfc42456caa2664e15976cf5a1c26d65bca4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.6 MB (8559695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bba99099ab7ffbea966dadd73629acdc6a6bb4be8a9db559a0cf0a4de771f6db`

```dockerfile
```

-	Layers:
	-	`sha256:fcf407546e72935707c4887f6183318563e43c9f9015d9a863f198ef333c8a8e`  
		Last Modified: Mon, 23 Nov 2026 23:43:38 GMT  
		Size: 8.5 MB (8495502 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:196c3e99a659946942c54321afd702998e3fcaa4e212a0dfcaaa7164f9209f08`  
		Last Modified: Mon, 23 Nov 2026 23:43:37 GMT  
		Size: 64.2 KB (64193 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7-php8.6-apache` - linux; 386

```console
$ docker pull wordpress@sha256:e313277ccbe54794a624aae1f720d15b5cbaa4ad52ca442f148f148fcb60a43e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.6 MB (278617833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d8bc09a83d91e94c7498f8515bec8bebbd55ecdea9910b35aa69f5149979d11`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 19 Nov 2026 15:16:43 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 19 Nov 2026 15:17:03 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 19 Nov 2026 15:17:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 19 Nov 2026 15:17:03 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 15:17:03 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 15:17:03 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 19 Nov 2026 15:17:03 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 19 Nov 2026 15:17:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 19 Nov 2026 15:17:09 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 19 Nov 2026 15:17:09 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 19 Nov 2026 15:17:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 15:17:09 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 15:17:09 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 15:17:09 GMT
ENV GPG_KEYS=D95C03BC702BE9515344AE3374E44BC9067701A5 016895DE9A475111D537A6E69134FF30BC5A99B5 5CFF17B64DC1C244F5D0EAC3E43535E2EB19010E
# Thu, 19 Nov 2026 15:17:09 GMT
ENV PHP_VERSION=8.6.0
# Thu, 19 Nov 2026 15:17:09 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.6.0.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.6.0.tar.xz.asc
# Thu, 19 Nov 2026 15:17:09 GMT
ENV PHP_SHA256=5f84beaa3d763aee1e4feed99bf54ec692c383b322e25626807b589238c3a087
# Thu, 19 Nov 2026 15:17:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 19 Nov 2026 15:17:17 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:20:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-pic 				--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		php --version # buildkit
# Thu, 19 Nov 2026 15:20:15 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:20:15 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 15:20:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:20:15 GMT
STOPSIGNAL SIGWINCH
# Thu, 19 Nov 2026 15:20:15 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:20:15 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:20:15 GMT
EXPOSE map[80/tcp:{}]
# Thu, 19 Nov 2026 15:20:15 GMT
CMD ["apache2-foreground"]
# Mon, 23 Nov 2026 23:41:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 23:42:18 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		libonig-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 		mbstring 	; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Mon, 23 Nov 2026 23:42:19 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Mon, 23 Nov 2026 23:42:19 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Mon, 23 Nov 2026 23:42:19 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Mon, 23 Nov 2026 23:42:22 GMT
RUN set -eux; 	version='7.2-RC2'; 	sha1='723bc521dfb8a34350ecbe9750e4f6d16c6a0701'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Mon, 23 Nov 2026 23:42:22 GMT
VOLUME [/var/www/html]
# Mon, 23 Nov 2026 23:42:22 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Mon, 23 Nov 2026 23:42:22 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:42:22 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Mon, 23 Nov 2026 23:42:22 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:42:22 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2fb3387ba39864d00804f7f4597ee1ae399f31a80f9fa77f10e5b4db1876aa6`  
		Last Modified: Thu, 19 Nov 2026 15:20:34 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86e04a3ea3bcb2c771509ae24ca1ff906b0898d8c97b65ffaedd0bdc579759bb`  
		Last Modified: Thu, 19 Nov 2026 15:20:37 GMT  
		Size: 116.1 MB (116138937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:761fe143958399ab0b14ab69d16fb773b37f50909ff6b3b2fcdb4b7568410834`  
		Last Modified: Thu, 19 Nov 2026 15:20:34 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc5d80813c114ba3f8e72df1793fc2124ed687b764ca447d0c56ae138e750724`  
		Last Modified: Thu, 19 Nov 2026 15:20:35 GMT  
		Size: 4.5 MB (4477228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2688749867016cd27cc44b2141bda2640b18f5a7f082ec97fd15c8b747c886de`  
		Last Modified: Thu, 19 Nov 2026 15:20:36 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95581ae64498baac443cf5c23c39fd0864b815f1df34ea84ef9f18bae288ece3`  
		Last Modified: Thu, 19 Nov 2026 15:20:36 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:772158ed5e9bb1e76c4bb56a4512b3823f191f9d6b6facf66ec9cb9fa39a98c9`  
		Last Modified: Thu, 19 Nov 2026 15:20:37 GMT  
		Size: 15.3 MB (15313366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21044a099846ead16c75e554e3aa69e60604a573e48c66bbd902586d7421f507`  
		Last Modified: Thu, 19 Nov 2026 15:20:37 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:002282efc361ef71fcd36f7a49306cdb4263b5a0ce87e038b49913710c6ff694`  
		Last Modified: Thu, 19 Nov 2026 15:20:37 GMT  
		Size: 14.6 MB (14609458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9c30e781ac9d9bf99df982366e44d1fdaeff614728e1a59addfaa1bfc0a14f8`  
		Last Modified: Thu, 19 Nov 2026 15:20:38 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c30799b22f09166a7a3bb9a29d39ee7de52b47e836977381ee6b605823b4479`  
		Last Modified: Thu, 19 Nov 2026 15:20:38 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:578ac3cecdea5611f6a3321141c4c02e3a3d8e46d62c2c15f0b60e124ddd2b79`  
		Last Modified: Thu, 19 Nov 2026 15:20:38 GMT  
		Size: 892.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65d07754978e9fbe336c5c0f7ab9ced54aca8da14abd891ce9cd29ae5f97f361`  
		Last Modified: Mon, 23 Nov 2026 23:42:40 GMT  
		Size: 32.9 MB (32915522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab684836b9609b805b65d019439324ccb223cfcec43a5230dbc9e47e906a2276`  
		Last Modified: Mon, 23 Nov 2026 23:42:40 GMT  
		Size: 21.7 MB (21666160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed9c1501926bb7ffbb90fec97d966847c7ccab05bc52dfd60e753c7ddd9c13df`  
		Last Modified: Mon, 23 Nov 2026 23:42:39 GMT  
		Size: 318.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33e5e88ee7c71f9b82068d1acfc5537bb110dc9ed94955f354f417e43dd7b83f`  
		Last Modified: Mon, 23 Nov 2026 23:42:39 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b81d4e517c820a20246d536b399d5f196097a5908a1f24f011e6fc7c192aa3ca`  
		Last Modified: Mon, 23 Nov 2026 23:42:40 GMT  
		Size: 18.8 KB (18801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ba45bf70029287646c371fe38a8db1b270f626da51e5c32083e71d041de6b6a`  
		Last Modified: Mon, 23 Nov 2026 23:42:41 GMT  
		Size: 42.1 MB (42096982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cab6f391583a455e1577d52705c552d40cd471f4bf4a1083289de6464fac8d9f`  
		Last Modified: Mon, 23 Nov 2026 23:42:41 GMT  
		Size: 2.4 KB (2444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:049389afa247fe397a9cc4ba0de46ff1140b2afc754bff81d8b7c1123280ea71`  
		Last Modified: Mon, 23 Nov 2026 23:42:41 GMT  
		Size: 1.8 KB (1775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef3314fd6934586bd58c04bc027d4acec86db9bfed767ebed8ba53854a7bb0fa`  
		Last Modified: Mon, 23 Nov 2026 23:42:41 GMT  
		Size: 199.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7-php8.6-apache` - unknown; unknown

```console
$ docker pull wordpress@sha256:b10f3dc2149dfa8a909a3b7b584ddac9a96f1ae9d76edd9f4c826f1e7f326411
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.4 MB (8436699 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4039c16bf569ac942aa04deb7fa795feaf3428580c0bb11507141e7c8e42097d`

```dockerfile
```

-	Layers:
	-	`sha256:6db1b550b500101be59a5d4c4235afae6b8c4df09eecaadb6031420a2acdf743`  
		Last Modified: Mon, 23 Nov 2026 23:42:38 GMT  
		Size: 8.4 MB (8372812 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d64a1679134ace69a94e93fc6ae9547588f41a650ae17fe56ed9a65fe7db756`  
		Last Modified: Mon, 23 Nov 2026 23:42:38 GMT  
		Size: 63.9 KB (63887 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7-php8.6-apache` - linux; ppc64le

```console
$ docker pull wordpress@sha256:babcb95265ce50126e124f64031c9788666c42eb87e3d24d29545cae111a6d4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.1 MB (278066145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f56ca0bd96f7cd2ae3b193625d0981e37b3fd174a5e6031a88073f9557bcef94`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

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
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 05 Nov 2026 07:51:49 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 05 Nov 2026 07:58:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 05 Nov 2026 07:58:06 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 05 Nov 2026 07:58:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 05 Nov 2026 07:58:06 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:58:06 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:58:06 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 07:58:06 GMT
ENV GPG_KEYS=D95C03BC702BE9515344AE3374E44BC9067701A5 016895DE9A475111D537A6E69134FF30BC5A99B5 5CFF17B64DC1C244F5D0EAC3E43535E2EB19010E
# Thu, 05 Nov 2026 07:58:06 GMT
ENV PHP_VERSION=8.6.0
# Thu, 05 Nov 2026 07:58:06 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.6.0.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.6.0.tar.xz.asc
# Thu, 05 Nov 2026 07:58:06 GMT
ENV PHP_SHA256=5f84beaa3d763aee1e4feed99bf54ec692c383b322e25626807b589238c3a087
# Thu, 19 Nov 2026 17:01:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 19 Nov 2026 17:01:57 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 17:07:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-pic 				--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		php --version # buildkit
# Thu, 19 Nov 2026 17:07:30 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 17:07:30 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 17:07:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 17:07:30 GMT
STOPSIGNAL SIGWINCH
# Thu, 19 Nov 2026 17:07:31 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 17:07:31 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 17:07:31 GMT
EXPOSE map[80/tcp:{}]
# Thu, 19 Nov 2026 17:07:31 GMT
CMD ["apache2-foreground"]
# Mon, 23 Nov 2026 23:38:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 23:41:35 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		libonig-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 		mbstring 	; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Mon, 23 Nov 2026 23:41:35 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Mon, 23 Nov 2026 23:41:36 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Mon, 23 Nov 2026 23:41:36 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Mon, 23 Nov 2026 23:45:54 GMT
RUN set -eux; 	version='7.2-RC2'; 	sha1='723bc521dfb8a34350ecbe9750e4f6d16c6a0701'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Mon, 23 Nov 2026 23:45:55 GMT
VOLUME [/var/www/html]
# Mon, 23 Nov 2026 23:45:55 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Mon, 23 Nov 2026 23:45:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:45:55 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Mon, 23 Nov 2026 23:45:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:45:55 GMT
CMD ["apache2-foreground"]
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
	-	`sha256:616500097e552e120f10ca4404d34d9cfb120b7c02c3524f4ce28cf1a60fe39b`  
		Last Modified: Thu, 05 Nov 2026 08:03:41 GMT  
		Size: 4.9 MB (4900783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d6e13085ae5c79bb1881e041bffc310a0ee54a9166ceccd83aec6c5b748d5f4`  
		Last Modified: Thu, 05 Nov 2026 08:03:41 GMT  
		Size: 436.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0899b50a51dc19e2e0faa872575140226b0a41d13820bc6d87dc3abc777b7c8`  
		Last Modified: Thu, 05 Nov 2026 08:03:41 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff2b82583c9c5b2cbc7d7ea39ce1ab35cbb7f22f9c8007f36c44dfe002a055a6`  
		Last Modified: Thu, 19 Nov 2026 17:07:57 GMT  
		Size: 15.3 MB (15328424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f88c17aada3a6080b318c11e9a5531ae621179faec37f78a798c338ee1365394`  
		Last Modified: Thu, 19 Nov 2026 17:07:57 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fed081f18aa75696ede2bbd632a1ac46638ad1f7d1fa0cd063efa85e1ec067df`  
		Last Modified: Thu, 19 Nov 2026 17:07:57 GMT  
		Size: 16.2 MB (16213159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc99fb57f08018fc26c9ef9ff11fad0233ef7511319f65c083834e22e2b51d7`  
		Last Modified: Thu, 19 Nov 2026 17:07:57 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf2d526fb1f61c2635b9c64b2995308e6769cbe286d03eeb38f9f950f971ac57`  
		Last Modified: Thu, 19 Nov 2026 17:07:58 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55e0ddcf7224aa7f7ade0a9d26ac797fb627e7d6989ba1e4b27044ddaf48ebf7`  
		Last Modified: Thu, 19 Nov 2026 17:07:58 GMT  
		Size: 894.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d3c1fddb5a0cc3612271389d09bcc56a8c87da6ab57853e519c7a70ae67bddc`  
		Last Modified: Mon, 23 Nov 2026 23:42:24 GMT  
		Size: 33.5 MB (33468686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92aabfcd81a9929e60e56cfce663d8027a77ddc2341134437692a041c26c5aea`  
		Last Modified: Mon, 23 Nov 2026 23:42:23 GMT  
		Size: 22.7 MB (22749700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:071998355abebb57c2cbb54fc20e7446a074cdfabf8f29f3eefe8e3bbb1dc911`  
		Last Modified: Mon, 23 Nov 2026 23:42:22 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7408b80ec8408c6b58847e9c0bd38c8c49fb96321cd185db5036da38cdb3a532`  
		Last Modified: Mon, 23 Nov 2026 23:42:22 GMT  
		Size: 400.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fe089146c8ec12249b34365ca5ee17e99a49984496ee9467167f1f93cb72451`  
		Last Modified: Mon, 23 Nov 2026 23:42:24 GMT  
		Size: 18.8 KB (18806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:725c115fdc69e245b0cf1305ee045841e71985076c14c2db826491673dee962f`  
		Last Modified: Mon, 23 Nov 2026 23:46:33 GMT  
		Size: 42.1 MB (42097019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e9d475e83853e20f6c37a08923764a8c20fc078f6253419653143e0318213f4`  
		Last Modified: Mon, 23 Nov 2026 23:46:32 GMT  
		Size: 2.4 KB (2442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9401e3cd51c554b1c8cd718d416c7e883e26746e54a386f44472a3b43198a204`  
		Last Modified: Mon, 23 Nov 2026 23:46:32 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e18c1a7d8a8e9b56c1b472ce6fe1e90c22d9d830c0a1fe1a156a57896f8f4a73`  
		Last Modified: Mon, 23 Nov 2026 23:46:32 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7-php8.6-apache` - unknown; unknown

```console
$ docker pull wordpress@sha256:1b0d7bfcaa45a6bddda9dec5ae806274afdfc6d5ab109e23c4e81af572e61bbb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8462764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11a5aad4937ae858c844dccdde1b15b6965e410c5c1f65d910e380e8c32df079`

```dockerfile
```

-	Layers:
	-	`sha256:c158e0b1fd47dcb52dd8f59610832d21f4c98bd7620548dfefb8fd87f345ae17`  
		Last Modified: Mon, 23 Nov 2026 23:46:31 GMT  
		Size: 8.4 MB (8398733 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d52323289dc900aeaee6a2eddcab7a61a93c75c98272b042012f122f65a81f99`  
		Last Modified: Mon, 23 Nov 2026 23:46:31 GMT  
		Size: 64.0 KB (64031 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7-php8.6-apache` - linux; s390x

```console
$ docker pull wordpress@sha256:36d0a6fbe0ddae368ded840472787ef22483f3d6481932a70d2aa031125e2532
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **252.7 MB (252712134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e2fe95258683dd41babbd49af17b67b6bc9c554e0795cd920c8aad77523dc51`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:15:46 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 05 Nov 2026 07:16:00 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 05 Nov 2026 07:16:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:16:00 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 07:16:00 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 07:16:00 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 05 Nov 2026 07:16:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 05 Nov 2026 07:22:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 05 Nov 2026 07:22:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 05 Nov 2026 07:22:46 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 05 Nov 2026 07:22:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:22:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:22:46 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 07:22:46 GMT
ENV GPG_KEYS=D95C03BC702BE9515344AE3374E44BC9067701A5 016895DE9A475111D537A6E69134FF30BC5A99B5 5CFF17B64DC1C244F5D0EAC3E43535E2EB19010E
# Thu, 05 Nov 2026 07:22:46 GMT
ENV PHP_VERSION=8.6.0
# Thu, 05 Nov 2026 07:22:46 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.6.0.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.6.0.tar.xz.asc
# Thu, 05 Nov 2026 07:22:46 GMT
ENV PHP_SHA256=5f84beaa3d763aee1e4feed99bf54ec692c383b322e25626807b589238c3a087
# Thu, 19 Nov 2026 15:08:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 19 Nov 2026 15:08:57 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:12:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-pic 				--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		php --version # buildkit
# Thu, 19 Nov 2026 15:12:51 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:12:52 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 15:12:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:12:52 GMT
STOPSIGNAL SIGWINCH
# Thu, 19 Nov 2026 15:12:52 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:12:52 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:12:52 GMT
EXPOSE map[80/tcp:{}]
# Thu, 19 Nov 2026 15:12:52 GMT
CMD ["apache2-foreground"]
# Mon, 23 Nov 2026 23:38:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 23 Nov 2026 23:39:44 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		libonig-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 		mbstring 	; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Mon, 23 Nov 2026 23:39:44 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Mon, 23 Nov 2026 23:39:44 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Mon, 23 Nov 2026 23:39:44 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Mon, 23 Nov 2026 23:40:06 GMT
RUN set -eux; 	version='7.2-RC2'; 	sha1='723bc521dfb8a34350ecbe9750e4f6d16c6a0701'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Mon, 23 Nov 2026 23:40:06 GMT
VOLUME [/var/www/html]
# Mon, 23 Nov 2026 23:40:06 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Mon, 23 Nov 2026 23:40:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:40:06 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Mon, 23 Nov 2026 23:40:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:40:06 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0723662ef84276855ccfb0d70a3973885698c376c4b24fb8bcc09d8a00d1ebc8`  
		Last Modified: Thu, 05 Nov 2026 07:19:05 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40211898d6ec92b8daa6c68bcf4439510b2e322f2167814e7aeb8c112182fcba`  
		Last Modified: Thu, 05 Nov 2026 07:19:07 GMT  
		Size: 92.6 MB (92569706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8551db760c67ef97c61736f8f4b9f50c16f4f32fe36959b4b603716476facf07`  
		Last Modified: Thu, 05 Nov 2026 07:19:05 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cb9b0cb108c42abeaf6787274e5b7b11035702c634cca2ce9a06f8cccc8f450`  
		Last Modified: Thu, 05 Nov 2026 07:26:13 GMT  
		Size: 4.3 MB (4342224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de7eeef3eedecad1917c64e7595c887c81067ac6fb80e14291bc8f8ded77cd5e`  
		Last Modified: Thu, 05 Nov 2026 07:26:13 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b748f769815a2fda37288f4ea0ea4b3e1513c93d16555dc252d2291778906314`  
		Last Modified: Thu, 05 Nov 2026 07:26:13 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0cc285b5ba728ff49fd4ef5133c832216aca3a4c810b67fe3338cdb22c557f5`  
		Last Modified: Thu, 19 Nov 2026 15:13:10 GMT  
		Size: 15.3 MB (15327772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc9e42ed4eeff07547a2a196f8f173158cf9914480867daa5d4647c5fe613ab4`  
		Last Modified: Thu, 19 Nov 2026 15:13:09 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdde66f1a70c313ec1f722bc62bda85410c2c5eff56d2a1d2a47ca231f4154ec`  
		Last Modified: Thu, 19 Nov 2026 15:13:10 GMT  
		Size: 15.3 MB (15260208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f7cd716b2370cf6bf16130afa4bca5fe4a466ce4a7971f5397b7ad5fd975fa0`  
		Last Modified: Thu, 19 Nov 2026 15:13:10 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0aad64d7cbca5ed8d2af4f5aa89fe64eb543ba383eaa1b7efcb35b7f65ae7a1`  
		Last Modified: Thu, 19 Nov 2026 15:13:10 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c3fd0de3b1c75fc5f3f40fc959447456a1afd3adc515c267227d1cd4e9c3306`  
		Last Modified: Thu, 19 Nov 2026 15:13:11 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08219061780e7cfefcb13c7295a4d2367d2499770965e584fe043e1e28470f0a`  
		Last Modified: Mon, 23 Nov 2026 23:40:09 GMT  
		Size: 31.9 MB (31871839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:117dd23fdfe22a17c4904309aad07a53737927182f43079106c0b70d1e9b47ea`  
		Last Modified: Mon, 23 Nov 2026 23:40:08 GMT  
		Size: 21.3 MB (21289857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6640b798581632f93f3b27c61386e1030bf92096c0855e6605595a3d6ac68c08`  
		Last Modified: Mon, 23 Nov 2026 23:40:08 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d843156ba6695e5ec4289d5ae0f06fff875b04d8af9223b003fb7d973a6ee7b0`  
		Last Modified: Mon, 23 Nov 2026 23:40:08 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e2aa226179392b2bbfb1d084c11c4b28e0c5def49314d6b8858bafba6bc9309`  
		Last Modified: Mon, 23 Nov 2026 23:40:09 GMT  
		Size: 18.8 KB (18801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc2430c16f48ddefbf9870b18a541358ed91d70c8af89fec1ce684b82054c94d`  
		Last Modified: Mon, 23 Nov 2026 23:40:27 GMT  
		Size: 42.1 MB (42096982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:904bfb3c1f631c152bae12dddaa985e587b6f3b8441bf2946945e5a957d5bc75`  
		Last Modified: Mon, 23 Nov 2026 23:40:26 GMT  
		Size: 2.4 KB (2443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f919a12922fe77fecdfeba4f6025275fd7eb558474b5d23dfc8c496ddb591937`  
		Last Modified: Mon, 23 Nov 2026 23:40:26 GMT  
		Size: 1.8 KB (1773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98634a503039ac2f8635aeeca106aed1b8d2ed1334f48657397861ffa4da7ee9`  
		Last Modified: Mon, 23 Nov 2026 23:40:26 GMT  
		Size: 199.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7-php8.6-apache` - unknown; unknown

```console
$ docker pull wordpress@sha256:b6eb7023b0c1d5da99c1d0db9d9c4b796f4e45daeb201eecc2aaaaac3069904b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.2 MB (8182615 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a12b6ab339cc8ed614983d57b07db8efac7bef435d0ce16be49fed1f3705555d`

```dockerfile
```

-	Layers:
	-	`sha256:bad2b0b83e8f354972bcf677455d91da718406326526f6faee16bfc07618e156`  
		Last Modified: Mon, 23 Nov 2026 23:40:26 GMT  
		Size: 8.1 MB (8118674 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca67a37559bb8a76a54c3497e2821cf7337b07d65d781cb1a5a5ebbf94ab7a70`  
		Last Modified: Mon, 23 Nov 2026 23:40:26 GMT  
		Size: 63.9 KB (63941 bytes)  
		MIME: application/vnd.in-toto+json
