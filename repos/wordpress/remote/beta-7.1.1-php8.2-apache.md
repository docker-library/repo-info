## `wordpress:beta-7.1.1-php8.2-apache`

```console
$ docker pull wordpress@sha256:a3e5212d834f7f9d79e0cd56d345f73e4f55efab10b85e3ec5c1291eaf084949
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

### `wordpress:beta-7.1.1-php8.2-apache` - linux; amd64

```console
$ docker pull wordpress@sha256:fed7a70b63e7c95bfef1ddc45ee26ba1319e4a2da473e4d0e303deb029c52dcd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.4 MB (286404841 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb12ddae9be9b7dea1b094b2af91eb401e4f67a6f38b7726b98fd9b42714b0a6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 21:09:18 GMT
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
# Tue, 15 Sep 2026 21:19:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 15 Sep 2026 21:19:03 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 15 Sep 2026 21:19:03 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 15 Sep 2026 21:19:03 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:19:03 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:19:03 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:19:03 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Tue, 15 Sep 2026 21:19:03 GMT
ENV PHP_VERSION=8.2.33
# Tue, 15 Sep 2026 21:19:03 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Tue, 15 Sep 2026 21:19:03 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Tue, 15 Sep 2026 21:31:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 15 Sep 2026 21:31:34 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:33:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:33:52 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:33:52 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:33:52 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:33:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:33:52 GMT
STOPSIGNAL SIGWINCH
# Tue, 15 Sep 2026 21:33:53 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:33:53 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 21:33:53 GMT
EXPOSE map[80/tcp:{}]
# Tue, 15 Sep 2026 21:33:53 GMT
CMD ["apache2-foreground"]
# Tue, 15 Sep 2026 22:28:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:29:40 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:29:40 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Tue, 15 Sep 2026 22:29:40 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:29:40 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Tue, 15 Sep 2026 22:29:43 GMT
RUN set -eux; 	version='7.1.1-RC1'; 	sha1='833d00fc95cab51a894692ed0a36f72c86c3dd69'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Tue, 15 Sep 2026 22:29:43 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:29:43 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Tue, 15 Sep 2026 22:29:43 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:29:43 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Tue, 15 Sep 2026 22:29:43 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:29:43 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:6310eb16bf4251731feab01e8f633bf5e2d75a657ccad97f420b1f83cce457be`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 29.8 MB (29792658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7d7a7ec08df512e5acb275fe49e9e9247c344a2f99b3c5b7fe5d020e8317e71`  
		Last Modified: Tue, 15 Sep 2026 21:12:25 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c95815088244b0963d06120db133e4e8a63f0b3982759c2ee2241eb6e196eced`  
		Last Modified: Tue, 15 Sep 2026 21:12:28 GMT  
		Size: 129.1 MB (129122670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19609913d748b67fb4b05e51e387cd8439ab20c0586177d5311dc434e602429e`  
		Last Modified: Tue, 15 Sep 2026 21:12:25 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:716064f1a14bd2a0010bc6a0f393426f3e23d49148e6b425e0b52737f89e7c90`  
		Last Modified: Tue, 15 Sep 2026 21:21:49 GMT  
		Size: 4.2 MB (4239834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:724061767d3bdfb303ebf7e0225eecb104548e371fc209553360876b6e372e8b`  
		Last Modified: Tue, 15 Sep 2026 21:21:49 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9fcffae4393f2f20e8f9c3d0d157172cf40bf17a24957192f282587752ba1c0`  
		Last Modified: Tue, 15 Sep 2026 21:21:49 GMT  
		Size: 482.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16003f7c96bd2d2507ee5f518422ce1753d5550ea9b3747714e7c0de565b7325`  
		Last Modified: Tue, 15 Sep 2026 21:34:03 GMT  
		Size: 12.3 MB (12333351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:939fe017c47b5dee91893cf0f07b839049b00d5a0ac8bc157f8849239c6b7ab6`  
		Last Modified: Tue, 15 Sep 2026 21:34:02 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:881d6aa0ddef8bcc05956e0139be958b03456666b8b7a08b736abd8c1454e37e`  
		Last Modified: Tue, 15 Sep 2026 21:34:03 GMT  
		Size: 12.6 MB (12575344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1e35b9550956c51b3e8f8abc26bd4f834e8c435c47189e88cd35b960c45240e`  
		Last Modified: Tue, 15 Sep 2026 21:34:03 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17328e64ba0103eb9ac1ecd957ed4612b7f01eab364da00d4910f549f93d231c`  
		Last Modified: Tue, 15 Sep 2026 21:34:04 GMT  
		Size: 255.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c215b0da5b9958f4f41e279cdeedc748ad8bb5de4cbdf2e582f9cbdc463cf6e`  
		Last Modified: Tue, 15 Sep 2026 21:34:04 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2678c0b2304ca1ab1e957a440d0eed142595b2cf00ad9df6db34f7f85e209311`  
		Last Modified: Tue, 15 Sep 2026 21:34:04 GMT  
		Size: 892.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06887042adab15f03a3b8a1efeecf76ec97bbff67b75119422b887813c93dd85`  
		Last Modified: Tue, 15 Sep 2026 22:30:01 GMT  
		Size: 33.0 MB (32967036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a3dd59a14fe2caa008cfb3fafd69f2313f4478ad6d7194735cacffacaa83f96`  
		Last Modified: Tue, 15 Sep 2026 22:30:01 GMT  
		Size: 30.0 MB (29951500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58e135a49b5aa4991f950384ddbcc35de4d04964248ad079a1cab45d7ca22b94`  
		Last Modified: Tue, 15 Sep 2026 22:29:59 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e06f63522a97cdf48979fcb467dec69765baf5e884a313a02306d0931b0518d7`  
		Last Modified: Tue, 15 Sep 2026 22:29:59 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fab9b3e226215af011d5de5d5092237ae5d3764c7ddaac0855bb6389b6a3465`  
		Last Modified: Tue, 15 Sep 2026 22:30:00 GMT  
		Size: 18.8 KB (18792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5da83e64e2cf12abb59740bce68c5841edfe0a26ec6291d635a3aff762d1a0da`  
		Last Modified: Tue, 15 Sep 2026 22:30:02 GMT  
		Size: 35.4 MB (35392796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c9383c37214c52c5ef9f1d6a06f56279f5d92f524f603eb2b921993a1fce00e`  
		Last Modified: Tue, 15 Sep 2026 22:30:02 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d38f193cae52d05387a6c266f2a362ab62f96fad1342aea214a72233723e2a3f`  
		Last Modified: Tue, 15 Sep 2026 22:30:02 GMT  
		Size: 1.8 KB (1768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d975c316bf579b1e68aeff771a88a7cb84b9fe127e22cae9465162b732e06fff`  
		Last Modified: Tue, 15 Sep 2026 22:30:03 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.1.1-php8.2-apache` - unknown; unknown

```console
$ docker pull wordpress@sha256:d3fc3307ecf6f8a3fdbc0d5233ae1b9878d1e73e04a59b1b30126c0805111ce9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8763408 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9e878034a1531d265a788984fd8b762bf92a6fc5e82f35fb5cb45a227f4831c`

```dockerfile
```

-	Layers:
	-	`sha256:74151a3986e9ea76208a2aafc1aa30f305362f3d00452bb107ce72c4d1458bd1`  
		Last Modified: Tue, 15 Sep 2026 22:29:59 GMT  
		Size: 8.7 MB (8696863 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e2c20e0f72c7a46474bfc777002196668b7e2eb79d67b2f7f7f10f493bdb42e6`  
		Last Modified: Tue, 15 Sep 2026 22:29:59 GMT  
		Size: 66.5 KB (66545 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.1.1-php8.2-apache` - linux; arm variant v5

```console
$ docker pull wordpress@sha256:f18e1f26b368b3fc8704c0c67b044452c2715c60091a931698542c68f45aef3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.8 MB (253841293 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29c7a0353c711193befbd55f162cfc98548ba6fff5feddfcb74fc8c4d6f3499b`
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
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Tue, 15 Sep 2026 21:08:55 GMT
ENV PHP_VERSION=8.2.33
# Tue, 15 Sep 2026 21:08:55 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Tue, 15 Sep 2026 21:08:55 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Tue, 15 Sep 2026 21:30:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 15 Sep 2026 21:30:18 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:33:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:33:15 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:33:15 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:33:15 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:33:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:33:15 GMT
STOPSIGNAL SIGWINCH
# Tue, 15 Sep 2026 21:33:15 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:33:15 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 21:33:15 GMT
EXPOSE map[80/tcp:{}]
# Tue, 15 Sep 2026 21:33:15 GMT
CMD ["apache2-foreground"]
# Tue, 15 Sep 2026 22:24:20 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:26:17 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:26:17 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Tue, 15 Sep 2026 22:26:17 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:26:17 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Tue, 15 Sep 2026 22:26:20 GMT
RUN set -eux; 	version='7.1.1-RC1'; 	sha1='833d00fc95cab51a894692ed0a36f72c86c3dd69'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Tue, 15 Sep 2026 22:26:20 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:26:20 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Tue, 15 Sep 2026 22:26:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:26:20 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Tue, 15 Sep 2026 22:26:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:26:20 GMT
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
	-	`sha256:ac7d107355e63c6221242bada0faaad53d5e31388d7d22ed31711419d5eadbed`  
		Last Modified: Tue, 15 Sep 2026 21:33:26 GMT  
		Size: 12.3 MB (12330780 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6da6a4ce4024465a3f6fd17b051094f22716096a81ec3dc8bae8a755b28aff8`  
		Last Modified: Tue, 15 Sep 2026 21:33:25 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc051220b557e4683c82dd94cfeafe56d000c096cbd3c3abaabd118ba8584a4`  
		Last Modified: Tue, 15 Sep 2026 21:33:26 GMT  
		Size: 11.3 MB (11277998 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89070a6276aa456dd200378d7644b03379aca32e7545637f3a15b7d3c850da77`  
		Last Modified: Tue, 15 Sep 2026 21:33:25 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f62e03ba8e21d557f01ef85ff39918d6ba9cc4acc79b9dd4e8b4c597b3750c1`  
		Last Modified: Tue, 15 Sep 2026 21:33:27 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66735aff96c0dc6cf56093827691637da6ad8fdba446e2fcbddfc289e1f5e637`  
		Last Modified: Tue, 15 Sep 2026 21:33:27 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f54aecb6d6cc9e1a0f779f07a0fac6cb81ff4fdf4b470b5a8410c7ed97ad55ef`  
		Last Modified: Tue, 15 Sep 2026 21:33:27 GMT  
		Size: 889.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fab6e13bcaae261ef90558b286c6711016cdde6a49d8b804039a895bca3f4ecc`  
		Last Modified: Tue, 15 Sep 2026 22:26:37 GMT  
		Size: 30.1 MB (30146964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40216212eed22710895b8176c6d6d6d27a5cc529decf5e52e7a7d9886d70ac77`  
		Last Modified: Tue, 15 Sep 2026 22:26:38 GMT  
		Size: 27.3 MB (27320957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fda8e91514ec971169e42d770baad12db0d8a227c456778e05da549eee47f5ac`  
		Last Modified: Tue, 15 Sep 2026 22:26:36 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ab1582148c98e5c4b5a0d1dc043b2c8a0e9c169a86fd37080054aa7f00733ad`  
		Last Modified: Tue, 15 Sep 2026 22:26:36 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8db7ab7110e749d69a846ac12949a438c629bec4d6b5a362e67090cf399cc01c`  
		Last Modified: Tue, 15 Sep 2026 22:26:38 GMT  
		Size: 18.8 KB (18793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5ba159192f5b026dfb8cb2b8f30449e295efb8c9e58c21b0486987c8bb4e4e2`  
		Last Modified: Tue, 15 Sep 2026 22:26:39 GMT  
		Size: 35.4 MB (35392794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:605485e79dfa9881a3e53fbb248ad494c9c7244e1683582fa9784a5bad723c08`  
		Last Modified: Tue, 15 Sep 2026 22:26:39 GMT  
		Size: 2.4 KB (2439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69dc2b346021e31749729b4cdcb415742e63b481ede7bdb2a7e61ed63a9d6511`  
		Last Modified: Tue, 15 Sep 2026 22:26:39 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8768fdbc34b0625f17ec6025e3c1a6fd56a127dfc453c917230ccbfcf86f8606`  
		Last Modified: Tue, 15 Sep 2026 22:26:39 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.1.1-php8.2-apache` - unknown; unknown

```console
$ docker pull wordpress@sha256:569cdbc0dee3c6b8d7c866f41a8c874d8a183d96473db420b34058918962344f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.6 MB (8557190 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8c7ed604808ab657b4e6ebb9c3632ad0a24ecc12b85296957382337d4f3bfea`

```dockerfile
```

-	Layers:
	-	`sha256:8cc217b4e5fb8fd322d281b52cb309117c8a4486ebe51c2426aa03b7430c3cde`  
		Last Modified: Tue, 15 Sep 2026 22:26:37 GMT  
		Size: 8.5 MB (8490439 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c49825a95d53e3243db3b9da7c84e6a90002445903fc0f60a0c6b51321aa8e30`  
		Last Modified: Tue, 15 Sep 2026 22:26:36 GMT  
		Size: 66.8 KB (66751 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.1.1-php8.2-apache` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:280f7a35e52d094560f8a2d99e31768c2a289dd7a870c1ee85ac745188190ac8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.2 MB (239223676 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c25dc40409631e3102d20757be3a08eff089d598afa99db1842643db6a33408c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 21:12:53 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 15 Sep 2026 21:13:14 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 15 Sep 2026 21:13:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 15 Sep 2026 21:13:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:13:14 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:13:14 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 15 Sep 2026 21:13:14 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 15 Sep 2026 21:52:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 15 Sep 2026 21:52:27 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 15 Sep 2026 21:52:28 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 15 Sep 2026 21:52:28 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:52:28 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:52:28 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:52:28 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Tue, 15 Sep 2026 21:52:28 GMT
ENV PHP_VERSION=8.2.33
# Tue, 15 Sep 2026 21:52:28 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Tue, 15 Sep 2026 21:52:28 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Tue, 15 Sep 2026 21:52:37 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 15 Sep 2026 21:52:37 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:55:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:55:14 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:55:14 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:55:15 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:55:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:55:15 GMT
STOPSIGNAL SIGWINCH
# Tue, 15 Sep 2026 21:55:15 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:55:15 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 21:55:15 GMT
EXPOSE map[80/tcp:{}]
# Tue, 15 Sep 2026 21:55:15 GMT
CMD ["apache2-foreground"]
# Tue, 15 Sep 2026 22:20:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:22:15 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:22:15 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Tue, 15 Sep 2026 22:22:16 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:22:16 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Tue, 15 Sep 2026 22:22:18 GMT
RUN set -eux; 	version='7.1.1-RC1'; 	sha1='833d00fc95cab51a894692ed0a36f72c86c3dd69'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Tue, 15 Sep 2026 22:22:18 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:22:18 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Tue, 15 Sep 2026 22:22:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:22:19 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Tue, 15 Sep 2026 22:22:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:22:19 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:d1bbdd3d583b48584ef798f11d4f50ddaea353977c0af7c20de97cf364378aaa`  
		Last Modified: Mon, 24 Aug 2026 23:20:52 GMT  
		Size: 26.2 MB (26219141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57200ab189dba9be5aeab7d0b05027fd20734204396aa75d83f9386194ac73e7`  
		Last Modified: Tue, 15 Sep 2026 21:16:09 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fec4540aae9d4593941313c4adef38f1f5b4020dc49b2866bbddee74ed58869`  
		Last Modified: Tue, 15 Sep 2026 21:16:11 GMT  
		Size: 95.9 MB (95946171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9b5d5acb4421672da839f1de67f859fb58e2b702c6b86cf4f45c7577ba333cd`  
		Last Modified: Tue, 15 Sep 2026 21:16:09 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b96563c95bf8fe0346c5dcef7a6d2236f1811a5856a74a26f6ee8a951d7609a`  
		Last Modified: Tue, 15 Sep 2026 21:55:25 GMT  
		Size: 3.8 MB (3764612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d45251af73524ab91a264d95984d11c17ef9703f346e45ab57b7865e5f2639ab`  
		Last Modified: Tue, 15 Sep 2026 21:55:24 GMT  
		Size: 432.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:253286a61728a351742c19989d45e966d4c616ec0419c5ddb39988171d10b1b2`  
		Last Modified: Tue, 15 Sep 2026 21:55:24 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f0436195eab364ba5e8c92f7fa54dc4aadf173922b7724867875c50b182171d`  
		Last Modified: Tue, 15 Sep 2026 21:55:25 GMT  
		Size: 12.3 MB (12330909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad2cbe3aa5da397f5861b7520528097cd43409ececae8a22f446c920f0c34da5`  
		Last Modified: Tue, 15 Sep 2026 21:55:26 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47b4ee07fdf0d5ec9652f4ae3c1c45cd4102421052071c3a2a32112247e231de`  
		Last Modified: Tue, 15 Sep 2026 21:55:26 GMT  
		Size: 10.8 MB (10750413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:481534fffdd26cafba005a19519c09c60fb41a5c1ccea8f39ff301db9d7f2910`  
		Last Modified: Tue, 15 Sep 2026 21:55:26 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70bf8793fd612150a401492c887910e9ee244af1516d473627da138726ec50fa`  
		Last Modified: Tue, 15 Sep 2026 21:55:26 GMT  
		Size: 254.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c02b20e28d064b61fcfc460ba4c6d15f03f07a5606180388d16ac18da64ff269`  
		Last Modified: Tue, 15 Sep 2026 21:55:27 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5854ab75d61c19fb32834ece475de002378add82f75f361b72a4263564259d6`  
		Last Modified: Tue, 15 Sep 2026 21:55:27 GMT  
		Size: 892.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c89e2e2a063fd1b16f31589a9e0cf858f9732e690f99141addb82051f577c4`  
		Last Modified: Tue, 15 Sep 2026 22:22:36 GMT  
		Size: 29.1 MB (29054567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab812ac961bd96ee72e1b864a318878ab74f8784b9583baa890d4fe37016fb53`  
		Last Modified: Tue, 15 Sep 2026 22:22:36 GMT  
		Size: 25.7 MB (25735412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9d44af55d99bbe6780bb2d386d2ccb12f427644504335f312302fceb57e1e0e`  
		Last Modified: Tue, 15 Sep 2026 22:22:35 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e498c8a3e838536fb2bde0549917928bb9d8617c8b5d7631fb7f9e890d5c9901`  
		Last Modified: Tue, 15 Sep 2026 22:22:34 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10dc68d17bfb3539f91956278ed74444fd30c13311bbd11a9586170275919a91`  
		Last Modified: Tue, 15 Sep 2026 22:22:36 GMT  
		Size: 18.8 KB (18797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa38617e587109795e9fbb35c8050de492024789d8be2f4d9f4cda2477939a24`  
		Last Modified: Tue, 15 Sep 2026 22:22:37 GMT  
		Size: 35.4 MB (35392793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5688e84ed082b5c24385fe8bb92a74279d13617012b42a32e06a6cf4ed6568df`  
		Last Modified: Tue, 15 Sep 2026 22:22:37 GMT  
		Size: 2.4 KB (2439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9fe360c490399b1cd7a8c39b78748d7b72a7e26cab12d4b952feecf6520a9506`  
		Last Modified: Tue, 15 Sep 2026 22:22:37 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bab6bd224890d581df929df90a9828ec21c7ba94722cf586d942ea15224add97`  
		Last Modified: Tue, 15 Sep 2026 22:22:37 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.1.1-php8.2-apache` - unknown; unknown

```console
$ docker pull wordpress@sha256:6569e845ba59d0c252b9618d327a1fcb5ad9d89423b3f919a19a0a813d89a1df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.6 MB (8562016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3e5bd22e64b520bf75d52ff06d8c7d093f98ae993ed0bc9b97d3e4fe72fb4f3`

```dockerfile
```

-	Layers:
	-	`sha256:baec78af92f4155f7064dc5763ba6aa4555743cc4cc27d0f3524992e40248fb3`  
		Last Modified: Tue, 15 Sep 2026 22:22:35 GMT  
		Size: 8.5 MB (8495275 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3b2829df6c07b64b9d5a69014bbd7122f2ecd1102206fd9fc48e027459144cb8`  
		Last Modified: Tue, 15 Sep 2026 22:22:34 GMT  
		Size: 66.7 KB (66741 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.1.1-php8.2-apache` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:89e26656bf0ac1e92060129b5bae35fe2f28c28cdb05c981286cdbea154eeffd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **279.4 MB (279363413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2eda236c4b51c9eb4d761486100df4fa13bd9535b01d283ba5ceafe2c2b4b2b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 21:08:57 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 15 Sep 2026 21:09:19 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 15 Sep 2026 21:09:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 15 Sep 2026 21:09:19 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:09:19 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:09:19 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 15 Sep 2026 21:09:19 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 15 Sep 2026 21:09:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 15 Sep 2026 21:09:25 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 15 Sep 2026 21:09:26 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 15 Sep 2026 21:09:26 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:09:26 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:09:26 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:09:26 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Tue, 15 Sep 2026 21:09:26 GMT
ENV PHP_VERSION=8.2.33
# Tue, 15 Sep 2026 21:09:26 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Tue, 15 Sep 2026 21:09:26 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Tue, 15 Sep 2026 21:35:19 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 15 Sep 2026 21:35:19 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:38:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:38:49 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:38:49 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:38:49 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:38:49 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:38:49 GMT
STOPSIGNAL SIGWINCH
# Tue, 15 Sep 2026 21:38:49 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:38:49 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 21:38:49 GMT
EXPOSE map[80/tcp:{}]
# Tue, 15 Sep 2026 21:38:49 GMT
CMD ["apache2-foreground"]
# Tue, 15 Sep 2026 22:15:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:16:28 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:16:28 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Tue, 15 Sep 2026 22:16:29 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:16:29 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Tue, 15 Sep 2026 22:16:31 GMT
RUN set -eux; 	version='7.1.1-RC1'; 	sha1='833d00fc95cab51a894692ed0a36f72c86c3dd69'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
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
	-	`sha256:bf7af0229701decd1b9f42143504fc8f69e5664c37e57001d198e731e4f86c2e`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 30.2 MB (30159582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce574084f3064616eb11983ec6f00d7e306f11fb3becbb6654f48d0b24081b89`  
		Last Modified: Tue, 15 Sep 2026 21:12:57 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1759d59ffcc2c395f599a2a1486e4a45f1a5ab0678c69d45bf65f6abd069323`  
		Last Modified: Tue, 15 Sep 2026 21:13:00 GMT  
		Size: 121.8 MB (121803505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79a8db3c3314c7f677b935f81439abf7a43e799f8b2c4623a51ad74e0f910d0e`  
		Last Modified: Tue, 15 Sep 2026 21:12:57 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:857dbd7cc277726add64ecdf54dd0861f7696bbce7a4bf168c777cd630f55e36`  
		Last Modified: Tue, 15 Sep 2026 21:12:58 GMT  
		Size: 4.3 MB (4315137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dcb0b8009512ed45a8885a9504b33eb6a918ddbce3cf950baff3cbc6991dc2f`  
		Last Modified: Tue, 15 Sep 2026 21:12:58 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d79d738321b1895b48f7af66e377c59be0d3b1b6c8656b5e0238879e5ed2da45`  
		Last Modified: Tue, 15 Sep 2026 21:12:59 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0601cfb5c141725b220b36185aacf6b5956793284353b59819a9cb1c9e4d322c`  
		Last Modified: Tue, 15 Sep 2026 21:39:01 GMT  
		Size: 12.3 MB (12332964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e86a0d601270c6565658dd12409d3febe16e320071b50da46136ee635bc7afa3`  
		Last Modified: Tue, 15 Sep 2026 21:39:00 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93b1cce76056e2bcf01576d825b41b0c92c11995f349a0ca1da4e9760a8992e6`  
		Last Modified: Tue, 15 Sep 2026 21:39:01 GMT  
		Size: 12.6 MB (12589768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89a790c781bacb531f54e798ece0d1db3216238842ea02ce2aab9e4e40a4e804`  
		Last Modified: Tue, 15 Sep 2026 21:39:00 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bf70885b54726f6c7bc4ee6ccff536f33a020ea1e415f3a33c302a45c5ea98b`  
		Last Modified: Tue, 15 Sep 2026 21:39:01 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acd111d78fbd9884772fbfefa96e7a1ec7bb359340e3f8238294e8dbf0d02fd9`  
		Last Modified: Tue, 15 Sep 2026 21:39:01 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a311400b0b31ec3192829bd1eb2a307c53754dc7b72709f49b6273b0bdee2654`  
		Last Modified: Tue, 15 Sep 2026 21:39:02 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33ca7ce7a3da295158a391dac69fcc1a72c93a2c0d3d74fabd701d8b44fa3425`  
		Last Modified: Tue, 15 Sep 2026 22:16:50 GMT  
		Size: 34.5 MB (34480519 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d3b0ebfe42ee088f30fd9dcffa5226ee53bba2731b45fe3690173f7e698a170`  
		Last Modified: Tue, 15 Sep 2026 22:16:50 GMT  
		Size: 28.3 MB (28259496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19437bc8c86bc91b34b54d140900c0fc626320d5c22403270bfd88bfd135a97c`  
		Last Modified: Tue, 15 Sep 2026 22:16:49 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:375fbfb4283d91248b98b2dcafe215c89dfb768a43a520ffefb474492a354072`  
		Last Modified: Tue, 15 Sep 2026 22:16:49 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc5a2850a9a966555335d39829b4cc01bab89a376710204563fcbc549b5e77b0`  
		Last Modified: Tue, 15 Sep 2026 22:16:50 GMT  
		Size: 18.8 KB (18795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bee90290ddbe54c8c6a1a114e1829e94b17b9206ff46b6ba8f6924b2273155a3`  
		Last Modified: Tue, 15 Sep 2026 22:16:51 GMT  
		Size: 35.4 MB (35392794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:132818bbc1b1516556a62855b574ad388248a835b025197c2a62e77a5c524c6e`  
		Last Modified: Tue, 15 Sep 2026 22:16:51 GMT  
		Size: 2.4 KB (2442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18602e33fb6ad6f8c1d7a1fe790107c440e4849d9c305b8cadb150e62c4422fc`  
		Last Modified: Tue, 15 Sep 2026 22:16:51 GMT  
		Size: 1.8 KB (1769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2193360b6d383f1948a28e9428b00d10d3820eb4bc7450966b1a6de2be5cde9`  
		Last Modified: Tue, 15 Sep 2026 22:16:51 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.1.1-php8.2-apache` - unknown; unknown

```console
$ docker pull wordpress@sha256:e92c8f09efbac015310e2528a19c282cade7c97b4ecf1deb48ff1a366eed479c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8860209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c9eb244daca15b496d1f46fd6771e7270646ca97b1c5927892043c02cbe4a17`

```dockerfile
```

-	Layers:
	-	`sha256:9514b80e4d80c40c718b30e8415b94ac18663c94c358b20ec946a52379de7d41`  
		Last Modified: Tue, 15 Sep 2026 22:16:49 GMT  
		Size: 8.8 MB (8793398 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b9c61376d8a1bb5bc1dafbad185e20dd1b2da3b22e57452eb24b770fb47490c`  
		Last Modified: Tue, 15 Sep 2026 22:16:48 GMT  
		Size: 66.8 KB (66811 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.1.1-php8.2-apache` - linux; 386

```console
$ docker pull wordpress@sha256:6931d6e4fbac11097289fb49a7706c10b6fdc0d8ddc0f12cb51ac8a7d29113cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **284.0 MB (283997677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a59c1c42a24022bc865ed774dee897d06f423bfdbdbb1ed0354a4abbb9eb6e27`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1787529600'
# Tue, 15 Sep 2026 21:32:10 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 15 Sep 2026 21:32:34 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 15 Sep 2026 21:32:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 15 Sep 2026 21:32:34 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:32:34 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:32:34 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 15 Sep 2026 21:32:34 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 15 Sep 2026 21:32:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 15 Sep 2026 21:32:42 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 15 Sep 2026 21:32:42 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 15 Sep 2026 21:32:42 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:32:42 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:32:42 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:32:42 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Tue, 15 Sep 2026 21:32:42 GMT
ENV PHP_VERSION=8.2.33
# Tue, 15 Sep 2026 21:32:42 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Tue, 15 Sep 2026 21:32:42 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Tue, 15 Sep 2026 21:32:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 15 Sep 2026 21:32:50 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:35:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-gnu' && echo '--without-pcre-jit') 		--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:35:24 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:35:24 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:35:24 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:35:24 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:35:24 GMT
STOPSIGNAL SIGWINCH
# Tue, 15 Sep 2026 21:35:24 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:35:24 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 21:35:24 GMT
EXPOSE map[80/tcp:{}]
# Tue, 15 Sep 2026 21:35:24 GMT
CMD ["apache2-foreground"]
# Tue, 15 Sep 2026 22:15:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 15 Sep 2026 22:16:53 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:16:53 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Tue, 15 Sep 2026 22:16:53 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:16:53 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Tue, 15 Sep 2026 22:16:56 GMT
RUN set -eux; 	version='7.1.1-RC1'; 	sha1='833d00fc95cab51a894692ed0a36f72c86c3dd69'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Tue, 15 Sep 2026 22:16:56 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:16:56 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Tue, 15 Sep 2026 22:16:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:16:56 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Tue, 15 Sep 2026 22:16:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:16:56 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:53dd1701fe55fa5affd8b9c6d6572dd8ec54300469e314130f40456ca2b957f3`  
		Last Modified: Mon, 24 Aug 2026 23:20:57 GMT  
		Size: 31.3 MB (31303397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e9f3990d840fc6d1fd1fb9a07bc6a6351b8488ad45b2c0031dd917c6f41c2d5`  
		Last Modified: Tue, 15 Sep 2026 21:35:44 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69013cfd1a611599b533adc0ccf9864bfeb9bbb3b5cd503edf3835ea5f97aed0`  
		Last Modified: Tue, 15 Sep 2026 21:35:49 GMT  
		Size: 127.1 MB (127103929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7e18f79b5877db980cf092b5aaf5a6fc905d8ca4431ff1b0071f22fbb21190f`  
		Last Modified: Tue, 15 Sep 2026 21:35:44 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8487e4a9968a1c6809ea593d859cd149d2d96e32a356de47d1fd86d1976dd9c`  
		Last Modified: Tue, 15 Sep 2026 21:35:44 GMT  
		Size: 4.5 MB (4471917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd45cd39ade282a31d96879ed66a6e3478b81d8481eb79487a669ab4153ca75f`  
		Last Modified: Tue, 15 Sep 2026 21:35:45 GMT  
		Size: 432.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0b1a6b2cdf8163571a87d905f52ef7597ef70e54aeaa55396731655fdcb0dee`  
		Last Modified: Tue, 15 Sep 2026 21:35:45 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b96c7366a63bd8a73b71e7589345b7fe9bdac06f635b1aa6680dc22951105293`  
		Last Modified: Tue, 15 Sep 2026 21:35:46 GMT  
		Size: 12.3 MB (12332212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac0514fcda3bce6a8a9bc621cade70a5a9121f8ae1df7fa8d37c3751d6bc4e36`  
		Last Modified: Tue, 15 Sep 2026 21:35:46 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e5adec4c4855421824ece4197d86718d57487942d1530d226e549ae3dd77206`  
		Last Modified: Tue, 15 Sep 2026 21:35:47 GMT  
		Size: 12.9 MB (12941695 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:963e43d9db47dc734722ecb15db95dda065a47bc0dcd2e81d9bb1c778a787c86`  
		Last Modified: Tue, 15 Sep 2026 21:35:48 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52d0b95a08f92b99fb9fdcd894876fe03f2dc04b635e2e98b347b14e5a910a79`  
		Last Modified: Tue, 15 Sep 2026 21:35:48 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4a493f68cb7d814fb767ef59f459badbf45caec106367c104a4cd42fc06a017`  
		Last Modified: Tue, 15 Sep 2026 21:35:49 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:427cc96a33fc2bf28faad0cada5cef134de5fb124a6c2505523a52930d619820`  
		Last Modified: Tue, 15 Sep 2026 21:35:49 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9000ac50641087f0272f7d3844e89457ef465a6694ceb99055a0efa00a7daa5a`  
		Last Modified: Tue, 15 Sep 2026 22:17:14 GMT  
		Size: 32.4 MB (32410119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b249edbb64382611c16b4c160702bdddc867266d2acad2a0c6a485962ce74ef`  
		Last Modified: Tue, 15 Sep 2026 22:17:14 GMT  
		Size: 28.0 MB (28011981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d4487699f64dd426c67515de4e49a35629e0926b3192f458b0a14e472f4d722`  
		Last Modified: Tue, 15 Sep 2026 22:17:13 GMT  
		Size: 312.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa38f27c37f06dd26bab7fd62ba19f55d4e0c550e9eb22d50f9900cb56da37a7`  
		Last Modified: Tue, 15 Sep 2026 22:17:13 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:155dcbee5095b8cd73dfeeecdbe22ed98ff8e64b77c9e8f34a017ac5a06e8f59`  
		Last Modified: Tue, 15 Sep 2026 22:17:14 GMT  
		Size: 18.8 KB (18791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a96669bc3f3af605df04d0738c53bb77aa5cec44b0bbc792f0b32df797e2a7fb`  
		Last Modified: Tue, 15 Sep 2026 22:17:15 GMT  
		Size: 35.4 MB (35392788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e30f1bed6262725d16e5c0b50df8a439e137234b049f752315e5b172af6a7782`  
		Last Modified: Tue, 15 Sep 2026 22:17:15 GMT  
		Size: 2.4 KB (2440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b509945061a11d8a5afeb27a68b419a584623ad6258c4c5f2d4ff9d06c558ec8`  
		Last Modified: Tue, 15 Sep 2026 22:17:16 GMT  
		Size: 1.8 KB (1768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7364bc39dd00f5a51c9bc0e8ecd15efe93486f093325339f94af1588daa51a7`  
		Last Modified: Tue, 15 Sep 2026 22:17:16 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.1.1-php8.2-apache` - unknown; unknown

```console
$ docker pull wordpress@sha256:0398ca293ae8fc86423f58e9c6489335312ab9ce6dcae1341b17eaafaedbf1af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8736326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eecb2001269c0ba9676d29ebeb0623673c1088f3b27834ebd641336716a3ca7b`

```dockerfile
```

-	Layers:
	-	`sha256:9f7e3dcc679a7db57697b0fc603bfa9c06605b1b10d939cacbad936841bcba76`  
		Last Modified: Tue, 15 Sep 2026 22:17:13 GMT  
		Size: 8.7 MB (8669855 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2842415d616a493caf25bc1b950ddb2cff2d7efdcbc0fcf58f432b02b75f5920`  
		Last Modified: Tue, 15 Sep 2026 22:17:13 GMT  
		Size: 66.5 KB (66471 bytes)  
		MIME: application/vnd.in-toto+json
