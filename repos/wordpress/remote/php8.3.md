## `wordpress:php8.3`

```console
$ docker pull wordpress@sha256:fb906cf1e7f98febcf9c994fe2be027d5c78ef75070e784061cc97a68b3273d6
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

### `wordpress:php8.3` - linux; amd64

```console
$ docker pull wordpress@sha256:d0e8fb8de617c2949bffb473c5f515869255003b53e86333c5a91a5cdc883996
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **287.1 MB (287108438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0436ba0a87154d2db12fd1cd799ed49356a8a6056642f16e249a8cda9e2a337`
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
# Tue, 15 Sep 2026 22:26:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:27:36 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:27:36 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Tue, 15 Sep 2026 22:27:36 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:27:36 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Tue, 15 Sep 2026 22:27:38 GMT
RUN set -eux; 	version='7.1'; 	sha1='e0ca593bc062f7a8c5a956ca44aff7375b0841e0'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Tue, 15 Sep 2026 22:27:39 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:27:39 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Tue, 15 Sep 2026 22:27:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:27:39 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Tue, 15 Sep 2026 22:27:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:27:39 GMT
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
	-	`sha256:d3827467eec7edc6211b22f0037282e2f738486b98d619ac47b8617ed4045f9d`  
		Last Modified: Tue, 15 Sep 2026 22:27:58 GMT  
		Size: 33.0 MB (32967111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e468180c6dc426900f2107670fb1aa9f1f41403d863dee6f1900b151229b6578`  
		Last Modified: Tue, 15 Sep 2026 22:27:58 GMT  
		Size: 30.0 MB (29959424 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68a715d0d60f3e93dfdf946e2e46f6843fe552b9d1d7a66722ed7f4c291dd37e`  
		Last Modified: Tue, 15 Sep 2026 22:27:56 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c0f55f244a3029ba5c69c62fee8b7726b217618b0d9958cafe9f85690ab8dcf`  
		Last Modified: Tue, 15 Sep 2026 22:27:56 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e288c114f46e7952a226a5749265cc60708ef22e1ea4c996b84c49419a8e41a0`  
		Last Modified: Tue, 15 Sep 2026 22:27:57 GMT  
		Size: 18.8 KB (18793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be8c50aa45837e7a9a9bbdca253b435469e526e52567fe5948e20ac7de3bcf23`  
		Last Modified: Tue, 15 Sep 2026 22:27:58 GMT  
		Size: 35.4 MB (35383484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e681cdd54189f67e2c1b536e01e36c4369e768c101b8bc763bedf4b809c1aaa7`  
		Last Modified: Tue, 15 Sep 2026 22:27:59 GMT  
		Size: 2.4 KB (2443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdca11ecb006462847f2e611a91a668df10b385d4f1f882879ec30ffb20465e4`  
		Last Modified: Tue, 15 Sep 2026 22:27:59 GMT  
		Size: 1.8 KB (1769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb90e2583382b18246298f7b2b55f35b8978a816b398559a957163003afa168e`  
		Last Modified: Tue, 15 Sep 2026 22:27:59 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:php8.3` - unknown; unknown

```console
$ docker pull wordpress@sha256:3d853191fdb60db1c32b57f9379530dc2c3655d10619b4b2d8b8f9b941133c5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8766751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdbf2635a8073647c45853eeed8ccf943bd408faa679ed04313607ac5d2c8814`

```dockerfile
```

-	Layers:
	-	`sha256:cd78c0ef12300683694b36ed960be711028870ec674f074a610b6d35febef067`  
		Last Modified: Tue, 15 Sep 2026 22:27:56 GMT  
		Size: 8.7 MB (8698539 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:707ed3e480f9d8dbe567e7f95c7fe743daeea8630534b3c09c8a684e659aecfe`  
		Last Modified: Tue, 15 Sep 2026 22:27:56 GMT  
		Size: 68.2 KB (68212 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:php8.3` - linux; arm variant v5

```console
$ docker pull wordpress@sha256:3596fd1925704af19161a7d8496af726a30d41d8a04b12ad534f79c6a411670c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **254.5 MB (254516408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6474fba09948d0853ed1de7533054820a138e9c79d6f5450828787d650d29daf`
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
# Tue, 15 Sep 2026 22:20:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:22:36 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:22:36 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Tue, 15 Sep 2026 22:22:36 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:22:37 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Tue, 15 Sep 2026 22:22:39 GMT
RUN set -eux; 	version='7.1'; 	sha1='e0ca593bc062f7a8c5a956ca44aff7375b0841e0'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Tue, 15 Sep 2026 22:22:39 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:22:39 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Tue, 15 Sep 2026 22:22:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:22:39 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Tue, 15 Sep 2026 22:22:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:22:39 GMT
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
	-	`sha256:2b5e69aa0f523bb5014ec71e13ff6ee88cde0813444030e0b6864d33909dac60`  
		Last Modified: Tue, 15 Sep 2026 22:22:57 GMT  
		Size: 30.1 MB (30146965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e79396e18bde01d92cf8e6e5e1552a5c09635454bd95ab27a1c48d64868eca9`  
		Last Modified: Tue, 15 Sep 2026 22:22:57 GMT  
		Size: 27.3 MB (27325953 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b98ae74d64d8b92a66f5c7c1b6b2689fc59c6ce820e053b73b95b8229353823`  
		Last Modified: Tue, 15 Sep 2026 22:22:56 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b14fe08f1d3771dc0c17f3c99277206091d204461348d150e80447e6f5f74e3`  
		Last Modified: Tue, 15 Sep 2026 22:22:56 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:042bd7cde75632eabd2bd72d8e0d21810f03934316536e3f0d9349fbca88d8c7`  
		Last Modified: Tue, 15 Sep 2026 22:22:57 GMT  
		Size: 18.8 KB (18816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d3d431127c772385c189dffc2efd7edfe2c6a185ca05d1c8bb131443099bd9a`  
		Last Modified: Tue, 15 Sep 2026 22:22:58 GMT  
		Size: 35.4 MB (35383519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fd4fca8e232b55ac5379d4d783dbcdf061fa34027e9917d08f7f8d09090a834`  
		Last Modified: Tue, 15 Sep 2026 22:22:59 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa27b7ffb1a51f7cfb6dd7d7adc2ee559059bad5e8485e54043f5bea8f8614b0`  
		Last Modified: Tue, 15 Sep 2026 22:22:59 GMT  
		Size: 1.8 KB (1771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73c6408e16be7a2ec69d75ba951ec1bab9716ba52d9261dbbf37fee728206f45`  
		Last Modified: Tue, 15 Sep 2026 22:22:59 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:php8.3` - unknown; unknown

```console
$ docker pull wordpress@sha256:33ebeae35739a3e8868c94148381ceb210be2c0ebfe94d9e26632d1ea3f8f3f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.6 MB (8560630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f1213f5e5f81ba4c15f92af84a9267a64238d2fac288ad8c9c0fab2d9eb3d0d4`

```dockerfile
```

-	Layers:
	-	`sha256:e99b1ee502e4f960c6adc2533376c5a434bf22e11f28b0d5b562ca44be7abb7c`  
		Last Modified: Tue, 15 Sep 2026 22:22:56 GMT  
		Size: 8.5 MB (8492163 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9bb6a3dff30d559e5793e5cf4a2c528026648358fa6ac3268dbf364fd1b1bb5a`  
		Last Modified: Tue, 15 Sep 2026 22:22:56 GMT  
		Size: 68.5 KB (68467 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:php8.3` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:dce46384408ac381c4014f775203897b2fdea082e2075d53b328bf81d18afb65
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.9 MB (239893941 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:073db601726f4e0a2b9fef1a7b0881f233af0d46315dbc8cacf26affbf332403`
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
# Tue, 15 Sep 2026 22:14:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:16:28 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:16:28 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Tue, 15 Sep 2026 22:16:28 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:16:29 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Tue, 15 Sep 2026 22:16:31 GMT
RUN set -eux; 	version='7.1'; 	sha1='e0ca593bc062f7a8c5a956ca44aff7375b0841e0'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Tue, 15 Sep 2026 22:16:31 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:16:31 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Tue, 15 Sep 2026 22:16:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:16:31 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Tue, 15 Sep 2026 22:16:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:16:31 GMT
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
	-	`sha256:b8d90392682781e3dfde69c6fc066c6aaaf437ab86e44775cd51087fd3adc847`  
		Last Modified: Tue, 15 Sep 2026 22:16:50 GMT  
		Size: 29.1 MB (29054445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f441cad71d78d81e5bfb2525e0557b044a62b5996b7624a53100d7bfa6a6a38a`  
		Last Modified: Tue, 15 Sep 2026 22:16:50 GMT  
		Size: 25.7 MB (25740056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:043aade9654f960ed1e3527da57efd0d3f191e024dd8dd83d14a7de514ffeab6`  
		Last Modified: Tue, 15 Sep 2026 22:16:49 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ee3dec8b00ba7f01d64ea6121b713851af493765243709710ada2002251200a`  
		Last Modified: Tue, 15 Sep 2026 22:16:49 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eb7b21d2fcd83524a14ffd9acb2f3ea101163f684b5b592ef75591893b86332`  
		Last Modified: Tue, 15 Sep 2026 22:16:50 GMT  
		Size: 18.8 KB (18808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6b08fea3e0fbdec86a6eb8765bc4fe00af73f5dc653b2e7456c00689a36cdc9`  
		Last Modified: Tue, 15 Sep 2026 22:16:51 GMT  
		Size: 35.4 MB (35383510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f3e18af01ec0834d85e78c40b47af287e96670030c439d53e1fb4ccc5b57fe`  
		Last Modified: Tue, 15 Sep 2026 22:16:51 GMT  
		Size: 2.4 KB (2442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df939f7b084628c4d6d1131a12ce2489a6c630633c412257948262f2a374d2b1`  
		Last Modified: Tue, 15 Sep 2026 22:16:51 GMT  
		Size: 1.8 KB (1769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c18d8dac177d3e6dc6790f8bb1d8d70d61256817a6b8e4d6634006b3b66cf9a`  
		Last Modified: Tue, 15 Sep 2026 22:16:51 GMT  
		Size: 199.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:php8.3` - unknown; unknown

```console
$ docker pull wordpress@sha256:07a15c4a47df0e45711aec870a8c55ce81dbee00ddc89a270511a6aeeda01f45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.6 MB (8565456 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bbcfe5591de4208d152cd8bc063d394051b1ca3c4c4f2fb64ca834b77720dee`

```dockerfile
```

-	Layers:
	-	`sha256:1f19316b9bf5de381d639c877c7d20cedd3628e7d5ed01f1b4cf6d19b432a2b0`  
		Last Modified: Tue, 15 Sep 2026 22:16:48 GMT  
		Size: 8.5 MB (8496999 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68ae1f925ab24cd1d30574d6eeb7d7657b91aead3ba631a2f4882b302b1d5aa3`  
		Last Modified: Tue, 15 Sep 2026 22:16:48 GMT  
		Size: 68.5 KB (68457 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:php8.3` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:42fb7d17f07a18912897656f16b45382e3a2a801e26ce3a681a4c1f760ec853a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.0 MB (280045243 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:068e2e30581898bc745d3dd61a9f6a0dcae64839dd4f11a953ac3bd9dfb92d2d`
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
# Tue, 15 Sep 2026 22:14:02 GMT
RUN set -eux; 	version='7.1'; 	sha1='e0ca593bc062f7a8c5a956ca44aff7375b0841e0'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Tue, 15 Sep 2026 22:14:02 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:14:02 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Tue, 15 Sep 2026 22:14:02 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:14:02 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Tue, 15 Sep 2026 22:14:02 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:14:02 GMT
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
	-	`sha256:23b475a89806fecd061ff26eb275685389406e9aedcd7ac8d102a6bbb74fb798`  
		Last Modified: Tue, 15 Sep 2026 22:14:22 GMT  
		Size: 35.4 MB (35383506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2110913f48e9904af9bd42184ec30a53bf001c0841f78d50e5156b0e5db497ea`  
		Last Modified: Tue, 15 Sep 2026 22:14:22 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f55936179d858fbf4efd3da51abf4f26fab95c7e759b2e3ad3c80ddd09ba44a`  
		Last Modified: Tue, 15 Sep 2026 22:14:22 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e24d29b4e8a2dc11b831138da4d8d489e9019e7e657e639b3a023d597a38056`  
		Last Modified: Tue, 15 Sep 2026 22:14:22 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:php8.3` - unknown; unknown

```console
$ docker pull wordpress@sha256:fbde08b6c4e3c75c46fa3e70298dac1f6ba2bd9d277cf1ee5e66735c7029b71e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8863697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c0af3f10948653f0c193829ad4cd388fc72e770c3028fd2c72e20cf5583fdd2`

```dockerfile
```

-	Layers:
	-	`sha256:a7e3f825e8926310ad826f995d847d4f1397d8973af5328353c6abf9a335f0ed`  
		Last Modified: Tue, 15 Sep 2026 22:14:19 GMT  
		Size: 8.8 MB (8795146 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5cc15108b1c2f2845c84b0715f73f2fbda55ad77c5e78e57d4443c9544e57a71`  
		Last Modified: Tue, 15 Sep 2026 22:14:19 GMT  
		Size: 68.6 KB (68551 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:php8.3` - linux; 386

```console
$ docker pull wordpress@sha256:2aa8f1223b581ece55c64a48331b79cd21267977d53498d602b26d595baf16ea
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.7 MB (284691885 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a94bc00e47cf2acde2898b98e60291643a670fefda295970344996ef5a4dc8b6`
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
# Tue, 15 Sep 2026 22:12:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:14:28 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:14:28 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Tue, 15 Sep 2026 22:14:28 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:14:28 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Tue, 15 Sep 2026 22:14:31 GMT
RUN set -eux; 	version='7.1'; 	sha1='e0ca593bc062f7a8c5a956ca44aff7375b0841e0'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Tue, 15 Sep 2026 22:14:31 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:14:31 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Tue, 15 Sep 2026 22:14:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:14:31 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Tue, 15 Sep 2026 22:14:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:14:31 GMT
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
	-	`sha256:057a74713336c8ad9e16bdd7d869c6ead48f712fe1e7af060a3017cbf5b4d4c9`  
		Last Modified: Tue, 15 Sep 2026 22:14:50 GMT  
		Size: 32.4 MB (32410235 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de641772133151f189275706d52478e5f6abe5633b89a09839c2080d85e214f0`  
		Last Modified: Tue, 15 Sep 2026 22:14:50 GMT  
		Size: 28.0 MB (28019992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e792cb1f80b97b6dc46ee2a550c0a662ad2703fdc73eab8d23aab92c751178a4`  
		Last Modified: Tue, 15 Sep 2026 22:14:49 GMT  
		Size: 312.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cec9e3300584eecb21104b264d389eb9164dd474933089c58fb67ab1ee9ffac`  
		Last Modified: Tue, 15 Sep 2026 22:14:49 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f05176702d600b9edb83666a5a4ca8624cc649e2b946fd910be4c151aead681`  
		Last Modified: Tue, 15 Sep 2026 22:14:50 GMT  
		Size: 18.8 KB (18792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dde74fb071cf9c63773403e44d1ad5912f704ed992b9b885f0247a378c536df`  
		Last Modified: Tue, 15 Sep 2026 22:14:51 GMT  
		Size: 35.4 MB (35383512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb136db13d265ffb3f9da994f7ca5cd38c4f708d68602232de8ee1a52858043f`  
		Last Modified: Tue, 15 Sep 2026 22:14:51 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50540794cb55527ae5d050c3399c9b9400084ff8348f01a2d42e46ab1215f632`  
		Last Modified: Tue, 15 Sep 2026 22:14:51 GMT  
		Size: 1.8 KB (1769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e49208d95f79101507b3c2ce2c8cffdd033794ecf342d64332cbabf1c771b08c`  
		Last Modified: Tue, 15 Sep 2026 22:14:52 GMT  
		Size: 199.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:php8.3` - unknown; unknown

```console
$ docker pull wordpress@sha256:0d28614fae76ad58b604dea5c1cb82fca84ed1d7dd951de285d5b7b253e3d092
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8739610 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45c012fdb52082870374cd001eaf285aa1bc8ea1606043fadc6aaf1bb3a6cbfc`

```dockerfile
```

-	Layers:
	-	`sha256:5f9be2433035afd7f9aca0512dae1aa87af9b3764efc48ff47199295eb5ce720`  
		Last Modified: Tue, 15 Sep 2026 22:14:49 GMT  
		Size: 8.7 MB (8671501 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7bbad7873b58cefbd28ca1417dae923bd06598572ca2f263632e4d6f66b01c0d`  
		Last Modified: Tue, 15 Sep 2026 22:14:49 GMT  
		Size: 68.1 KB (68109 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:php8.3` - linux; ppc64le

```console
$ docker pull wordpress@sha256:ca79e5e5b39c0244708652d2e0d5a94c9a0f84bbec160c88dc18be3ed7a9dcca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.6 MB (270630832 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7b969bc0543758b24ed044c9ec15f37f87c7c875a50f9bb23d64273a0e3b2e60`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:45:45 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 25 Aug 2026 00:46:20 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Aug 2026 00:46:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 00:46:20 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Aug 2026 00:46:21 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 25 Aug 2026 00:46:21 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 25 Aug 2026 00:46:21 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 25 Aug 2026 00:48:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 25 Aug 2026 00:48:07 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 25 Aug 2026 00:48:08 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 25 Aug 2026 00:48:08 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:48:08 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:48:08 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 00:48:08 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 25 Aug 2026 00:48:08 GMT
ENV PHP_VERSION=8.3.33
# Tue, 25 Aug 2026 00:48:08 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Tue, 25 Aug 2026 00:48:08 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Tue, 25 Aug 2026 02:33:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 25 Aug 2026 02:33:49 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 02:38:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 25 Aug 2026 02:38:47 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 02:38:47 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 25 Aug 2026 02:38:48 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 25 Aug 2026 02:38:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 25 Aug 2026 02:38:48 GMT
STOPSIGNAL SIGWINCH
# Tue, 25 Aug 2026 02:38:48 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 02:38:48 GMT
WORKDIR /var/www/html
# Tue, 25 Aug 2026 02:38:48 GMT
EXPOSE map[80/tcp:{}]
# Tue, 25 Aug 2026 02:38:48 GMT
CMD ["apache2-foreground"]
# Tue, 25 Aug 2026 09:19:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 09:24:22 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 25 Aug 2026 09:24:22 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Tue, 25 Aug 2026 09:24:22 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 25 Aug 2026 09:24:23 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Tue, 25 Aug 2026 09:24:29 GMT
RUN set -eux; 	version='7.1'; 	sha1='e0ca593bc062f7a8c5a956ca44aff7375b0841e0'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Tue, 25 Aug 2026 09:24:30 GMT
VOLUME [/var/www/html]
# Tue, 25 Aug 2026 09:24:30 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Tue, 25 Aug 2026 09:24:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 09:24:31 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Tue, 25 Aug 2026 09:24:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 09:24:31 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:2b3dfadc0808f798cf371605ccaac4ef505f4812ae4087e8fef3c0d0fa4498a7`  
		Last Modified: Mon, 24 Aug 2026 23:22:18 GMT  
		Size: 33.6 MB (33615461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:885224ce44af93ea4dccfafa299151884dc46c11ad64d674fd2ba80305810472`  
		Last Modified: Tue, 25 Aug 2026 00:51:29 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a6823b5a4d064828b76b76e09984ab87742c5cbee856fcba92358bb8a7493d`  
		Last Modified: Tue, 25 Aug 2026 00:51:33 GMT  
		Size: 109.6 MB (109601439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:218e67ededf9f504cc5aa397a83521f96e71e1acefa9345936c925f269a24cec`  
		Last Modified: Tue, 25 Aug 2026 00:51:29 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7baf8e783fe0af865d7a2b42e03fc5ff2fd8783eac0d1606ed71779572552ed`  
		Last Modified: Tue, 25 Aug 2026 00:53:06 GMT  
		Size: 4.9 MB (4896923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3d7f285b69c6b6e05120463401f2005b48ccff04f0e89b7690e5fa989f57c93`  
		Last Modified: Tue, 25 Aug 2026 00:53:05 GMT  
		Size: 433.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6194ce864a158bf2728ae3cd95b22ecca7efca59ea59dcbf161041d23dff36e1`  
		Last Modified: Tue, 25 Aug 2026 00:53:05 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:816f03e597575f2464450416bc27176fc9b4aa8a3a1de582d888be4373f01305`  
		Last Modified: Tue, 25 Aug 2026 02:39:12 GMT  
		Size: 12.8 MB (12778616 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c36471167dfe1b89432bf38975aa050afb41e41778628f743f3fa3b119f37961`  
		Last Modified: Tue, 25 Aug 2026 02:39:12 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1caa9aec9c9854c766aeee7d7d55636b84e52aae28c5a6d920a5de58e2c140b1`  
		Last Modified: Tue, 25 Aug 2026 02:39:12 GMT  
		Size: 12.1 MB (12125522 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94b83e345e764b7623ac04a5a4d21aebbd4fdf4db96101ccaef13764a3f3ded0`  
		Last Modified: Tue, 25 Aug 2026 02:39:12 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a37893e86e9f1a30e32d5e6b774e9113e7b7303b7e0ff2fa4d259f4fe3a6e316`  
		Last Modified: Tue, 25 Aug 2026 02:39:13 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da8dbf4b5f8ec8319aa3901fb662e7f9b14bd5bd585046835f08f4c8dc9581d7`  
		Last Modified: Tue, 25 Aug 2026 02:39:13 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fe35511d97047828ca2d453d17fcfc7c2e182b9577b82155fd2efd2b0a1099a`  
		Last Modified: Tue, 25 Aug 2026 02:39:14 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a348ec9aa94be212c21353dd5ad38c4897a3881e37ec9d9018e47f1b3dbef80b`  
		Last Modified: Tue, 25 Aug 2026 09:25:33 GMT  
		Size: 33.0 MB (32959864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c944ff76d69707a910f41b9a9f052792fc3eb4713f16df3101423bae06e977b`  
		Last Modified: Tue, 25 Aug 2026 09:25:33 GMT  
		Size: 29.2 MB (29239830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:468de09fc259616c33969b4537fc2756e8fc8ee587f45343428663fe08aa48af`  
		Last Modified: Tue, 25 Aug 2026 09:25:31 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2d0ad5bccbf06950c5ab55b3ae627b73478809b95f8a5c4a592321eb8cd7a9d`  
		Last Modified: Tue, 25 Aug 2026 09:25:31 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3610591018efcbafbf8ca0c64b6a58ef9ffef76fb37fcd2eec3b66b02c25157a`  
		Last Modified: Tue, 25 Aug 2026 09:25:33 GMT  
		Size: 18.8 KB (18805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b41f098c0c082386ea47b3c08b59d0d492fe0fec317a305a20032959782dff6`  
		Last Modified: Tue, 25 Aug 2026 09:25:34 GMT  
		Size: 35.4 MB (35383518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:750f65872b127cb9b2b905be077dbda6fc850be5f837d4fd1a417c11de6a59e8`  
		Last Modified: Tue, 25 Aug 2026 09:25:34 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d8a348598edb066b71494a13937630374449a7b742052f5e3caefd6137a66e1`  
		Last Modified: Tue, 25 Aug 2026 09:25:34 GMT  
		Size: 1.8 KB (1769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9d6c993774376093250a4678cd37661c4fc41e530b6bc866d5863997e8803b9`  
		Last Modified: Tue, 25 Aug 2026 09:25:34 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:php8.3` - unknown; unknown

```console
$ docker pull wordpress@sha256:827c18a86bccd660eb511bcdacec8625808a983305355e9a6cdd5bdac771fc18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8766862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f064428eb5eb2042143213797f3b7e3d2c67e93b7344bb3c3736da671d41ce4`

```dockerfile
```

-	Layers:
	-	`sha256:fb0f5aef08db778b391715dd20ba9e94849d655c36267bba171425f717e43ba2`  
		Last Modified: Tue, 25 Aug 2026 09:25:31 GMT  
		Size: 8.7 MB (8698523 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e0133578eefe2e83b20fb0c1064192ae48cb683d531404325c1f25555d4cd3b1`  
		Last Modified: Tue, 25 Aug 2026 09:25:31 GMT  
		Size: 68.3 KB (68339 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:php8.3` - linux; riscv64

```console
$ docker pull wordpress@sha256:3a9e6f0b70f12b7d338c1b5b6b8f05d959aa2c489ae7d48a8cc09186ee467b59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.7 MB (298692340 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:44b2ed7df950cfe2c8a0ed296b96ef375265d8b19c445f53853661d84f6c4dc7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 08:59:37 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 25 Aug 2026 09:01:42 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Aug 2026 09:01:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 09:01:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Aug 2026 09:01:42 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 25 Aug 2026 09:01:42 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 25 Aug 2026 09:01:42 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 25 Aug 2026 10:02:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 25 Aug 2026 10:02:26 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 25 Aug 2026 10:02:27 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 25 Aug 2026 10:02:27 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 10:02:27 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 10:02:27 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 10:02:27 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 25 Aug 2026 10:02:27 GMT
ENV PHP_VERSION=8.3.33
# Tue, 25 Aug 2026 10:02:27 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Tue, 25 Aug 2026 10:02:27 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Wed, 26 Aug 2026 05:56:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 26 Aug 2026 05:56:05 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 26 Aug 2026 06:46:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 26 Aug 2026 06:46:23 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 26 Aug 2026 06:46:24 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 26 Aug 2026 06:46:25 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 26 Aug 2026 06:46:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 26 Aug 2026 06:46:25 GMT
STOPSIGNAL SIGWINCH
# Wed, 26 Aug 2026 06:46:25 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Wed, 26 Aug 2026 06:46:25 GMT
WORKDIR /var/www/html
# Wed, 26 Aug 2026 06:46:25 GMT
EXPOSE map[80/tcp:{}]
# Wed, 26 Aug 2026 06:46:25 GMT
CMD ["apache2-foreground"]
# Sat, 29 Aug 2026 02:44:59 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 29 Aug 2026 03:02:24 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Sat, 29 Aug 2026 03:02:25 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Sat, 29 Aug 2026 03:02:25 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Sat, 29 Aug 2026 03:02:27 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Sat, 29 Aug 2026 03:02:37 GMT
RUN set -eux; 	version='7.1'; 	sha1='e0ca593bc062f7a8c5a956ca44aff7375b0841e0'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Sat, 29 Aug 2026 03:02:37 GMT
VOLUME [/var/www/html]
# Sat, 29 Aug 2026 03:02:37 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Sat, 29 Aug 2026 03:02:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 29 Aug 2026 03:02:38 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Sat, 29 Aug 2026 03:02:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 29 Aug 2026 03:02:38 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:f3444419fc0430236ec8be73d1759683fb92efb1eb57784ae65bcbdc893efbbc`  
		Last Modified: Mon, 24 Aug 2026 23:38:04 GMT  
		Size: 28.3 MB (28296463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27ed1f058e041d97ac1f23c511dfbdcbda29ca286b8f0506fbf2a4b5b2bcf462`  
		Last Modified: Tue, 25 Aug 2026 10:00:12 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:688c7db522e3fe4f249a63f14f9c5d5e910778c5bda8855e2c1fb2158e676de0`  
		Last Modified: Tue, 25 Aug 2026 10:00:38 GMT  
		Size: 146.6 MB (146592877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f643464284211cc08fd66fb85b4ffba1378df3b209243d0ce8e08b11652df73`  
		Last Modified: Tue, 25 Aug 2026 10:00:10 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c5a9194fcb1259f9ca52ca755bc0b94019ef1c136445faf6bfa714ba3174d9f`  
		Last Modified: Tue, 25 Aug 2026 10:58:30 GMT  
		Size: 4.0 MB (4038964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9412a00bd6ea5f1d96d4cbf882ee061353d2819ec06c32fccdb423d81f21ab6c`  
		Last Modified: Tue, 25 Aug 2026 10:58:29 GMT  
		Size: 439.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20cfdcc7c18452e521252f2720b790a390be42a44250c01c56a49af9794fd1fc`  
		Last Modified: Tue, 25 Aug 2026 10:58:29 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f0601715a55a6ccdc2be9c57ea859bbefce61ebdf4884548635ea3ef39bfaa1`  
		Last Modified: Wed, 26 Aug 2026 06:49:35 GMT  
		Size: 12.8 MB (12795302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7866222a3b092335098aed62ab991509ae1ef6c7d07995d06972707b9a8f9cae`  
		Last Modified: Wed, 26 Aug 2026 06:49:31 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4042e10e1387ac42a94b2878ce9c71110e476d70c0e951d22cbaf7e992c4c785`  
		Last Modified: Wed, 26 Aug 2026 06:49:36 GMT  
		Size: 14.3 MB (14304084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed1206f9be7e4ed76e05b380771c45654ea203f48d7fb9f21377eb832af24283`  
		Last Modified: Wed, 26 Aug 2026 06:49:31 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58ff7d3c4b291595fa39cf2394f5ce00e00b835f94a71d228f1f7b1983c5a058`  
		Last Modified: Wed, 26 Aug 2026 06:49:33 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29842cb9bbae90e233fc83e28a71d309b3f18908e87fc00660eb271750b977df`  
		Last Modified: Wed, 26 Aug 2026 06:49:34 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e217d4af853ffeff414fc8216842794aae50b7bff4d54f2abbc5d0b7bda08107`  
		Last Modified: Wed, 26 Aug 2026 06:49:35 GMT  
		Size: 894.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2c49c7ebd03d5b6b46a4b42ca6440e1d91edfea1546895283b41c271590e2fc`  
		Last Modified: Sat, 29 Aug 2026 03:07:28 GMT  
		Size: 30.5 MB (30548444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4816c074e503367947f8d7ab73d956b7e0143004b36eab35139a826d3a62df89`  
		Last Modified: Sat, 29 Aug 2026 03:07:27 GMT  
		Size: 26.7 MB (26702986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07789b281b9479c54202fe6fcc938125228148dfb83a9e3d1cb8a55f5b4a77e8`  
		Last Modified: Sat, 29 Aug 2026 03:07:16 GMT  
		Size: 317.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd2fa10d07f0f01dfb735c7c805503a6ed2e7dd0bd31a878a1dd59c1b6036923`  
		Last Modified: Sat, 29 Aug 2026 03:07:16 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a54349e27d3388f66e96534d0361e5dfc8e00c59a3d1f4eee0f589d85a73ea9f`  
		Last Modified: Sat, 29 Aug 2026 03:07:18 GMT  
		Size: 18.8 KB (18820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e491ad603f0839eda0e86a8799ad03b1cf06b13f5957ea32d1cf9769d7a47d80`  
		Last Modified: Sat, 29 Aug 2026 03:07:30 GMT  
		Size: 35.4 MB (35383520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:722db52a5f6c9fc9faff7b04f2e30ddd78731b47f8aa8c4a313e8f67a657b50f`  
		Last Modified: Sat, 29 Aug 2026 03:07:21 GMT  
		Size: 2.4 KB (2444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:051335d35a45fcc22e43c23800ede04c49ad5550a8d9946b51ea059c06bb98bc`  
		Last Modified: Sat, 29 Aug 2026 03:07:23 GMT  
		Size: 1.8 KB (1768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7da259126c3b09be4b60116415a8554e7f94d1300c5f0e2ff91a84386cd37fad`  
		Last Modified: Sat, 29 Aug 2026 03:07:26 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:php8.3` - unknown; unknown

```console
$ docker pull wordpress@sha256:5a8179daddfd96f702a106e934dd071f7b3d7ba0c6f26b837e4183286d695118
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8831730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a168fc79f928b00bb3c5b909221c05377fc4942d464f64026282381915dbe0c`

```dockerfile
```

-	Layers:
	-	`sha256:556d6ffd1020ef8ef2b127e672bc2e1677770efc6cab1b70d9f49e0d66eb4eb8`  
		Last Modified: Sat, 29 Aug 2026 03:07:18 GMT  
		Size: 8.8 MB (8763390 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b460b706fdf356bbb9ef395320d1040bddcd1c2d5615b58976d93348977d23c8`  
		Last Modified: Sat, 29 Aug 2026 03:07:15 GMT  
		Size: 68.3 KB (68340 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:php8.3` - linux; s390x

```console
$ docker pull wordpress@sha256:738e9a1eb18cdda578785a4e5c4ece33ea8ed26648899ca8709b02ae1ab21f45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.3 MB (245261822 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c17d1d172380a59bd562b0d3ce03539e2b6a0342c58029343cc096ec669d953`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1787529600'
# Tue, 25 Aug 2026 00:28:55 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 25 Aug 2026 00:29:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Aug 2026 00:29:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 25 Aug 2026 00:29:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Aug 2026 00:29:15 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 25 Aug 2026 00:29:15 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 25 Aug 2026 00:29:15 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 25 Aug 2026 00:33:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 25 Aug 2026 00:33:26 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 25 Aug 2026 00:33:27 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 25 Aug 2026 00:33:27 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:33:27 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:33:27 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 00:33:27 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 25 Aug 2026 00:33:27 GMT
ENV PHP_VERSION=8.3.33
# Tue, 25 Aug 2026 00:33:27 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Tue, 25 Aug 2026 00:33:27 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Tue, 25 Aug 2026 00:55:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 25 Aug 2026 00:55:12 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:58:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 25 Aug 2026 00:58:14 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:58:14 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 25 Aug 2026 00:58:15 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 25 Aug 2026 00:58:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 25 Aug 2026 00:58:15 GMT
STOPSIGNAL SIGWINCH
# Tue, 25 Aug 2026 00:58:15 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:58:15 GMT
WORKDIR /var/www/html
# Tue, 25 Aug 2026 00:58:15 GMT
EXPOSE map[80/tcp:{}]
# Tue, 25 Aug 2026 00:58:15 GMT
CMD ["apache2-foreground"]
# Tue, 25 Aug 2026 02:15:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 02:16:44 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 25 Aug 2026 02:16:44 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Tue, 25 Aug 2026 02:16:44 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 25 Aug 2026 02:16:44 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Tue, 25 Aug 2026 02:16:45 GMT
RUN set -eux; 	version='7.1'; 	sha1='e0ca593bc062f7a8c5a956ca44aff7375b0841e0'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Tue, 25 Aug 2026 02:16:46 GMT
VOLUME [/var/www/html]
# Tue, 25 Aug 2026 02:16:46 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Tue, 25 Aug 2026 02:16:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 02:16:46 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Tue, 25 Aug 2026 02:16:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 25 Aug 2026 02:16:46 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:3b49fae03f57292f29c23992f1f40c8e724a3c2e43e39a20e805a76ce5694095`  
		Last Modified: Mon, 24 Aug 2026 23:20:17 GMT  
		Size: 29.9 MB (29867719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b412cfe4760bdc7b56e741c7fe164da58050ce82034f50bf9549fe3d2a93fd5f`  
		Last Modified: Tue, 25 Aug 2026 00:32:54 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4520d77388744535c3707d5e6aeb9234458a611ab746b67e0d45f3a23d2e415`  
		Last Modified: Tue, 25 Aug 2026 00:32:58 GMT  
		Size: 92.6 MB (92572172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa86077d502df76a732077dd006459b037305fdfdba4c251caa06d6b9af520db`  
		Last Modified: Tue, 25 Aug 2026 00:32:54 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5cc1a03ca5e7dbd1f7ccf650cf5f98e89371fff830ca523430379e787a5aa5a`  
		Last Modified: Tue, 25 Aug 2026 00:37:40 GMT  
		Size: 4.3 MB (4338367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ede5f1c4d99cec3aa2948f9667186cfa1b32b21e2543bd86ec205d39f40adda6`  
		Last Modified: Tue, 25 Aug 2026 00:37:39 GMT  
		Size: 431.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f292335483fef7e0f98bf48a5b306a4d7d9ddbc96d9e4e3e5d9d9f49b67788d9`  
		Last Modified: Tue, 25 Aug 2026 00:37:39 GMT  
		Size: 483.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6bcbb81d40a620cae701f134af3515c3de1f963be72040f2a34bec3b56f719f`  
		Last Modified: Tue, 25 Aug 2026 00:58:34 GMT  
		Size: 12.8 MB (12777915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4234d144ebae39706050b5cf380fbe8bd1656ee2f37fd8f11f8b212eb0afe014`  
		Last Modified: Tue, 25 Aug 2026 00:58:34 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddb5dd19cb932d6ea0f91e59d0a7a1df0f0249b9388b2d531d31a500d7fd4f7d`  
		Last Modified: Tue, 25 Aug 2026 00:58:34 GMT  
		Size: 11.6 MB (11573230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db2a1cfd60cdb0a0a55325ebe70cf8404b19eb3e2b4460f686f956fb0d079365`  
		Last Modified: Tue, 25 Aug 2026 00:58:34 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9744c8ce1664e3da0a4c53d8f7c3b50e174fd6be1671b2434e1777ac2349146e`  
		Last Modified: Tue, 25 Aug 2026 00:58:35 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bb236fc9e618c1dd9e7ca9c1a179f20d6992351a3081ea7f77c4832e8cb9de0`  
		Last Modified: Tue, 25 Aug 2026 00:58:35 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:630c22f5cc4d04d37f599954983c4e1a6214180795f81309bc3611740da05a75`  
		Last Modified: Tue, 25 Aug 2026 00:58:36 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f99cf5e77acf9c41f3a1e61ff25bff69ce11a5cae1525032b34be3fbb7c5745`  
		Last Modified: Tue, 25 Aug 2026 02:17:13 GMT  
		Size: 31.4 MB (31399619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c181af2211273cdad94ac37c51afd6b12037b3e468922d6b24b250507c4f58b`  
		Last Modified: Tue, 25 Aug 2026 02:17:12 GMT  
		Size: 27.3 MB (27319683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95464dd78c1b2554498bafc0aa2a1c97f7cfd6c432c511ed36949cb24bd8b37f`  
		Last Modified: Tue, 25 Aug 2026 02:17:11 GMT  
		Size: 311.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fde46a4e9b8b77747040a7bf26dd867f9ef4141eaf03110edd2be95df5958e26`  
		Last Modified: Tue, 25 Aug 2026 02:17:11 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03b409b90b3afe95ea4e7693f89b2bee3e242ea07c05646b2c4e1c98dc2938cc`  
		Last Modified: Tue, 25 Aug 2026 02:17:12 GMT  
		Size: 18.8 KB (18791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fc941f2280c76383f1c1cbdfc95a82e6b29fedba4c3c4eb4f7671bafea2fabd`  
		Last Modified: Tue, 25 Aug 2026 02:17:13 GMT  
		Size: 35.4 MB (35383485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f8134e6c10e6007519707f1089977465e9429b5a8a13fd99080cc801670bd6d`  
		Last Modified: Tue, 25 Aug 2026 02:17:13 GMT  
		Size: 2.4 KB (2442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:accf2d3a06135cf4b8a1ebcded7bea9d2cafb31e73524772817365b5c95b5fe6`  
		Last Modified: Tue, 25 Aug 2026 02:17:14 GMT  
		Size: 1.8 KB (1769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa1ad8b0934ca6b81c3ae4069b45de6362eea51b452a1cd36424f037c2e59e36`  
		Last Modified: Tue, 25 Aug 2026 02:17:14 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:php8.3` - unknown; unknown

```console
$ docker pull wordpress@sha256:77ed05e4436d73d868728e2677f3a10715651061ef27595f31b1f829834c1dd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8484943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5a46d460605e8812dd7c27fb55afe5313913f0fa41012cdef6895a444486bd1`

```dockerfile
```

-	Layers:
	-	`sha256:22318e803939e04b2766027c19448fff2b396f3c7612ec41f749714c6bba35f9`  
		Last Modified: Tue, 25 Aug 2026 02:17:12 GMT  
		Size: 8.4 MB (8416740 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ad42a79b9399f039e97388f46cc255d2793c8fff24ff441911bc681da32352f0`  
		Last Modified: Tue, 25 Aug 2026 02:17:11 GMT  
		Size: 68.2 KB (68203 bytes)  
		MIME: application/vnd.in-toto+json
