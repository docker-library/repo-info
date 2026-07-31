## `wordpress:7-php8.4`

```console
$ docker pull wordpress@sha256:4a6dd898d1b3712e1889e30b16d796ee1264ccad0ee11bc1c61b390f096a3299
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

### `wordpress:7-php8.4` - linux; amd64

```console
$ docker pull wordpress@sha256:49547881d64a96b8ef620330a799b272944da171aff9220d49470c9e83912fac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.0 MB (271997345 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c173c7be194aa19d913708f2d01d1845e664dea3b3368fa14c0d8f54cb9642f1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Thu, 30 Jul 2026 22:35:36 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 30 Jul 2026 22:35:53 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 30 Jul 2026 22:35:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 30 Jul 2026 22:35:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:35:53 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:35:53 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 30 Jul 2026 22:35:53 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 30 Jul 2026 22:42:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 30 Jul 2026 22:42:59 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 30 Jul 2026 22:42:59 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 30 Jul 2026 22:42:59 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:42:59 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:42:59 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:42:59 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 30 Jul 2026 22:42:59 GMT
ENV PHP_VERSION=8.4.24
# Thu, 30 Jul 2026 22:42:59 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Thu, 30 Jul 2026 22:42:59 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Thu, 30 Jul 2026 22:43:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 30 Jul 2026 22:43:07 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:45:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:45:51 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:45:51 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 22:45:51 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:45:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:45:51 GMT
STOPSIGNAL SIGWINCH
# Thu, 30 Jul 2026 22:45:51 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:45:51 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 22:45:51 GMT
EXPOSE map[80/tcp:{}]
# Thu, 30 Jul 2026 22:45:51 GMT
CMD ["apache2-foreground"]
# Thu, 30 Jul 2026 23:15:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 30 Jul 2026 23:17:12 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 30 Jul 2026 23:17:12 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Thu, 30 Jul 2026 23:17:12 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 30 Jul 2026 23:17:12 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Thu, 30 Jul 2026 23:17:15 GMT
RUN set -eux; 	version='7.0.2'; 	sha1='af066c3e6a958f20572e3161805bd622a042f2c0'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Thu, 30 Jul 2026 23:17:15 GMT
VOLUME [/var/www/html]
# Thu, 30 Jul 2026 23:17:15 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Thu, 30 Jul 2026 23:17:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:17:15 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Thu, 30 Jul 2026 23:17:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 23:17:15 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b8757e6d1a3f0d1c08f43003493270a80b637cf2e711e7e07c9de52ac519a1f`  
		Last Modified: Thu, 30 Jul 2026 22:39:00 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ebfcf2dcdaaa4d10d121f86be0f1e43f92a1c941ef11b749f8ffbd12749d46b`  
		Last Modified: Thu, 30 Jul 2026 22:39:04 GMT  
		Size: 117.8 MB (117838867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c170c8a5f252570def81ac91978189fa95c756a5625ccc1236a173c030d6ac2`  
		Last Modified: Thu, 30 Jul 2026 22:38:48 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:402e53915bf08dc9ee084f6817537e4f8c18bb164f3589f1e1ec80ddcad3080e`  
		Last Modified: Thu, 30 Jul 2026 22:46:02 GMT  
		Size: 4.2 MB (4237182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4628741416bd49bc534802e7b8149e5085dd4753ba7a8ede9d8aee64a2cb3ba1`  
		Last Modified: Thu, 30 Jul 2026 22:46:01 GMT  
		Size: 436.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04eef8a7079a9b483048aa8e2707f32a7f76ad2610e3e0f75efd8ca737d539f9`  
		Last Modified: Thu, 30 Jul 2026 22:46:01 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4964f3d5861a03d957e8210454a3374325d64171ee2622d9fcdbc66e1b8cafec`  
		Last Modified: Thu, 30 Jul 2026 22:46:02 GMT  
		Size: 13.9 MB (13918686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77055bcff08bd48c390421cc37ff9006bb28611415056fec2265fc66fbee6cad`  
		Last Modified: Thu, 30 Jul 2026 22:46:03 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d46e490b705b20486a9770a245e50addd5e7bd1e6d68f16e8c4c13f9c7b5d731`  
		Last Modified: Thu, 30 Jul 2026 22:46:03 GMT  
		Size: 13.7 MB (13700608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb5f856b203925790c3d7b34aef85740a000c6da05275f7de18f4c9839198de`  
		Last Modified: Thu, 30 Jul 2026 22:46:03 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0c1e773b3af8ed799cdc2a72e00813bf1b0693800bb4a9b637028c7391a5fe2`  
		Last Modified: Thu, 30 Jul 2026 22:46:03 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed0f1cbc8ea1f7f29eede40e71c932891230c374cfa7f3ebaf46d8f9d1a8630a`  
		Last Modified: Thu, 30 Jul 2026 22:46:04 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1141d2f4833c193425ff6f45ce6adab12b631a19701b8b3b324b0ec4619fa051`  
		Last Modified: Thu, 30 Jul 2026 22:46:04 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94ea918bde5c49e7fc0b097428f81cf74f4947f75a566a7bcc8efad4d2381c8b`  
		Last Modified: Thu, 30 Jul 2026 23:17:33 GMT  
		Size: 33.0 MB (32957071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8072211cd491cfac698500407446244d1d08b6bc8fdd11f6e7fc4ca2068a04a`  
		Last Modified: Thu, 30 Jul 2026 23:17:33 GMT  
		Size: 30.0 MB (29994793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8462de2766c523bd662ae0228d87eccc3e69ed9ed7a2eee849319aadcb17791`  
		Last Modified: Thu, 30 Jul 2026 23:17:32 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e3f133dc998f76f42f9aa5f3a1c9c981887abc7d56a936c03473b869f75fe28`  
		Last Modified: Thu, 30 Jul 2026 23:17:32 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c19ba8b19abd34de385d6cdfc6321aa37aa306fd0aabb6e7486b4ae624fbee8`  
		Last Modified: Thu, 30 Jul 2026 23:17:33 GMT  
		Size: 18.8 KB (18798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a6cd800575f198b5a88929eac7b964ce36e54c4266d96df4c0f1c8fa9d92e47`  
		Last Modified: Thu, 30 Jul 2026 23:17:34 GMT  
		Size: 29.5 MB (29539576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a26a057237cef0bc4383cc976756235e3e635a2509d1c0337c96fde2084eaf92`  
		Last Modified: Thu, 30 Jul 2026 23:17:34 GMT  
		Size: 2.4 KB (2439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4852fb63137e578950669b1655b67483fcc31a094416e4287f0dfd7bf38769f`  
		Last Modified: Thu, 30 Jul 2026 23:17:35 GMT  
		Size: 1.8 KB (1769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e77ac3bb46121d98b66c5c2e73301f308fa7f32d7fc632f2dc97cf28efbbf5`  
		Last Modified: Thu, 30 Jul 2026 23:17:35 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:7-php8.4` - unknown; unknown

```console
$ docker pull wordpress@sha256:8607a5b0a42aee46a42a5d11a2b58a0052a969dd8c3141964ab4cc01eb4aa7db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8761752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57a8479467629ffed20e75f5c802474024b964bc3e4a3c4879f3591ffeb18da2`

```dockerfile
```

-	Layers:
	-	`sha256:6892d2a7ab59e2e1f78faf27c32e48c2ca8a0bcbb5246f0708b7051e7d1a5943`  
		Last Modified: Thu, 30 Jul 2026 23:17:32 GMT  
		Size: 8.7 MB (8695971 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ec55d4da1e90e0c3ada01730e035fb41cd81919002cb5789bae7499f1eda497`  
		Last Modified: Thu, 30 Jul 2026 23:17:31 GMT  
		Size: 65.8 KB (65781 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:7-php8.4` - linux; arm variant v5

```console
$ docker pull wordpress@sha256:a1f0c5f618312f9b3872658ec894279260cdef01b4b662aa5ec05e1634ba2d38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.2 MB (240237876 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de168d611976ad3a794f386eb7e6e7a88449d9e02d4b7451b35be1e55c0b596b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1783900800'
# Thu, 30 Jul 2026 22:34:30 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 30 Jul 2026 22:34:54 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 30 Jul 2026 22:34:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 30 Jul 2026 22:34:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:34:54 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:34:54 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 30 Jul 2026 22:34:54 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 30 Jul 2026 22:52:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 30 Jul 2026 22:52:29 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 30 Jul 2026 22:52:29 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 30 Jul 2026 22:52:29 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:52:29 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:52:29 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:52:29 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 30 Jul 2026 22:52:29 GMT
ENV PHP_VERSION=8.4.24
# Thu, 30 Jul 2026 22:52:29 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Thu, 30 Jul 2026 22:52:29 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Thu, 30 Jul 2026 22:52:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 30 Jul 2026 22:52:42 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:55:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:55:51 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:55:51 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 22:55:51 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:55:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:55:51 GMT
STOPSIGNAL SIGWINCH
# Thu, 30 Jul 2026 22:55:51 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:55:51 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 22:55:51 GMT
EXPOSE map[80/tcp:{}]
# Thu, 30 Jul 2026 22:55:51 GMT
CMD ["apache2-foreground"]
# Thu, 30 Jul 2026 23:20:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 30 Jul 2026 23:22:52 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 30 Jul 2026 23:22:52 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Thu, 30 Jul 2026 23:22:52 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 30 Jul 2026 23:22:52 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Thu, 30 Jul 2026 23:22:55 GMT
RUN set -eux; 	version='7.0.2'; 	sha1='af066c3e6a958f20572e3161805bd622a042f2c0'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Thu, 30 Jul 2026 23:22:55 GMT
VOLUME [/var/www/html]
# Thu, 30 Jul 2026 23:22:55 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Thu, 30 Jul 2026 23:22:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:22:55 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Thu, 30 Jul 2026 23:22:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 23:22:55 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9ce68cca63faf1f06434dd1423cb52db0d4251ee3f1838e43e5893fae28f9267`  
		Last Modified: Tue, 14 Jul 2026 00:14:26 GMT  
		Size: 28.0 MB (27954818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e35cfbaf1152462b826eb4ec121039194afa77ed7957425ffe5814294fecb095`  
		Last Modified: Thu, 30 Jul 2026 22:38:24 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a68a1f33de8bc5628db3e6e8b8206fd665b87a50ac96c1252b6d5b431738b20`  
		Last Modified: Thu, 30 Jul 2026 22:38:28 GMT  
		Size: 94.9 MB (94886497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4ffa2078da9aa803e7e461b56acd0906fe3d86083dceacf6271954d4cabeb1`  
		Last Modified: Thu, 30 Jul 2026 22:38:17 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8103a7f40e56663caf61b30ad5fcdae5807f42e42c9a5983996210926dfb4ca2`  
		Last Modified: Thu, 30 Jul 2026 22:56:02 GMT  
		Size: 4.1 MB (4097301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70b01ac4c64c6269ceb62eea9b0c1dbc1211c282ef394e0b1a23842aeed22f55`  
		Last Modified: Thu, 30 Jul 2026 22:56:02 GMT  
		Size: 431.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec4a048afcea2d7b4bb57e6e4ae78cd1419ae0c57c353961b16fa08a088211e9`  
		Last Modified: Thu, 30 Jul 2026 22:56:02 GMT  
		Size: 483.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9598826baa59ce979348dc02e5d76feb033773684bb0455c37e5f354fe493e8`  
		Last Modified: Thu, 30 Jul 2026 22:56:02 GMT  
		Size: 13.9 MB (13916301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ddedbe5ed6579dda0ecb36ecc972972cf79e704a3499b7a4f5aeebad451a293`  
		Last Modified: Thu, 30 Jul 2026 22:56:03 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bd17696eafd6489a60c24663e45ae2fbe0409dc4bd75d585759f75b8d8bb4bc`  
		Last Modified: Thu, 30 Jul 2026 22:56:03 GMT  
		Size: 12.3 MB (12305781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:272d0fa3327154df090a7af96dcb7dd0fa7f020076b7627ee435469922ed14da`  
		Last Modified: Thu, 30 Jul 2026 22:56:03 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd94eb1f6039d069ca9221a140e48de93e709aededa3abd661d269521e3bd651`  
		Last Modified: Thu, 30 Jul 2026 22:56:03 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0630e3c685c5b9eba89ece28acf9fc1ce8119a5a5f396f0c275d4692c5a97ba`  
		Last Modified: Thu, 30 Jul 2026 22:56:04 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bf91ef7f711a8f31f66f4a75c94e9e2ff8e5476faf8fc71352efd9b7f8fdd76`  
		Last Modified: Thu, 30 Jul 2026 22:56:04 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99aa4ea3a4ec025cfa3657f744e4ccd348a595955a891adbee20e8bcf7066e85`  
		Last Modified: Thu, 30 Jul 2026 23:23:12 GMT  
		Size: 30.1 MB (30143498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67995fe74f9f7e9365728733c05e5ada28821461baf2026729751737a63cc46d`  
		Last Modified: Thu, 30 Jul 2026 23:23:12 GMT  
		Size: 27.4 MB (27364468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22717dafca7ac7129d20e2b74384523d0244f81f790b2eb55218343f4faa7a2f`  
		Last Modified: Thu, 30 Jul 2026 23:23:11 GMT  
		Size: 312.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1942336d1d504c8a2f4fc1d060d81ee42b3db52d068a82a545e6a9e86da99716`  
		Last Modified: Thu, 30 Jul 2026 23:23:11 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f43d3189fab63b3aa933d56133c3fdf36e2edd66ff1c464133b035cb6ea0e6be`  
		Last Modified: Thu, 30 Jul 2026 23:23:12 GMT  
		Size: 18.8 KB (18790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad0313c10b1cb15a20165473dbf054955baa66bb42275005423460deda3a40fa`  
		Last Modified: Thu, 30 Jul 2026 23:23:13 GMT  
		Size: 29.5 MB (29539570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf8d6d4b7c9c244ba954ab7f327ee13128a4cfcd82f8aef741a81de7c95804b5`  
		Last Modified: Thu, 30 Jul 2026 23:23:13 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:739fe24a84f68bd9eb2714257909fc115bc45c102d7bfe39c07d246a7d8e9c73`  
		Last Modified: Thu, 30 Jul 2026 23:23:13 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b02b3d6e3e56411e37d109f239a692879cca80f0ec06aadd8ee1c457465f134`  
		Last Modified: Thu, 30 Jul 2026 23:23:13 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:7-php8.4` - unknown; unknown

```console
$ docker pull wordpress@sha256:6e7d36692d46d0f700420f615fde986a38da83baf5b16ee74170fb371735c335
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.6 MB (8555491 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ff597080fc99b9104d3eaf30787d7812fb7e447c30f3b0e6d9c35c32288ed1d`

```dockerfile
```

-	Layers:
	-	`sha256:d405c00d4601c7360d3c18a1a5ae85dd77b2c7355f251dd59ffd4abf1002f938`  
		Last Modified: Thu, 30 Jul 2026 23:23:11 GMT  
		Size: 8.5 MB (8489530 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba656a68a6bcb1655b6401116cab8dbbf5e9ab5929148933565623bff4453eb9`  
		Last Modified: Thu, 30 Jul 2026 23:23:10 GMT  
		Size: 66.0 KB (65961 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:7-php8.4` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:f2f358507c500332d864153d4d9e76c06295fe28b4a0d7dd6e884eee0c335c12
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.2 MB (226239197 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f6ad9ae3c5d210ba6d2872839f1f561b38cdb1df61a3f51b95da45f68bd9920`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Thu, 30 Jul 2026 22:48:44 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 30 Jul 2026 22:49:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 30 Jul 2026 22:49:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 30 Jul 2026 22:49:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:49:06 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:49:06 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 30 Jul 2026 22:49:06 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 30 Jul 2026 23:02:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 30 Jul 2026 23:02:09 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 30 Jul 2026 23:02:10 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 30 Jul 2026 23:02:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 23:02:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 23:02:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 23:02:10 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 30 Jul 2026 23:02:10 GMT
ENV PHP_VERSION=8.4.24
# Thu, 30 Jul 2026 23:02:10 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Thu, 30 Jul 2026 23:02:10 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Thu, 30 Jul 2026 23:02:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 30 Jul 2026 23:02:20 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:05:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 23:05:10 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:05:10 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 23:05:10 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 23:05:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 23:05:10 GMT
STOPSIGNAL SIGWINCH
# Thu, 30 Jul 2026 23:05:10 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:05:10 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 23:05:10 GMT
EXPOSE map[80/tcp:{}]
# Thu, 30 Jul 2026 23:05:10 GMT
CMD ["apache2-foreground"]
# Thu, 30 Jul 2026 23:41:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 30 Jul 2026 23:43:40 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 30 Jul 2026 23:43:40 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Thu, 30 Jul 2026 23:43:40 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 30 Jul 2026 23:43:41 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Thu, 30 Jul 2026 23:43:43 GMT
RUN set -eux; 	version='7.0.2'; 	sha1='af066c3e6a958f20572e3161805bd622a042f2c0'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Thu, 30 Jul 2026 23:43:43 GMT
VOLUME [/var/www/html]
# Thu, 30 Jul 2026 23:43:43 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Thu, 30 Jul 2026 23:43:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:43:43 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Thu, 30 Jul 2026 23:43:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 23:43:43 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:115722831c58f4d6b38c9b824635da33f2a8177113be80ff06c8407333cb8984`  
		Last Modified: Thu, 30 Jul 2026 22:52:22 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a708acc1bd7502141e2f60a84be151649349c6f49d2552c91da940fd310c97d`  
		Last Modified: Thu, 30 Jul 2026 22:52:25 GMT  
		Size: 86.3 MB (86258575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47227e7597c74bc4daa8d4aa852edfaddb62515f86512f3b1e058f80f5501a66`  
		Last Modified: Thu, 30 Jul 2026 22:52:22 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54bb16b1ca1a541104dabcf7a4ba00531826d262860d22dd3372e45ef40574de`  
		Last Modified: Thu, 30 Jul 2026 23:05:20 GMT  
		Size: 3.8 MB (3762633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d62eb9689f249b866c6ea9d9254ef0ca7db038edd3e39abd404dcd42b0b616e7`  
		Last Modified: Thu, 30 Jul 2026 23:05:20 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:039d302e6952c8a9810b16d0bf6ebab49a1cb8e2c8765ada683ea0367e4c23bd`  
		Last Modified: Thu, 30 Jul 2026 23:05:20 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34b34a20a2c0d73d30ee5cbe8bc3289ecdf9a501945406cb5227abd8f529737d`  
		Last Modified: Thu, 30 Jul 2026 23:05:21 GMT  
		Size: 13.9 MB (13916417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21060dd547b5124cace32c9200d3f40cc26f9477f12741e46acee51f49261653`  
		Last Modified: Thu, 30 Jul 2026 23:05:21 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f01614e5faf4c7668b4b7bdbc02d76e5cda8ba218166adf1b37274ef0d33beee`  
		Last Modified: Thu, 30 Jul 2026 23:05:21 GMT  
		Size: 11.7 MB (11715224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06d74a60a3657e8be36baa00fafc095b82d7627d690987552aef3e1bceb06d56`  
		Last Modified: Thu, 30 Jul 2026 23:05:22 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96b1ec13d9c7581b2a734768ebe0e5d704bba223fd9fa5b8ba8d8bba67fc8541`  
		Last Modified: Thu, 30 Jul 2026 23:05:22 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9789fe2749c04b8026f45fcc36ae981587d73f7c45001b10f53c44dbdbfce8cf`  
		Last Modified: Thu, 30 Jul 2026 23:05:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c6ac77d9833c2bd7ddeef4e5a74bc98b8c89690bfe94941f6e77147c0695db0`  
		Last Modified: Thu, 30 Jul 2026 23:05:23 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8de895e28580df1f56fc2abd0d0333a109dd35d9087aad81b735cd367f272530`  
		Last Modified: Thu, 30 Jul 2026 23:43:59 GMT  
		Size: 29.0 MB (29042094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18bca88fa1f9ad7e5b2096be0a4a6049b6546549bd0dcdb14b67ca6f4bc33964`  
		Last Modified: Thu, 30 Jul 2026 23:43:59 GMT  
		Size: 25.8 MB (25768553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e13c7c2a10951f2e35a569361c1fe9677d54343f77b71e95314423650d7ee0a0`  
		Last Modified: Thu, 30 Jul 2026 23:43:58 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e91670190aa7fff9034e6a56d2c7b671b66e435921873340b2262804aee289c`  
		Last Modified: Thu, 30 Jul 2026 23:43:58 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f04c82f6a618187bdf5a170cbd248be34329f9658878bbf7cd30da265613c0f9`  
		Last Modified: Thu, 30 Jul 2026 23:43:59 GMT  
		Size: 18.8 KB (18800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85c7f665f0ca13a77b345c34422ad986bf6cb90d6386a6a860208f3e669337b4`  
		Last Modified: Thu, 30 Jul 2026 23:44:00 GMT  
		Size: 29.5 MB (29539576 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27d45f59f4a562ef48c17a4e19e08d3ec56dcec4eaefd0665e9fb54fdb9139cf`  
		Last Modified: Thu, 30 Jul 2026 23:44:01 GMT  
		Size: 2.4 KB (2440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a44afa1145ea758353ea71747895ff9f59af99f684067e1cb994b3ae29c08c5`  
		Last Modified: Thu, 30 Jul 2026 23:44:01 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b92d96eaa50cdc01291ce83ce3288d47f8347f1a14b928830b6db70e9012c880`  
		Last Modified: Thu, 30 Jul 2026 23:44:01 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:7-php8.4` - unknown; unknown

```console
$ docker pull wordpress@sha256:93b617cf460286257777f6b977904f384f52300ad7c1179df007c538a1b6d6d3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.6 MB (8560325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:abc18c335538da026fbde17a641155be54a9e74ae5d8691ef26d7f354e51068c`

```dockerfile
```

-	Layers:
	-	`sha256:ce94969b152df02f8977e5de99e9d5e5b91d38baa9af81e9da1344d853a5b96e`  
		Last Modified: Thu, 30 Jul 2026 23:43:58 GMT  
		Size: 8.5 MB (8494364 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd692367b463db2b19a49c42df88fb869c80f619c996071acfd7955baf18fa87`  
		Last Modified: Thu, 30 Jul 2026 23:43:58 GMT  
		Size: 66.0 KB (65961 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:7-php8.4` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:8ddd49cb9f69f1fbb0238dc5620fb3666fd28bc7141411b4850cca7aefd6edf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **264.2 MB (264226561 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a67f9a66179b396fbee79d781bb24185b630c2baa86a20f654582676635f388`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Thu, 30 Jul 2026 22:39:13 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 30 Jul 2026 22:39:30 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 30 Jul 2026 22:39:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 30 Jul 2026 22:39:30 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:39:30 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:39:30 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 30 Jul 2026 22:39:30 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 30 Jul 2026 22:43:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 30 Jul 2026 22:43:26 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 30 Jul 2026 22:43:26 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 30 Jul 2026 22:43:26 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:43:26 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:43:26 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:43:26 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 30 Jul 2026 22:43:26 GMT
ENV PHP_VERSION=8.4.24
# Thu, 30 Jul 2026 22:43:26 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Thu, 30 Jul 2026 22:43:26 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Thu, 30 Jul 2026 22:43:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 30 Jul 2026 22:43:35 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:46:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:46:35 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:46:35 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 22:46:35 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:46:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:46:35 GMT
STOPSIGNAL SIGWINCH
# Thu, 30 Jul 2026 22:46:35 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:46:35 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 22:46:35 GMT
EXPOSE map[80/tcp:{}]
# Thu, 30 Jul 2026 22:46:35 GMT
CMD ["apache2-foreground"]
# Thu, 30 Jul 2026 23:17:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 30 Jul 2026 23:19:04 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 30 Jul 2026 23:19:04 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Thu, 30 Jul 2026 23:19:04 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 30 Jul 2026 23:19:05 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Thu, 30 Jul 2026 23:19:07 GMT
RUN set -eux; 	version='7.0.2'; 	sha1='af066c3e6a958f20572e3161805bd622a042f2c0'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Thu, 30 Jul 2026 23:19:07 GMT
VOLUME [/var/www/html]
# Thu, 30 Jul 2026 23:19:07 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Thu, 30 Jul 2026 23:19:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:19:07 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Thu, 30 Jul 2026 23:19:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 23:19:07 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20ac4d63275e5cd0d95f5ef5965db52bdb69f85daa286b577746b7dd43da255`  
		Last Modified: Thu, 30 Jul 2026 22:43:10 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd0bef406ac13dca06afcce3cbbb792ebad8413d4cd6e4dedaac0ad71e2d86e4`  
		Last Modified: Thu, 30 Jul 2026 22:43:14 GMT  
		Size: 110.2 MB (110170425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f91588039d2bb763367d06f0a7bb22ef0c8f52bbb2da2cbc93f505ad618b9f6`  
		Last Modified: Thu, 30 Jul 2026 22:43:10 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:011e4bcd8bba084aaa580b651b8c46447d2124f628eed2815893af643bfb9282`  
		Last Modified: Thu, 30 Jul 2026 22:46:46 GMT  
		Size: 4.3 MB (4312880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a72f98a4b8f9a778e6f5fa26ce9a4ac0c97e86ee89051eae60cc1e2498d5ed9`  
		Last Modified: Thu, 30 Jul 2026 22:46:46 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e4ce0de9420dc87b5e3ec4d1b92650ca921e57ed8a5b57d997f3c33c356bd73`  
		Last Modified: Thu, 30 Jul 2026 22:46:46 GMT  
		Size: 482.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90a2dea1617b74afcb50988f99533c03edadd3975d2a0d93032937638b2c054f`  
		Last Modified: Thu, 30 Jul 2026 22:46:46 GMT  
		Size: 13.9 MB (13918280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cec8ba4e7c431254fe38e31d00744a9dd1680ec25296c69b5b70ea2eb6456a6b`  
		Last Modified: Thu, 30 Jul 2026 22:46:47 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6703036ba1a6d1c40c968564e5db993b2bd985059c7e0d55efd5ef6b2c8d7ab`  
		Last Modified: Thu, 30 Jul 2026 22:46:47 GMT  
		Size: 13.4 MB (13350180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf2260fffd9d0c557317d9b45e0d576c2b0ad62ee4fde4b2bed357955add4a87`  
		Last Modified: Thu, 30 Jul 2026 22:46:47 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63aafc2af7b248edd62e9f8215b42a1e93c73c87b7a1de998204fe77c3b66838`  
		Last Modified: Thu, 30 Jul 2026 22:46:48 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3dbe09a7daf038c3abf29d8d2b00e42be26ba613c10e2c3670bbf7c21b9a7228`  
		Last Modified: Thu, 30 Jul 2026 22:46:48 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcdad205cb321d8c10dadc73040d56512b0e4ab878d8f3255990ba78741277b0`  
		Last Modified: Thu, 30 Jul 2026 22:46:48 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:798dfd057e06477a4259cf3f037e2db529ca50789d839d9b8329df69530df6cf`  
		Last Modified: Thu, 30 Jul 2026 23:19:25 GMT  
		Size: 34.5 MB (34469110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3f1127718df97d99c174053c9bf1fa22f1e08a68338da24ef62e10b82f5caf4`  
		Last Modified: Thu, 30 Jul 2026 23:19:24 GMT  
		Size: 28.3 MB (28292750 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2067d7fa538e4649d82f107b47f99d8c41a4d2703d636265d338a0d40d698a8b`  
		Last Modified: Thu, 30 Jul 2026 23:19:23 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a625c1b64dacdb5d9e3c654c2dbcfcbe21a83b4e4dbf1f3eee80b7b2e4658b5`  
		Last Modified: Thu, 30 Jul 2026 23:19:23 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3326f82881ef4718112c9c07c6f1cf1c0abbc688a95be98a59c71bf39096a5ae`  
		Last Modified: Thu, 30 Jul 2026 23:19:24 GMT  
		Size: 18.8 KB (18811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e77f34f2ac3d318cb6cf103f28ac9537b25381482be0dcb1c6b0f028fa5e6353`  
		Last Modified: Thu, 30 Jul 2026 23:19:25 GMT  
		Size: 29.5 MB (29539577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e5f0efbd96378111bb9b1ff9e84bbca83bcee7978b1f984630f5a8704739750`  
		Last Modified: Thu, 30 Jul 2026 23:19:25 GMT  
		Size: 2.4 KB (2440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3283986f754235a1440ba22ecebbda90c1979e47e1faccce39d8a8679bd33c2`  
		Last Modified: Thu, 30 Jul 2026 23:19:26 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66c67c62ffc583ce6aa4b7e397a18067f1cad65e15e3675a5ab23c750fc6992a`  
		Last Modified: Thu, 30 Jul 2026 23:19:26 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:7-php8.4` - unknown; unknown

```console
$ docker pull wordpress@sha256:6b6e6c22d2a4fca3b8774dcf80162db7c678a29f92881a316be7fe5ce33e6811
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8858504 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:022f5eedbd853f9b1241983c453eb68238788d22225c25fda78f68ef31348c44`

```dockerfile
```

-	Layers:
	-	`sha256:50ca2a44b2bf9e1e05c192ae513d1a4962fb24052d708181242e1ac602a1c39a`  
		Last Modified: Thu, 30 Jul 2026 23:19:23 GMT  
		Size: 8.8 MB (8792481 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aafd6c3761aa2b447e6bb0a765f6097322511a6aeaaeba8243215f6263ba5764`  
		Last Modified: Thu, 30 Jul 2026 23:19:23 GMT  
		Size: 66.0 KB (66023 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:7-php8.4` - linux; 386

```console
$ docker pull wordpress@sha256:ccd50ded668f23e7e394e356974ff4f259882b9d7180086bb57f0f71b33aca73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.9 MB (269850196 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7564112d5517adf14ef180071d5c436451d648ada17dabf0f35c689e4e78ac3b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Thu, 30 Jul 2026 22:39:18 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 30 Jul 2026 22:39:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 30 Jul 2026 22:39:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 30 Jul 2026 22:39:36 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:39:36 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:39:36 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 30 Jul 2026 22:39:36 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 30 Jul 2026 22:43:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 30 Jul 2026 22:43:35 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 30 Jul 2026 22:43:35 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 30 Jul 2026 22:43:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:43:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:43:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:43:35 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 30 Jul 2026 22:43:35 GMT
ENV PHP_VERSION=8.4.24
# Thu, 30 Jul 2026 22:43:35 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Thu, 30 Jul 2026 22:43:35 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Thu, 30 Jul 2026 22:43:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 30 Jul 2026 22:43:45 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:46:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:46:56 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:46:56 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 22:46:56 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:46:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:46:56 GMT
STOPSIGNAL SIGWINCH
# Thu, 30 Jul 2026 22:46:56 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:46:56 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 22:46:56 GMT
EXPOSE map[80/tcp:{}]
# Thu, 30 Jul 2026 22:46:56 GMT
CMD ["apache2-foreground"]
# Thu, 30 Jul 2026 23:14:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 30 Jul 2026 23:16:24 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 30 Jul 2026 23:16:24 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Thu, 30 Jul 2026 23:16:24 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 30 Jul 2026 23:16:24 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Thu, 30 Jul 2026 23:16:26 GMT
RUN set -eux; 	version='7.0.2'; 	sha1='af066c3e6a958f20572e3161805bd622a042f2c0'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Thu, 30 Jul 2026 23:16:26 GMT
VOLUME [/var/www/html]
# Thu, 30 Jul 2026 23:16:26 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Thu, 30 Jul 2026 23:16:26 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:16:26 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Thu, 30 Jul 2026 23:16:26 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 23:16:26 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ed670a6a9a1bb701afcd7232c09c6093320fe6436a57924efb4736ff5594c15`  
		Last Modified: Thu, 30 Jul 2026 22:43:19 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03b8fb3f0cf13de684528caa6c05128c03bc98c8e7251862c3fd24a02f68e0ea`  
		Last Modified: Thu, 30 Jul 2026 22:43:22 GMT  
		Size: 116.1 MB (116142638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e5e6474d52d36351435791be206a5afa33f7523752a0463f06eb3ec0351d985`  
		Last Modified: Thu, 30 Jul 2026 22:43:19 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c638d0f2d42bf4e55840539eea72ab72f9f891804fe66599926643f8ad7ee1c`  
		Last Modified: Thu, 30 Jul 2026 22:47:07 GMT  
		Size: 4.5 MB (4469996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f16d296d253db6ce54645cbc2ff91e0906c93a272406e90f8574945764315e5`  
		Last Modified: Thu, 30 Jul 2026 22:47:06 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e47f5751dc42cdf30516c4119bb97a13e29880cc59752a7efec914218839f2f1`  
		Last Modified: Thu, 30 Jul 2026 22:47:06 GMT  
		Size: 483.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:312a7dcac63d434d45557df798f905fae5a80ec3306f94aaeb1e13a959d7f485`  
		Last Modified: Thu, 30 Jul 2026 22:47:07 GMT  
		Size: 13.9 MB (13917708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e57e154a09bd0b570a0ce4a015aa0b75cabddca618ff2a1e43f5c7661352889`  
		Last Modified: Thu, 30 Jul 2026 22:47:07 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bade198d9f7afce27692127fcd0eed9bb4cf15f7c1c8556a4ca004b0202e7239`  
		Last Modified: Thu, 30 Jul 2026 22:47:08 GMT  
		Size: 14.0 MB (13998439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc85e5f45016a8e2eb5e717b067f102609d593b749cd4b52afadb4f101d4cd1c`  
		Last Modified: Thu, 30 Jul 2026 22:47:08 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fd0dc504da53912e7b38baaa98dd41d9f1f4ea3dd98b8b8b16837853be72f66`  
		Last Modified: Thu, 30 Jul 2026 22:47:08 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a6b2aabdd7556dba6d1036814e6f8ecf62de15777364cdffcce572dba94068a`  
		Last Modified: Thu, 30 Jul 2026 22:47:09 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:959732eec66a3d77458c1d2a4405a225211592dffd6e575388ef4a7bb4fa0b52`  
		Last Modified: Thu, 30 Jul 2026 22:47:09 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:980537e4acd3679db952b25d2e4f3f2aa37d1853ac642a337c244ebdd1adf583`  
		Last Modified: Thu, 30 Jul 2026 23:16:44 GMT  
		Size: 32.4 MB (32404868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d115edc53ece432139881727010f27e0760402cfcdd918d5814fdf85b8789c0`  
		Last Modified: Thu, 30 Jul 2026 23:16:43 GMT  
		Size: 28.1 MB (28051027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dfb7f019ee1495ddf76c541d838e0084f4351cebdb0000592b0becc222d4b9a`  
		Last Modified: Thu, 30 Jul 2026 23:16:42 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:845bcd063f27c99e40e93656f95c5be831255eba4331d845038f3ef04d64fb44`  
		Last Modified: Thu, 30 Jul 2026 23:16:42 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a40e04642bcf1e463d98a1af8e75f4b7f507a45f154f96b27eb51404c93dd2d5`  
		Last Modified: Thu, 30 Jul 2026 23:16:44 GMT  
		Size: 18.8 KB (18793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7c5f190077d9e13719d002027ac9857928aeeee14a2db6a065a4f65a31992f4`  
		Last Modified: Thu, 30 Jul 2026 23:16:44 GMT  
		Size: 29.5 MB (29539572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26956acad997abca3089a23834e7b6625e7b9f5b1f4093a61322bc3a2c4a582a`  
		Last Modified: Thu, 30 Jul 2026 23:16:45 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:578d1d0c244343cacced35745cee3839fbc447bac38759d44f9716ed6471b01c`  
		Last Modified: Thu, 30 Jul 2026 23:16:45 GMT  
		Size: 1.8 KB (1769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24e864cbc4aed12fdc17af521d521d024f5043f6f74e7a82f19795c9e9f4d5fe`  
		Last Modified: Thu, 30 Jul 2026 23:16:45 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:7-php8.4` - unknown; unknown

```console
$ docker pull wordpress@sha256:6fcd05ed2ce698b170a7739fe6f5f890b62c491c832bcb2103bc7edd43f8b46d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8734691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b77c5f97f78ae694af1c8a4f9913fdbaf0292be7e6b2ad0a0dfd0f8bc5bbbb3d`

```dockerfile
```

-	Layers:
	-	`sha256:99279a4226b09277dd456b75df31bef950950d4aaba4a19ab4f54cd0506f53d6`  
		Last Modified: Thu, 30 Jul 2026 23:16:42 GMT  
		Size: 8.7 MB (8668975 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a23ad818d2b120917609a90509c8a739a4993b1cda9b5918dac0350a307cedbd`  
		Last Modified: Thu, 30 Jul 2026 23:16:42 GMT  
		Size: 65.7 KB (65716 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:7-php8.4` - linux; ppc64le

```console
$ docker pull wordpress@sha256:afdcd0e9d45431e2aa4cde56ad4026abef712dc08e1abf49ec6cfa943a07f7bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.1 MB (268091574 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96caba3d9b9b00f2e769b3cfbede16835667eb91fa61a881d9001c6fec026ca7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:47:09 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 14 Jul 2026 01:47:57 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 14 Jul 2026 01:47:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 01:47:57 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 14 Jul 2026 01:47:57 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 14 Jul 2026 01:47:57 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 14 Jul 2026 01:47:57 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 14 Jul 2026 01:49:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 14 Jul 2026 01:49:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 14 Jul 2026 01:49:20 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 14 Jul 2026 01:49:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:49:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:49:20 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 14 Jul 2026 01:49:20 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Tue, 14 Jul 2026 01:49:20 GMT
ENV PHP_VERSION=8.4.24
# Tue, 14 Jul 2026 01:49:20 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Tue, 14 Jul 2026 01:49:20 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Fri, 31 Jul 2026 00:01:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Fri, 31 Jul 2026 00:01:43 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:06:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 31 Jul 2026 00:06:53 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:06:54 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 31 Jul 2026 00:06:54 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 31 Jul 2026 00:06:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 31 Jul 2026 00:06:54 GMT
STOPSIGNAL SIGWINCH
# Fri, 31 Jul 2026 00:06:55 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:06:56 GMT
WORKDIR /var/www/html
# Fri, 31 Jul 2026 00:06:56 GMT
EXPOSE map[80/tcp:{}]
# Fri, 31 Jul 2026 00:06:56 GMT
CMD ["apache2-foreground"]
# Fri, 31 Jul 2026 01:47:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 31 Jul 2026 01:50:08 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Fri, 31 Jul 2026 01:50:09 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Fri, 31 Jul 2026 01:50:10 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Fri, 31 Jul 2026 01:50:11 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Fri, 31 Jul 2026 01:50:15 GMT
RUN set -eux; 	version='7.0.2'; 	sha1='af066c3e6a958f20572e3161805bd622a042f2c0'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Fri, 31 Jul 2026 01:50:15 GMT
VOLUME [/var/www/html]
# Fri, 31 Jul 2026 01:50:15 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Fri, 31 Jul 2026 01:50:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 01:50:16 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Fri, 31 Jul 2026 01:50:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 01:50:16 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:27076b3f70881c54074231406139976969c9e0ed7ff938a5487429b06bbca171`  
		Last Modified: Tue, 14 Jul 2026 00:15:37 GMT  
		Size: 33.6 MB (33601478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd9fd337cd7899e7af7638f29dae4c574aa394164bd2af437580f9c9c2182fa6`  
		Last Modified: Tue, 14 Jul 2026 01:52:20 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a10f965ef16589e91b31b56f5b8058fb73d0f3a06daf05fe4c4ff6c738725671`  
		Last Modified: Tue, 14 Jul 2026 01:52:24 GMT  
		Size: 109.6 MB (109599986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2aa5772e1f0e49ca42c6d5c16739c4491de58fe0b69597250fd50ff7b194b05`  
		Last Modified: Tue, 14 Jul 2026 01:52:20 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b3d513edcced888c9d701c8b61f84146f8fa67c324bc43ef3724c9a775f6a0`  
		Last Modified: Tue, 14 Jul 2026 01:53:57 GMT  
		Size: 4.9 MB (4885486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94d1fe1967cdebe6d53ef0faa1b5c3fdebe6dcc7edf1034bf1440a9eeceb0ec9`  
		Last Modified: Tue, 14 Jul 2026 01:53:57 GMT  
		Size: 444.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09fbb0d901148cd360965bd4cea366f3d6c35c1e1c8805ff4dac6f564115d6b4`  
		Last Modified: Tue, 14 Jul 2026 01:53:57 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84662caff4a5419c026a94a51576b8f9c791c60e565fd9f450a557be82b046ac`  
		Last Modified: Fri, 31 Jul 2026 00:07:19 GMT  
		Size: 13.9 MB (13932819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f089452db01f4cb4575440bdf5b61ebb4c7bf9af1af0d69b51cb3932d1cac75d`  
		Last Modified: Fri, 31 Jul 2026 00:07:18 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da076940c80ad1d5f7dd76960f5ef45eefa1dd33e9e6281336745ed5794955f0`  
		Last Modified: Fri, 31 Jul 2026 00:07:19 GMT  
		Size: 14.3 MB (14273407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d671326872fbde50dfd48391356e5b95176657fe37a2397290c2c05194de9a3d`  
		Last Modified: Fri, 31 Jul 2026 00:07:18 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac7576e870d09b3e5c1c83aad1c508df5e52962d8dc4160e388d0a1884811873`  
		Last Modified: Fri, 31 Jul 2026 00:07:19 GMT  
		Size: 254.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc278ae570736229b6b74b4ba501a55ecde4f9b038e2b591c9260d4866b68b00`  
		Last Modified: Fri, 31 Jul 2026 00:07:19 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4218acb48b62c43a89447ee59e6b230782f86abc241cb2ad5666dc14ea7ed5f8`  
		Last Modified: Fri, 31 Jul 2026 00:07:20 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5da028ff29cba75af80adcb80f0ad2c5b0f4068fdc45ce759693e762c0569062`  
		Last Modified: Fri, 31 Jul 2026 01:50:49 GMT  
		Size: 33.0 MB (32954543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:473d78cc3a59cd1414f99b866cb78b88c8a9f4040c774758ba24d2d87d9ee104`  
		Last Modified: Fri, 31 Jul 2026 01:50:49 GMT  
		Size: 29.3 MB (29274588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df0d2dd08e121771abfa58214941e88265bb47b6ff61c7508795d05c03a39ceb`  
		Last Modified: Fri, 31 Jul 2026 01:50:48 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e547d3bc182fcefd295fc6949cb065265c053902d690052170fafd432db664c4`  
		Last Modified: Fri, 31 Jul 2026 01:50:48 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1b85bab8bcaa3c0a45ae7f790bf8ce20beb103b67c22f2425d70035b7394469`  
		Last Modified: Fri, 31 Jul 2026 01:50:49 GMT  
		Size: 18.8 KB (18804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa1a174163e41ff3991341049e41c94302ef95200d94bf2ad2e98a2f8a6214c1`  
		Last Modified: Fri, 31 Jul 2026 01:50:50 GMT  
		Size: 29.5 MB (29539582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad1811be080510f1f7c33fbda8c37d6273634e6b76431f0bb0f5271582b65718`  
		Last Modified: Fri, 31 Jul 2026 01:50:50 GMT  
		Size: 2.4 KB (2442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f443e26ee666b0565e0b5977c9bdd2dcdbfa9590124a86389d63f1acab9a8a67`  
		Last Modified: Fri, 31 Jul 2026 01:50:51 GMT  
		Size: 1.8 KB (1771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d33aceecb25627feed7dec97ff7c74bb1ba354f5387e0ca6e58c1694471da3e4`  
		Last Modified: Fri, 31 Jul 2026 01:50:51 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:7-php8.4` - unknown; unknown

```console
$ docker pull wordpress@sha256:df52b8f908f0a3fdbac3da126cd68a60cb1cf09c1882dc7df17edbe42dfd29c6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8762701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f7f8bfa5374dc3835eefcbda8a9fcc0cc69bd0a93ccee880af37aa168ad192e`

```dockerfile
```

-	Layers:
	-	`sha256:0054e780b3d4a11b930d227d489297aac303b27150a64faaa564349e13f4c85b`  
		Last Modified: Fri, 31 Jul 2026 01:50:48 GMT  
		Size: 8.7 MB (8696840 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dd5703e09a3c07e35dce51dceb5ddc09a9af3da41dc8002d9f35eb5d487f2d81`  
		Last Modified: Fri, 31 Jul 2026 01:50:48 GMT  
		Size: 65.9 KB (65861 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:7-php8.4` - linux; riscv64

```console
$ docker pull wordpress@sha256:641fbc51792461762a033c891dace5efdca0577dd6f6decba2a8cde86db8142b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.8 MB (292769943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52d4a3e120023e0a8bed55b368649fa1fd8d9e75e7a9471829fe7a352e84102d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 09:54:02 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 14 Jul 2026 09:56:03 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 14 Jul 2026 09:56:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 09:56:03 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 14 Jul 2026 09:56:04 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 14 Jul 2026 09:56:04 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 14 Jul 2026 09:56:04 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 14 Jul 2026 10:56:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 14 Jul 2026 10:56:19 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 14 Jul 2026 10:56:20 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 14 Jul 2026 10:56:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 10:56:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 10:56:20 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 14 Jul 2026 10:56:20 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Tue, 14 Jul 2026 10:56:20 GMT
ENV PHP_VERSION=8.4.23
# Tue, 14 Jul 2026 10:56:20 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.23.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.23.tar.xz.asc
# Tue, 14 Jul 2026 10:56:20 GMT
ENV PHP_SHA256=1ab9f52008414e43bb2427ffa288eff2a4de39e1a830f957e800ba368d887a72
# Tue, 14 Jul 2026 18:22:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 14 Jul 2026 18:22:13 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 19:17:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 14 Jul 2026 19:17:11 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 19:17:12 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 14 Jul 2026 19:17:13 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 14 Jul 2026 19:17:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Jul 2026 19:17:13 GMT
STOPSIGNAL SIGWINCH
# Tue, 14 Jul 2026 19:17:13 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 19:17:13 GMT
WORKDIR /var/www/html
# Tue, 14 Jul 2026 19:17:13 GMT
EXPOSE map[80/tcp:{}]
# Tue, 14 Jul 2026 19:17:13 GMT
CMD ["apache2-foreground"]
# Thu, 16 Jul 2026 21:09:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 21:28:25 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 16 Jul 2026 21:28:26 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Thu, 16 Jul 2026 21:28:26 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 16 Jul 2026 21:28:28 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Tue, 21 Jul 2026 18:48:08 GMT
RUN set -eux; 	version='7.0.2'; 	sha1='af066c3e6a958f20572e3161805bd622a042f2c0'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Tue, 21 Jul 2026 18:48:09 GMT
VOLUME [/var/www/html]
# Tue, 21 Jul 2026 18:48:09 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Tue, 21 Jul 2026 18:48:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 21 Jul 2026 18:48:09 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Tue, 21 Jul 2026 18:48:09 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 21 Jul 2026 18:48:09 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:3ed37bd5491de4685b6418abd6b83c4b16cc06b7a51e46da7f154c5a149a41a5`  
		Last Modified: Tue, 14 Jul 2026 00:30:18 GMT  
		Size: 28.3 MB (28278203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a402f4872997a5da5da69b3a347e3be938f823a5832732f76105c5c0f83a5263`  
		Last Modified: Tue, 14 Jul 2026 10:54:06 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cdc4e0daeac0ded3e24d493163253fba6e27730e4a4bcb9c47e0bdb251fc803`  
		Last Modified: Tue, 14 Jul 2026 10:54:35 GMT  
		Size: 146.6 MB (146588003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:761a368d142cea0913dda9b162f1b07b05fe29534f42d19303f73a5b7851bf22`  
		Last Modified: Tue, 14 Jul 2026 10:54:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9b12548da727364739b64ffe3b7e6024c085f26240758f07a1063897bf604f3`  
		Last Modified: Tue, 14 Jul 2026 11:51:35 GMT  
		Size: 4.0 MB (4031666 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2abc5f2ae9a0822817e97cfd9c603a15cf51ee33a6c159549c5d68ea9a9d6c22`  
		Last Modified: Tue, 14 Jul 2026 11:51:33 GMT  
		Size: 439.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80986409fbeca1347aceac2e2488b34b43307ab4300617f2b86744d459d2be92`  
		Last Modified: Tue, 14 Jul 2026 11:51:34 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eaf890d1ea123bf4a300963ef75a9d76631e8badd5b753dcdc9dc29dc0971bd`  
		Last Modified: Tue, 14 Jul 2026 19:20:23 GMT  
		Size: 13.9 MB (13920273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d59a72c8974c6cd6ea42936cf3e9719741d69a32f34c60ae57e6afe0e641fa1c`  
		Last Modified: Tue, 14 Jul 2026 19:20:18 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d243115964c7e09ee2a018f830bc406595d02b9abaad49c154b227f2ce4b9ada`  
		Last Modified: Tue, 14 Jul 2026 19:20:23 GMT  
		Size: 13.1 MB (13101336 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9656b9c8938bd614f5309892fa24caf8e5b343a4a677e14e273caf601f6325b1`  
		Last Modified: Tue, 14 Jul 2026 19:20:19 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2c3869f83b352abcbfef4e9539bb51d04624dd819b4820b61f883c0b7d751dc`  
		Last Modified: Tue, 14 Jul 2026 19:20:21 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60ba34cbdbf3deb01fb763315d1cec067821515e42dbc2494b8003c36ef1b5e0`  
		Last Modified: Tue, 14 Jul 2026 19:20:21 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e79295c7ed9ff2a4b6f3c7de7079045d43f7f20b8f9610b377a0f1441eef38a6`  
		Last Modified: Tue, 14 Jul 2026 19:20:23 GMT  
		Size: 889.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3f67a6ef77eb27f033bb2ce672f9f4594e770b2e089a649ec5c22dbad83e0b0`  
		Last Modified: Thu, 16 Jul 2026 21:33:19 GMT  
		Size: 30.5 MB (30539933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9ed3976424898867aae92655f18acc6a897a8f57c9ae415c8d9122b0eba345b`  
		Last Modified: Thu, 16 Jul 2026 21:33:18 GMT  
		Size: 26.7 MB (26741270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0e7e3fa4e4a7456a26f68f76412c2d508f3ef6bb568215023ab080ae2c16809`  
		Last Modified: Thu, 16 Jul 2026 21:33:06 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35bf542c2d5954d8e677bf40b0ac2e39e289523517aa0afa0e0fcef56b125aaf`  
		Last Modified: Thu, 16 Jul 2026 21:33:07 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de5ada9ee60ecbe02081780c3b213ba8eafa82923a688991023528b56dd049e4`  
		Last Modified: Thu, 16 Jul 2026 21:33:09 GMT  
		Size: 18.8 KB (18823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5d0e17c09abc431d3410e6c51c21c495021fb6e0f6b1327ebe27f7adfd2954`  
		Last Modified: Tue, 21 Jul 2026 18:52:39 GMT  
		Size: 29.5 MB (29539577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83236fa6a54e6425930b05152e2e5061a60448aaa97f2e92841cb26a65fc3251`  
		Last Modified: Tue, 21 Jul 2026 18:52:34 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd0809ecee7a8185f2e1ee411001fdbbcb88d1c4e6b7935f409227934bb38a29`  
		Last Modified: Tue, 21 Jul 2026 18:52:35 GMT  
		Size: 1.8 KB (1768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de756649afdd648fb96aa08e00827add45ba22c9071fc9b72da3a1de5348b3f6`  
		Last Modified: Tue, 21 Jul 2026 18:52:35 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:7-php8.4` - unknown; unknown

```console
$ docker pull wordpress@sha256:89135144f2f16fd2c72b27938aa2ebea76f9bffdabb04bbff99bcb4bf527efb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8827536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24ce59f3857f20fff615e1d25b9c033f1fe58752f93f87058e6596c060ec4968`

```dockerfile
```

-	Layers:
	-	`sha256:e8334d873576cd57f09ccfeba8b38d5025eb71b8d0079452088d8ce6a4f8194d`  
		Last Modified: Tue, 21 Jul 2026 18:52:35 GMT  
		Size: 8.8 MB (8761675 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:07a3627db78b3554f362dc2331d3461fa695b05d2a4cadf5f01edadd7d981867`  
		Last Modified: Tue, 21 Jul 2026 18:52:34 GMT  
		Size: 65.9 KB (65861 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:7-php8.4` - linux; s390x

```console
$ docker pull wordpress@sha256:479a900463d4d8785aa2a6b0ba2377e2b66d507cfd8c27117c359fdafb921545
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.5 MB (242474168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcf0cf65204cc011ac685c46eaf20edb84169f50c0f0b5a9f23c943d8ccfdecf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:22:45 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 14 Jul 2026 01:23:14 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 14 Jul 2026 01:23:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 01:23:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 14 Jul 2026 01:23:15 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 14 Jul 2026 01:23:15 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 14 Jul 2026 01:23:15 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 30 Jul 2026 22:50:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 30 Jul 2026 22:50:06 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 30 Jul 2026 22:50:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 30 Jul 2026 22:50:06 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:50:06 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:50:06 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:50:06 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 30 Jul 2026 22:50:06 GMT
ENV PHP_VERSION=8.4.24
# Thu, 30 Jul 2026 22:50:06 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Thu, 30 Jul 2026 22:50:06 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Thu, 30 Jul 2026 23:10:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 30 Jul 2026 23:10:57 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:14:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 23:14:45 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:14:45 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 23:14:45 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 23:14:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 23:14:45 GMT
STOPSIGNAL SIGWINCH
# Thu, 30 Jul 2026 23:14:45 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:14:45 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 23:14:45 GMT
EXPOSE map[80/tcp:{}]
# Thu, 30 Jul 2026 23:14:45 GMT
CMD ["apache2-foreground"]
# Fri, 31 Jul 2026 00:15:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 31 Jul 2026 00:17:10 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Fri, 31 Jul 2026 00:17:10 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Fri, 31 Jul 2026 00:17:10 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Fri, 31 Jul 2026 00:17:10 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Fri, 31 Jul 2026 00:17:12 GMT
RUN set -eux; 	version='7.0.2'; 	sha1='af066c3e6a958f20572e3161805bd622a042f2c0'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Fri, 31 Jul 2026 00:17:12 GMT
VOLUME [/var/www/html]
# Fri, 31 Jul 2026 00:17:12 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Fri, 31 Jul 2026 00:17:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:17:13 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Fri, 31 Jul 2026 00:17:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 00:17:13 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56d8a2297d172d8695bfdc23da99328c20335f9ac835a9cce44d0dd7f41cbf49`  
		Last Modified: Tue, 14 Jul 2026 01:27:47 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b73ea782a4865a5a88f2ab43d08888c21446fdc7f7e82f14de666dbde0b9ad3f`  
		Last Modified: Tue, 14 Jul 2026 01:27:49 GMT  
		Size: 92.6 MB (92572779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b23cdcbb2b5a0fb374d4028462f5c1acc9059a0db6b28db6bc9369a4f4d1d93`  
		Last Modified: Tue, 14 Jul 2026 01:27:47 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13f2f885b5bef6c2b092ea115d42b40775d130de33e045f04f407fbaea293e97`  
		Last Modified: Thu, 30 Jul 2026 22:55:00 GMT  
		Size: 4.4 MB (4352669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:399b60e47da73f31df07352ca26f50d561dfefa83d5fef62fb7b7bc7362a3d11`  
		Last Modified: Thu, 30 Jul 2026 22:55:00 GMT  
		Size: 434.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:935fc0db1fd0b61c73c9bff8c2916d45048dfc98bf13ec6cf200e05bb669dba1`  
		Last Modified: Thu, 30 Jul 2026 22:55:00 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74f1a6e85780c5674e31a4d555a8c22a8c4f14b606268fe0da638628a9ec4b1f`  
		Last Modified: Thu, 30 Jul 2026 23:15:02 GMT  
		Size: 13.9 MB (13917227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd59d0e96bbd024543283e1504b26bb9ad9d16b5915a28e84e9c298dd2303c9e`  
		Last Modified: Thu, 30 Jul 2026 23:15:02 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ef5f89ffb1e86458d8d771fe9a9e7eeab3b5780a645adb0554bee88613ec16f`  
		Last Modified: Thu, 30 Jul 2026 23:15:02 GMT  
		Size: 13.5 MB (13461618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2897b1a4559406c8539ad4ae07d815ad6d26bd6af6987b4afd89fa3edd975a6d`  
		Last Modified: Thu, 30 Jul 2026 23:15:02 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3308f2d39cf178c7d270b0f75985f9188a5294b3bcb671d9cc12f0d6108ae04`  
		Last Modified: Thu, 30 Jul 2026 23:15:03 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fab6dd4ee47c5eff853a931674753b7d1b97927a66e4679dd5aabae65e580fb`  
		Last Modified: Thu, 30 Jul 2026 23:15:03 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:403525dec2f9bccaa70e64680012c9acb2bcf4a5778e9293be20de2d52177860`  
		Last Modified: Thu, 30 Jul 2026 23:15:04 GMT  
		Size: 889.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7c903810fa773edcc887f4792c36d81762918d8cb13eca40916a2d8f423c333`  
		Last Modified: Fri, 31 Jul 2026 00:17:42 GMT  
		Size: 31.4 MB (31398117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b3c73a92ecc6aca3c7290390274e04899a7792bc858ec9f8da9ca7160aef1cc`  
		Last Modified: Fri, 31 Jul 2026 00:17:42 GMT  
		Size: 27.4 MB (27355908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfd65a1a45f93476cd0857d593269053688a358bff0227945da0b935e5686196`  
		Last Modified: Fri, 31 Jul 2026 00:17:40 GMT  
		Size: 311.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d0066cd15317c48f8d3c810115d1fa028128ef13ba23765e4507f8580cbf645`  
		Last Modified: Fri, 31 Jul 2026 00:17:40 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:500587e667a00ed885ca650e8775eadcdf5c76504cb6bd6f95ba1cc7734f5e4b`  
		Last Modified: Fri, 31 Jul 2026 00:17:42 GMT  
		Size: 18.8 KB (18797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05696869661cd6643ee13a4c48f6eab25eb737d3fa074875fb06cce8680c5161`  
		Last Modified: Fri, 31 Jul 2026 00:17:42 GMT  
		Size: 29.5 MB (29539579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcc0dbfd82b5b5db9858c1ef91a01c4bbce4dd5f2fb57cc12abc7a169e9c9e4f`  
		Last Modified: Fri, 31 Jul 2026 00:17:43 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33460e463ad991b4082748c167191b51f34560b11de596e5399a32c73daf28dc`  
		Last Modified: Fri, 31 Jul 2026 00:17:43 GMT  
		Size: 1.8 KB (1768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88e332d77c52f96c14a6b43cee5ed8f9a522f40125b926b648807036925144a3`  
		Last Modified: Fri, 31 Jul 2026 00:17:43 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:7-php8.4` - unknown; unknown

```console
$ docker pull wordpress@sha256:6705ca09ea41fa0b8726737b9b38b1e8311db02bae965b5cd48cd5b28b9a6286
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8480874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a32d22245eedc00216e96e35bda394bc4677f5cd9b9abbae61fce2fa63312f1`

```dockerfile
```

-	Layers:
	-	`sha256:71b322aac43d70c710fd0e4dc91c7a438bfc1f646e56b14936dd4346343b1e06`  
		Last Modified: Fri, 31 Jul 2026 00:17:41 GMT  
		Size: 8.4 MB (8415105 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:294c41fb061b05b8ec61bd8d7cf1d7f68293708bd68609c7ca86d54c5e9d12ca`  
		Last Modified: Fri, 31 Jul 2026 00:17:40 GMT  
		Size: 65.8 KB (65769 bytes)  
		MIME: application/vnd.in-toto+json
