## `wordpress:beta-7.1.1-php8.3`

```console
$ docker pull wordpress@sha256:be2bed6cd82daeb00a2c08ad9205f9a1968489507a97e49297397ef6effd1fcc
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
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

### `wordpress:beta-7.1.1-php8.3` - linux; amd64

```console
$ docker pull wordpress@sha256:56176ceb3a447184652fba5a9245aa93c07e173989daefee2e71acdb024659f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.1 MB (287117969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c094deec2b75fac34202d733bbc6d5069e60a002711961650e70515d364cdae`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 21:08:59 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 15 Sep 2026 21:09:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 15 Sep 2026 21:09:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 15 Sep 2026 21:09:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:09:23 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:09:23 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 15 Sep 2026 21:09:23 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 15 Sep 2026 21:09:29 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 15 Sep 2026 21:09:30 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 15 Sep 2026 21:09:30 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 15 Sep 2026 21:09:30 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:09:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:09:30 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:09:30 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 15 Sep 2026 21:09:30 GMT
ENV PHP_VERSION=8.3.33
# Tue, 15 Sep 2026 21:09:30 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Tue, 15 Sep 2026 21:09:30 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Tue, 15 Sep 2026 21:27:17 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 15 Sep 2026 21:27:17 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:29:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:29:52 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:29:52 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:29:52 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:29:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:29:52 GMT
STOPSIGNAL SIGWINCH
# Tue, 15 Sep 2026 21:29:52 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:29:52 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 21:29:52 GMT
EXPOSE map[80/tcp:{}]
# Tue, 15 Sep 2026 21:29:52 GMT
CMD ["apache2-foreground"]
# Tue, 15 Sep 2026 22:28:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:30:03 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:30:03 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Tue, 15 Sep 2026 22:30:03 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:30:03 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Tue, 15 Sep 2026 22:30:06 GMT
RUN set -eux; 	version='7.1.1-RC1'; 	sha1='833d00fc95cab51a894692ed0a36f72c86c3dd69'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Tue, 15 Sep 2026 22:30:06 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:30:06 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Tue, 15 Sep 2026 22:30:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:30:06 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Tue, 15 Sep 2026 22:30:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:30:06 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:722608e873cc0168543a4a8ba463fa8c579bd56ecc374b206b7d443ef7195fd7`  
		Last Modified: Tue, 15 Sep 2026 21:12:40 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9615dd75c014b33267f99e0ab09b733fee31fa99e333892388462fe0d535c4c0`  
		Last Modified: Tue, 15 Sep 2026 21:12:43 GMT  
		Size: 129.1 MB (129122710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b488e1e34477dda28ce89fa23cc18076f9ebc70833755812691c9a4456927025`  
		Last Modified: Tue, 15 Sep 2026 21:12:14 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d11698e6ea7557f81bbad900d258b399401e051e5795d9ccc2369bd84bd6defb`  
		Last Modified: Tue, 15 Sep 2026 21:12:41 GMT  
		Size: 4.2 MB (4239782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1ea98554b225ae75e0ab0d8fffe9e20e9fc55c838626bc8f07108d3b0d35c2a`  
		Last Modified: Tue, 15 Sep 2026 21:12:41 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f1fe3258c289c08080c5076d84e47b91a2bbaeae92d8dc410744d9fc8964089`  
		Last Modified: Tue, 15 Sep 2026 21:12:42 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e32bd9189f217c64dd2a29ce59733d13508abd3526615ea9b6f9b22fffbf97d`  
		Last Modified: Tue, 15 Sep 2026 21:30:04 GMT  
		Size: 12.8 MB (12780422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aae94401c3a6a076a97680baf87b987e40d186f3575d711163f72ef4cc3d53ab`  
		Last Modified: Tue, 15 Sep 2026 21:30:03 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f846bcca0c41bfd8ab99f701b83aafa29869d003081c7821f7ae0766b2554256`  
		Last Modified: Tue, 15 Sep 2026 21:30:04 GMT  
		Size: 12.8 MB (12833209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cb6aeb6de9321c5a0c00309e7fee02863d2e003d23291e61410b75df07e8839`  
		Last Modified: Tue, 15 Sep 2026 21:30:03 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc22d07751187eaebd107a212c328dab0dd550b70bed2bb6173e2bea80b9b3eb`  
		Last Modified: Tue, 15 Sep 2026 21:30:05 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffd808c5221ff547003ac1a7247697c59add2ff0bc3fe112cadf685e8c9f095d`  
		Last Modified: Tue, 15 Sep 2026 21:30:05 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:676e98e4b3352e64226e4c5d32de043a80ed890d628c8dd763a469160febb34e`  
		Last Modified: Tue, 15 Sep 2026 21:30:05 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfef9d398bf08aa3574d634455e292c4446ed9faaa8625bcaf8be1b752d82bdc`  
		Last Modified: Tue, 15 Sep 2026 22:30:24 GMT  
		Size: 33.0 MB (32967279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:036551cf3ec12c68486ff7fd62eb120079480613c2a4659760591302e0e93ea1`  
		Last Modified: Tue, 15 Sep 2026 22:30:24 GMT  
		Size: 30.0 MB (29959480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0540c3380641949fa07dba0671193d49bbb49810dec1dbc9cf95f293216b7c6e`  
		Last Modified: Tue, 15 Sep 2026 22:30:23 GMT  
		Size: 312.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11907736fca2cb432b7244cf49f1d78cbf91b8f44c8cfada99e6b14adbf6456f`  
		Last Modified: Tue, 15 Sep 2026 22:30:23 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a33cb797537ba88a7bad01f65276b1fd488ec54d19540990513910dd045ba5`  
		Last Modified: Tue, 15 Sep 2026 22:30:24 GMT  
		Size: 18.8 KB (18795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8254e718cc6f29abc520c7c416e23bda77d80482956b8cfe8d1537cb66512e82`  
		Last Modified: Tue, 15 Sep 2026 22:30:25 GMT  
		Size: 35.4 MB (35392795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24d6a4ddaf0131eb694091d5a467ab42fcf3e83dd0580098d21f68fe68313596`  
		Last Modified: Tue, 15 Sep 2026 22:30:25 GMT  
		Size: 2.4 KB (2440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72b9c722a37095a4154b1290dfbab973aacbdd8ceff9b4f49259b971d9ab3ece`  
		Last Modified: Tue, 15 Sep 2026 22:30:25 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f69f6445968d465bb7f587874c8ca1dbdae69d0caf687d31e355a896ea00b46`  
		Last Modified: Tue, 15 Sep 2026 22:30:25 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.1.1-php8.3` - unknown; unknown

```console
$ docker pull wordpress@sha256:86e195b41437fab07fadbc1822ebc3e5254aa6b3bb129f030cef0882c772306a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8769724 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:844eb3eef316aba3be939e536a4009f82395aa08652b355e57bc30e8f1f5faa5`

```dockerfile
```

-	Layers:
	-	`sha256:3a1f3a18072c05f573c97c9e57a00399aad60163366a55917b7cb9b372bc5b11`  
		Last Modified: Tue, 15 Sep 2026 22:30:23 GMT  
		Size: 8.7 MB (8700021 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9a887e67643fd80274f43fa045ff2b6a106a31f30aeba48a03303e8cc8a42808`  
		Last Modified: Tue, 15 Sep 2026 22:30:22 GMT  
		Size: 69.7 KB (69703 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.1.1-php8.3` - linux; arm variant v5

```console
$ docker pull wordpress@sha256:f6cdf382495b3cdd82a05dce4be10ae7b525057da3faf51cf965115a57bafc8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.5 MB (254525652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f237a45b035512f6aee7baf4f70b2e962e4fb1fe8a027c6113ada37a7a69aa44`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 21:08:18 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 15 Sep 2026 21:08:45 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 15 Sep 2026 21:08:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 15 Sep 2026 21:08:45 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:08:45 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:08:45 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 15 Sep 2026 21:08:45 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 15 Sep 2026 21:08:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 15 Sep 2026 21:08:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 15 Sep 2026 21:08:55 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 15 Sep 2026 21:08:55 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:08:55 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:08:55 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:08:55 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 15 Sep 2026 21:08:55 GMT
ENV PHP_VERSION=8.3.33
# Tue, 15 Sep 2026 21:08:55 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Tue, 15 Sep 2026 21:08:55 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Tue, 15 Sep 2026 21:26:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 15 Sep 2026 21:26:54 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:29:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:29:49 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:29:49 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:29:49 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:29:49 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:29:49 GMT
STOPSIGNAL SIGWINCH
# Tue, 15 Sep 2026 21:29:49 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:29:49 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 21:29:49 GMT
EXPOSE map[80/tcp:{}]
# Tue, 15 Sep 2026 21:29:49 GMT
CMD ["apache2-foreground"]
# Tue, 15 Sep 2026 22:26:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:28:47 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:28:47 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Tue, 15 Sep 2026 22:28:47 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:28:47 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Tue, 15 Sep 2026 22:28:50 GMT
RUN set -eux; 	version='7.1.1-RC1'; 	sha1='833d00fc95cab51a894692ed0a36f72c86c3dd69'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Tue, 15 Sep 2026 22:28:50 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:28:50 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Tue, 15 Sep 2026 22:28:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:28:50 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Tue, 15 Sep 2026 22:28:50 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:28:50 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:b66794b20e8e770c1e565d310eba254c92677ca1aa2b4db6a81ff11f1d21e516`  
		Last Modified: Mon, 24 Aug 2026 23:20:06 GMT  
		Size: 28.0 MB (27968942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:584ac998cfbf5317b924b9ef3afc6061dd1b39e3554da1380ba0590ce47bb9f9`  
		Last Modified: Tue, 15 Sep 2026 21:12:11 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6c16ac7ae609e1a7bec61e052fd6efb9e35718c61483e70ac57fb8f59e969b1`  
		Last Modified: Tue, 15 Sep 2026 21:12:31 GMT  
		Size: 105.3 MB (105275231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:874673d4ed3025f881c846bd71efe30ead9e4ef5375e34c87ac9b77bea562150`  
		Last Modified: Tue, 15 Sep 2026 21:12:15 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c18b10b52584ea2c936ea8374f44e7566720035786ca0b5a3d7cd3e733967478`  
		Last Modified: Tue, 15 Sep 2026 21:12:28 GMT  
		Size: 4.1 MB (4097992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50138d4fcff1ea97bf3479edbef4df359847834e28b43f3595cc44f14d1bd9c4`  
		Last Modified: Tue, 15 Sep 2026 21:12:28 GMT  
		Size: 428.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90a5e636d36c2e50d72c8b8c0058bf66e53e31c6fbd020bede5d8a1e38165913`  
		Last Modified: Tue, 15 Sep 2026 21:12:28 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fb8793a8ad4bdffe3ad01c1a82c5fe97703878ae4f83f954415c19955eb3749`  
		Last Modified: Tue, 15 Sep 2026 21:30:00 GMT  
		Size: 12.8 MB (12777735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43ec67ec2a067c059f90f5e2c5188c37e2163d1c0aee78b5016f75b6efc3ecda`  
		Last Modified: Tue, 15 Sep 2026 21:29:59 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:380421ba619958a8075cecff8616c8e262862e9b10656520bc6b98c1ba26921b`  
		Last Modified: Tue, 15 Sep 2026 21:30:00 GMT  
		Size: 11.5 MB (11510388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c1aaa6e706047dcf8ad14d186f72c88f34174e2e93c500c1c9ffdb8452f8f37`  
		Last Modified: Tue, 15 Sep 2026 21:29:59 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d370e5c968b2005f4a600c30a5b33eab7ae576fec2f2a1ea49f24a7947655e6b`  
		Last Modified: Tue, 15 Sep 2026 21:30:01 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2770e6a9255494bed2cfdad8545b8ff35236e7847f5e96839f6948d80eae3d9`  
		Last Modified: Tue, 15 Sep 2026 21:30:01 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e15c64fcadb3c4567b05895fa6f4dcd6ccf35bc0c34b6d4b0e3152993428e3df`  
		Last Modified: Tue, 15 Sep 2026 21:30:01 GMT  
		Size: 894.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50f77c01cbdb9aa5e798272e902520373f7a1679d9443d2926026f68f5b8efda`  
		Last Modified: Tue, 15 Sep 2026 22:29:08 GMT  
		Size: 30.1 MB (30147003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbbf583b4b07b48dc7cd46de82b3b3b523ce74b3416fec4d912815645e3ff7eb`  
		Last Modified: Tue, 15 Sep 2026 22:29:08 GMT  
		Size: 27.3 MB (27325913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb092e792f8b63eb313ca2a2cdd6fb452176e956d1e5a80c0ae295e78f9a44bf`  
		Last Modified: Tue, 15 Sep 2026 22:29:07 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f94fea4f028dda81ca47fc5947ec3aa6d365789ec7c44a86c807c589c810397c`  
		Last Modified: Tue, 15 Sep 2026 22:29:07 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:995318183d5659d664d9ac4ed794c236907c381a0fbef2f3689e03db325f281e`  
		Last Modified: Tue, 15 Sep 2026 22:29:08 GMT  
		Size: 18.8 KB (18793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3705d830ad98eae84338b44d460f38c374acc921757fffa8fa34f47c352aae60`  
		Last Modified: Tue, 15 Sep 2026 22:29:10 GMT  
		Size: 35.4 MB (35392793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad867df9ea8a9abe0d663bbd9808181e7688819e7ada6f8fc059a151259ac4fd`  
		Last Modified: Tue, 15 Sep 2026 22:29:09 GMT  
		Size: 2.4 KB (2440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3ff2caea7f641edc04690f1d77d3728150423a54d693ef2fdc4de0fca17c115`  
		Last Modified: Tue, 15 Sep 2026 22:29:10 GMT  
		Size: 1.8 KB (1768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad1d72fcaf0f9f01c701303d8bf27bccb7d59f81293d135adcda8f8856dcc939`  
		Last Modified: Tue, 15 Sep 2026 22:29:10 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.1.1-php8.3` - unknown; unknown

```console
$ docker pull wordpress@sha256:651fb75df423879f98436f602f8490f63c19b1bdebe3fd951c8b2ced2e857c81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.6 MB (8563666 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c6508a20fd3caca21c634de88c666e68c15740d025131365b2fcb97ba91d971`

```dockerfile
```

-	Layers:
	-	`sha256:d8659fc54d2f88c9c5a51456027c051b9552fa8beaefc83ee1f39a38529c7273`  
		Last Modified: Tue, 15 Sep 2026 22:29:07 GMT  
		Size: 8.5 MB (8493677 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac6f6beb8f068268e4d4de9bbd2f699e807c603030f42a1b418d96269ce1ec9e`  
		Last Modified: Tue, 15 Sep 2026 22:29:07 GMT  
		Size: 70.0 KB (69989 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.1.1-php8.3` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:899bc812e05b14123adcbeb5e4afe8ec0e1edab075ae49add7471424887ed732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.9 MB (239903207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ccf58f9c558d91691d56646e455d98a789c1b1610a5d75035c8fb60087c4794`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 21:47:29 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 15 Sep 2026 21:47:51 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 15 Sep 2026 21:47:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 15 Sep 2026 21:47:51 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:47:51 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:47:51 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 15 Sep 2026 21:47:51 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 15 Sep 2026 21:47:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 15 Sep 2026 21:47:58 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 15 Sep 2026 21:47:58 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 15 Sep 2026 21:47:58 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:47:58 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:47:58 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:47:58 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 15 Sep 2026 21:47:58 GMT
ENV PHP_VERSION=8.3.33
# Tue, 15 Sep 2026 21:47:58 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Tue, 15 Sep 2026 21:47:58 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Tue, 15 Sep 2026 21:48:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 15 Sep 2026 21:48:08 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:50:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:50:43 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:50:43 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:50:43 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:50:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:50:43 GMT
STOPSIGNAL SIGWINCH
# Tue, 15 Sep 2026 21:50:43 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:50:43 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 21:50:43 GMT
EXPOSE map[80/tcp:{}]
# Tue, 15 Sep 2026 21:50:43 GMT
CMD ["apache2-foreground"]
# Tue, 15 Sep 2026 22:22:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:24:36 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:24:36 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Tue, 15 Sep 2026 22:24:36 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:24:36 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Tue, 15 Sep 2026 22:24:39 GMT
RUN set -eux; 	version='7.1.1-RC1'; 	sha1='833d00fc95cab51a894692ed0a36f72c86c3dd69'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Tue, 15 Sep 2026 22:24:39 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:24:39 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Tue, 15 Sep 2026 22:24:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:24:39 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Tue, 15 Sep 2026 22:24:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:24:39 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69c44fd0249cf0245e1c58cb5b98d8d6732569a5c6d3aae9479eabae392259b3`  
		Last Modified: Tue, 15 Sep 2026 21:51:02 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01b14c39da1f7381bb42c5efb73da6e19aa6d56b7946ae06b7a2445a1c6808bd`  
		Last Modified: Tue, 15 Sep 2026 21:51:04 GMT  
		Size: 95.9 MB (95946257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf733d858a3320a3265d985e2d373b357a8da5dec0dbd17afbccdc412e0ac54c`  
		Last Modified: Tue, 15 Sep 2026 21:51:02 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3341ba8134a70a6493afcd8dc98d95d77e42c94f6ae46c4204500265304678a9`  
		Last Modified: Tue, 15 Sep 2026 21:51:02 GMT  
		Size: 3.8 MB (3764527 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a42a38aba737b378a596d220932a5a969346a3d8ec526f69f8a181e8f588201`  
		Last Modified: Tue, 15 Sep 2026 21:51:03 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:990967eb16e82aa36c6b140b4005506d7d3fc83f81a5be61775627b800352299`  
		Last Modified: Tue, 15 Sep 2026 21:51:03 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc03a7ef0a54f4d2bc4f63cb0adf8aad2c7a2fb108a0d6b6741aaff43bd94e26`  
		Last Modified: Tue, 15 Sep 2026 21:51:04 GMT  
		Size: 12.8 MB (12777899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:243c56010083569378af68855b768fba75eb1a154de6bbabd1fe5c3bfccf27eb`  
		Last Modified: Tue, 15 Sep 2026 21:51:04 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a9d789a2f18290c0e6fa802ec2cfce536b41a94fb3245d07f971cbb9e897b3a`  
		Last Modified: Tue, 15 Sep 2026 21:51:04 GMT  
		Size: 11.0 MB (10978437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63f936555de34ec41d6e64f30bc01db80c7a1c319f586f44de839f7bf09042f1`  
		Last Modified: Tue, 15 Sep 2026 21:51:05 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5b52d4babb137935cd55e868a2501661c9aa59ce663da39452f1f6b03333f86`  
		Last Modified: Tue, 15 Sep 2026 21:51:05 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54c3a9d2dd1ef975732b83612d69a455faa1bc81da1470972e66945583c53bb4`  
		Last Modified: Tue, 15 Sep 2026 21:51:05 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30c5ae73c07846174ec9e49f18455e6a8c2b475c7593f2e34e47c30f2ec56f7c`  
		Last Modified: Tue, 15 Sep 2026 21:51:06 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17383a4c9afbebe5848684dbdfb01b7ff726f7ebf03f4a0365907e295ab39da8`  
		Last Modified: Tue, 15 Sep 2026 22:24:57 GMT  
		Size: 29.1 MB (29054457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84498826800d78790e5ba36d7edf617fd6af4d218f6311c39a5b18fe0e23bc84`  
		Last Modified: Tue, 15 Sep 2026 22:24:56 GMT  
		Size: 25.7 MB (25740034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d607f76927f7c96e24a500843363e7fe0d793e96e302d038e87b1b05c62248`  
		Last Modified: Tue, 15 Sep 2026 22:24:56 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea09b4d000977567c4b88e287530d0222efaf250e023799cf6d979a5e766789a`  
		Last Modified: Tue, 15 Sep 2026 22:24:56 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1478bf65931012a89aef7b7129021ba2cab4bd15176005254e159d37ae15e9a`  
		Last Modified: Tue, 15 Sep 2026 22:24:57 GMT  
		Size: 18.8 KB (18794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8889a2a66fcf5c1923631229d811c3674459f12181cd955e7806f52544d8c49`  
		Last Modified: Tue, 15 Sep 2026 22:24:58 GMT  
		Size: 35.4 MB (35392795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2066722d3997c7f9d160ac25cef5990988b15ea2cc5e1e6bb3f78512caa3b9ce`  
		Last Modified: Tue, 15 Sep 2026 22:24:58 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20d3623763e2051a6d5af6c921664965f1754017b18a28d50d7b4a1f2934549e`  
		Last Modified: Tue, 15 Sep 2026 22:24:58 GMT  
		Size: 1.8 KB (1771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b3f2d79247f83bb702e1ec911b40baeea2c2f9a20d51038bdeacaf2fdd0093e`  
		Last Modified: Tue, 15 Sep 2026 22:24:58 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.1.1-php8.3` - unknown; unknown

```console
$ docker pull wordpress@sha256:341ca28e076849ce274c0721ec31582ca512748e3691663770c9f939512a2095
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.6 MB (8568492 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1bb74eeb9a99d6be3ea4338679e7cf8fc7e25a58bf777af32d6a911b99538722`

```dockerfile
```

-	Layers:
	-	`sha256:bd06258fc934db9b33906da3372b8784dd3d07c2b5bcfe65bd17a7e6e0677cbc`  
		Last Modified: Tue, 15 Sep 2026 22:24:56 GMT  
		Size: 8.5 MB (8498513 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37919b9ff2525befe86e1f9f3d15c6a1bb90e018ac725c85be49c514324b1557`  
		Last Modified: Tue, 15 Sep 2026 22:24:55 GMT  
		Size: 70.0 KB (69979 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.1.1-php8.3` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:d4c14258c081a894d793030d5a06caa28016bf7ac7e2cbfe6031fb48fa5a8bbc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.1 MB (280054529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2254ad8c3f8fd8c1b6dcd971f8097ca9ee6fec9110900a0471a6f728027b6b1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 21:09:15 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 15 Sep 2026 21:09:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 15 Sep 2026 21:09:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 15 Sep 2026 21:09:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:09:39 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:09:39 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 15 Sep 2026 21:09:39 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 15 Sep 2026 21:28:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 15 Sep 2026 21:28:43 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 15 Sep 2026 21:28:43 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 15 Sep 2026 21:28:43 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:28:43 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:28:43 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:28:43 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 15 Sep 2026 21:28:43 GMT
ENV PHP_VERSION=8.3.33
# Tue, 15 Sep 2026 21:28:43 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Tue, 15 Sep 2026 21:28:43 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Tue, 15 Sep 2026 21:28:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 15 Sep 2026 21:28:52 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:32:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:32:47 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:32:47 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:32:47 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:32:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:32:47 GMT
STOPSIGNAL SIGWINCH
# Tue, 15 Sep 2026 21:32:47 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:32:48 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 21:32:48 GMT
EXPOSE map[80/tcp:{}]
# Tue, 15 Sep 2026 21:32:48 GMT
CMD ["apache2-foreground"]
# Tue, 15 Sep 2026 22:12:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:13:59 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:13:59 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Tue, 15 Sep 2026 22:13:59 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:14:00 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Tue, 15 Sep 2026 22:15:47 GMT
RUN set -eux; 	version='7.1.1-RC1'; 	sha1='833d00fc95cab51a894692ed0a36f72c86c3dd69'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Tue, 15 Sep 2026 22:15:47 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:15:47 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Tue, 15 Sep 2026 22:15:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:15:47 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Tue, 15 Sep 2026 22:15:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:15:47 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56c675eeaf551fe5482a7a1baeb67d7ff633c32660532203ea0e0ca7ae68ac2b`  
		Last Modified: Tue, 15 Sep 2026 21:13:11 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7dc705a215f4521fabf57dd9032dda7d6cd501ea187412ed1669f95cb1252d3`  
		Last Modified: Tue, 15 Sep 2026 21:13:15 GMT  
		Size: 121.8 MB (121803512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19609913d748b67fb4b05e51e387cd8439ab20c0586177d5311dc434e602429e`  
		Last Modified: Tue, 15 Sep 2026 21:12:25 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a701e061072fe48b7bdfb2afdc1e80b67d29582bd407d6191d868aa0df942a2`  
		Last Modified: Tue, 15 Sep 2026 21:32:59 GMT  
		Size: 4.3 MB (4315129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:865d3bb1523341388048c7b20c996ea98881d52575dbee42b786f67cf16258fc`  
		Last Modified: Tue, 15 Sep 2026 21:32:58 GMT  
		Size: 435.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c0309072603cc992fd0c2a5b031998a0c2f4557195483d71eed2fb75bd698dd`  
		Last Modified: Tue, 15 Sep 2026 21:32:58 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96be3a055513a0886387dc9f511a7569d5bd741410e796f030c6a7e69dd518ed`  
		Last Modified: Tue, 15 Sep 2026 21:32:59 GMT  
		Size: 12.8 MB (12779991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:662195291b88e7042a34954bd792254ff6cbe262dfcd8d1f5263094d701a14d0`  
		Last Modified: Tue, 15 Sep 2026 21:33:00 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beff8b46976d39440d3229334b92bd38c6af16d9db7ec437281c39551be14f1d`  
		Last Modified: Tue, 15 Sep 2026 21:33:00 GMT  
		Size: 12.8 MB (12830364 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18e3e7b2ac8fdb87f90874b72f39fc7222bc9d8b63a3401e847fa72ea330a980`  
		Last Modified: Tue, 15 Sep 2026 21:33:00 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6b31f4cd0991399db9a33296c1ea261e841fb859dfba1037b45536fb38fd337`  
		Last Modified: Tue, 15 Sep 2026 21:33:00 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c045a07c68fadbcf5dc463d2847e465ff81e78b5a0a16bbf17411b4e21f1f2ee`  
		Last Modified: Tue, 15 Sep 2026 21:33:01 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd4c5f4eac7d092efc51317ae4b8298bbf581505c4d7410c9a60c243770d25c3`  
		Last Modified: Tue, 15 Sep 2026 21:33:01 GMT  
		Size: 892.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88675d693a7a94478e9ed2bbfb5b9a14a06bf74bb4c94de20aed2927b0694947`  
		Last Modified: Tue, 15 Sep 2026 22:14:21 GMT  
		Size: 34.5 MB (34480515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:995520c94b1f5a1ffe4458ad9629c0a18d366c2f997b64386f77c45759eb8a20`  
		Last Modified: Tue, 15 Sep 2026 22:14:20 GMT  
		Size: 28.3 MB (28262973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78423db0b3b505e64bdf67fe57fefd9f5a792c41dc877d5c5c846562f7df3af0`  
		Last Modified: Tue, 15 Sep 2026 22:14:19 GMT  
		Size: 311.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4393e07e94d890dc3b15f29114d4bc84f581ef7f5ed95f84b1740ee2424a4f34`  
		Last Modified: Tue, 15 Sep 2026 22:14:19 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b33d1396511a0895b7fbb0922455a93518014634d8555bd41df5347013d5c02b`  
		Last Modified: Tue, 15 Sep 2026 22:14:21 GMT  
		Size: 18.8 KB (18819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8961ef9d79f35aedb7b2fd938dee7f631b8d464b0279de1f27d60a102605762f`  
		Last Modified: Tue, 15 Sep 2026 22:16:03 GMT  
		Size: 35.4 MB (35392797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2161640be2986f80cb54397ef7105ffc5cb9b79667fc2fd8a1fceecf41bb50a8`  
		Last Modified: Tue, 15 Sep 2026 22:16:03 GMT  
		Size: 2.4 KB (2437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4381b2880898d099287af3949b21c61745fcddeee4cae75342c44f284dc2590`  
		Last Modified: Tue, 15 Sep 2026 22:16:03 GMT  
		Size: 1.8 KB (1769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dc511067ae43e510a798b0b7fb648bfc4351d12b51b5bebae2da058c8ff5a3b`  
		Last Modified: Tue, 15 Sep 2026 22:16:02 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.1.1-php8.3` - unknown; unknown

```console
$ docker pull wordpress@sha256:eb298bbe2de4f91a46c80568c8df447ef6e05fd38e95c9bc58846a19d60823a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8866765 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5114a21976cbdf21bc19dfe1e8781d37d52b2f765fbf7c0bb10676c83221c761`

```dockerfile
```

-	Layers:
	-	`sha256:7071ef0cb1d0757c47b7363f067bc586a5acd07206ac68b3d2961d433603e9b9`  
		Last Modified: Tue, 15 Sep 2026 22:16:02 GMT  
		Size: 8.8 MB (8796676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3c97f73aaf227071f923501ed1c5e133458c265484dad12f21ac04d313c4dcfe`  
		Last Modified: Tue, 15 Sep 2026 22:16:02 GMT  
		Size: 70.1 KB (70089 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.1.1-php8.3` - linux; 386

```console
$ docker pull wordpress@sha256:f94665d4609c5286ec3b9c641c35b09c08e1e66746bd49194819d45f166fc33f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.7 MB (284701137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:640a9793bdb9561cf518967017a6ef6e1dc1fce655ac7903552c331340b3a459`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 21:28:15 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 15 Sep 2026 21:28:40 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 15 Sep 2026 21:28:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 15 Sep 2026 21:28:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:28:40 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:28:40 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 15 Sep 2026 21:28:40 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 15 Sep 2026 21:28:48 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 15 Sep 2026 21:28:48 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 15 Sep 2026 21:28:48 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 15 Sep 2026 21:28:48 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:28:48 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:28:48 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:28:48 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 15 Sep 2026 21:28:48 GMT
ENV PHP_VERSION=8.3.33
# Tue, 15 Sep 2026 21:28:48 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Tue, 15 Sep 2026 21:28:48 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Tue, 15 Sep 2026 21:28:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 15 Sep 2026 21:28:58 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:32:02 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:32:02 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:32:02 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:32:02 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:32:02 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:32:02 GMT
STOPSIGNAL SIGWINCH
# Tue, 15 Sep 2026 21:32:02 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:32:02 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 21:32:02 GMT
EXPOSE map[80/tcp:{}]
# Tue, 15 Sep 2026 21:32:02 GMT
CMD ["apache2-foreground"]
# Tue, 15 Sep 2026 22:15:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:17:22 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:17:22 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Tue, 15 Sep 2026 22:17:22 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:17:22 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Tue, 15 Sep 2026 22:17:25 GMT
RUN set -eux; 	version='7.1.1-RC1'; 	sha1='833d00fc95cab51a894692ed0a36f72c86c3dd69'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Tue, 15 Sep 2026 22:17:25 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:17:25 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Tue, 15 Sep 2026 22:17:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:17:25 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Tue, 15 Sep 2026 22:17:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:17:25 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fc9775061cc580418158c1ad888310e7c5a6321775a6827a279db1f17cc98d5`  
		Last Modified: Tue, 15 Sep 2026 21:32:24 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bae9db1f9db247bd913274766fc18ae1d37ca8d9af4bc254413da2db53b8d69`  
		Last Modified: Tue, 15 Sep 2026 21:32:28 GMT  
		Size: 127.1 MB (127103644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ac8bfcee810098908024d871f1bd82feb3a56f69f33b147ed090eecc4eef485`  
		Last Modified: Tue, 15 Sep 2026 21:32:24 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24ba2c84841784d443290fc448923846addc5f97fd1c5a31e6b5d7eec481af17`  
		Last Modified: Tue, 15 Sep 2026 21:32:25 GMT  
		Size: 4.5 MB (4471945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e023e9c688a44b2112ab8298ba3927aca19b33c07e6ae46abb5df57c68693cee`  
		Last Modified: Tue, 15 Sep 2026 21:32:26 GMT  
		Size: 431.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b980f86d04474b6f056c1b65eb38cda1e92d8092e058149928d6a0ec16a93431`  
		Last Modified: Tue, 15 Sep 2026 21:32:26 GMT  
		Size: 483.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00cdb37f7a0f87b4e87c571ad18d1ec11dd08e02492a99f6aa1165e2bb4c5680`  
		Last Modified: Tue, 15 Sep 2026 21:32:27 GMT  
		Size: 12.8 MB (12779259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f56eec1f9e882808a0d3a2d9a37292a2f0b97f02217e380bcd70a40056faffd`  
		Last Modified: Tue, 15 Sep 2026 21:32:27 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd85d0bb096546b8e930ba6ee9b41ace2e3b00cbae4412918a1b98371dac1fc9`  
		Last Modified: Tue, 15 Sep 2026 21:32:28 GMT  
		Size: 13.2 MB (13190264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79b8560b902a37093400ef91c044beb7b36c1a442a8ff6729675e900e47986dd`  
		Last Modified: Tue, 15 Sep 2026 21:32:28 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30147c5bc372fad30428a3e50aff16cbd81ccb4988c1c72465bac06f54ef5e36`  
		Last Modified: Tue, 15 Sep 2026 21:32:28 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72e0241b6a87587462969cd2b959085b2c9193f197f30d4c773021392cc228e0`  
		Last Modified: Tue, 15 Sep 2026 21:32:29 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41c79d7ef85d63868a93e89e50d485d2ff19ebd64d46ef228c0d7ca40bfa747f`  
		Last Modified: Tue, 15 Sep 2026 21:32:29 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a365b44e9e977cee2b77b22daeb5d37f9f2910d7cce310e78073474a722c94d`  
		Last Modified: Tue, 15 Sep 2026 22:17:44 GMT  
		Size: 32.4 MB (32410270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4cf12b968b06ce76471f8f273bf2a4d42d6c2f0efd4f9c738036a96cd8c959`  
		Last Modified: Tue, 15 Sep 2026 22:17:44 GMT  
		Size: 28.0 MB (28019912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80020f91c04a9b21be782b6434a35170306bc8152f316b2a12aa353d5a350d55`  
		Last Modified: Tue, 15 Sep 2026 22:17:43 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5352f1285312508a76999f8d4d04c6401c163154dd486b43a1fef950ed772d0`  
		Last Modified: Tue, 15 Sep 2026 22:17:43 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:815a07da56a5d49d3bacc52ead03fc1aa25e4293ced36e912304d4abce3aff73`  
		Last Modified: Tue, 15 Sep 2026 22:17:44 GMT  
		Size: 18.8 KB (18796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab5cf43ca0e91aa24b8a28d6fa992268ccf43e12141abcab3a74d4cb5c273bfd`  
		Last Modified: Tue, 15 Sep 2026 22:17:45 GMT  
		Size: 35.4 MB (35392804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96e9b91ba0939150876f3fb09d3e78eaba00478e0b1683f509817a4c754fbf04`  
		Last Modified: Tue, 15 Sep 2026 22:17:45 GMT  
		Size: 2.4 KB (2439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41be94e2987a97f1ed036878beb03553b4d33e728ec4d688f57f071cae356bde`  
		Last Modified: Tue, 15 Sep 2026 22:17:45 GMT  
		Size: 1.8 KB (1771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:314e6944199fffda748822f388ff7e3bbeb431383a7157970bd181da804f7af5`  
		Last Modified: Tue, 15 Sep 2026 22:17:46 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.1.1-php8.3` - unknown; unknown

```console
$ docker pull wordpress@sha256:6f62a84ee89152e581d653d057711c1de802f66ba3268697ac696eb9ae4c49c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8742542 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:401316f9aac387724f032cba655a2443ead1a2304561ef5686f63d71400c6287`

```dockerfile
```

-	Layers:
	-	`sha256:005544451a21a694295d514f2489eba0fd413525084cbbf259f82658a04f52c9`  
		Last Modified: Tue, 15 Sep 2026 22:17:43 GMT  
		Size: 8.7 MB (8672963 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40dc31253345c0d484ca47042204746772425ed19b47723dc548b3176502be54`  
		Last Modified: Tue, 15 Sep 2026 22:17:43 GMT  
		Size: 69.6 KB (69579 bytes)  
		MIME: application/vnd.in-toto+json
