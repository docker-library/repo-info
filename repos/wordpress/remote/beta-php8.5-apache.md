## `wordpress:beta-php8.5-apache`

```console
$ docker pull wordpress@sha256:d459507fc766e72faecdd8727aa4ade1339aa1b8a87fc4f93c33f6de8a15e3f4
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

### `wordpress:beta-php8.5-apache` - linux; amd64

```console
$ docker pull wordpress@sha256:b314d7ca9944646a80fff78afb095826b360113855ef65144f2fc6b8a91d9dee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **280.1 MB (280124090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26cede3ea7d0bb25e2ab5bd6b3561853bf1221420a64fcd4bf5e8e7ce409d8fa`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:25:12 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 14 Jul 2026 01:25:28 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 14 Jul 2026 01:25:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 01:25:28 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 14 Jul 2026 01:25:28 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 14 Jul 2026 01:25:28 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 14 Jul 2026 01:25:28 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 14 Jul 2026 01:25:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 14 Jul 2026 01:25:33 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 14 Jul 2026 01:25:33 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 14 Jul 2026 01:25:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:25:33 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:25:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 14 Jul 2026 01:25:33 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 14 Jul 2026 01:25:33 GMT
ENV PHP_VERSION=8.5.8
# Tue, 14 Jul 2026 01:25:33 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Tue, 14 Jul 2026 01:25:33 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Tue, 14 Jul 2026 01:25:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 14 Jul 2026 01:25:40 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:28:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 14 Jul 2026 01:28:29 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:28:29 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 14 Jul 2026 01:28:29 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Jul 2026 01:28:29 GMT
STOPSIGNAL SIGWINCH
# Tue, 14 Jul 2026 01:28:29 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:28:29 GMT
WORKDIR /var/www/html
# Tue, 14 Jul 2026 01:28:29 GMT
EXPOSE map[80/tcp:{}]
# Tue, 14 Jul 2026 01:28:29 GMT
CMD ["apache2-foreground"]
# Thu, 16 Jul 2026 17:56:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 17:58:08 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 16 Jul 2026 17:58:09 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Thu, 16 Jul 2026 17:58:09 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 16 Jul 2026 17:58:09 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Thu, 16 Jul 2026 17:58:12 GMT
RUN set -eux; 	version='7.1-beta1'; 	sha1='de8d2d764c716181a1e8bab701e959ceeba14269'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Thu, 16 Jul 2026 17:58:12 GMT
VOLUME [/var/www/html]
# Thu, 16 Jul 2026 17:58:12 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Thu, 16 Jul 2026 17:58:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 17:58:12 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Thu, 16 Jul 2026 17:58:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 17:58:12 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a749627436b22c83c0290e129034eef7caaa77c4f9cc81f3aaced6c3bafb194b`  
		Last Modified: Tue, 14 Jul 2026 01:28:51 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff1ec000eba939f8db40440b61a4b9812aae0ab0e6ec0978cfb383f8123e93f0`  
		Last Modified: Tue, 14 Jul 2026 01:28:54 GMT  
		Size: 117.8 MB (117839385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b59673225aa9be33c6894115e192c5a68d073014a6f3c5ab74d0533e9d6830e`  
		Last Modified: Tue, 14 Jul 2026 01:28:51 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cc377f5b9ea48eeb4fbfa729bfc4f5c2b67af4f9c877115faa5f6ff1a41bda8`  
		Last Modified: Tue, 14 Jul 2026 01:28:51 GMT  
		Size: 4.2 MB (4229440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2807372bbd8991775cc5315a0de9a7f3d549e12fa0e958a7875d8ee486200366`  
		Last Modified: Tue, 14 Jul 2026 01:28:52 GMT  
		Size: 426.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00023b7a79877f9c042110e00ed7a28df8be141cda1159188d6055d9eb2f50b0`  
		Last Modified: Tue, 14 Jul 2026 01:28:52 GMT  
		Size: 481.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f3081ec41cef901f86bd42ec2368ecb4ddbf39a9eef31addb58162018f05a78`  
		Last Modified: Tue, 14 Jul 2026 01:28:54 GMT  
		Size: 14.6 MB (14576471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfee7ea16b84e798b8270e20f8ed7d411d7a886badcb0f210ba9d92ac6a6582c`  
		Last Modified: Tue, 14 Jul 2026 01:28:53 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63a49630bb83b4c8243600c1d89a7248b9e30966d2c87a55fc48c53bc270264e`  
		Last Modified: Tue, 14 Jul 2026 01:28:54 GMT  
		Size: 15.2 MB (15175981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f8ee3f7308dd7b34b4f1f47ccb706ec1d7008aa97651d666d82e49264b101cd`  
		Last Modified: Tue, 14 Jul 2026 01:28:55 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab55441c986e8e7148a5242a35fb47dfeb482dd549d6ba7276abaf1a98079020`  
		Last Modified: Tue, 14 Jul 2026 01:28:55 GMT  
		Size: 242.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def1a0f929367baed847558f19d7e295da64aeceee2bf30432dbfb3152f9bebf`  
		Last Modified: Tue, 14 Jul 2026 01:28:56 GMT  
		Size: 889.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4efb1f659f62cbefdc0c5d8ee42d2563f8942509b4a0bc4c79fd3808b72b9fa`  
		Last Modified: Thu, 16 Jul 2026 17:58:29 GMT  
		Size: 33.0 MB (32956453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ce7ee7011a6f9520e2aca84dc226fdcfdd9333ab3617d8787b8c15e3fdd0a75`  
		Last Modified: Thu, 16 Jul 2026 17:58:29 GMT  
		Size: 30.0 MB (30001795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a542310e586b5a2988da508f34bb91269190ab97f7f4b763df27a02509e6786`  
		Last Modified: Thu, 16 Jul 2026 17:58:28 GMT  
		Size: 312.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bf1eee2cbfcb9fb95cbc05a11e9ef356d26653777197f85c36e10e36f093d4a`  
		Last Modified: Thu, 16 Jul 2026 17:58:28 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:457e9a62d96daa54011fcbeea5452d3a606580876de5c36292753a0e8a1e7a93`  
		Last Modified: Thu, 16 Jul 2026 17:58:29 GMT  
		Size: 18.8 KB (18791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d80704751c143e07621a90b6a24ffba5b9a9dddeaf39228d3b815e79b92598bc`  
		Last Modified: Thu, 16 Jul 2026 17:58:30 GMT  
		Size: 35.5 MB (35534292 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3015abc0dbd17433c1b3d328c0b9011b014f294251b8e80cd3379415daeb1dd1`  
		Last Modified: Thu, 16 Jul 2026 17:58:30 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0276f55af6830daddb9a79743978a52a8d4c6ebf8fde632bae3285a345c3643`  
		Last Modified: Thu, 16 Jul 2026 17:58:31 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7e58b43fc9a7ae3af81cbff0ff73f1eda29891b242ec990277adb887acabdf9`  
		Last Modified: Thu, 16 Jul 2026 17:58:31 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-php8.5-apache` - unknown; unknown

```console
$ docker pull wordpress@sha256:ca40b0c1faaad1a41936b94bdfdeb9b111b24b043046d64fd42b77b5d1ff916c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8757865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a6b0a6ee396ac343eab17bd2c085b72b04f8195af7cdbffb6303866310fa64e`

```dockerfile
```

-	Layers:
	-	`sha256:ed7e51e2b00ad416a5f12431ffc37691ce2fbc56ec80623571e9f642c1025bb8`  
		Last Modified: Thu, 16 Jul 2026 17:58:28 GMT  
		Size: 8.7 MB (8693547 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1b54d3334fb44b0fea54550ee607be76aa2ff66d8f15377599de0dcf706a5753`  
		Last Modified: Thu, 16 Jul 2026 17:58:27 GMT  
		Size: 64.3 KB (64318 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-php8.5-apache` - linux; arm variant v5

```console
$ docker pull wordpress@sha256:9ecb6ae2723e9e1384d767b62fbb63f0c433c161ad05d5e89c91aa85274a1d31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.8 MB (247816981 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0185c5d92dffa95576434fb155a19103b56253fe50363c2da7d5890bc70ae74c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:18:37 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 14 Jul 2026 01:19:04 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 14 Jul 2026 01:19:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 01:19:04 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 14 Jul 2026 01:19:04 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 14 Jul 2026 01:19:04 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 14 Jul 2026 01:19:04 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 14 Jul 2026 01:26:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 14 Jul 2026 01:26:51 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 14 Jul 2026 01:26:51 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 14 Jul 2026 01:26:51 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:26:51 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:26:51 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 14 Jul 2026 01:26:51 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 14 Jul 2026 01:26:51 GMT
ENV PHP_VERSION=8.5.8
# Tue, 14 Jul 2026 01:26:51 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Tue, 14 Jul 2026 01:26:51 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Tue, 14 Jul 2026 01:27:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 14 Jul 2026 01:27:03 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:30:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 14 Jul 2026 01:30:33 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:30:34 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 14 Jul 2026 01:30:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Jul 2026 01:30:34 GMT
STOPSIGNAL SIGWINCH
# Tue, 14 Jul 2026 01:30:34 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:30:34 GMT
WORKDIR /var/www/html
# Tue, 14 Jul 2026 01:30:34 GMT
EXPOSE map[80/tcp:{}]
# Tue, 14 Jul 2026 01:30:34 GMT
CMD ["apache2-foreground"]
# Thu, 16 Jul 2026 17:57:18 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 17:59:56 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 16 Jul 2026 17:59:56 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Thu, 16 Jul 2026 17:59:56 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 16 Jul 2026 17:59:56 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Thu, 16 Jul 2026 17:59:59 GMT
RUN set -eux; 	version='7.1-beta1'; 	sha1='de8d2d764c716181a1e8bab701e959ceeba14269'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Thu, 16 Jul 2026 17:59:59 GMT
VOLUME [/var/www/html]
# Thu, 16 Jul 2026 17:59:59 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Thu, 16 Jul 2026 17:59:59 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 17:59:59 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Thu, 16 Jul 2026 17:59:59 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 17:59:59 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:9ce68cca63faf1f06434dd1423cb52db0d4251ee3f1838e43e5893fae28f9267`  
		Last Modified: Tue, 14 Jul 2026 00:14:26 GMT  
		Size: 28.0 MB (27954818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:488848f9a59e303ea6df59749e48b1fd9d0b9d0f98b9f2e90fb182c879118949`  
		Last Modified: Tue, 14 Jul 2026 01:22:32 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a31c9db1de3f9a9d4c2808306e1b781d5e57675d93c28b76eea454e2464292b`  
		Last Modified: Tue, 14 Jul 2026 01:22:42 GMT  
		Size: 94.9 MB (94887309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd5b94efd3309553e13c4f8f0a5bdab8aa25d6ffa57bfb2e633311df7030dcda`  
		Last Modified: Tue, 14 Jul 2026 01:22:39 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:894b25bef6c81b0579e19c2e0531845798f9dba16752de992b231d517ad4c64a`  
		Last Modified: Tue, 14 Jul 2026 01:30:45 GMT  
		Size: 4.1 MB (4090442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e3d5f5b986a5569508701dece3f4fd5e91a677ef33451d14f872300af07b18b`  
		Last Modified: Tue, 14 Jul 2026 01:30:45 GMT  
		Size: 432.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0de0539a6ae1308f0f1f5b2395c2877b987f37bd9c4017fcf786215d60e02f6f`  
		Last Modified: Tue, 14 Jul 2026 01:30:44 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b42d0d0bec01160f4c246f1a3ff02deffac8de9c2e4050f479356ffd9d9fe7`  
		Last Modified: Tue, 14 Jul 2026 01:30:45 GMT  
		Size: 14.6 MB (14574351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95e188a44560123ac2b12bdf154cdaa8f68dfd7fa40006e548374f9f1df4ca36`  
		Last Modified: Tue, 14 Jul 2026 01:30:46 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61a0ae1e96d5e8cb68f5d3a364f1335665d8e1316c4f382f023c77cda0031860`  
		Last Modified: Tue, 14 Jul 2026 01:30:46 GMT  
		Size: 13.2 MB (13241590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ff523e5e54c37e7d86f6c54e999eda25387491f1f1840c141bf4869ed362e74`  
		Last Modified: Tue, 14 Jul 2026 01:30:46 GMT  
		Size: 2.5 KB (2456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e1c138100fa541e7b540834dbf50af31eff1245e35e17917044335d73ca1a82`  
		Last Modified: Tue, 14 Jul 2026 01:30:46 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46c3809d0b989e67e4a6486aa48aa7c65920741ef722260b8990bb285c86061b`  
		Last Modified: Tue, 14 Jul 2026 01:30:47 GMT  
		Size: 889.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4031e672c7281cc1c057ddf4771c478a6014e554e78b12c11e4a4e2bd820ee15`  
		Last Modified: Thu, 16 Jul 2026 18:00:18 GMT  
		Size: 30.1 MB (30142882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dcac6ecce8f808c37d3aef38297b99a8d8c9bf4b7cc506a4e4945fc104410f1`  
		Last Modified: Thu, 16 Jul 2026 18:00:18 GMT  
		Size: 27.4 MB (27361927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1df2a822bfeb4ed3c7db6ba3c9edb87f280bdfd83e6c0020e6331d7d4d59cb8`  
		Last Modified: Thu, 16 Jul 2026 18:00:17 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e570b15990fe1889a9641855b5faa54e306a7dc084a5c6d69a48de0905f5362c`  
		Last Modified: Thu, 16 Jul 2026 18:00:17 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd5fdec33fd465b37876e8b2196a6561d3be3594a4ab0ade82ca60f77e16e18a`  
		Last Modified: Thu, 16 Jul 2026 18:00:18 GMT  
		Size: 18.8 KB (18798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:744030157acc7dbf667ed49a8c951a2bf494d8c8ba74b502ca9b60a1c486f319`  
		Last Modified: Thu, 16 Jul 2026 18:00:19 GMT  
		Size: 35.5 MB (35534269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20cd7cf3c32ae2d7af006caedd38df240ebf56d51a0bffddef96f26f2e277058`  
		Last Modified: Thu, 16 Jul 2026 18:00:20 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29512e83341f7d0e5c93f6f9b22e660257492185c9917a8292744cc9c117a641`  
		Last Modified: Thu, 16 Jul 2026 18:00:20 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09ac9de28b0da2543386a928945d6359cd001e17f70606e48ca33025c5a0de69`  
		Last Modified: Thu, 16 Jul 2026 18:00:20 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-php8.5-apache` - unknown; unknown

```console
$ docker pull wordpress@sha256:6ac50962cd06edd7678e2099630018931cd4f099184fd451d88bb37aa88c0774
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.6 MB (8551606 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e545648e72ef3b4ca9b2f13bcd1060291b0784572ce9027c6e4fbeb28e226de2`

```dockerfile
```

-	Layers:
	-	`sha256:c764a72f56e1a118f83b8bbcc3b4ad11aa7a4673e37b79f9eb8af442ecaa403b`  
		Last Modified: Thu, 16 Jul 2026 18:00:17 GMT  
		Size: 8.5 MB (8487108 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d90a3a3f68b232d2d5ba1d2b2e8cfa690a09de83da6962c46832815612cb752a`  
		Last Modified: Thu, 16 Jul 2026 18:00:16 GMT  
		Size: 64.5 KB (64498 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-php8.5-apache` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:a97dca827c937504a6f24778102d2d3f4e2bfa9799f3ee795c4942ce4a3461e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.8 MB (233798262 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ade250f3017dbf4c15117db4d1a9f30332637a5bf9df7da72c048a57b80f770`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:30:54 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 14 Jul 2026 01:31:12 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 14 Jul 2026 01:31:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 01:31:12 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 14 Jul 2026 01:31:12 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 14 Jul 2026 01:31:12 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 14 Jul 2026 01:31:12 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 14 Jul 2026 01:31:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 14 Jul 2026 01:31:20 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 14 Jul 2026 01:31:20 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 14 Jul 2026 01:31:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:31:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:31:20 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 14 Jul 2026 01:31:20 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 14 Jul 2026 01:31:20 GMT
ENV PHP_VERSION=8.5.8
# Tue, 14 Jul 2026 01:31:20 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Tue, 14 Jul 2026 01:31:20 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Tue, 14 Jul 2026 01:31:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 14 Jul 2026 01:31:30 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:34:36 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 14 Jul 2026 01:34:36 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:34:36 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 14 Jul 2026 01:34:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Jul 2026 01:34:36 GMT
STOPSIGNAL SIGWINCH
# Tue, 14 Jul 2026 01:34:36 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:34:36 GMT
WORKDIR /var/www/html
# Tue, 14 Jul 2026 01:34:36 GMT
EXPOSE map[80/tcp:{}]
# Tue, 14 Jul 2026 01:34:36 GMT
CMD ["apache2-foreground"]
# Thu, 16 Jul 2026 17:59:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 18:02:03 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 16 Jul 2026 18:02:03 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Thu, 16 Jul 2026 18:02:03 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 16 Jul 2026 18:02:03 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Thu, 16 Jul 2026 18:02:06 GMT
RUN set -eux; 	version='7.1-beta1'; 	sha1='de8d2d764c716181a1e8bab701e959ceeba14269'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Thu, 16 Jul 2026 18:02:06 GMT
VOLUME [/var/www/html]
# Thu, 16 Jul 2026 18:02:06 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Thu, 16 Jul 2026 18:02:06 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 18:02:06 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Thu, 16 Jul 2026 18:02:06 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 18:02:06 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8b0c60fc22122a8e02a3c7dc27db46ec4b01b60e0c0959df8f52f036a5b48482`  
		Last Modified: Tue, 14 Jul 2026 00:14:43 GMT  
		Size: 26.2 MB (26206467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57e314f2ce3e3e24a9d93f28d3ad6fd22c919090cf796aa977745a779c38a4a6`  
		Last Modified: Tue, 14 Jul 2026 01:34:53 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab43c0af172d4fb74d82a65fb071572a594b30333e4161f6db9952c494a9c3b6`  
		Last Modified: Tue, 14 Jul 2026 01:34:56 GMT  
		Size: 86.3 MB (86257193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c32b01873a226e1fa4c198adc324f4867ffdbdcecc50f894d7b111b5fb633726`  
		Last Modified: Tue, 14 Jul 2026 01:34:53 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24d13a27ce16b0e9770e99a0228e5ae1560a085c8cbefc9a07afde9ccbf8579e`  
		Last Modified: Tue, 14 Jul 2026 01:34:53 GMT  
		Size: 3.8 MB (3757362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31498b6e8fe509001c8bcff916f1915b85a73d1b1e233ec54faa14b4fa7c2ddf`  
		Last Modified: Tue, 14 Jul 2026 01:34:54 GMT  
		Size: 433.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4909a00a0dd7d70808e0582445f838fbfd30442cb1659493b97a79899395dfe`  
		Last Modified: Tue, 14 Jul 2026 01:34:54 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c4185f6c1052857c8a3118bc83a2b610cb72e5e9e14261675ea3a4667d66907`  
		Last Modified: Tue, 14 Jul 2026 01:34:55 GMT  
		Size: 14.6 MB (14574395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f921f7cb4bacdbd140d320ed68a7de3c7ede9f69a14fc60acec4f6348fd0cc81`  
		Last Modified: Tue, 14 Jul 2026 01:34:56 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:510d2f043163236ba3c1d21434a8a48387090a825795a4c3470a5998cc91c438`  
		Last Modified: Tue, 14 Jul 2026 01:34:56 GMT  
		Size: 12.6 MB (12626810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8939bd043cde7388279de5454600e5cd7817f4a74c6a742e8479bee1579cb870`  
		Last Modified: Tue, 14 Jul 2026 01:34:56 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31ff6ebfea41f2d833e778b781fb1bf5198cb9cab26c67d43a39d0744bf27331`  
		Last Modified: Tue, 14 Jul 2026 01:34:57 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9df1934a884def8c13f69425afda4d98a3305ca5e0f5b1deadd1e8531cdddee`  
		Last Modified: Tue, 14 Jul 2026 01:34:57 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:586775c63d2815f2b98d0570a2ad7e4548e40033ad3e2426195ce2dd03b453ee`  
		Last Modified: Thu, 16 Jul 2026 18:02:24 GMT  
		Size: 29.0 MB (29041724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95f2ebbce81d014d49b0f9b19ea023be67ac0af2e35e98ebc28d4b418ab7c179`  
		Last Modified: Thu, 16 Jul 2026 18:02:24 GMT  
		Size: 25.8 MB (25770647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95dca821497080128021467f79be3ee8b11610d82b571deef943b2ef79f62c35`  
		Last Modified: Thu, 16 Jul 2026 18:02:23 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5568e715bb391d2d7ec9419f71d538c12ac6c39f17905591f4a3357360a0f73`  
		Last Modified: Thu, 16 Jul 2026 18:02:23 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a67a4c4ed99bb2ce3ddedbfb7b5fa4d0a51619019b4509d6fb630d7416608338`  
		Last Modified: Thu, 16 Jul 2026 18:02:24 GMT  
		Size: 18.8 KB (18790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48131141e848cef56c31a03cc3c7b101b1d3208aa4e435241645ad850c6eba7b`  
		Last Modified: Thu, 16 Jul 2026 18:02:26 GMT  
		Size: 35.5 MB (35534288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ed537890bda3a0f56d09cdc799967b1c6e7d40d77d7b03809393a1faff3cc37`  
		Last Modified: Thu, 16 Jul 2026 18:02:26 GMT  
		Size: 2.4 KB (2438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d3da42fd97f4c028ea3a9aa5983247db90ffb89a85c05b2225c08da4beaa6f0`  
		Last Modified: Thu, 16 Jul 2026 18:02:26 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a62e830bfe0e58296f126bd47d865da1068ee32b99f2b7a057fbd96e22da44b6`  
		Last Modified: Thu, 16 Jul 2026 18:02:26 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-php8.5-apache` - unknown; unknown

```console
$ docker pull wordpress@sha256:31d09a1ca196d48dbc62db49c42869a35dabd303d1cc4b4aeb571875427b79e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.6 MB (8556440 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:afdc6bc7b795a234eaea81340fdc7e4b564b783e3108489802f751c0b92414e4`

```dockerfile
```

-	Layers:
	-	`sha256:4d7bbefbf96349f83bddbec53a453295a5dd1033e79c069363f725f73da55311`  
		Last Modified: Thu, 16 Jul 2026 18:02:23 GMT  
		Size: 8.5 MB (8491942 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:912cc568bb5abd4fc601dc5189675c6c16bfdef9798fd332adbc79892c8532af`  
		Last Modified: Thu, 16 Jul 2026 18:02:23 GMT  
		Size: 64.5 KB (64498 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-php8.5-apache` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:d95ba26d04b136ef373713f68ce10c0bb6a4a7954b32fbb95624dbf34d1eb12c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.3 MB (272264384 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ff1be475038da73112673e475d172201a27d499cc5f873139d5892677cc6fa6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:25:21 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 14 Jul 2026 01:25:37 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 14 Jul 2026 01:25:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 01:25:37 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 14 Jul 2026 01:25:38 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 14 Jul 2026 01:25:38 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 14 Jul 2026 01:25:38 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 14 Jul 2026 01:25:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 14 Jul 2026 01:25:44 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 14 Jul 2026 01:25:44 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 14 Jul 2026 01:25:44 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:25:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:25:44 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 14 Jul 2026 01:25:44 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 14 Jul 2026 01:25:44 GMT
ENV PHP_VERSION=8.5.8
# Tue, 14 Jul 2026 01:25:44 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Tue, 14 Jul 2026 01:25:44 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Tue, 14 Jul 2026 01:25:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 14 Jul 2026 01:25:52 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:29:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 14 Jul 2026 01:29:11 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:29:11 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 14 Jul 2026 01:29:11 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Jul 2026 01:29:11 GMT
STOPSIGNAL SIGWINCH
# Tue, 14 Jul 2026 01:29:11 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:29:11 GMT
WORKDIR /var/www/html
# Tue, 14 Jul 2026 01:29:11 GMT
EXPOSE map[80/tcp:{}]
# Tue, 14 Jul 2026 01:29:11 GMT
CMD ["apache2-foreground"]
# Thu, 16 Jul 2026 17:56:42 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 17:59:05 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 16 Jul 2026 17:59:05 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Thu, 16 Jul 2026 17:59:05 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 16 Jul 2026 17:59:05 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Thu, 16 Jul 2026 17:59:08 GMT
RUN set -eux; 	version='7.1-beta1'; 	sha1='de8d2d764c716181a1e8bab701e959ceeba14269'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Thu, 16 Jul 2026 17:59:08 GMT
VOLUME [/var/www/html]
# Thu, 16 Jul 2026 17:59:08 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Thu, 16 Jul 2026 17:59:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 17:59:08 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Thu, 16 Jul 2026 17:59:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 17:59:08 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ca58f8b266ae56627b3b39d43545d8b8eedcc592ab73180ad2bb3f3625b8b20`  
		Last Modified: Tue, 14 Jul 2026 01:29:32 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57f4a3e8ea24795ee9eabef0ad2a342dade2b4b96e397ea4d4431cb091c386ef`  
		Last Modified: Tue, 14 Jul 2026 01:29:36 GMT  
		Size: 110.2 MB (110169374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:688c6884dec399cbb5638e812d9969497adbed4b9f022dd857630b7d786c29bc`  
		Last Modified: Tue, 14 Jul 2026 01:29:32 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81084743019893e07ba6c2897e080ca82ba197bd2e98c3a4182ba33edafff52f`  
		Last Modified: Tue, 14 Jul 2026 01:29:33 GMT  
		Size: 4.3 MB (4307961 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5bced4b062eafde517b07c9fb4465feb981ca705013bfb64dce46389bbb3bfa`  
		Last Modified: Tue, 14 Jul 2026 01:29:34 GMT  
		Size: 432.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e65553f1c4335fc14a00725126357c9ecaf58dd761526b5bd6fb14a1319f5d2`  
		Last Modified: Tue, 14 Jul 2026 01:29:34 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64cb004c3ff25406e3e98e8b1172b2db3b4b89346e651940873ca4e654c9f09`  
		Last Modified: Tue, 14 Jul 2026 01:29:35 GMT  
		Size: 14.6 MB (14576120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09d26f4dbaf1c73ca8b146b7a6be0638c065827ecca74405c1f1ae216e9a1f3d`  
		Last Modified: Tue, 14 Jul 2026 01:29:35 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:236e4fad0fe0f79e0e00b889cfa6206845d4313d231e11e4aa31ac59673f7db6`  
		Last Modified: Tue, 14 Jul 2026 01:29:35 GMT  
		Size: 14.7 MB (14734566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b542c7d7e6fe397d62ae9ed260f62717ad72042d3b8266f11a17ee3420cd319c`  
		Last Modified: Tue, 14 Jul 2026 01:29:36 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1db3f685f84012754a54a3bd4235bc803c45afc74f328ce824764ab8773e12b4`  
		Last Modified: Tue, 14 Jul 2026 01:29:36 GMT  
		Size: 242.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e014df0e4c06b7109ed9e75e3e7a3539ceea7878c259427cc8b31b8138c69cb`  
		Last Modified: Tue, 14 Jul 2026 01:29:37 GMT  
		Size: 888.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25041ea9d41ef3385ee4b4d851780fe4324ca4f5375fc2e750d04fc1d9924f5a`  
		Last Modified: Thu, 16 Jul 2026 17:59:28 GMT  
		Size: 34.5 MB (34468981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2423210c1c9b6ff22eeb67b0aedb0995679c524d8691edffbfc66bd0b1314e8`  
		Last Modified: Thu, 16 Jul 2026 17:59:28 GMT  
		Size: 28.3 MB (28300025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1696b123b07c2c23d45d6e19d2ed101700fa8e812aca5e834779165cb8a6055`  
		Last Modified: Thu, 16 Jul 2026 17:59:26 GMT  
		Size: 312.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f73bb0344e31823e6797f759dc3f937ed940fa5b51a971e1d6fb85f6e0ed79bb`  
		Last Modified: Thu, 16 Jul 2026 17:59:26 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b90292b0741b8c638c8e347b47eeba3a114b1f2c6b175287caa84b525e2a454`  
		Last Modified: Thu, 16 Jul 2026 17:59:28 GMT  
		Size: 18.8 KB (18794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32e970ea445c9009a5759b64e3df122f65c370277ab4372904d896a83efd2e3a`  
		Last Modified: Thu, 16 Jul 2026 17:59:29 GMT  
		Size: 35.5 MB (35534283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f993ba3a0c22dd224a68e6e0fa9776b4cdea9b7c2f25024d80d01171606b59ba`  
		Last Modified: Thu, 16 Jul 2026 17:59:29 GMT  
		Size: 2.4 KB (2439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bda254bf870caa7cc243f90c21fb542ec4e3dfe56e09a06a2845cabab549f4e`  
		Last Modified: Thu, 16 Jul 2026 17:59:29 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f64acfa435eab165370167abaf7a874f44543998d5259af6242eb4bbe6e2c5f6`  
		Last Modified: Thu, 16 Jul 2026 17:59:30 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-php8.5-apache` - unknown; unknown

```console
$ docker pull wordpress@sha256:01906d41e0929590f4d393952f74ff0f88879038e1dc41b9ac5ee67dbd8449bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8854618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5cf4e2fcb4deff60dbcb1a0dde2abbbfbebf164f48f125433c3a5a6bcb45da4`

```dockerfile
```

-	Layers:
	-	`sha256:43b103a8cd1c46b66838e348bb33e9f824c40ac4179d98cc5c5bbfdf54d52e41`  
		Last Modified: Thu, 16 Jul 2026 17:59:26 GMT  
		Size: 8.8 MB (8790059 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f62989c57bb00c3e15a4f0fb534abb6babeade35e4f971ca488d0afb276a7dec`  
		Last Modified: Thu, 16 Jul 2026 17:59:26 GMT  
		Size: 64.6 KB (64559 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-php8.5-apache` - linux; 386

```console
$ docker pull wordpress@sha256:27c29ccf8c16e0c3abbb326fdb5f406fbd1ac3d46e30f77c5593c578a314e246
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **278.0 MB (278032918 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ab8753fa9bc7e6ca4d62b479aad990da49215baff8966c45307b7fe3ee45207`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:21:42 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 14 Jul 2026 01:22:02 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 14 Jul 2026 01:22:02 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 01:22:02 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 14 Jul 2026 01:22:02 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 14 Jul 2026 01:22:02 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 14 Jul 2026 01:22:02 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 14 Jul 2026 01:22:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 14 Jul 2026 01:22:09 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 14 Jul 2026 01:22:09 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 14 Jul 2026 01:22:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:22:09 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:22:09 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 14 Jul 2026 01:22:09 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 14 Jul 2026 01:22:09 GMT
ENV PHP_VERSION=8.5.8
# Tue, 14 Jul 2026 01:22:09 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Tue, 14 Jul 2026 01:22:09 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Tue, 14 Jul 2026 01:22:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 14 Jul 2026 01:22:18 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:25:46 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 14 Jul 2026 01:25:46 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:25:46 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 14 Jul 2026 01:25:46 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Jul 2026 01:25:46 GMT
STOPSIGNAL SIGWINCH
# Tue, 14 Jul 2026 01:25:46 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:25:46 GMT
WORKDIR /var/www/html
# Tue, 14 Jul 2026 01:25:46 GMT
EXPOSE map[80/tcp:{}]
# Tue, 14 Jul 2026 01:25:46 GMT
CMD ["apache2-foreground"]
# Thu, 16 Jul 2026 17:57:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 17:58:51 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 16 Jul 2026 17:58:51 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Thu, 16 Jul 2026 17:58:51 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 16 Jul 2026 17:58:52 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Thu, 16 Jul 2026 17:58:54 GMT
RUN set -eux; 	version='7.1-beta1'; 	sha1='de8d2d764c716181a1e8bab701e959ceeba14269'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Thu, 16 Jul 2026 17:58:54 GMT
VOLUME [/var/www/html]
# Thu, 16 Jul 2026 17:58:54 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Thu, 16 Jul 2026 17:58:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 17:58:54 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Thu, 16 Jul 2026 17:58:54 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 17:58:54 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cd0d83b5610d2c81ed46ebf0d2750525211db4d5911f03d7923bcc629dc6240`  
		Last Modified: Tue, 14 Jul 2026 01:26:07 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fc1c597dc382d81516834cea8caf84e7d07315976bcf5e2a6459053e5840d80`  
		Last Modified: Tue, 14 Jul 2026 01:26:10 GMT  
		Size: 116.1 MB (116142591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:285cba7a6484b42bb7a157641a71345be764c9429886a3532e11f5a76f7d2478`  
		Last Modified: Tue, 14 Jul 2026 01:26:07 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc583c6d8b635a8b1ae5e1dacc7a1a2ea0ca334f3e543e1e4d5c981f41bca55d`  
		Last Modified: Tue, 14 Jul 2026 01:26:07 GMT  
		Size: 4.5 MB (4459359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cabe0a5f70c9eb2dc886298512308ddb8b10591fac3aa231f4c44b4705294ac9`  
		Last Modified: Tue, 14 Jul 2026 01:26:08 GMT  
		Size: 433.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:418d9962906d615a2dd0e88a7cc72360ad7d7efc11e45e5369a69994cbefbd1f`  
		Last Modified: Tue, 14 Jul 2026 01:26:08 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fd13b251d928368a1e2e4cbac2e06a08c140290b7c4d2442422bbcdfce45c08`  
		Last Modified: Tue, 14 Jul 2026 01:26:09 GMT  
		Size: 14.6 MB (14575580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24c114b4f4cf6d298eb3dabb06dd4a0e65b89cdca2422541382e59e7b589dec8`  
		Last Modified: Tue, 14 Jul 2026 01:26:10 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cf6657fdcdd91b2da6f50f07a58e4d0434bbc94876f29e016d2b119e22e33f8`  
		Last Modified: Tue, 14 Jul 2026 01:26:10 GMT  
		Size: 15.5 MB (15530553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5470be63b1be7e549cf653bef0972410113405b1c3ea9a383c99b9ed5ba42cc5`  
		Last Modified: Tue, 14 Jul 2026 01:26:11 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b71b0fd3cde3c02cc858b9dc3efc823dc56bd8c979c5847267d46732cb65ac9a`  
		Last Modified: Tue, 14 Jul 2026 01:26:11 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ec0535d05a0e48e717ecde450814fa17b0433baa35165889bdb7ff30c47d93`  
		Last Modified: Tue, 14 Jul 2026 01:26:12 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca0b6203047b12d506865e42e0b52028ae72d978b1534ae61f9bc8d2271595cc`  
		Last Modified: Thu, 16 Jul 2026 17:59:12 GMT  
		Size: 32.4 MB (32404757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13794db5a653e1712dbff1a2beb53663672012de538bc8c4fb5502f3252ad382`  
		Last Modified: Thu, 16 Jul 2026 17:59:12 GMT  
		Size: 28.1 MB (28060119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5148642cf8315eeec543a257ba6b49fe08a76468f7df4751eedcbf8aa6f3a1bc`  
		Last Modified: Thu, 16 Jul 2026 17:59:11 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58112a2952f5381c75e6eaf8846c4009712b4aca32a4810bb57753679007eb00`  
		Last Modified: Thu, 16 Jul 2026 17:59:11 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24e0af64c713984503bec7f8ddff684c98dad32cbefbe811b357a44194b0c36f`  
		Last Modified: Thu, 16 Jul 2026 17:59:12 GMT  
		Size: 18.8 KB (18804 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94d3512cee9387f9793f7206804c26311e1eb82f74d4e9614c087949e6b704f6`  
		Last Modified: Thu, 16 Jul 2026 17:59:13 GMT  
		Size: 35.5 MB (35534263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dde0613730c6ff17e4dfa28bcd004bf8512de387b4d105e8773459f2c67354c7`  
		Last Modified: Thu, 16 Jul 2026 17:59:13 GMT  
		Size: 2.4 KB (2438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3830167d9b091e3d6596e61318e87eef407936dbf8fc6af1f2dbf242095fc82d`  
		Last Modified: Thu, 16 Jul 2026 17:59:13 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa70b43de4b276841b8af592005d2219021e41cea6d5352307b742c34da6775b`  
		Last Modified: Thu, 16 Jul 2026 17:59:14 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-php8.5-apache` - unknown; unknown

```console
$ docker pull wordpress@sha256:c99275c2cf528d0ad4d482079f6990bb8629fae4644baf5998ed6e9ff4e90b53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8730803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d08501d3a0355f294b98920a17014b7efe1aebf6de4a3c2bfb9d8a7f9d8e027c`

```dockerfile
```

-	Layers:
	-	`sha256:264b7cbff311dd2c35c8a0af0cc0550cb2d3fcacf2a3041fa537812df863e565`  
		Last Modified: Thu, 16 Jul 2026 17:59:11 GMT  
		Size: 8.7 MB (8666551 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9aac596a20db33d78b6a4ed23a10cab6d5946a04e7c3510d7e7821a57d6137fc`  
		Last Modified: Thu, 16 Jul 2026 17:59:10 GMT  
		Size: 64.3 KB (64252 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-php8.5-apache` - linux; ppc64le

```console
$ docker pull wordpress@sha256:3cf483b1de9359733ad19e248b9c614df21649e15690d5a26e666f05b3d4d3ee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **269.8 MB (269765767 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b7bc2f981588ecc69309a443498824a2c36023c74696a26230df78e10ef67f29`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 20:31:26 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 02 Jul 2026 20:32:17 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 02 Jul 2026 20:32:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 02 Jul 2026 20:32:17 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:32:18 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:32:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 02 Jul 2026 20:32:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 02 Jul 2026 20:32:35 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 02 Jul 2026 20:32:36 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 02 Jul 2026 20:32:36 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 02 Jul 2026 20:32:36 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:32:36 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:32:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:32:36 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 02 Jul 2026 20:32:36 GMT
ENV PHP_VERSION=8.5.8
# Thu, 02 Jul 2026 20:32:36 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Thu, 02 Jul 2026 20:32:36 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:46:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 06 Jul 2026 16:46:11 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:51:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 16:51:27 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:51:27 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 16:51:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 16:51:27 GMT
STOPSIGNAL SIGWINCH
# Mon, 06 Jul 2026 16:51:28 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:51:28 GMT
WORKDIR /var/www/html
# Mon, 06 Jul 2026 16:51:28 GMT
EXPOSE map[80/tcp:{}]
# Mon, 06 Jul 2026 16:51:28 GMT
CMD ["apache2-foreground"]
# Mon, 06 Jul 2026 17:25:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 17:30:06 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Mon, 06 Jul 2026 17:30:06 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Mon, 06 Jul 2026 17:30:06 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Mon, 06 Jul 2026 17:30:07 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Mon, 06 Jul 2026 17:31:03 GMT
RUN set -eux; 	version='7.0.1-RC1'; 	sha1='c524fde3ff16aa637dffcb5b2d26458e9e361f66'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Mon, 06 Jul 2026 17:31:03 GMT
VOLUME [/var/www/html]
# Mon, 06 Jul 2026 17:31:03 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Mon, 06 Jul 2026 17:31:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 17:31:04 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Mon, 06 Jul 2026 17:31:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 06 Jul 2026 17:31:04 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:639e1c13483ea279c94219be2736856262d8dd2efeff3e6d309f11a66aba21fb`  
		Last Modified: Wed, 24 Jun 2026 00:30:29 GMT  
		Size: 33.6 MB (33606388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79146aaf75bacd4b3c55a752df5f8234d35627fbc30576e65b3be30bfbd2c6a9`  
		Last Modified: Thu, 02 Jul 2026 20:38:08 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8acc11b28693a88f7c6f1444f2ab7e051094596d2477e79ff3ea4cf5b2725c24`  
		Last Modified: Thu, 02 Jul 2026 20:38:13 GMT  
		Size: 109.6 MB (109599046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8bbb900db0dd376834f4e1a0e8cb61354c8940dee3423feeb618a379c7876fb`  
		Last Modified: Thu, 02 Jul 2026 20:38:08 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9a4260dee62432bdfdd3d73b03a72fdca02854ed7e84f1026cc6d34b8993f83`  
		Last Modified: Thu, 02 Jul 2026 20:38:21 GMT  
		Size: 4.9 MB (4883610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16c3878b41c59a45de0ecf79c6ae623fc169ff63be3617874b5b126e527ef618`  
		Last Modified: Thu, 02 Jul 2026 20:38:20 GMT  
		Size: 432.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3febe6d2db22efb0a95d78324b834b8e0bba172a58670d3ba73a743f9e27000c`  
		Last Modified: Thu, 02 Jul 2026 20:38:20 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff8c16b1c01a4558c3cea0b0d95fdc56ca8ed8dbb3f364f02cfc4c01594da405`  
		Last Modified: Mon, 06 Jul 2026 16:51:52 GMT  
		Size: 14.6 MB (14590886 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a222d707e91c1dea8555d3f3da7257c3c253ad71a5a639320f124c4640153744`  
		Last Modified: Mon, 06 Jul 2026 16:51:35 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfe75a55247fc451be540bc1b9eb8ecbb40cad498d25f229f485aac372d97feb`  
		Last Modified: Mon, 06 Jul 2026 16:51:52 GMT  
		Size: 15.2 MB (15165873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f76e87fcb074e03f48fdadea16dfa3a4f6ce76490af7061ad3d873535c3618df`  
		Last Modified: Mon, 06 Jul 2026 16:51:52 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eb5d41f8a2069c055adf44487c557556b8df9d81d8b52bd96c504e68198247e`  
		Last Modified: Mon, 06 Jul 2026 16:51:52 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1abef3f384579cfcd6d8b23bfebb3f130b78b66606cf0f4f0f682d43aeb2f6e`  
		Last Modified: Mon, 06 Jul 2026 16:51:53 GMT  
		Size: 895.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06735d0bc6b1a6c5adb35455d4820ccb4c8545f0250170b8417fc30b851e9814`  
		Last Modified: Mon, 06 Jul 2026 17:30:49 GMT  
		Size: 33.0 MB (32953987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14e2273ea4d5b3059436711543cb4b780fbaffe4c8418334b57f2dc70f7bccac`  
		Last Modified: Mon, 06 Jul 2026 17:30:49 GMT  
		Size: 29.3 MB (29284868 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51b1b6d402336c82afc0c0acced9495ead2faa8dfb0b8e5ff9b5a687d462b0f3`  
		Last Modified: Mon, 06 Jul 2026 17:30:47 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f165198329fe348397a37ad38b092e8ad666ab1f496f557166a42715b90af71`  
		Last Modified: Mon, 06 Jul 2026 17:30:47 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7358319ba59267d0df2bbe660a134029df9879a8a47e8903f2eea0743c77249b`  
		Last Modified: Mon, 06 Jul 2026 17:30:49 GMT  
		Size: 18.8 KB (18794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb36c339807e4c260f0d85395d41e1d740c27b9f6dc5190ea2eec9f00e5e9487`  
		Last Modified: Mon, 06 Jul 2026 17:31:32 GMT  
		Size: 29.7 MB (29651690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eff34ade43a79e20f7c0df8b1486453ea5ca70fab177d15fd349bb9207b79881`  
		Last Modified: Mon, 06 Jul 2026 17:31:31 GMT  
		Size: 2.4 KB (2440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef04cc99c0c9051fcd4bb2dacc9c6fab3a9c122cf4da61ea133458cee2ca5ce6`  
		Last Modified: Mon, 06 Jul 2026 17:31:32 GMT  
		Size: 1.8 KB (1768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d14e88cdecd5df5670e660854f10ef7a062e1735435503bc57a8ec1a904ddd0`  
		Last Modified: Mon, 06 Jul 2026 17:31:32 GMT  
		Size: 199.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-php8.5-apache` - unknown; unknown

```console
$ docker pull wordpress@sha256:56d9070ca11049dd6f7503e13ed403a54a836319bfe606c4c7d25776a825e346
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8759309 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f22385e8f495e4f737206c78130e37d2e33c1978cfddba15eb0e12cc3865248b`

```dockerfile
```

-	Layers:
	-	`sha256:1723bcebdd6db697e186af9f68da69e831af94cf83295cd425896f1044a6b3c9`  
		Last Modified: Mon, 06 Jul 2026 17:31:32 GMT  
		Size: 8.7 MB (8694234 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b66bdcf86c901d0e4d550bea74d693b28d7db4a2a88ebf721a66c93d0fba5ad`  
		Last Modified: Mon, 06 Jul 2026 17:31:31 GMT  
		Size: 65.1 KB (65075 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-php8.5-apache` - linux; riscv64

```console
$ docker pull wordpress@sha256:b2c5abeb70cc9660fec70a1b968a9998c81bd0ff6330ee49c03e5391079cf052
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.7 MB (294676155 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e547248829e4a415c66a2c870da8694a42e044da5e47f0a98c63cc93730774ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1782172800'
# Thu, 25 Jun 2026 03:10:43 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 25 Jun 2026 03:12:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 25 Jun 2026 03:12:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 25 Jun 2026 03:12:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 25 Jun 2026 03:12:45 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 25 Jun 2026 03:12:45 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 25 Jun 2026 03:12:45 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 25 Jun 2026 04:17:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 25 Jun 2026 04:17:56 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 25 Jun 2026 04:17:57 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 25 Jun 2026 04:17:57 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 25 Jun 2026 04:17:57 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 25 Jun 2026 04:17:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 25 Jun 2026 04:17:57 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 25 Jun 2026 04:17:57 GMT
ENV PHP_VERSION=8.5.8
# Thu, 25 Jun 2026 04:17:57 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Thu, 25 Jun 2026 04:17:57 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 17:49:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 06 Jul 2026 17:49:50 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 18:47:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 18:47:12 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 18:47:13 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 18:47:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 18:47:13 GMT
STOPSIGNAL SIGWINCH
# Mon, 06 Jul 2026 18:47:13 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 18:47:13 GMT
WORKDIR /var/www/html
# Mon, 06 Jul 2026 18:47:13 GMT
EXPOSE map[80/tcp:{}]
# Mon, 06 Jul 2026 18:47:13 GMT
CMD ["apache2-foreground"]
# Tue, 07 Jul 2026 00:28:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 07 Jul 2026 00:53:05 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 07 Jul 2026 00:53:05 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Tue, 07 Jul 2026 00:53:06 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 07 Jul 2026 00:53:07 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Tue, 07 Jul 2026 01:29:00 GMT
RUN set -eux; 	version='7.0.1-RC1'; 	sha1='c524fde3ff16aa637dffcb5b2d26458e9e361f66'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Tue, 07 Jul 2026 01:29:01 GMT
VOLUME [/var/www/html]
# Tue, 07 Jul 2026 01:29:01 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Tue, 07 Jul 2026 01:29:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 01:29:01 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Tue, 07 Jul 2026 01:29:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 07 Jul 2026 01:29:01 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:58bface994ba631e609596a2ca5032d9d75de27f1b6476034b581e226205adab`  
		Last Modified: Wed, 24 Jun 2026 03:41:42 GMT  
		Size: 28.3 MB (28282378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5857a11081278c6794a11415cb81a403d5e56a1e98d5a05a474e4751b6bbbbab`  
		Last Modified: Thu, 25 Jun 2026 04:15:49 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51f64aa12de76796ba620c1f61dfbf00595d86b22e83c70e23ab80e22f6f224c`  
		Last Modified: Thu, 25 Jun 2026 04:16:17 GMT  
		Size: 146.6 MB (146585183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d75d48c7e93a7ac2ea8e95b78d618385a5865f4b0674a6016d1f7a6e51225d7c`  
		Last Modified: Thu, 25 Jun 2026 04:15:50 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e95831264abc60a3f07564bb5393bf0e76a18c06fc1f7da49e2dd9340443ceb1`  
		Last Modified: Thu, 25 Jun 2026 05:18:49 GMT  
		Size: 4.0 MB (4031691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d90b8452a4ae99b2c1ea4b5be2c73f7ee19e4f5bfff9df4094f6c977d9ccbc33`  
		Last Modified: Thu, 25 Jun 2026 05:18:48 GMT  
		Size: 450.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d22038771f1f4ac1ae52191f35203cab88f8acf6df4f9bb0fe74ee00e8870a10`  
		Last Modified: Thu, 25 Jun 2026 05:18:48 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc1947999d222c9ab58e896faac99751df2e632a6be7761d0f561590b4fdafd4`  
		Last Modified: Mon, 06 Jul 2026 18:50:27 GMT  
		Size: 14.6 MB (14590914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ec804618d296d396712434415c2d9cd37b154fede3877654e928966c81840d9`  
		Last Modified: Mon, 06 Jul 2026 18:50:22 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28fc67ea78a0f428fc521a2766e441251db76e63aff563b00eaa93d2ca2f39c2`  
		Last Modified: Mon, 06 Jul 2026 18:50:27 GMT  
		Size: 14.2 MB (14221012 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95b262caf316285a77f0a426069ad450c8230bbe4a67002b35951286f0ae2348`  
		Last Modified: Mon, 06 Jul 2026 18:50:22 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7f433e334111d9ba5dcba0b2f207de29d3b538dd4e62c326d3ed12df9d8237a`  
		Last Modified: Mon, 06 Jul 2026 18:50:25 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40f4ee49b7a41c0d172d50376a4f91e67b993c9ce56ff7b71246273c05744f49`  
		Last Modified: Mon, 06 Jul 2026 18:50:25 GMT  
		Size: 894.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf403aa4b67dbe946ef6fa203b5879a27fe536e562401ee4f178b14ed805e7a5`  
		Last Modified: Tue, 07 Jul 2026 00:57:59 GMT  
		Size: 30.5 MB (30539676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f370817fb6a23654cf284f30deb4a76f88d296db8bcb7e1c5dd294eb08411c4`  
		Last Modified: Tue, 07 Jul 2026 00:57:58 GMT  
		Size: 26.7 MB (26744170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98bf33b366f686dbd55d3836e3c2a6cebda049aed77c6083ad2f5df5b840114c`  
		Last Modified: Tue, 07 Jul 2026 00:57:47 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33dcc5c9912a195f8133a98eace5ee14e8447d112e5c8851c27ca16402ede191`  
		Last Modified: Tue, 07 Jul 2026 00:57:47 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84af0a885d047a82c66e911bc0e99ee7f1762933cdf55cb57de18b68ce1cbb19`  
		Last Modified: Tue, 07 Jul 2026 00:57:49 GMT  
		Size: 18.8 KB (18818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:959e20747aec3d77e47cf2b703cc44a0afcf71ce60c6e255600b2ce0bf332f19`  
		Last Modified: Tue, 07 Jul 2026 01:33:27 GMT  
		Size: 29.7 MB (29651677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52e6ffb8f1eb65d3bd832cef94b9ec93e02cbc9e4a610d0ea05ebf539ca66340`  
		Last Modified: Tue, 07 Jul 2026 01:33:22 GMT  
		Size: 2.4 KB (2438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd7b85c87d068e2bfb63d877e6e1162456d003312bb7e562ca9d223f1f29e7ce`  
		Last Modified: Tue, 07 Jul 2026 01:33:21 GMT  
		Size: 1.8 KB (1768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11c65d6aae2d99b4e1a4fd7c4bb9c96653dadf06f7abaaf052e456acd469a835`  
		Last Modified: Tue, 07 Jul 2026 01:33:22 GMT  
		Size: 200.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-php8.5-apache` - unknown; unknown

```console
$ docker pull wordpress@sha256:e182cd584cab3ca0941ed9e47fc9906d0e20154e95c4ce2f7b354d6e09aa6b82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8824177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b0f3dda094cf418a0085157655a54fccd8e524e2799cb09e6740cb56b96aa77`

```dockerfile
```

-	Layers:
	-	`sha256:1ebb849d098ef66abb19d2bc8f24f1e76ab86eb750a4e581a9da45f3823c7b08`  
		Last Modified: Tue, 07 Jul 2026 01:33:23 GMT  
		Size: 8.8 MB (8759101 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1bea6393fff377aef11670df2b9659aed1292c8b6f0628ff8fb44d5f40314e8e`  
		Last Modified: Tue, 07 Jul 2026 01:33:21 GMT  
		Size: 65.1 KB (65076 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-php8.5-apache` - linux; s390x

```console
$ docker pull wordpress@sha256:4969fa92fe7900d459d42d5cc1b9c2256b1bcf89d7a702fee8772e4f7a7a577c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.1 MB (250098618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c295dd0d075c08e4e06b02618aa265acbfd9fb4d32bb45f8156503944ee19591`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:26:35 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 14 Jul 2026 01:27:05 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 14 Jul 2026 01:27:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 01:27:05 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 14 Jul 2026 01:27:06 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 14 Jul 2026 01:27:06 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 14 Jul 2026 01:27:06 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 14 Jul 2026 01:27:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 14 Jul 2026 01:27:15 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 14 Jul 2026 01:27:16 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 14 Jul 2026 01:27:16 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:27:16 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:27:16 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 14 Jul 2026 01:27:16 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 14 Jul 2026 01:27:16 GMT
ENV PHP_VERSION=8.5.8
# Tue, 14 Jul 2026 01:27:16 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Tue, 14 Jul 2026 01:27:16 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Tue, 14 Jul 2026 01:40:58 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 14 Jul 2026 01:41:00 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:46:56 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 14 Jul 2026 01:46:57 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:46:58 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 14 Jul 2026 01:46:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Jul 2026 01:46:58 GMT
STOPSIGNAL SIGWINCH
# Tue, 14 Jul 2026 01:46:59 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:46:59 GMT
WORKDIR /var/www/html
# Tue, 14 Jul 2026 01:46:59 GMT
EXPOSE map[80/tcp:{}]
# Tue, 14 Jul 2026 01:46:59 GMT
CMD ["apache2-foreground"]
# Thu, 16 Jul 2026 18:02:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 18:05:30 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 16 Jul 2026 18:05:30 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Thu, 16 Jul 2026 18:05:31 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 16 Jul 2026 18:05:31 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Thu, 16 Jul 2026 18:05:32 GMT
RUN set -eux; 	version='7.1-beta1'; 	sha1='de8d2d764c716181a1e8bab701e959ceeba14269'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Thu, 16 Jul 2026 18:05:33 GMT
VOLUME [/var/www/html]
# Thu, 16 Jul 2026 18:05:33 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Thu, 16 Jul 2026 18:05:33 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 18:05:33 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Thu, 16 Jul 2026 18:05:33 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 18:05:33 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:8b525274d0fff49aeaa3328d03c6a8b56b3b80d0a7a58034d99e75f1e2dad806`  
		Last Modified: Tue, 14 Jul 2026 00:17:35 GMT  
		Size: 29.8 MB (29846632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25799b78aff0ad181ae100c3dcd894705b8aa8fa6e85d00d5ba954f8834d52e9`  
		Last Modified: Tue, 14 Jul 2026 01:32:50 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:614aa0bb71fd864222d1a937cf49f6eb783e4a2387909ff9edc67dd5b25d94cb`  
		Last Modified: Tue, 14 Jul 2026 01:32:53 GMT  
		Size: 92.6 MB (92572411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8f091238432fd4922d015fedfb4d5c24e6289c2ec0e6e0c4e803b6e72e275be`  
		Last Modified: Tue, 14 Jul 2026 01:32:50 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb1c18ec043b60baa837c7dbc19f8d315a9cc152f11216d9c623bf68673d39e1`  
		Last Modified: Tue, 14 Jul 2026 01:32:50 GMT  
		Size: 4.3 MB (4332413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:063f419b3a756de6221381e4c99a1a7357c107ee6276d941f6268570219dcf4a`  
		Last Modified: Tue, 14 Jul 2026 01:32:52 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99ad752554daae6f4f9c49985de0172fdf70ca794ad965abc1399273d3a7ad6b`  
		Last Modified: Tue, 14 Jul 2026 01:32:52 GMT  
		Size: 481.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75940eb40aca1f467e6913aad9c2318af47c961c43cb5e233d347d79c785ba82`  
		Last Modified: Tue, 14 Jul 2026 01:47:41 GMT  
		Size: 14.6 MB (14575463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16be0aa94cf30ec49584afe3363caca0058766403e4dfbc85c9a68a024da066f`  
		Last Modified: Tue, 14 Jul 2026 01:47:35 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df2f18aa5c1cd6a6368e32434b9e543671ed6320e8a657d3bbcc5fe8fb5bf4b`  
		Last Modified: Tue, 14 Jul 2026 01:47:40 GMT  
		Size: 14.4 MB (14447633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae93739d9552c42b70d650b7e88a4f40c8259b5872305fdf8de87c02ac9a617b`  
		Last Modified: Tue, 14 Jul 2026 01:47:34 GMT  
		Size: 2.5 KB (2456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c26efef58c7ff49acd34426ec105a338c183087804891ac504fd6c0c2f323222`  
		Last Modified: Tue, 14 Jul 2026 01:47:40 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:720f1f2bfaf68c388675e45e77683fda1adc0688ab39bb752be4208fdb129e73`  
		Last Modified: Tue, 14 Jul 2026 01:47:40 GMT  
		Size: 887.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:218e7a128aac4ba1ba968bfeed353c0ba6a02d15ce2160bf309c743baa1d27d7`  
		Last Modified: Thu, 16 Jul 2026 18:06:04 GMT  
		Size: 31.4 MB (31398061 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:257c4a2f6011085cd1ca5066177eded917925fc96c14a9f8fff2dc4a6b288e1b`  
		Last Modified: Thu, 16 Jul 2026 18:06:04 GMT  
		Size: 27.4 MB (27362358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0afbfa285ae6d0da21fae9768643e034cd427e122c5e115f6694870bd74537b`  
		Last Modified: Thu, 16 Jul 2026 18:06:04 GMT  
		Size: 312.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9169c896e23799f6d023a1708e0d6b982622b1a6ed0f1f9a06e7ff264900fc`  
		Last Modified: Thu, 16 Jul 2026 18:06:03 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14b5c68835194bbab7c080175f31584afc41e72d48666f7a50650a740f6ad117`  
		Last Modified: Thu, 16 Jul 2026 18:06:05 GMT  
		Size: 18.8 KB (18792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fa3faa295be49547a3fa3a217f8d098c40e65aff5d535f0cfbfe6a95052ea94`  
		Last Modified: Thu, 16 Jul 2026 18:06:05 GMT  
		Size: 35.5 MB (35534283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dc2a759083bb1e642b3e8b0fe028805653e7317d51ccfee2b81df7cb979acd9`  
		Last Modified: Thu, 16 Jul 2026 18:06:06 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b8f130a274934cb2c754f024e4042a89f3bd440d39e440669de572f9149c08c`  
		Last Modified: Thu, 16 Jul 2026 18:06:06 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a8ca5bc8d5a7cf8ea1e581589c58c617dba2e2e203ff5d3ddd016531301c9a1`  
		Last Modified: Thu, 16 Jul 2026 18:06:06 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-php8.5-apache` - unknown; unknown

```console
$ docker pull wordpress@sha256:5c04fcdebf59b3bf0b150c8464710e9a27f6b7dd51e691cdd2d4d1a756b0e3db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8476991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:56e75e91bddb39c027478593ad8e16ad8be297ff3253872dc4f19c1ba2d64ae2`

```dockerfile
```

-	Layers:
	-	`sha256:0fbd4912d2744ea43b5f135d18cb1775698632f21719e7b30487e1b92ed73351`  
		Last Modified: Thu, 16 Jul 2026 18:06:04 GMT  
		Size: 8.4 MB (8412683 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:55ad4a02872a787b1976ebc4915ac7e7296e2908354ea73991ba7afd1fca2060`  
		Last Modified: Thu, 16 Jul 2026 18:06:03 GMT  
		Size: 64.3 KB (64308 bytes)  
		MIME: application/vnd.in-toto+json
