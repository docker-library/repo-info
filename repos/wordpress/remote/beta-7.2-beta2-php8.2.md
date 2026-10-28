## `wordpress:beta-7.2-beta2-php8.2`

```console
$ docker pull wordpress@sha256:5c44987c9238af96d4d9f1bbb9a8549bae3e8726062bddf2994f80e95e18dcad
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

### `wordpress:beta-7.2-beta2-php8.2` - linux; amd64

```console
$ docker pull wordpress@sha256:fcb94c98c9fc6274f7087435a53e8af7bfc7da1f02e8cf7e4d926603f463aa14
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **281.6 MB (281551341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16269b2c444e83a01a1ecf149cccd4390d809d87527a39b53daf5b03a3142ac6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 15:47:38 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 21 Oct 2026 15:47:53 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 21 Oct 2026 15:47:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 15:47:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 15:47:53 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 15:47:53 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Oct 2026 15:47:53 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Oct 2026 15:47:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Wed, 21 Oct 2026 15:47:58 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Wed, 21 Oct 2026 15:47:58 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Wed, 21 Oct 2026 15:47:58 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:47:58 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:47:58 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 15:47:58 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Wed, 21 Oct 2026 15:47:58 GMT
ENV PHP_VERSION=8.2.35
# Wed, 21 Oct 2026 15:47:58 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.35.tar.xz.asc
# Wed, 21 Oct 2026 15:47:58 GMT
ENV PHP_SHA256=5737b98601fe5ab1b8c5db0c82ed3158acb9283ed3081ffe2faffb9ac81455e6
# Wed, 21 Oct 2026 16:01:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 21 Oct 2026 16:01:17 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 16:03:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 16:03:35 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 16:03:35 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 21 Oct 2026 16:03:35 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 16:03:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 16:03:35 GMT
STOPSIGNAL SIGWINCH
# Wed, 21 Oct 2026 16:03:35 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 16:03:35 GMT
WORKDIR /var/www/html
# Wed, 21 Oct 2026 16:03:35 GMT
EXPOSE map[80/tcp:{}]
# Wed, 21 Oct 2026 16:03:35 GMT
CMD ["apache2-foreground"]
# Tue, 27 Oct 2026 19:18:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 19:19:48 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 27 Oct 2026 19:19:48 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Tue, 27 Oct 2026 19:19:49 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 27 Oct 2026 19:19:49 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Tue, 27 Oct 2026 19:19:51 GMT
RUN set -eux; 	version='7.2-beta2'; 	sha1='acc546130dbf5a867cdfee6dbcbe28acdcfca551'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Tue, 27 Oct 2026 19:19:51 GMT
VOLUME [/var/www/html]
# Tue, 27 Oct 2026 19:19:51 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Tue, 27 Oct 2026 19:19:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 19:19:52 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Tue, 27 Oct 2026 19:19:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 19:19:52 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abf71fdfb1d8feadfc526af4f5cb8cd786cf61641998c655be765898c5cb0bcb`  
		Last Modified: Wed, 21 Oct 2026 15:51:07 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ca42c212e9db0e4290f628c40b94d2a3e9f99c6929b96dd9edd22cb275e861f`  
		Last Modified: Wed, 21 Oct 2026 15:51:10 GMT  
		Size: 117.8 MB (117839110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a291fd40abbc0a31f15e308f646ed70a5e2e63d2d660c6a468e6c58ee3588041`  
		Last Modified: Wed, 21 Oct 2026 15:51:07 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:044474954690c55f42fea4c6f632ff53ef2026919e3b6810682b40608aac95e1`  
		Last Modified: Wed, 21 Oct 2026 15:51:07 GMT  
		Size: 4.2 MB (4244073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b14967873d59490ce5a203f2c2fa3816a7d51a395b70169f7f94c929c48d3a8c`  
		Last Modified: Wed, 21 Oct 2026 15:51:08 GMT  
		Size: 428.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d13e48d6c391d1c08bf4c4e1a3921c907ce6d5870b99aacaa4ea3afdc69a736a`  
		Last Modified: Wed, 21 Oct 2026 15:51:08 GMT  
		Size: 483.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5c4ffc6560c1ada80324259671709c73daa94f93306de0c06fc6b65b7e62347`  
		Last Modified: Wed, 21 Oct 2026 16:03:46 GMT  
		Size: 12.4 MB (12382645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94075b83f0cb15725f453500e3bfa4c2a5d2026aa426eb7e622172d17cf2a27e`  
		Last Modified: Wed, 21 Oct 2026 16:03:45 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d87e46716f11b652f75d10b72a213bde7c1e0a7efad8882a26df7c5d068fd9c`  
		Last Modified: Wed, 21 Oct 2026 16:03:45 GMT  
		Size: 11.5 MB (11503468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63e48a943d40dbc7fa73cfca875980d5ec89781d06fe673aa856762b298c941c`  
		Last Modified: Wed, 21 Oct 2026 16:03:45 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9d4976a6d595068d4830fbabeed4a31dd87ddb41b1b214db461061b65fd8b1d`  
		Last Modified: Wed, 21 Oct 2026 16:03:46 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:673a89ebee911c7b6749f9267e610379311feff4cc764d235af802ce3e2b7bae`  
		Last Modified: Wed, 21 Oct 2026 16:03:47 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76f56fc9f8904c25c37b5570033b485492ecf6fba68dd29334a91333d26cac00`  
		Last Modified: Wed, 21 Oct 2026 16:03:47 GMT  
		Size: 894.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c82898d9b127c16ad4a92e15dc0eb214c7f455bdb0c772dd15b9a586b5aa8269`  
		Last Modified: Tue, 27 Oct 2026 19:20:09 GMT  
		Size: 33.4 MB (33428374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb92fd2ee99a89bf8b5be21dad4fff528421c589e165e6345ec6712ad602b5d0`  
		Last Modified: Tue, 27 Oct 2026 19:20:10 GMT  
		Size: 30.3 MB (30327255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa48e17acd5ad646f46643d7e6014f6dd3601d1de46e093a24b20cf4f252e329`  
		Last Modified: Tue, 27 Oct 2026 19:20:08 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75160fb346a3f0ab1d38e3500cd259735e75458f15a1bac4e560ca06220ad655`  
		Last Modified: Tue, 27 Oct 2026 19:20:09 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a969c4112796705b9cc2be12e92ad9eed13de8c4bb8c33482ef169a0f714e9a1`  
		Last Modified: Tue, 27 Oct 2026 19:20:10 GMT  
		Size: 18.8 KB (18800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3a128ef7d25e0428e91634fcd4519300a336efd27cf23eb1f3f2e4b2b62524e`  
		Last Modified: Tue, 27 Oct 2026 19:20:11 GMT  
		Size: 42.0 MB (41953187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b15d1b87a551281072d8b108229c695745ad19a802deb673e82ab1a274172b2d`  
		Last Modified: Tue, 27 Oct 2026 19:20:11 GMT  
		Size: 2.4 KB (2442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1d62c8719e1a4a5d6f4ab6b440a495de62b94b2ddd266681fec602c2402cc2c`  
		Last Modified: Tue, 27 Oct 2026 19:20:11 GMT  
		Size: 1.8 KB (1774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81ad2f5aefe55855b7592bdd54004ba36e899ed1decc53537d26f7c583220208`  
		Last Modified: Tue, 27 Oct 2026 19:20:11 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.2-beta2-php8.2` - unknown; unknown

```console
$ docker pull wordpress@sha256:c523dd8671641a6eaa8b1e3448e1577240f928955537d7dbecd1af6f3cb999a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8766489 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6ca336e8c4da0026ae35f9d753db555e205345ae4bcdbd3344629d19903e5c2a`

```dockerfile
```

-	Layers:
	-	`sha256:a72f89a9f75e0b3624c20b59e71faa8340210a668e6f03ae49bfb16918df2453`  
		Last Modified: Tue, 27 Oct 2026 19:20:09 GMT  
		Size: 8.7 MB (8700610 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:49a1a936d6f231271e7eb2af116fa0b23eefa7acfe6fbdbe646f1ad7c1f67a11`  
		Last Modified: Tue, 27 Oct 2026 19:20:08 GMT  
		Size: 65.9 KB (65879 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.2-beta2-php8.2` - linux; arm variant v5

```console
$ docker pull wordpress@sha256:4e8b8a525210aa8b7e15409355e4f0ab3a45b897527e7e144b9c3a8d6df44b47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **249.7 MB (249657951 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f4eaf87c8406e0fc6b7303fe99e9ce4e96d3d570373a95e48c0465eec499729a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:25:13 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 28 Oct 2026 01:25:37 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 28 Oct 2026 01:25:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 01:25:37 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 28 Oct 2026 01:25:37 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 28 Oct 2026 01:25:37 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 28 Oct 2026 01:25:37 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 28 Oct 2026 01:29:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Wed, 28 Oct 2026 01:29:16 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Wed, 28 Oct 2026 01:29:17 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Wed, 28 Oct 2026 01:29:17 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:29:17 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:29:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 28 Oct 2026 01:29:17 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Wed, 28 Oct 2026 01:29:17 GMT
ENV PHP_VERSION=8.2.35
# Wed, 28 Oct 2026 01:29:17 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.35.tar.xz.asc
# Wed, 28 Oct 2026 01:29:17 GMT
ENV PHP_SHA256=5737b98601fe5ab1b8c5db0c82ed3158acb9283ed3081ffe2faffb9ac81455e6
# Wed, 28 Oct 2026 01:29:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 28 Oct 2026 01:29:29 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:32:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 28 Oct 2026 01:32:30 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:32:30 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 28 Oct 2026 01:32:31 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 28 Oct 2026 01:32:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 28 Oct 2026 01:32:31 GMT
STOPSIGNAL SIGWINCH
# Wed, 28 Oct 2026 01:32:31 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:32:31 GMT
WORKDIR /var/www/html
# Wed, 28 Oct 2026 01:32:31 GMT
EXPOSE map[80/tcp:{}]
# Wed, 28 Oct 2026 01:32:31 GMT
CMD ["apache2-foreground"]
# Wed, 28 Oct 2026 03:01:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 03:03:37 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Wed, 28 Oct 2026 03:03:37 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Wed, 28 Oct 2026 03:03:37 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Wed, 28 Oct 2026 03:03:37 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Wed, 28 Oct 2026 03:03:41 GMT
RUN set -eux; 	version='7.2-beta2'; 	sha1='acc546130dbf5a867cdfee6dbcbe28acdcfca551'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Wed, 28 Oct 2026 03:03:41 GMT
VOLUME [/var/www/html]
# Wed, 28 Oct 2026 03:03:41 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Wed, 28 Oct 2026 03:03:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 03:03:41 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Wed, 28 Oct 2026 03:03:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 03:03:41 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:68d18f0cacf7c180fce3f62bf1d71d368c005491f0c66d89fb313a1d6b6b81ee`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.0 MB (28018667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:470d9f75dc8d3a7598dc326a22c747617f69edefaac17b1d6cffafafb1a4acdf`  
		Last Modified: Wed, 28 Oct 2026 01:28:57 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c09e139aacdb6361b94461b37d40691197c5905f834d3a6920b8cbf14d194a67`  
		Last Modified: Wed, 28 Oct 2026 01:29:00 GMT  
		Size: 94.9 MB (94881790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0ed356b5e750bd1341c1ccc7465af8945f265809b6c6e52ca7e2cde5c8e72ae`  
		Last Modified: Wed, 28 Oct 2026 01:28:57 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b474742c69e19f2ac0fe81ba1e94de6a60702384dd2b3e2aa76f98ff27e18fc2`  
		Last Modified: Wed, 28 Oct 2026 01:32:41 GMT  
		Size: 4.1 MB (4100055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ac67962b76314cec85d4784fc23ef806f447e7ba714c67eba29cde8d0c24c6c`  
		Last Modified: Wed, 28 Oct 2026 01:32:41 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8fc4e287063299ab18a899f5f65b10496ff6cf11e5f145ef28ac7350abbe68f`  
		Last Modified: Wed, 28 Oct 2026 01:32:41 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24366c07ef88dfed94be05e97fe6f6ba55cdaf40dca5cc377737e2726a25abd8`  
		Last Modified: Wed, 28 Oct 2026 01:32:42 GMT  
		Size: 12.4 MB (12380094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f118804312a02a85092cea2c50d129227f021f232c3943b23885fd00485834de`  
		Last Modified: Wed, 28 Oct 2026 01:32:42 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00cd04f7720a7ba9ed3c9df9369f219fc088d95818618f031bd3f4c0e29603aa`  
		Last Modified: Wed, 28 Oct 2026 01:32:42 GMT  
		Size: 10.4 MB (10411512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a92761b8970b49fe9b0c3f81b7dd6d60a001dc42cb7678849e27e4d5aac1c07d`  
		Last Modified: Wed, 28 Oct 2026 01:32:43 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15fc72add68b4d40b62b3cc0031740e7cde54f0666b5ddbfc5b6bcc9af32f757`  
		Last Modified: Wed, 28 Oct 2026 01:32:43 GMT  
		Size: 254.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1e9f7c9f3c539ac9ca4d589248960e4a3db382fdd83335cfb92f2e4e91718b5`  
		Last Modified: Wed, 28 Oct 2026 01:32:43 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e88bb1aa9fa601dcd97c3274c3a8a7f135d6804b70c25b584711ff7b2b6821b`  
		Last Modified: Wed, 28 Oct 2026 01:32:44 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6213533462c94142cd4bf86ce460103434ea549d2c742d047f9120c171cebb`  
		Last Modified: Wed, 28 Oct 2026 03:03:59 GMT  
		Size: 30.6 MB (30560123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d04206912f4286d61af8584b5b38b025d8ba51ff7ba4e5b6f775c456567796dc`  
		Last Modified: Wed, 28 Oct 2026 03:03:59 GMT  
		Size: 27.3 MB (27322857 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c621a36623b55f1dd3ead043144231a5eb57d8c2e1cf397bad5bfacae3a346b2`  
		Last Modified: Wed, 28 Oct 2026 03:03:58 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ad66c95bf3f2467ee66a12f57d533d1330d941bec43ceb0ca2dd48dda82fd42`  
		Last Modified: Wed, 28 Oct 2026 03:03:58 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85bec7926ee5d132af25c7b2b06337000db390863be03369b464307a3ed00d21`  
		Last Modified: Wed, 28 Oct 2026 03:03:59 GMT  
		Size: 18.8 KB (18798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c8f257d9366e7ad49c3d0ccd0bdd49e0dcb54937d95be8447c83d9189cb5381`  
		Last Modified: Wed, 28 Oct 2026 03:04:00 GMT  
		Size: 42.0 MB (41953197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b445c1168eb928609495ef75a72c2a5277e54dde8225359459bb1a1fcd21d43`  
		Last Modified: Wed, 28 Oct 2026 03:04:00 GMT  
		Size: 2.4 KB (2442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c3efef963613a725cbd9d1689f87132deff90532e921a2437a9df0c7bf470e6`  
		Last Modified: Wed, 28 Oct 2026 03:04:00 GMT  
		Size: 1.8 KB (1769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7563a5640e175c3bf598605e5c135b0dbaa10332dd97c652b15814500be0f2c0`  
		Last Modified: Wed, 28 Oct 2026 03:04:01 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.2-beta2-php8.2` - unknown; unknown

```console
$ docker pull wordpress@sha256:e173c8bf9995741065f1ae5dde6567da1e5a6a9d845e2b097faed6e5eb938343
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.6 MB (8560229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1ae652af12a045af165d0042903c552546dcbc09a7a05a983b406448dcc7e08`

```dockerfile
```

-	Layers:
	-	`sha256:56b4e7357b4c600030c2f8b90dcb86c2b7cbc6426105fd19b1bf6c62a09936e7`  
		Last Modified: Wed, 28 Oct 2026 03:03:58 GMT  
		Size: 8.5 MB (8494170 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:06fc89b994f00434aece56d016f4ce2e438b4e81d427f96ce534acea8e9f0bfb`  
		Last Modified: Wed, 28 Oct 2026 03:03:58 GMT  
		Size: 66.1 KB (66059 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.2-beta2-php8.2` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:434593ddb3363e8c861656f534ff634f22e55435d3e9e76e5465b17de58b7186
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.7 MB (235704352 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8926af22b2f2f24df49d8ba458067f6e0712a86f9f75beec6f865ad1c2ad1fe`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:24:46 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 28 Oct 2026 01:25:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 28 Oct 2026 01:25:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 01:25:04 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 28 Oct 2026 01:25:04 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 28 Oct 2026 01:25:04 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 28 Oct 2026 01:25:04 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 28 Oct 2026 01:49:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Wed, 28 Oct 2026 01:49:39 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Wed, 28 Oct 2026 01:49:39 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Wed, 28 Oct 2026 01:49:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:49:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:49:39 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 28 Oct 2026 01:49:39 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Wed, 28 Oct 2026 01:49:39 GMT
ENV PHP_VERSION=8.2.35
# Wed, 28 Oct 2026 01:49:39 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.35.tar.xz.asc
# Wed, 28 Oct 2026 01:49:39 GMT
ENV PHP_SHA256=5737b98601fe5ab1b8c5db0c82ed3158acb9283ed3081ffe2faffb9ac81455e6
# Wed, 28 Oct 2026 01:49:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 28 Oct 2026 01:49:48 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:52:21 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 28 Oct 2026 01:52:21 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:52:21 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 28 Oct 2026 01:52:21 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 28 Oct 2026 01:52:21 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 28 Oct 2026 01:52:21 GMT
STOPSIGNAL SIGWINCH
# Wed, 28 Oct 2026 01:52:22 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:52:22 GMT
WORKDIR /var/www/html
# Wed, 28 Oct 2026 01:52:22 GMT
EXPOSE map[80/tcp:{}]
# Wed, 28 Oct 2026 01:52:22 GMT
CMD ["apache2-foreground"]
# Wed, 28 Oct 2026 03:23:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 03:25:25 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Wed, 28 Oct 2026 03:25:25 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Wed, 28 Oct 2026 03:25:25 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Wed, 28 Oct 2026 03:25:25 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Wed, 28 Oct 2026 03:25:28 GMT
RUN set -eux; 	version='7.2-beta2'; 	sha1='acc546130dbf5a867cdfee6dbcbe28acdcfca551'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Wed, 28 Oct 2026 03:25:28 GMT
VOLUME [/var/www/html]
# Wed, 28 Oct 2026 03:25:28 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Wed, 28 Oct 2026 03:25:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 03:25:28 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Wed, 28 Oct 2026 03:25:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 03:25:28 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:2040c133c8745155688a29a07cc3f1868977ae5f2844eb1893b054c5667a82b7`  
		Last Modified: Wed, 28 Oct 2026 00:10:58 GMT  
		Size: 26.3 MB (26272168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57d676721cdabc1cd3047462cf11645c2fbe15015604ea9dadaa9a084a251cbc`  
		Last Modified: Wed, 28 Oct 2026 01:28:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aebf8a7f24d19d813230222cfdfed3b8222764e3e3f2a44104257fb9b41c265`  
		Last Modified: Wed, 28 Oct 2026 01:28:04 GMT  
		Size: 86.3 MB (86256849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:087eec55cc3829a6d399240ed7e9cc679cf8a315c95d0cef805730b2260ac965`  
		Last Modified: Wed, 28 Oct 2026 01:28:01 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6379f29e4821de9b3348771192432462c9372b0bbf4098c5d3fd1e9611c43688`  
		Last Modified: Wed, 28 Oct 2026 01:52:32 GMT  
		Size: 3.8 MB (3768274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b267fa203d4e6186c147de8015e1c03e1c26b2cdc6f428ceb73446d28a838426`  
		Last Modified: Wed, 28 Oct 2026 01:52:32 GMT  
		Size: 433.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d16d26700f7b0926196c48c71d40d9c8170d65432a0a37334051b629947e2ae7`  
		Last Modified: Wed, 28 Oct 2026 01:52:32 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2957730eed29f1d7e3e7240689ca97e35e2d332d51c24142e062fa7295941b4c`  
		Last Modified: Wed, 28 Oct 2026 01:52:32 GMT  
		Size: 12.4 MB (12380212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62ba476eff4c1bf9829f37b914e08c6e90d3fd8c31bf9cce93b64283b46be229`  
		Last Modified: Wed, 28 Oct 2026 01:52:33 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db842a5553e53c4a6ca31c595cb135356778eccd203e5a7b8173414710800969`  
		Last Modified: Wed, 28 Oct 2026 01:52:33 GMT  
		Size: 9.9 MB (9882325 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de5bee1b23a25e6fc829ae54920094db77410192545f0e22b2d12db61f7fe351`  
		Last Modified: Wed, 28 Oct 2026 01:52:33 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9674c40154138630c10e8221fc5836ee03779882e555a32d3eeacd168aa46bb`  
		Last Modified: Wed, 28 Oct 2026 01:52:33 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb5ea1bcb7400daec689d00431043eb10a88ce996d7e4840ff1638d9b7c033f4`  
		Last Modified: Wed, 28 Oct 2026 01:52:34 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3d4e1bca12527c3148d96529458de800b7aa50103b2b5e92b0bd279e3389a02`  
		Last Modified: Wed, 28 Oct 2026 01:52:34 GMT  
		Size: 892.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a93f42f7423479edeaa255a543f132e7e14cede0e3fd42de0e97e5a51c86da36`  
		Last Modified: Wed, 28 Oct 2026 03:25:46 GMT  
		Size: 29.4 MB (29425510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39835f94ad8dd4e9fac582c6fcdd529e36e873193e7f67eda4bcad8726c7528f`  
		Last Modified: Wed, 28 Oct 2026 03:25:47 GMT  
		Size: 25.7 MB (25736179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9de0b5d0ec09b3aa7583904286fcc0efed7c51dbd940e50dd58e23f6ed6b500f`  
		Last Modified: Wed, 28 Oct 2026 03:25:45 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5c67660a7ba451bb67631b79cb5a4768dcefaa10b9b49ab16d13d959a924e64`  
		Last Modified: Wed, 28 Oct 2026 03:25:45 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4095f8ca3824f4af050be5e2c4f2f3558a41c0cac437a9dc7ea86df2d5db6d57`  
		Last Modified: Wed, 28 Oct 2026 03:25:47 GMT  
		Size: 18.8 KB (18797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f89d19662ea89fb5a92a11b812828d823cf21a632735145005896ed5415ec66`  
		Last Modified: Wed, 28 Oct 2026 03:25:48 GMT  
		Size: 42.0 MB (41953182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77318ee78ab7e5e3d8be76aeb433915a6716f6b07c30dbfc1dddbce7a8fda709`  
		Last Modified: Wed, 28 Oct 2026 03:25:48 GMT  
		Size: 2.4 KB (2440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e9fe56755625e467e729914f8e45d3a34d4b08bdf4c90cc24782747d202a1f4`  
		Last Modified: Wed, 28 Oct 2026 03:25:48 GMT  
		Size: 1.8 KB (1768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1beb8c77eea0da6c185ef64ead2638eb245874c89f8ee5b973bb615a0f041d9c`  
		Last Modified: Wed, 28 Oct 2026 03:25:48 GMT  
		Size: 199.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.2-beta2-php8.2` - unknown; unknown

```console
$ docker pull wordpress@sha256:86cdce88ef81361411830e0d4933621d860e283c8c5d5691a3c432c8b7516952
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.6 MB (8565055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9047e5250840190a7a0983c43611121d48c0b602a3020002ae9d19d8fa407e7`

```dockerfile
```

-	Layers:
	-	`sha256:3748f6e7410e8e622c4091264ed2b62b8c9227c347aec16ae7d02f17affd0091`  
		Last Modified: Wed, 28 Oct 2026 03:25:45 GMT  
		Size: 8.5 MB (8499006 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46733505059e8469ab013034102c931520fa15a00446f4f560bada635c91fbaa`  
		Last Modified: Wed, 28 Oct 2026 03:25:45 GMT  
		Size: 66.0 KB (66049 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.2-beta2-php8.2` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:89dfc880a66fc383243fd88d3cb9253766a8bbe898532a251e8531654793ea6c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **273.8 MB (273786002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51ef1888fb25d8fad1fe8fa9a1fe9014d5366dd0880e69641eef42b20a302c7f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793059200'
# Wed, 28 Oct 2026 01:18:33 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 28 Oct 2026 01:18:49 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 28 Oct 2026 01:18:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 28 Oct 2026 01:18:49 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 28 Oct 2026 01:18:50 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 28 Oct 2026 01:18:50 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 28 Oct 2026 01:18:50 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 28 Oct 2026 01:18:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Wed, 28 Oct 2026 01:18:55 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Wed, 28 Oct 2026 01:18:55 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Wed, 28 Oct 2026 01:18:55 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:18:55 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 28 Oct 2026 01:18:55 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 28 Oct 2026 01:18:55 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Wed, 28 Oct 2026 01:18:55 GMT
ENV PHP_VERSION=8.2.35
# Wed, 28 Oct 2026 01:18:55 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.35.tar.xz.asc
# Wed, 28 Oct 2026 01:18:55 GMT
ENV PHP_SHA256=5737b98601fe5ab1b8c5db0c82ed3158acb9283ed3081ffe2faffb9ac81455e6
# Wed, 28 Oct 2026 01:29:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 28 Oct 2026 01:29:35 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:32:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 28 Oct 2026 01:32:59 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:32:59 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 28 Oct 2026 01:32:59 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 28 Oct 2026 01:32:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 28 Oct 2026 01:32:59 GMT
STOPSIGNAL SIGWINCH
# Wed, 28 Oct 2026 01:32:59 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 01:32:59 GMT
WORKDIR /var/www/html
# Wed, 28 Oct 2026 01:32:59 GMT
EXPOSE map[80/tcp:{}]
# Wed, 28 Oct 2026 01:32:59 GMT
CMD ["apache2-foreground"]
# Wed, 28 Oct 2026 02:32:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 28 Oct 2026 02:33:38 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Wed, 28 Oct 2026 02:33:38 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Wed, 28 Oct 2026 02:33:38 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Wed, 28 Oct 2026 02:33:38 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Wed, 28 Oct 2026 02:33:41 GMT
RUN set -eux; 	version='7.2-beta2'; 	sha1='acc546130dbf5a867cdfee6dbcbe28acdcfca551'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Wed, 28 Oct 2026 02:33:41 GMT
VOLUME [/var/www/html]
# Wed, 28 Oct 2026 02:33:41 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Wed, 28 Oct 2026 02:33:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 28 Oct 2026 02:33:41 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Wed, 28 Oct 2026 02:33:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 28 Oct 2026 02:33:41 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:2b70e040f7d132c8d366ee0223462552686510fb372ea5a83822973c30f19e36`  
		Last Modified: Wed, 28 Oct 2026 00:10:48 GMT  
		Size: 30.2 MB (30213496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25b018eb932f1277ba2c132d37d1a1249423455afe588eb5d7583a54203f3830`  
		Last Modified: Wed, 28 Oct 2026 01:22:09 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc3e81b7d21cb400daac683153d8ea01733e50a01585db498d769e900fa93756`  
		Last Modified: Wed, 28 Oct 2026 01:22:24 GMT  
		Size: 110.2 MB (110178584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:583cfb64b4c517f82a465827d61337a29117c163d04eab082516ee813a53fca9`  
		Last Modified: Wed, 28 Oct 2026 01:22:21 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:898e536c7712378f9f7f6e24f4caae638fd76d03cdfe6a707d7c72e8a619d6d8`  
		Last Modified: Wed, 28 Oct 2026 01:22:21 GMT  
		Size: 4.3 MB (4321258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da173b6482da08000d887f970466c41760753a5d8889dd54e90d3c8e4afdbcc4`  
		Last Modified: Wed, 28 Oct 2026 01:22:21 GMT  
		Size: 427.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:691e7d291c846eb257404bd9a21b32afe04d43ab81f76263d2c98988c0ae92cf`  
		Last Modified: Wed, 28 Oct 2026 01:22:22 GMT  
		Size: 480.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b915c4985cae0f1d5a60876c9e8d0d0ccc6eaa8597c464487527e5f560d6457`  
		Last Modified: Wed, 28 Oct 2026 01:33:10 GMT  
		Size: 12.4 MB (12382295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:094c389cd47726b0262086686237846772e0ebf25e224762d6ca78fad9d35e66`  
		Last Modified: Wed, 28 Oct 2026 01:33:10 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a16970f07ab2913f41693259123f8e8de3443a2e9c9c6b9e5c0ea11e5a3a6371`  
		Last Modified: Wed, 28 Oct 2026 01:33:10 GMT  
		Size: 11.5 MB (11538823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de9ed396ad45fb19df9c1dc6c3d0300de1f1e89318dd971830d3590dfc97be6c`  
		Last Modified: Wed, 28 Oct 2026 01:33:10 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3877c7b3c1d39dd4771f458d36dad4f01c699df29d76d2f1660111c3d7e9a827`  
		Last Modified: Wed, 28 Oct 2026 01:33:11 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b6365adf1b7ff5a02ea4fc114652e60a14358a27001292977b219a643e336c0`  
		Last Modified: Wed, 28 Oct 2026 01:33:11 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86fa2852e532e1043f40086f7ea0ac31f71d2ee4b8a30c3007842d14fc8244b0`  
		Last Modified: Wed, 28 Oct 2026 01:33:11 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe1c8ab83ffa400f7a6c369ed696d5a8071aeb91ed6e45c27aec98e048f7f6d7`  
		Last Modified: Wed, 28 Oct 2026 02:34:00 GMT  
		Size: 34.9 MB (34909319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1cd4041c46571e1139b33d47af5a427817c540bef67d85ffee820adc560e205`  
		Last Modified: Wed, 28 Oct 2026 02:34:00 GMT  
		Size: 28.3 MB (28259409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cdd01db75506ab852106062a95d735207deab25be1f0623af10e75572f63688`  
		Last Modified: Wed, 28 Oct 2026 02:33:59 GMT  
		Size: 310.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e00be1dcefc8c2a41e3032dd0698a3e14808f49a9f72dc93c4c14f962169829d`  
		Last Modified: Wed, 28 Oct 2026 02:33:59 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f03f2ea73678543aa152296f13fe16729da57b27d91eab85fa2cb04db304d42b`  
		Last Modified: Wed, 28 Oct 2026 02:34:00 GMT  
		Size: 18.8 KB (18793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4982062139d87c5ff8d82859650727230153da0b8180cfbc9a1b989a7a0b1747`  
		Last Modified: Wed, 28 Oct 2026 02:34:01 GMT  
		Size: 42.0 MB (41953183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5990ae92572c0fa0eaaeb586fdf1c7966961d582e5172e43a03c0f288909f9d6`  
		Last Modified: Wed, 28 Oct 2026 02:34:01 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a38d5ee419a2c4e7643574756431b56fde4822988366087291ed079936b81c`  
		Last Modified: Wed, 28 Oct 2026 02:34:01 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd89a0233e0d83e9d58b804ba1ef575a9be35ea9de72aad202733b6cc834d12b`  
		Last Modified: Wed, 28 Oct 2026 02:34:02 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.2-beta2-php8.2` - unknown; unknown

```console
$ docker pull wordpress@sha256:d1066ae94bfd0a411866aa3c7361a43b4555029fa56ca86b25eaf55d3ea3bcc1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8863242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf0f6383dab84b476d65be87db8420e1659d20cb35c447e14efb0cb9fe49a89d`

```dockerfile
```

-	Layers:
	-	`sha256:975c18589d7d19520c3c3943ab08b04107b1ec900364d6f0c27b3eab4913d305`  
		Last Modified: Wed, 28 Oct 2026 02:33:59 GMT  
		Size: 8.8 MB (8797121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1098d77e154a22c3852026b5cea45ab430148eeff784ff6bb50695e8891078f`  
		Last Modified: Wed, 28 Oct 2026 02:33:58 GMT  
		Size: 66.1 KB (66121 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.2-beta2-php8.2` - linux; 386

```console
$ docker pull wordpress@sha256:2400333cc77126db239c90163abc9319e2177de44e78b103b4ba65ae1026ba2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.4 MB (279444691 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59c81445cc7921b1aa8d51b5d462dc728185356bcc5495f0ca1e1a377cb11c9a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 15:54:08 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 21 Oct 2026 15:54:27 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 21 Oct 2026 15:54:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 15:54:27 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 15:54:27 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 15:54:27 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Oct 2026 15:54:27 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Oct 2026 15:58:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Wed, 21 Oct 2026 15:58:30 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Wed, 21 Oct 2026 15:58:30 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Wed, 21 Oct 2026 15:58:30 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:58:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 15:58:30 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 15:58:30 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Wed, 21 Oct 2026 15:58:30 GMT
ENV PHP_VERSION=8.2.35
# Wed, 21 Oct 2026 15:58:30 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.35.tar.xz.asc
# Wed, 21 Oct 2026 15:58:30 GMT
ENV PHP_SHA256=5737b98601fe5ab1b8c5db0c82ed3158acb9283ed3081ffe2faffb9ac81455e6
# Wed, 21 Oct 2026 16:09:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 21 Oct 2026 16:09:10 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 16:11:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 16:11:57 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 16:11:57 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 21 Oct 2026 16:11:58 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 16:11:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 16:11:58 GMT
STOPSIGNAL SIGWINCH
# Wed, 21 Oct 2026 16:11:58 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 16:11:58 GMT
WORKDIR /var/www/html
# Wed, 21 Oct 2026 16:11:58 GMT
EXPOSE map[80/tcp:{}]
# Wed, 21 Oct 2026 16:11:58 GMT
CMD ["apache2-foreground"]
# Tue, 27 Oct 2026 19:20:13 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 19:21:53 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 27 Oct 2026 19:21:53 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Tue, 27 Oct 2026 19:21:53 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 27 Oct 2026 19:21:53 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Tue, 27 Oct 2026 19:21:56 GMT
RUN set -eux; 	version='7.2-beta2'; 	sha1='acc546130dbf5a867cdfee6dbcbe28acdcfca551'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Tue, 27 Oct 2026 19:21:56 GMT
VOLUME [/var/www/html]
# Tue, 27 Oct 2026 19:21:56 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Tue, 27 Oct 2026 19:21:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 19:21:56 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Tue, 27 Oct 2026 19:21:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 19:21:56 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:ed7ef4d8bb8a16e6b1a4d6e74da037bb60ce864d336261b439c7da8595c0f49f`  
		Last Modified: Tue, 20 Oct 2026 23:30:51 GMT  
		Size: 31.4 MB (31353534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eab486c9eaec7ff28046843653bfa136b2fc8348388c00abd36f650ac22394f`  
		Last Modified: Wed, 21 Oct 2026 15:58:10 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2613bc76a635ac8b6b31a00c75ec4c8388a484fa39664562ab9d29cf45d92b5e`  
		Last Modified: Wed, 21 Oct 2026 15:58:14 GMT  
		Size: 116.1 MB (116140674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e45a9487dd6231483032ac37dd7daa81e7ab52ed2ba684971d71e8d0222aba1`  
		Last Modified: Wed, 21 Oct 2026 15:58:10 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e0d5b8727455bc44f7e483b95a9fade97015c4242684eaf4882b15ee509619c`  
		Last Modified: Wed, 21 Oct 2026 16:01:42 GMT  
		Size: 4.5 MB (4476989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4a92c4e20a2209c5468650b3d1c646e387c70936d545c601f5844fd2a2b6bf`  
		Last Modified: Wed, 21 Oct 2026 16:01:41 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3aa6d95fcb0edc52045cfab95808b95c5134ee74968c3cb01819856009c63ed`  
		Last Modified: Wed, 21 Oct 2026 16:01:42 GMT  
		Size: 482.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea438f447e3c6fc4af7a66e1684938ed5591acc522f9af6258950d901230aee`  
		Last Modified: Wed, 21 Oct 2026 16:12:08 GMT  
		Size: 12.4 MB (12390681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a287890948f9de02f6f70ed5b1ba1ab7811634684e09929333380eefda106c5`  
		Last Modified: Wed, 21 Oct 2026 16:12:08 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33842803375b1c1c6dac72cc54d1c012bfc0783a679b7659191077dbd31b66f2`  
		Last Modified: Wed, 21 Oct 2026 16:12:08 GMT  
		Size: 11.8 MB (11795568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1463b23204af568c02a287bcc60e8df95c2acde947e3b0a0b472bc35ac66a541`  
		Last Modified: Wed, 21 Oct 2026 16:12:08 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f90b8e0ef78fd394e60c361f32722aa56b97181ccbffcaf4f46145b2d5e604f1`  
		Last Modified: Wed, 21 Oct 2026 16:12:09 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe9e61b7f85750da28d689af72bdb9c5257668d601ceb008a13d6d7260b25370`  
		Last Modified: Wed, 21 Oct 2026 16:12:09 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f814c23c3081dd3ddc88343d907fbe99b44233376b01d76f367226b86609f58c`  
		Last Modified: Wed, 21 Oct 2026 16:12:10 GMT  
		Size: 895.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95ac3523c50ee7cdb256283ff909df8f617fce91d9bf051d71b0461c6f7d1dd8`  
		Last Modified: Tue, 27 Oct 2026 19:22:17 GMT  
		Size: 32.9 MB (32916009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e9cf306506fb10ffce055cf4791e44fde201f61cc0525c8f23edb7baeaeeeb4`  
		Last Modified: Tue, 27 Oct 2026 19:22:16 GMT  
		Size: 28.4 MB (28388363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6a194df01c093c63c1e8bc055f191ba11b0b67001709c65584b50d7df86887`  
		Last Modified: Tue, 27 Oct 2026 19:22:15 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae90f7d539857db4cb99f19c9ec706e5164e29ab56aeac7cf671162e59744462`  
		Last Modified: Tue, 27 Oct 2026 19:22:16 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77963e477f75d631e2f798ba9586ce18ac099cc3a148b5b524358587d8af0081`  
		Last Modified: Tue, 27 Oct 2026 19:22:17 GMT  
		Size: 18.8 KB (18798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:535b64c17449e2d62cb2a553fb182d0ddb071c804bc33e8d3f2b2e7698cf7c1b`  
		Last Modified: Tue, 27 Oct 2026 19:22:18 GMT  
		Size: 42.0 MB (41953211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f0e12e80cf6bb42bc24cc7c3f5aa9919a199135e7cc89db83c6cce045da17d2`  
		Last Modified: Tue, 27 Oct 2026 19:22:18 GMT  
		Size: 2.4 KB (2444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:833b3b895e071fddbf5ea2c26905821f4c1ea7b776767358f83699ad622fd798`  
		Last Modified: Tue, 27 Oct 2026 19:22:18 GMT  
		Size: 1.8 KB (1772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3918a66edff42df4f3a4f84664b0fb272471594695caff324b35aa7c359652f5`  
		Last Modified: Tue, 27 Oct 2026 19:22:18 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.2-beta2-php8.2` - unknown; unknown

```console
$ docker pull wordpress@sha256:54c90031dc93bdd5d4a2951687047ac6dbf956c2d33ecd871a7388f288ad3c3f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8739426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:745aa4aec11fd2f771b855064d4ae24e46a07a1123ca8673b2ab47d22d797413`

```dockerfile
```

-	Layers:
	-	`sha256:c5d7817902e7ded0aa0359e1d8871aa26cbfab35d0eb235a7a0918342c573380`  
		Last Modified: Tue, 27 Oct 2026 19:22:15 GMT  
		Size: 8.7 MB (8673612 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ec3c2980c55b9b211057f09ca9100baed505d6869be10bcafa858528d8d9e4fc`  
		Last Modified: Tue, 27 Oct 2026 19:22:15 GMT  
		Size: 65.8 KB (65814 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.2-beta2-php8.2` - linux; ppc64le

```console
$ docker pull wordpress@sha256:7c235b3888a7d0084bd714b3b4d5f07133ac2f3667b755990ff9c05c90ab5abf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.6 MB (277630479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:051c8d1b880d09d20069e260f8f7aba1b4425bbffda15af0aaeb8df934407f83`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:58:07 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 21 Oct 2026 00:59:42 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 21 Oct 2026 00:59:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 00:59:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 00:59:43 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 00:59:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Oct 2026 00:59:43 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Oct 2026 01:01:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Wed, 21 Oct 2026 01:01:34 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Wed, 21 Oct 2026 01:01:34 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Wed, 21 Oct 2026 01:01:34 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 01:01:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 01:01:34 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 01:01:34 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Wed, 21 Oct 2026 01:01:34 GMT
ENV PHP_VERSION=8.2.35
# Wed, 21 Oct 2026 01:01:34 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.35.tar.xz.asc
# Wed, 21 Oct 2026 01:01:34 GMT
ENV PHP_SHA256=5737b98601fe5ab1b8c5db0c82ed3158acb9283ed3081ffe2faffb9ac81455e6
# Wed, 21 Oct 2026 21:15:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 21 Oct 2026 21:15:10 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:20:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 21:20:24 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:20:24 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 21 Oct 2026 21:20:24 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 21:20:24 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 21:20:24 GMT
STOPSIGNAL SIGWINCH
# Wed, 21 Oct 2026 21:20:25 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:20:25 GMT
WORKDIR /var/www/html
# Wed, 21 Oct 2026 21:20:25 GMT
EXPOSE map[80/tcp:{}]
# Wed, 21 Oct 2026 21:20:25 GMT
CMD ["apache2-foreground"]
# Tue, 27 Oct 2026 19:29:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 27 Oct 2026 19:34:04 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 27 Oct 2026 19:34:04 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Tue, 27 Oct 2026 19:34:04 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 27 Oct 2026 19:34:05 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Tue, 27 Oct 2026 19:34:10 GMT
RUN set -eux; 	version='7.2-beta2'; 	sha1='acc546130dbf5a867cdfee6dbcbe28acdcfca551'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Tue, 27 Oct 2026 19:34:10 GMT
VOLUME [/var/www/html]
# Tue, 27 Oct 2026 19:34:10 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Tue, 27 Oct 2026 19:34:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 19:34:11 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Tue, 27 Oct 2026 19:34:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 19:34:11 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ac69a2bed9fc2c58b635321133c8c65b8b0f5b2afca103320f7855ccac5bf2`  
		Last Modified: Wed, 21 Oct 2026 01:05:44 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfe00f16e0b9e08d256f422cbc3e091c4e1895ea7b545982163c966a75597de5`  
		Last Modified: Wed, 21 Oct 2026 01:05:48 GMT  
		Size: 109.6 MB (109611929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f0206a5d08b1e075f47847c4b3d841ccd9306081ae703f614bff8dfccc9d1c5`  
		Last Modified: Wed, 21 Oct 2026 01:05:44 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59d6b6bb335be5fc3778a36ce4ad34c0c554b3c25f8282f9c63f55b4d587d689`  
		Last Modified: Wed, 21 Oct 2026 01:07:41 GMT  
		Size: 4.9 MB (4900902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5904080ff584a55fd38f4e1905dcfdf48ea839ce91eb2f65e86a9120bdb35509`  
		Last Modified: Wed, 21 Oct 2026 01:07:40 GMT  
		Size: 435.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:881a05da0b36b6c7d034e66ca5dea44b32bf78d50a4bbf0bfc39e4cece1720a6`  
		Last Modified: Wed, 21 Oct 2026 01:07:40 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d674626e971d50324bdb86c78dead86ee401abf49d249ff49111078a3fc29b`  
		Last Modified: Wed, 21 Oct 2026 21:20:55 GMT  
		Size: 12.4 MB (12398089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1642ce5d8529fa8259219b868912a5aebb6a8e84c0eb62a25d2bb72b9857ae10`  
		Last Modified: Wed, 21 Oct 2026 21:20:54 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f6d9228530e15cd59e12ac6c2322ffd017a3c79a3f04fcbfe2e4be731e48082`  
		Last Modified: Wed, 21 Oct 2026 21:20:55 GMT  
		Size: 11.9 MB (11924611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4928687d22ee2120edb6bf1dcfce4a5f8c2b703394941b18b8d01b751ed2832`  
		Last Modified: Wed, 21 Oct 2026 21:20:54 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1146a29131147634ad369765cc75487f5f1a699262f0aa757bbf21aa736008d`  
		Last Modified: Wed, 21 Oct 2026 21:20:55 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f78d49b3c83c20554080e70763b50694ab72bb0d57a26b537f85a473fd6a8c08`  
		Last Modified: Wed, 21 Oct 2026 21:20:55 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03cf622a795999ea5f0c4f957d82844bb52f8098f72d4da9e9dbf6019e62547b`  
		Last Modified: Wed, 21 Oct 2026 21:20:56 GMT  
		Size: 894.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a94b934131c34852c29f4625fc9a74a4576406b2a6bada7e9a833d4ee243dd64`  
		Last Modified: Tue, 27 Oct 2026 19:34:57 GMT  
		Size: 33.5 MB (33469011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5da94d6bfb0f587e03dd4d15b45e03ca0527eef4aaa2829d1fcafbd44e3bf9a`  
		Last Modified: Tue, 27 Oct 2026 19:34:57 GMT  
		Size: 29.7 MB (29691124 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:424821b4281eb4d8164c2f70b9b5330e554ac7d313d54a02fc98023f260054a7`  
		Last Modified: Tue, 27 Oct 2026 19:34:55 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb4fa3f039b945c7e0aa12e17a94aaba72c81aba89c573324e0f4ea78eb6da3b`  
		Last Modified: Tue, 27 Oct 2026 19:34:55 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d446ca7c6a22280b737b6ba6351dfa4b6da8feddae4f399e74a98cf073df10d4`  
		Last Modified: Tue, 27 Oct 2026 19:34:56 GMT  
		Size: 18.8 KB (18799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72476482d7cdb2a78aeba54312e8e481024b86090783650feef1b1eb4332ef64`  
		Last Modified: Tue, 27 Oct 2026 19:34:58 GMT  
		Size: 42.0 MB (41953209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c0de275a28b04c576b8dba43c469852bbde8dbf0590fa87a4bad4770101150e`  
		Last Modified: Tue, 27 Oct 2026 19:34:58 GMT  
		Size: 2.4 KB (2443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9ab48fd08e42aa4c4c72d7cb68907db22f36c0147dd20a4cb58fb39f53eea5d`  
		Last Modified: Tue, 27 Oct 2026 19:34:58 GMT  
		Size: 1.8 KB (1773 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36906ac0b0ba39ee0e71a8677eed1c26d524ec8189d4441d19d41b6eb825b7d4`  
		Last Modified: Tue, 27 Oct 2026 19:34:58 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.2-beta2-php8.2` - unknown; unknown

```console
$ docker pull wordpress@sha256:7a690276cfbf14abc26a9e3c4d0948fedeee9aea4a01e202f99e3644439b085b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8767442 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8377d5f66ecf3854610dc8c4d336d91a973402e376e6aaf5ca373c78a69f8a51`

```dockerfile
```

-	Layers:
	-	`sha256:52482d05a1994a49222f4ab5a8fc7610fc54bca863c3fbffa0f00694a9c74d5c`  
		Last Modified: Tue, 27 Oct 2026 19:34:55 GMT  
		Size: 8.7 MB (8701484 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:878fccb03f19b6917dda139fb66f905489427479645842b47f43fbda11ca4e90`  
		Last Modified: Tue, 27 Oct 2026 19:34:55 GMT  
		Size: 66.0 KB (65958 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.2-beta2-php8.2` - linux; s390x

```console
$ docker pull wordpress@sha256:ddc3cb76285c1c342049046b888146e358a5537ed6b795819fb0f6000f303abc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.8 MB (251758123 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2031161c69019545202ff9bb48c3cb094230d204f6919ed69d5cd31663add7b1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 00:19:48 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 21 Oct 2026 00:20:01 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 21 Oct 2026 00:20:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Wed, 21 Oct 2026 00:20:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 00:20:01 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 00:20:01 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Wed, 21 Oct 2026 00:20:01 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Wed, 21 Oct 2026 00:26:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Wed, 21 Oct 2026 00:26:23 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Wed, 21 Oct 2026 00:26:23 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Wed, 21 Oct 2026 00:26:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 00:26:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 00:26:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 00:26:23 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Wed, 21 Oct 2026 00:26:23 GMT
ENV PHP_VERSION=8.2.35
# Wed, 21 Oct 2026 00:26:23 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.35.tar.xz.asc
# Wed, 21 Oct 2026 00:26:23 GMT
ENV PHP_SHA256=5737b98601fe5ab1b8c5db0c82ed3158acb9283ed3081ffe2faffb9ac81455e6
# Wed, 21 Oct 2026 16:24:41 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 21 Oct 2026 16:24:41 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 16:27:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 16:27:01 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 16:27:01 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 21 Oct 2026 16:27:01 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 16:27:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 16:27:01 GMT
STOPSIGNAL SIGWINCH
# Wed, 21 Oct 2026 16:27:01 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 16:27:02 GMT
WORKDIR /var/www/html
# Wed, 21 Oct 2026 16:27:02 GMT
EXPOSE map[80/tcp:{}]
# Wed, 21 Oct 2026 16:27:02 GMT
CMD ["apache2-foreground"]
# Wed, 21 Oct 2026 17:44:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 21 Oct 2026 17:45:38 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Wed, 21 Oct 2026 17:45:38 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Wed, 21 Oct 2026 17:45:38 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Wed, 21 Oct 2026 17:45:38 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Tue, 27 Oct 2026 19:19:05 GMT
RUN set -eux; 	version='7.2-beta2'; 	sha1='acc546130dbf5a867cdfee6dbcbe28acdcfca551'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Tue, 27 Oct 2026 19:19:06 GMT
VOLUME [/var/www/html]
# Tue, 27 Oct 2026 19:19:06 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Tue, 27 Oct 2026 19:19:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 27 Oct 2026 19:19:07 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Tue, 27 Oct 2026 19:19:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 27 Oct 2026 19:19:07 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8ea9a8c24bd3c92b5dfe24692234a4db47600db4bbc5b78a32119c1a1a244bb8`  
		Last Modified: Tue, 20 Oct 2026 23:30:16 GMT  
		Size: 29.9 MB (29911438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b59f20a1167e1cfdb66270a8c92014975f5fcddb0bd29838817bda8ff7c8d854`  
		Last Modified: Wed, 21 Oct 2026 00:23:20 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08180d9105f48ca4227880b4f30d6c40d9ddec8cd8a1f0b9c64f0266f6e575af`  
		Last Modified: Wed, 21 Oct 2026 00:23:22 GMT  
		Size: 92.6 MB (92570039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aabc532692fb7f7aa55d8dec5023ab89d6be9515e54d7ac701c3b8daa2948524`  
		Last Modified: Wed, 21 Oct 2026 00:23:20 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:751ff2f05923fad6bf888a56ba61678cf8c2185427105894c763c860c1cf7aeb`  
		Last Modified: Wed, 21 Oct 2026 00:30:34 GMT  
		Size: 4.3 MB (4342295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7132719ea57914e92952ec92f597577311baeff8156047b74af873a3d62fc34b`  
		Last Modified: Wed, 21 Oct 2026 00:30:34 GMT  
		Size: 432.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64cbda62d692b7439265a44d5a01f9f5be9cfe6d623b76cb1fd22534df7e1867`  
		Last Modified: Wed, 21 Oct 2026 00:30:34 GMT  
		Size: 482.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:573e7cb8aa6baba28faa2d468ce25983a99148f17a5af1547f5d56c1606cbc0e`  
		Last Modified: Wed, 21 Oct 2026 16:27:19 GMT  
		Size: 12.4 MB (12397103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9934bfeb289a7c3d0a9971c8e06b4259786340ab922d3a8e59964e70f5328cb1`  
		Last Modified: Wed, 21 Oct 2026 16:27:19 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bf4d05225d9e023e8b3fb5e6066451548753e020b5346ae940a2081da367442`  
		Last Modified: Wed, 21 Oct 2026 16:27:19 GMT  
		Size: 11.4 MB (11374931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:403b35b5edc599fe61c6b4f7692af2b5993168292047ff77c338155764650bc3`  
		Last Modified: Wed, 21 Oct 2026 16:27:19 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9301aa1f88d9f507f997827034ee02d6e213afa798346cba00f6c143749fdb19`  
		Last Modified: Wed, 21 Oct 2026 16:27:20 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f0f987f51d464bc49d34a47503da5a563bbb8ea85b2759834d322d425252b4c`  
		Last Modified: Wed, 21 Oct 2026 16:27:20 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42e3e2795ea709001944ee5b54afc7c9d6b2d0fa6e0afd89419c483ddd9b00ed`  
		Last Modified: Wed, 21 Oct 2026 16:27:21 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bb1a855b98b47e2fa9aaeb3e8e8ee189ddf514cd8e0d480c5ad33e375aba36b`  
		Last Modified: Wed, 21 Oct 2026 17:46:04 GMT  
		Size: 31.9 MB (31863394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83d8186b0f8b75a97775d1c65f282d06e966674420b4eabdcbd85eaa5649c720`  
		Last Modified: Wed, 21 Oct 2026 17:46:04 GMT  
		Size: 27.3 MB (27316086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cb124c8f29d61f3dfc70ae0f48c1d3c46e1c27dd3dfbee8790bde068ae80bec`  
		Last Modified: Wed, 21 Oct 2026 17:46:03 GMT  
		Size: 312.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74b99afe2af9bf90bc6d06849ec4114dbd94e3b1a16fc1079a5c58dec89d2b02`  
		Last Modified: Wed, 21 Oct 2026 17:46:03 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88000c1bfb9efc0e7e726fb5541e36669f42ea98897b48f113901ce44683d6ce`  
		Last Modified: Wed, 21 Oct 2026 17:46:03 GMT  
		Size: 18.8 KB (18795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a2248d224d4b887d7dbfc9cab788b7046877c71ff7e1f237bef472f14b227e7`  
		Last Modified: Tue, 27 Oct 2026 19:20:16 GMT  
		Size: 42.0 MB (41953195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8f77ed1b7d9e014bcd7afdee313afdd8339fb30bf32f9cd389cb9efbe57243d`  
		Last Modified: Tue, 27 Oct 2026 19:20:15 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ae1523e68467bbc6ba0e696d18f33b64ebd30da484de4ad6ba9b078393ae7ab`  
		Last Modified: Tue, 27 Oct 2026 19:20:15 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eefb26463a7b69b4c7b9f6156961b0e373fb0f2cdf637fc12bd88ce3dabee38f`  
		Last Modified: Tue, 27 Oct 2026 19:20:15 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.2-beta2-php8.2` - unknown; unknown

```console
$ docker pull wordpress@sha256:e54e9aa37f696c741c77afa415b139e5f53439e535e93c33f252fceed0cf957f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8485584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8fdb1708ef464cc7046fcc68515c95475901ca9f4e73c2a8194c421500a26220`

```dockerfile
```

-	Layers:
	-	`sha256:6b7dedfdfc6cd056ca5f72a083317a75997a3f9fa0bb5af62f8b7a3f75ff9453`  
		Last Modified: Tue, 27 Oct 2026 19:20:15 GMT  
		Size: 8.4 MB (8419715 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ba4c31524849b18a2a04ddcf14a52cac0c3a97bebdf57f68985c3babc614255a`  
		Last Modified: Tue, 27 Oct 2026 19:20:15 GMT  
		Size: 65.9 KB (65869 bytes)  
		MIME: application/vnd.in-toto+json
