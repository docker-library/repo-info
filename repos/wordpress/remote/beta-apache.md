## `wordpress:beta-apache`

```console
$ docker pull wordpress@sha256:bc4bab2a174b52109a7f94aba58c88bcfc6fbe4f0a3d270f73a7244b27b10403
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

### `wordpress:beta-apache` - linux; amd64

```console
$ docker pull wordpress@sha256:f396bf7451b1d9df7b3827ef6b821fcfb5da035a0f6d2038984e72af1d5fe5d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **274.8 MB (274813214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3702823390a352c6cdda88f04c1d75e237d3b900bd921fe67f37ff4d0229d417`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:23:42 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 14 Jul 2026 01:23:58 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 14 Jul 2026 01:23:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 01:23:58 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 14 Jul 2026 01:23:58 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 14 Jul 2026 01:23:58 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 14 Jul 2026 01:23:58 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 14 Jul 2026 01:27:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 14 Jul 2026 01:27:08 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 14 Jul 2026 01:27:08 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 14 Jul 2026 01:27:08 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:27:08 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:27:08 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 14 Jul 2026 01:27:08 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 14 Jul 2026 01:27:08 GMT
ENV PHP_VERSION=8.3.32
# Tue, 14 Jul 2026 01:27:08 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Tue, 14 Jul 2026 01:27:08 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Tue, 14 Jul 2026 01:30:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 14 Jul 2026 01:30:09 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:32:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 14 Jul 2026 01:32:30 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:32:30 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 14 Jul 2026 01:32:30 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 14 Jul 2026 01:32:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Jul 2026 01:32:30 GMT
STOPSIGNAL SIGWINCH
# Tue, 14 Jul 2026 01:32:30 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:32:30 GMT
WORKDIR /var/www/html
# Tue, 14 Jul 2026 01:32:30 GMT
EXPOSE map[80/tcp:{}]
# Tue, 14 Jul 2026 01:32:30 GMT
CMD ["apache2-foreground"]
# Thu, 16 Jul 2026 17:55:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 17:57:13 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 16 Jul 2026 17:57:13 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Thu, 16 Jul 2026 17:57:13 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 16 Jul 2026 17:57:13 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Thu, 16 Jul 2026 17:57:16 GMT
RUN set -eux; 	version='7.1-beta1'; 	sha1='de8d2d764c716181a1e8bab701e959ceeba14269'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Thu, 16 Jul 2026 17:57:16 GMT
VOLUME [/var/www/html]
# Thu, 16 Jul 2026 17:57:16 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Thu, 16 Jul 2026 17:57:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 17:57:16 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Thu, 16 Jul 2026 17:57:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 17:57:16 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:062e450697faa5f02a3a74eba9864ee4d79bc9cfbd65769fc6cdff2c05c6a053`  
		Last Modified: Tue, 14 Jul 2026 00:14:56 GMT  
		Size: 29.8 MB (29780905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c83ca722545f310e4a1b34c5f1c39dd8d127308129447bbb75627d8c1a754f4`  
		Last Modified: Tue, 14 Jul 2026 01:26:52 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44386657f7940697f4653b79695ef528b2ee55fe80cce173276a3d7df7fc820c`  
		Last Modified: Tue, 14 Jul 2026 01:26:56 GMT  
		Size: 117.8 MB (117838927 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:037d650346c22f17db830e425848fe2622ec3db4e97bb8facdd1396ea148981e`  
		Last Modified: Tue, 14 Jul 2026 01:26:52 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca2fb142004d601173c4eb0c4e196faa5394b7358dbb30a80530564eda432c04`  
		Last Modified: Tue, 14 Jul 2026 01:29:52 GMT  
		Size: 4.2 MB (4229582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcfd475a43ebee20111f5911afe6467bd2c2fcf581cb9b695c365a175acf1a3c`  
		Last Modified: Tue, 14 Jul 2026 01:29:52 GMT  
		Size: 432.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51dcd84fc19db7d8bc983fa22472cd6a2af2e1dcea10e7dd21dc432396021ba4`  
		Last Modified: Tue, 14 Jul 2026 01:29:52 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c106e34f24f0c18ca47d21bcd78b6b647effa500449a929741e91ace82df36ae`  
		Last Modified: Tue, 14 Jul 2026 01:32:41 GMT  
		Size: 12.8 MB (12772533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89c9311450e929b76ac12b4006cf924b0dae959ac3e9d38a2b5178b270883421`  
		Last Modified: Tue, 14 Jul 2026 01:32:40 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca0a86e1fe83cd8962e17367f1dd244a3188b79e9fd75ef0d946e53d80756671`  
		Last Modified: Tue, 14 Jul 2026 01:32:41 GMT  
		Size: 11.7 MB (11715649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2a294cc6ea5597068d8b2f98096b99edca2603600afed10ecd82e4dc9c6f93a`  
		Last Modified: Tue, 14 Jul 2026 01:32:40 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39e8070c7837b7cb11c3db59841b846aeeb33fea46c2f63a7d07238e477f90b6`  
		Last Modified: Tue, 14 Jul 2026 01:32:42 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac333a3b680645c4c1d71a75c8b2e13b6b3729a04b340cc9d1b205c3318d066d`  
		Last Modified: Tue, 14 Jul 2026 01:32:42 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5edcad93d812efb33ea4caee3ba089921125c46199fea65582d226b7db622f2e`  
		Last Modified: Tue, 14 Jul 2026 01:32:43 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec0a8f48f1406238be2053694fd67ec9c2ee74787146650fbedb2534d0982f0`  
		Last Modified: Thu, 16 Jul 2026 17:57:35 GMT  
		Size: 33.0 MB (32956543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af3d640f2a669b1fe465c583b716318b16b9d8a65c9b99c054e33fcd443ae6cf`  
		Last Modified: Thu, 16 Jul 2026 17:57:35 GMT  
		Size: 30.0 MB (29955155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d2354bf2179e54e1074682a0c73c083ca59b53a92ce34b932e66085e1d03636`  
		Last Modified: Thu, 16 Jul 2026 17:57:34 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edb9d5d286d9aa67b77ca8b2854837ebc0a6358eb7cd92f26c16809cab3ef595`  
		Last Modified: Thu, 16 Jul 2026 17:57:34 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c8f03a91d0804f2fce3c59ac9d19af8afda69f5c0fc6c77cf7c36ef2112ad7f`  
		Last Modified: Thu, 16 Jul 2026 17:57:35 GMT  
		Size: 18.8 KB (18797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:085ef7134b17f580c3a2c3c9f00e0868c554a78ff9e65d4f402359d3bc455fd9`  
		Last Modified: Thu, 16 Jul 2026 17:57:36 GMT  
		Size: 35.5 MB (35534285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ed500fd9ed2cd8d6984eb24cd6a0770dbf8e6f19abe4faafd1b5b1f7d0129ad`  
		Last Modified: Thu, 16 Jul 2026 17:57:36 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41f26ef90b72af425b1d6ed41818aa68b66d5adff724dbb54e1652914cdaa400`  
		Last Modified: Thu, 16 Jul 2026 17:57:37 GMT  
		Size: 1.8 KB (1768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59875bc17fbd5de4731c1076a99f479e64244ecdc36c7936029ac92e8adadf47`  
		Last Modified: Thu, 16 Jul 2026 17:57:37 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-apache` - unknown; unknown

```console
$ docker pull wordpress@sha256:7743e07c05de7e119f0753fbcab6f24636312868c2deadc7d0d9e2c6b7ef1b89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8765728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40862f112818091eff0f4561df1d9bde535ddef462cd0f5159590399a2bcfe7b`

```dockerfile
```

-	Layers:
	-	`sha256:92e89753351ac0c8350c7530c8c1016fd81a2bf06a377720ff4f1c9a87910c60`  
		Last Modified: Thu, 16 Jul 2026 17:57:34 GMT  
		Size: 8.7 MB (8697330 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97030753ed19f07bf41edc418514fea47563450316ea7eb92aa10c71d0ff2bbc`  
		Last Modified: Thu, 16 Jul 2026 17:57:33 GMT  
		Size: 68.4 KB (68398 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-apache` - linux; arm variant v5

```console
$ docker pull wordpress@sha256:5565e71ad44b334b7676435d0381c0d31abc5a464fdb9d860a9d0b0da4fbda9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.3 MB (243337137 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa2fad64bf4e607552398e62f3ec75a7e956b01959d995927ed36612227e5d54`
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
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 14 Jul 2026 01:26:51 GMT
ENV PHP_VERSION=8.3.32
# Tue, 14 Jul 2026 01:26:51 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Tue, 14 Jul 2026 01:26:51 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Tue, 14 Jul 2026 01:38:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 14 Jul 2026 01:38:33 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:41:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 14 Jul 2026 01:41:39 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:41:39 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 14 Jul 2026 01:41:39 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 14 Jul 2026 01:41:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Jul 2026 01:41:39 GMT
STOPSIGNAL SIGWINCH
# Tue, 14 Jul 2026 01:41:39 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:41:39 GMT
WORKDIR /var/www/html
# Tue, 14 Jul 2026 01:41:39 GMT
EXPOSE map[80/tcp:{}]
# Tue, 14 Jul 2026 01:41:39 GMT
CMD ["apache2-foreground"]
# Thu, 16 Jul 2026 17:55:28 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 17:57:31 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 16 Jul 2026 17:57:31 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Thu, 16 Jul 2026 17:57:31 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 16 Jul 2026 17:57:31 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Thu, 16 Jul 2026 17:57:35 GMT
RUN set -eux; 	version='7.1-beta1'; 	sha1='de8d2d764c716181a1e8bab701e959ceeba14269'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Thu, 16 Jul 2026 17:57:35 GMT
VOLUME [/var/www/html]
# Thu, 16 Jul 2026 17:57:35 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Thu, 16 Jul 2026 17:57:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 17:57:35 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Thu, 16 Jul 2026 17:57:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 17:57:35 GMT
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
	-	`sha256:6366586b8d9d790757985248801b32a6202be2d4b0c2d8871f9acee7f1c3c0ae`  
		Last Modified: Tue, 14 Jul 2026 01:41:50 GMT  
		Size: 12.8 MB (12770042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad20642af1da641a771ad4bed5c0544e4fa6920fa72de017dda65b58b74e3a14`  
		Last Modified: Tue, 14 Jul 2026 01:41:49 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:489d93f3f91e5f531bdc29a8767779f8918adfa3033a202182dbfab2b8606ff8`  
		Last Modified: Tue, 14 Jul 2026 01:41:50 GMT  
		Size: 10.6 MB (10603729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65bd36debc15ef57ec627843e533fca8471c59aa5c8d166fe86c83cefcca96a2`  
		Last Modified: Tue, 14 Jul 2026 01:41:49 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d41bfbf002b7be83db045d17ecfa8660bdb6061bfdd0870d50a2613ecf2ad35`  
		Last Modified: Tue, 14 Jul 2026 01:41:50 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:251f833781f6d6b133ab5fde158a5defa9f246ec6228f2f61fa3d50fbe54afe5`  
		Last Modified: Tue, 14 Jul 2026 01:41:50 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34ea0c27dbf6e9b4864404816a9529b92b1927cb68c305d6d6a5a154a9f9cca4`  
		Last Modified: Tue, 14 Jul 2026 01:41:51 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17b34da1f3b1210bf4102fa2087be84980def3ac7f84f9e88b352f3b90f71af2`  
		Last Modified: Thu, 16 Jul 2026 17:57:54 GMT  
		Size: 30.1 MB (30142740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19fce1f77cdd2302c7b0124016acaaf1ec87b9cca61b11afb413e87b30cf9d9d`  
		Last Modified: Thu, 16 Jul 2026 17:57:54 GMT  
		Size: 27.3 MB (27324133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b10545a71c2a0c7c423d0937212a9c1a8ed74082aa94743055ef04640cb73d3`  
		Last Modified: Thu, 16 Jul 2026 17:57:53 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90996ded846b9cc3c2f0959461bf5be909d6fb89f24d23d5def80a7ae72a87cb`  
		Last Modified: Thu, 16 Jul 2026 17:57:53 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9330bc048b834d5060ea0f40be72facc9d687cab88f204b53e3065618b463281`  
		Last Modified: Thu, 16 Jul 2026 17:57:54 GMT  
		Size: 18.8 KB (18793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e0420cb4778b9918018e290daa25a5b761af47b159d6750138e0c6bfec95843`  
		Last Modified: Thu, 16 Jul 2026 17:57:55 GMT  
		Size: 35.5 MB (35534285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:227a3e58aa427e2ac2d4d30faa7ea8a6f5f8bf4fceb1868768653be0d97189d3`  
		Last Modified: Thu, 16 Jul 2026 17:57:55 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b897e0068d2462172718b9aa4810bf56e4895fef3704422beb6a68fb0d6e3d18`  
		Last Modified: Thu, 16 Jul 2026 17:57:55 GMT  
		Size: 1.8 KB (1768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f630c668974480b4f3f077358e59aae00cacaf25d5c1d80e6e53f9553a22723`  
		Last Modified: Thu, 16 Jul 2026 17:57:56 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-apache` - unknown; unknown

```console
$ docker pull wordpress@sha256:225f91f5e30212d7fe07690bb4a12b7c01ba7fe17ca9bf8cc16967813f15f9f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.6 MB (8559596 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95ec3fbdf7f8430a028f3e6a5cd1792c4c4a3d1ed853eb8502a88d479b80e4c1`

```dockerfile
```

-	Layers:
	-	`sha256:b1afce2a13b67efeeb3154c325f98705b9219560d5baee1ee7765f2e661071f1`  
		Last Modified: Thu, 16 Jul 2026 17:57:53 GMT  
		Size: 8.5 MB (8490953 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce262fce61dd4fc8ac8e9f714effdaf2d587441a9792c2cd24001838127454a3`  
		Last Modified: Thu, 16 Jul 2026 17:57:52 GMT  
		Size: 68.6 KB (68643 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-apache` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:747b0fbe2cb901f4d8575286e8522fecb26e1798595aee770471b5d2b0acb4bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.4 MB (229406072 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8577c5b8e56312941da3c2dae2cc1675e1257d0cdf946ca024a745aa3278beef`
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
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 14 Jul 2026 01:31:20 GMT
ENV PHP_VERSION=8.3.32
# Tue, 14 Jul 2026 01:31:20 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Tue, 14 Jul 2026 01:31:20 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Tue, 14 Jul 2026 01:42:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 14 Jul 2026 01:42:08 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:44:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 14 Jul 2026 01:44:52 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:44:52 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 14 Jul 2026 01:44:52 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 14 Jul 2026 01:44:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Jul 2026 01:44:52 GMT
STOPSIGNAL SIGWINCH
# Tue, 14 Jul 2026 01:44:52 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:44:52 GMT
WORKDIR /var/www/html
# Tue, 14 Jul 2026 01:44:52 GMT
EXPOSE map[80/tcp:{}]
# Tue, 14 Jul 2026 01:44:52 GMT
CMD ["apache2-foreground"]
# Thu, 16 Jul 2026 17:58:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 18:00:02 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 16 Jul 2026 18:00:02 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Thu, 16 Jul 2026 18:00:02 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 16 Jul 2026 18:00:02 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Thu, 16 Jul 2026 18:00:05 GMT
RUN set -eux; 	version='7.1-beta1'; 	sha1='de8d2d764c716181a1e8bab701e959ceeba14269'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Thu, 16 Jul 2026 18:00:05 GMT
VOLUME [/var/www/html]
# Thu, 16 Jul 2026 18:00:05 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Thu, 16 Jul 2026 18:00:05 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 18:00:05 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Thu, 16 Jul 2026 18:00:05 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 18:00:05 GMT
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
	-	`sha256:0f082749738ee356d7a9615141a3e39fc7e9e497b999caf9de9aab75e644eb21`  
		Last Modified: Tue, 14 Jul 2026 01:45:03 GMT  
		Size: 12.8 MB (12770117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aab2a8f84a5c723c8164eb22b2546b183cd553008b09c4402c2e60071f989a1`  
		Last Modified: Tue, 14 Jul 2026 01:45:02 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05006f5d3feba6679e5ed3ab8ddb9047a036de241d74a27c05b1523d16c93304`  
		Last Modified: Tue, 14 Jul 2026 01:45:03 GMT  
		Size: 10.1 MB (10073986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18d3b4fe42c20ea7f0ccd521bbe6e25d84f4aa955c37406384177666ef42a762`  
		Last Modified: Tue, 14 Jul 2026 01:45:02 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:909c9bb5a950ca5218a3bdda8b24e414276898545e65eaa213edcb9819c9ba2a`  
		Last Modified: Tue, 14 Jul 2026 01:45:04 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12d0296c9c0e4c3d7e803c96a876d6570d8173a3b7748aed6ffb2fcb1ca372d0`  
		Last Modified: Tue, 14 Jul 2026 01:45:04 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e73a9256d951a755432962e56d0d6a6100d405454f2a35fd2a58ec8a10cdbb9`  
		Last Modified: Tue, 14 Jul 2026 01:45:04 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36caca887a40a144daa58caa2bdae6051c78342488e0968bf601f284c9ff090d`  
		Last Modified: Thu, 16 Jul 2026 18:00:24 GMT  
		Size: 29.0 MB (29041869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:968298a85c6b2e038d722e55b60de3a67aa1f48ebaa29255e04f2907a60d83c4`  
		Last Modified: Thu, 16 Jul 2026 18:00:24 GMT  
		Size: 25.7 MB (25735152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d517acf28211b4f6e9dfc519fd8087c201cc882161c026f43c1fa7b95decbf88`  
		Last Modified: Thu, 16 Jul 2026 18:00:23 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83df2410825a722f7675a26f425b356a532acb0b3edf0e2e42bd5e4c15397117`  
		Last Modified: Thu, 16 Jul 2026 18:00:23 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37941f51571236daa8230f0f6425b7564ac274cd6cc8593be5398817e7ee6d32`  
		Last Modified: Thu, 16 Jul 2026 18:00:24 GMT  
		Size: 18.8 KB (18795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08be64cbaf1df84f780e773ec8b241b1ae12b9e13aa6d24ea3f86bee3966902b`  
		Last Modified: Thu, 16 Jul 2026 18:00:26 GMT  
		Size: 35.5 MB (35534284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be64217f1fc29ab083fb0171c39deaf8b30a1c211eafc8c608690d862133608`  
		Last Modified: Thu, 16 Jul 2026 18:00:27 GMT  
		Size: 2.4 KB (2440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b231e29a58a2350a26cbcce94e993c3d221a06257b6a2c1762f3a90c13023f79`  
		Last Modified: Thu, 16 Jul 2026 18:00:25 GMT  
		Size: 1.8 KB (1771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e47a22bfc94fcc0c8038bf191d0c71825fc9328a15f1ae1cb091c13d243752ab`  
		Last Modified: Thu, 16 Jul 2026 18:00:25 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-apache` - unknown; unknown

```console
$ docker pull wordpress@sha256:288087aa8edce2bf25d820b82769c2332d8d1dcc31f81603c66f4093dbafc198
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.6 MB (8564430 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c985d7745402833472e3928704b1b8d4e1fb30492edf077647599757177b0018`

```dockerfile
```

-	Layers:
	-	`sha256:7b88cc1fe4349dc99ca3599248e9b989dbf1ab3dd9c5ff7a7b133e6e859aec69`  
		Last Modified: Thu, 16 Jul 2026 18:00:22 GMT  
		Size: 8.5 MB (8495787 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f5833106426e638406f53c6ecb21942592fc9389f0b60d8419fcd14f5ec2c175`  
		Last Modified: Thu, 16 Jul 2026 18:00:23 GMT  
		Size: 68.6 KB (68643 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-apache` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:65fb492380d960f3e52c0d25e30e44df80fdd31d007757d32b7ec2e0c12702b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **267.4 MB (267420382 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73064d99e87ca4a3a01cf95aae8bc1f8fb95d9d9afa2ad2721ba82f4178b96da`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:22:59 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 14 Jul 2026 01:23:16 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 14 Jul 2026 01:23:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 01:23:16 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 14 Jul 2026 01:23:16 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 14 Jul 2026 01:23:16 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 14 Jul 2026 01:23:16 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 14 Jul 2026 01:30:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 14 Jul 2026 01:30:58 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 14 Jul 2026 01:30:58 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 14 Jul 2026 01:30:58 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:30:58 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:30:58 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 14 Jul 2026 01:30:58 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 14 Jul 2026 01:30:58 GMT
ENV PHP_VERSION=8.3.32
# Tue, 14 Jul 2026 01:30:58 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Tue, 14 Jul 2026 01:30:58 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Tue, 14 Jul 2026 01:31:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 14 Jul 2026 01:31:06 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:34:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 14 Jul 2026 01:34:55 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:34:55 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 14 Jul 2026 01:34:55 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 14 Jul 2026 01:34:55 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Jul 2026 01:34:55 GMT
STOPSIGNAL SIGWINCH
# Tue, 14 Jul 2026 01:34:55 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:34:55 GMT
WORKDIR /var/www/html
# Tue, 14 Jul 2026 01:34:55 GMT
EXPOSE map[80/tcp:{}]
# Tue, 14 Jul 2026 01:34:55 GMT
CMD ["apache2-foreground"]
# Thu, 16 Jul 2026 17:55:37 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 17:57:05 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 16 Jul 2026 17:57:05 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Thu, 16 Jul 2026 17:57:05 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 16 Jul 2026 17:57:06 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Thu, 16 Jul 2026 17:57:08 GMT
RUN set -eux; 	version='7.1-beta1'; 	sha1='de8d2d764c716181a1e8bab701e959ceeba14269'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Thu, 16 Jul 2026 17:57:08 GMT
VOLUME [/var/www/html]
# Thu, 16 Jul 2026 17:57:08 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Thu, 16 Jul 2026 17:57:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 17:57:08 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Thu, 16 Jul 2026 17:57:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 17:57:08 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:59f54fbcd984beca03fd8b78569fa57268ecf78d291c0b6fe1623c2467f5a075`  
		Last Modified: Tue, 14 Jul 2026 00:14:41 GMT  
		Size: 30.1 MB (30143705 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e216fc74098585b577a1acae06188ae703b73cd25c9c40d0eeba79a9e62ecd42`  
		Last Modified: Tue, 14 Jul 2026 01:26:36 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30af58a6e26f5caed9dbba271c53fbc9f031251d3ef72c21f62a7d9fac80ef6f`  
		Last Modified: Tue, 14 Jul 2026 01:26:39 GMT  
		Size: 110.2 MB (110169981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64c01cd6a9a9d5c1b8fda3864ecb2528a3b744de5905371cfaeed577432c17e9`  
		Last Modified: Tue, 14 Jul 2026 01:26:35 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c929578a15238816c08b6c7b7c4aa9ca4d175d362b036db8fc15b2d61af4738`  
		Last Modified: Tue, 14 Jul 2026 01:35:06 GMT  
		Size: 4.3 MB (4307934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5e16292736d6cf77031a6cd228ea2faf512170fb1d14dc9ed5295f4f122acc6`  
		Last Modified: Tue, 14 Jul 2026 01:35:06 GMT  
		Size: 438.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e647d2167d8bec4f62b7197afadc4e510230875231b04cc7d193edd414743ef2`  
		Last Modified: Tue, 14 Jul 2026 01:35:06 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9694660e19dcfac3edc5c3e5aa584b315e693bfb51832235bb41d526677f45c9`  
		Last Modified: Tue, 14 Jul 2026 01:35:07 GMT  
		Size: 12.8 MB (12772055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa5d7599dc25290b60c854c0a18f5dd70678d56a5e02201cc44fd84127ef8534`  
		Last Modified: Tue, 14 Jul 2026 01:35:07 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:185a05e049b87dffdfd84bb9a0b6c8fc56f2fa519028d2f5467af33471db77e2`  
		Last Modified: Tue, 14 Jul 2026 01:35:08 GMT  
		Size: 11.7 MB (11733946 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:975e7fb719b9ab7d845795748777af293f8458ae5548348532caede6e2611dd7`  
		Last Modified: Tue, 14 Jul 2026 01:35:08 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c95a4eaba184a9f3b776c0d6ab26ccfb97fd4b4b8162cdc15f51eb2e61b4fe6`  
		Last Modified: Tue, 14 Jul 2026 01:35:08 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e85d07ae0e8114e782c1739db50513bb968454eb0491a35787f37c01dbe2f817`  
		Last Modified: Tue, 14 Jul 2026 01:35:08 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cdc39169d7ec5ff92c8bfa354c25c32506df6704f425ffabaac9839dcbb52a0`  
		Last Modified: Tue, 14 Jul 2026 01:35:09 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa50d99d0320e22787637dc7c05b443f51986fa5beb7901987a6622dde395e8e`  
		Last Modified: Thu, 16 Jul 2026 17:57:27 GMT  
		Size: 34.5 MB (34469009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe589e7220cfaa398de5cec05c5652db9019e8d6561c0d95dd37713e0177ff2e`  
		Last Modified: Thu, 16 Jul 2026 17:57:27 GMT  
		Size: 28.3 MB (28259816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcac873782fedbe1531623b105aca813d06aac9300fd086a6287201d4a0e3fa3`  
		Last Modified: Thu, 16 Jul 2026 17:57:26 GMT  
		Size: 312.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a5c0ada93fdff1fa72215da064fd131e728ff366033114b8e48eb63d9900d31`  
		Last Modified: Thu, 16 Jul 2026 17:57:26 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0509ace83db275d19290d0f00065c7d3335e99b5dbb67a2ea35cf60c2d16687`  
		Last Modified: Thu, 16 Jul 2026 17:57:27 GMT  
		Size: 18.8 KB (18803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74b4ba36e9cf477e63e131b7f0ca2a65723290141d291fbcb45c1387a6a344cb`  
		Last Modified: Thu, 16 Jul 2026 17:57:28 GMT  
		Size: 35.5 MB (35534290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3ce998e03108661b3af9dd3bece54b15fddf78d44b93ce5c83c80f30bb5a6b2`  
		Last Modified: Thu, 16 Jul 2026 17:57:28 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6c1eadc29d4434e49ba5656f0f67887f538998bd3e21c4a8ff4db5b50fe33e`  
		Last Modified: Thu, 16 Jul 2026 17:57:29 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03da2e8526f544b7da445e2eee02bef4b2643f8eb02c3a1a346e745b096796f9`  
		Last Modified: Thu, 16 Jul 2026 17:57:29 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-apache` - unknown; unknown

```console
$ docker pull wordpress@sha256:cc6ac81c02c7394e85fe92a6be2eca1f4869a71b9fdacec2a8f632bea56ffc04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.9 MB (8862673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bc20a147b43d78864a4e231ae024c3fdc2a0ccbd16daeb156d0e18caf4d86de`

```dockerfile
```

-	Layers:
	-	`sha256:86db6a4b264816a927db8d27287fb99504f310fe9337bf254291298bed3a04ec`  
		Last Modified: Thu, 16 Jul 2026 17:57:26 GMT  
		Size: 8.8 MB (8793936 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cb81f5d404d22ad8eb9faf4c3413a7a8869626502901a63e123084445ac75bd1`  
		Last Modified: Thu, 16 Jul 2026 17:57:25 GMT  
		Size: 68.7 KB (68737 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-apache` - linux; 386

```console
$ docker pull wordpress@sha256:7121ec6c8da1937b01e49811111218e66bdbc93c23c3053e8d8ce368d29439c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **272.6 MB (272581855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c046fd8c8d445c97453f3e9b99fa527c3b11e0c2c8f7ac23979dc260081d727`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 01:18:37 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 14 Jul 2026 01:18:57 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 14 Jul 2026 01:18:57 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 14 Jul 2026 01:18:57 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 14 Jul 2026 01:18:57 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 14 Jul 2026 01:18:57 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 14 Jul 2026 01:18:57 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 14 Jul 2026 01:26:54 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 14 Jul 2026 01:26:54 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 14 Jul 2026 01:26:54 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 14 Jul 2026 01:26:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:26:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:26:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 14 Jul 2026 01:26:54 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 14 Jul 2026 01:26:54 GMT
ENV PHP_VERSION=8.3.32
# Tue, 14 Jul 2026 01:26:54 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Tue, 14 Jul 2026 01:26:54 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Tue, 14 Jul 2026 01:27:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 14 Jul 2026 01:27:05 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:30:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 14 Jul 2026 01:30:12 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:30:12 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 14 Jul 2026 01:30:12 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 14 Jul 2026 01:30:12 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Jul 2026 01:30:12 GMT
STOPSIGNAL SIGWINCH
# Tue, 14 Jul 2026 01:30:12 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 01:30:12 GMT
WORKDIR /var/www/html
# Tue, 14 Jul 2026 01:30:12 GMT
EXPOSE map[80/tcp:{}]
# Tue, 14 Jul 2026 01:30:12 GMT
CMD ["apache2-foreground"]
# Thu, 16 Jul 2026 17:55:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 17:57:16 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 16 Jul 2026 17:57:16 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Thu, 16 Jul 2026 17:57:17 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 16 Jul 2026 17:57:17 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Thu, 16 Jul 2026 17:57:19 GMT
RUN set -eux; 	version='7.1-beta1'; 	sha1='de8d2d764c716181a1e8bab701e959ceeba14269'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Thu, 16 Jul 2026 17:57:19 GMT
VOLUME [/var/www/html]
# Thu, 16 Jul 2026 17:57:19 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Thu, 16 Jul 2026 17:57:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 17:57:19 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Thu, 16 Jul 2026 17:57:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 17:57:19 GMT
CMD ["apache2-foreground"]
```

-	Layers:
	-	`sha256:888c1464f6f5773681af0ae2a9d3a01263efa70f40fb61a274440aadc4c72f08`  
		Last Modified: Tue, 14 Jul 2026 00:14:49 GMT  
		Size: 31.3 MB (31296301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:488848f9a59e303ea6df59749e48b1fd9d0b9d0f98b9f2e90fb182c879118949`  
		Last Modified: Tue, 14 Jul 2026 01:22:32 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a956d7f4fd965a96a1fb0dd7768b9d73eafa205678da09c2a05a704351ec788f`  
		Last Modified: Tue, 14 Jul 2026 01:22:37 GMT  
		Size: 116.1 MB (116142654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91de69d6985b7f5557381cc4364e19134d64e7b30f664ac78bd498383af94446`  
		Last Modified: Tue, 14 Jul 2026 01:22:32 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cef09955145a86cb6642ffd56c5af5c25cf1e02a086cfe1c1e721fdcf5e365f8`  
		Last Modified: Tue, 14 Jul 2026 01:30:23 GMT  
		Size: 4.5 MB (4459444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:066d619ba3f82cb17ba405f06ef08b2c67a48fd3a7475e76677991281124e2bb`  
		Last Modified: Tue, 14 Jul 2026 01:30:23 GMT  
		Size: 432.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b612404b94229450fa870ab6119da1fa9e2e2023cf8524e2a9adffd29652ac7`  
		Last Modified: Tue, 14 Jul 2026 01:30:23 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8038b6443c148c1acf3e461f5d3773b073b843a52b9b4e1fcdf2af151b5a3f5`  
		Last Modified: Tue, 14 Jul 2026 01:30:24 GMT  
		Size: 12.8 MB (12771421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e650d2dd0e482e148707674c9b837e136999c579e392fd6f65bb2e10a2600f8`  
		Last Modified: Tue, 14 Jul 2026 01:30:24 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ff9706db6a45d7b73a1c000c60c708a9fadd5aa679482ff00e63dcb90440a1e`  
		Last Modified: Tue, 14 Jul 2026 01:30:25 GMT  
		Size: 11.9 MB (11928816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5448a3e9391319ace4d45834a7e6490ded3c1428e1d262229b245981096f4d0`  
		Last Modified: Tue, 14 Jul 2026 01:30:25 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:deb29aa63031109696e37a38a8595d3978ea2ead4ce0644fd733e75f3b032de8`  
		Last Modified: Tue, 14 Jul 2026 01:30:25 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21ff54c2d806d137fd5f239a8185a81b1d207f4e019ae2a770e5801da7648123`  
		Last Modified: Tue, 14 Jul 2026 01:30:26 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a93695f6b1c83b6943ecf500e1a5a6ab05811ce0740b95f32fcac5a9c563adc0`  
		Last Modified: Tue, 14 Jul 2026 01:30:26 GMT  
		Size: 889.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10cc0b61321e90d1d144345d94f8b5fa526805c1058195d8271854a04ed098d1`  
		Last Modified: Thu, 16 Jul 2026 17:57:38 GMT  
		Size: 32.4 MB (32404985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84bffdf0924883543768e9b47fa1be862dfaf08fb877f073640fec29e9f3d7c6`  
		Last Modified: Thu, 16 Jul 2026 17:57:38 GMT  
		Size: 28.0 MB (28014339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b5492c1e0d47925066846e6af2075699835d30a1980f4e435d2dea54664fa70`  
		Last Modified: Thu, 16 Jul 2026 17:57:37 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e744823b1a7d53c73d6edf538c90c71444b95867165b4a5ec467e3c170b2de3`  
		Last Modified: Thu, 16 Jul 2026 17:57:37 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1766c7c8e35ea5463553bc0c2899d7c9ea4281d397ace63b36a60e5f9b85c45`  
		Last Modified: Thu, 16 Jul 2026 17:57:38 GMT  
		Size: 18.8 KB (18795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95e111c877a56e2d3004cf9cd4979f4a40c93df268fc7ccde5cd994dc108be67`  
		Last Modified: Thu, 16 Jul 2026 17:57:39 GMT  
		Size: 35.5 MB (35534263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee6cad71b5270a6ca2d7c369ba75da0117206bef41b19bd828e7ffc238aa6571`  
		Last Modified: Thu, 16 Jul 2026 17:57:39 GMT  
		Size: 2.4 KB (2439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60cdd7974e4069b715db4645886eb1dda6503bec7d70a7546ae028fe110b18ad`  
		Last Modified: Thu, 16 Jul 2026 17:57:40 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db1d097b6f64b753a83f7dd38dc415d70fd3d3c5c643c5d6680511af1f6930b9`  
		Last Modified: Thu, 16 Jul 2026 17:57:40 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-apache` - unknown; unknown

```console
$ docker pull wordpress@sha256:f76cbd3ae09e07976f8f7738ad4cf04a61424a50abb27d8c1444756a08c75053
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.7 MB (8738589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7eb38776006b9ba62d9c5a6971bb430883e88645c7bf0fb2ffd8f95d28845d0f`

```dockerfile
```

-	Layers:
	-	`sha256:c0b92885af9f36741879f23e7c5144e51ca7400650486a9f83844c0efac4880d`  
		Last Modified: Thu, 16 Jul 2026 17:57:37 GMT  
		Size: 8.7 MB (8670294 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed8f541bc9eb77fe0126b922e148e70765de011794d5266003b81df19aa9e0cd`  
		Last Modified: Thu, 16 Jul 2026 17:57:36 GMT  
		Size: 68.3 KB (68295 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-apache` - linux; ppc64le

```console
$ docker pull wordpress@sha256:16d9462d79dc034294fab01ad995125d15786e36b843d85ec4d6afc3260f46a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **270.7 MB (270749356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2079c1c4636eac388f5d1f78b5f39176be881220fc5bbadeadbded57018e5eb`
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
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 14 Jul 2026 01:49:20 GMT
ENV PHP_VERSION=8.3.32
# Tue, 14 Jul 2026 01:49:20 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Tue, 14 Jul 2026 01:49:20 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Tue, 14 Jul 2026 02:47:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 14 Jul 2026 02:47:08 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:50:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 14 Jul 2026 02:50:53 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:50:54 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 14 Jul 2026 02:50:54 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 14 Jul 2026 02:50:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Jul 2026 02:50:54 GMT
STOPSIGNAL SIGWINCH
# Tue, 14 Jul 2026 02:50:54 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:50:54 GMT
WORKDIR /var/www/html
# Tue, 14 Jul 2026 02:50:54 GMT
EXPOSE map[80/tcp:{}]
# Tue, 14 Jul 2026 02:50:54 GMT
CMD ["apache2-foreground"]
# Thu, 16 Jul 2026 17:59:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 18:02:29 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 16 Jul 2026 18:02:29 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Thu, 16 Jul 2026 18:02:30 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 16 Jul 2026 18:02:30 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Thu, 16 Jul 2026 18:02:34 GMT
RUN set -eux; 	version='7.1-beta1'; 	sha1='de8d2d764c716181a1e8bab701e959ceeba14269'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Thu, 16 Jul 2026 18:02:35 GMT
VOLUME [/var/www/html]
# Thu, 16 Jul 2026 18:02:35 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Thu, 16 Jul 2026 18:02:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 18:02:35 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Thu, 16 Jul 2026 18:02:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 18:02:35 GMT
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
	-	`sha256:ad9d2ea66c81f98ca7d9bca664a23457f3e1815baccead561f581034053daef1`  
		Last Modified: Tue, 14 Jul 2026 02:51:17 GMT  
		Size: 12.8 MB (12779569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54bc5a5b4c3fff34460b9bbd7afa1530201bc9221dc52d5c8012978e9fa84062`  
		Last Modified: Tue, 14 Jul 2026 02:51:16 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c62be8bacc9e8c63d0c63d20c2d4290e7a1358abbe55c8e238f779b11b483bb3`  
		Last Modified: Tue, 14 Jul 2026 02:51:17 GMT  
		Size: 12.1 MB (12125296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e4109787e16ed309f9766e3b73b4f0ba260acd1fe5ddd26294cfac70aead3b`  
		Last Modified: Tue, 14 Jul 2026 02:51:16 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20e390febaf0b8cb82e468adda2ee82794fa8904446124e27c2c78032e39b382`  
		Last Modified: Tue, 14 Jul 2026 02:51:17 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99fe4c9626ac4ec226bcbd122e4ba39647f2df9881a831e793d88aa47966d841`  
		Last Modified: Tue, 14 Jul 2026 02:51:17 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a8936cd65010d9a386a55bcd4dab5f4ec5d0a5865fa7b060e108e1aedf2f50a`  
		Last Modified: Tue, 14 Jul 2026 02:51:18 GMT  
		Size: 892.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cc97a91d8ae9ad4a87100ae9efa646d78f3af3e6065cc1306199a69680b958a`  
		Last Modified: Thu, 16 Jul 2026 18:03:20 GMT  
		Size: 33.0 MB (32954007 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f6ce428589a228ecc7e17144955580df96d37b776c21408900955aeab7baf5f`  
		Last Modified: Thu, 16 Jul 2026 18:03:20 GMT  
		Size: 29.2 MB (29239589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3278266ce4fe072333adb2301b6cd09a4994e393240b1cc6498c31eb11e42910`  
		Last Modified: Thu, 16 Jul 2026 18:03:18 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b39b0fe89910724d42e3430c2a1721902a45ce91b2fb9ee21f9882a239f9fc2`  
		Last Modified: Thu, 16 Jul 2026 18:03:18 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7faefc3826852ff303afc7c6ba21cffe946d449be79ca95d4b6b8274fb3e25f7`  
		Last Modified: Thu, 16 Jul 2026 18:03:20 GMT  
		Size: 18.8 KB (18801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3980903f741714b89dcaedc3c166d4ce79a72685bbb9b1eeb6215345e6276457`  
		Last Modified: Thu, 16 Jul 2026 18:03:21 GMT  
		Size: 35.5 MB (35534282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:074b7f6aa5edc9fdc509e1eba8f70331f4a0020dee37692491d2620fd58002ca`  
		Last Modified: Thu, 16 Jul 2026 18:03:21 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f9b56df0aecb74a2ba168b520975ae2d2428cb6d096e8bb6e14b2b687260817`  
		Last Modified: Thu, 16 Jul 2026 18:03:21 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a03b99092f1fd29a661cb52f89a90fb73a16f86c982c6d70e09d3fffb06ab5d6`  
		Last Modified: Thu, 16 Jul 2026 18:03:22 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-apache` - unknown; unknown

```console
$ docker pull wordpress@sha256:df89ffccac17d6c232417a504d78c9c798b4817f22c880e6e9d4400a6648c531
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8766774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5ffa41a59d322a710a04b77cef5b782e9f3648a17f44bff76aa46eec10859be`

```dockerfile
```

-	Layers:
	-	`sha256:db38c9bfced72937e3d292e4d09bb05d88ba90f9741ce680ef9d93ae47831b0a`  
		Last Modified: Thu, 16 Jul 2026 18:03:18 GMT  
		Size: 8.7 MB (8698247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe52f362de0ad6084244ed1b66aeff34c4fd865989e3d84118c7296f0aa13048`  
		Last Modified: Thu, 16 Jul 2026 18:03:18 GMT  
		Size: 68.5 KB (68527 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-apache` - linux; riscv64

```console
$ docker pull wordpress@sha256:abc7819184781513ee84ce5a13854c18e7d2a0ba664ddac85077c21e0a5b0968
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **290.0 MB (290005728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37ec991a2896297bb60eb45b56a8233d89e0f6b9fbbf3a44956dab553c947732`
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
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 25 Jun 2026 04:17:57 GMT
ENV PHP_VERSION=8.3.32
# Thu, 25 Jun 2026 04:17:57 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Thu, 25 Jun 2026 04:17:57 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Fri, 03 Jul 2026 15:42:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Fri, 03 Jul 2026 15:42:48 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 03 Jul 2026 16:33:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 03 Jul 2026 16:33:39 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 03 Jul 2026 16:33:40 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 03 Jul 2026 16:33:41 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 03 Jul 2026 16:33:41 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 03 Jul 2026 16:33:41 GMT
STOPSIGNAL SIGWINCH
# Fri, 03 Jul 2026 16:33:41 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Fri, 03 Jul 2026 16:33:41 GMT
WORKDIR /var/www/html
# Fri, 03 Jul 2026 16:33:41 GMT
EXPOSE map[80/tcp:{}]
# Fri, 03 Jul 2026 16:33:41 GMT
CMD ["apache2-foreground"]
# Sat, 04 Jul 2026 08:56:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Sat, 04 Jul 2026 09:14:26 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Sat, 04 Jul 2026 09:14:26 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Sat, 04 Jul 2026 09:14:27 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Sat, 04 Jul 2026 09:14:28 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Sat, 04 Jul 2026 12:11:41 GMT
RUN set -eux; 	version='7.0.1-RC1'; 	sha1='c524fde3ff16aa637dffcb5b2d26458e9e361f66'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Sat, 04 Jul 2026 12:11:42 GMT
VOLUME [/var/www/html]
# Sat, 04 Jul 2026 12:11:42 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Sat, 04 Jul 2026 12:11:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 04 Jul 2026 12:11:42 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Sat, 04 Jul 2026 12:11:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Jul 2026 12:11:42 GMT
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
	-	`sha256:b472211f8984ade3198023e89fe8e874afc57f919d81363917543cd93bb1bd7e`  
		Last Modified: Fri, 03 Jul 2026 16:36:57 GMT  
		Size: 12.8 MB (12786962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38babffe54b9ac52ddf2f099aca08101072589cb52f1f17bbeae8b91d4f9b066`  
		Last Modified: Fri, 03 Jul 2026 16:36:53 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25d854b7c90239892a37245f560cf1d08e470cfa06d54b1b4568cd5dabb86672`  
		Last Modified: Fri, 03 Jul 2026 16:36:57 GMT  
		Size: 11.4 MB (11395485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:972a29781bbb43e5f19bab932ee314914cb3b80682bbd52973e7723512b35503`  
		Last Modified: Fri, 03 Jul 2026 16:36:53 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f68ce93f5a669bd6788d91e56408d20101815e451ce657af251bed36ff37466`  
		Last Modified: Fri, 03 Jul 2026 16:36:55 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e4192bcc470f663ecd0c69fffc5a89d6ae18180cc206bf0a372dd45809cf6e5`  
		Last Modified: Fri, 03 Jul 2026 16:36:56 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db8b23d6abc0021b25903fd642952f7f0c571243e4aac7a52600bb779b7dd287`  
		Last Modified: Fri, 03 Jul 2026 16:36:57 GMT  
		Size: 892.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a428f3a9c21f2089f6bb621c8b79c8948a1cb479c375ee7b60262d5987690e5`  
		Last Modified: Sat, 04 Jul 2026 09:19:15 GMT  
		Size: 30.5 MB (30539611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d8ebd79cfb560ab59e4c43e07063a23943222ed86c66e78121dd99707bbed4c`  
		Last Modified: Sat, 04 Jul 2026 09:19:14 GMT  
		Size: 26.7 MB (26703025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cc9ce914b3f92f29b7aaddf355bab0e40e1a47ad46249c6743d576bdbf7f0f7`  
		Last Modified: Sat, 04 Jul 2026 09:19:03 GMT  
		Size: 319.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:631e94ee26523f0fbe37832d8647556262ed2bdce140a4ed8401102c9264556b`  
		Last Modified: Sat, 04 Jul 2026 09:19:03 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c0b768cf844d60d14eb3b55527467132710e34342446569953e506d4299ef0e`  
		Last Modified: Sat, 04 Jul 2026 09:19:05 GMT  
		Size: 18.8 KB (18814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b108711ffcae94fbe823a44649eb263105c087f1ed6a81d0b8a59ac51c2cd3e`  
		Last Modified: Sat, 04 Jul 2026 12:16:07 GMT  
		Size: 29.7 MB (29651684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72fd032665e886843ef3ab9183b3e6b9ad9250186fddd14ff027fc6c63ad796b`  
		Last Modified: Sat, 04 Jul 2026 12:16:02 GMT  
		Size: 2.4 KB (2440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afa7e6a23546d20e7f2b4cf40a2c020c807c8f955b9ff94d07be66709ca84e90`  
		Last Modified: Sat, 04 Jul 2026 12:16:02 GMT  
		Size: 1.8 KB (1769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f45486f817083d80777b27586558daa310275fd83a3338738c4fbb277ae0192`  
		Last Modified: Sat, 04 Jul 2026 12:16:02 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-apache` - unknown; unknown

```console
$ docker pull wordpress@sha256:a00516cb2816f74b19bdc307d06df0dd2967213b443cd30b7f80ccde8d28a296
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.8 MB (8833435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee2e97176ce5f3ef6c12dcbacf21c1007e188fea3b5fd1d224ab2572fc88caca`

```dockerfile
```

-	Layers:
	-	`sha256:42ce417c748f3fdcb08b28a1d0f0835678e2d13dac713e5e4d052a6220421ed7`  
		Last Modified: Sat, 04 Jul 2026 12:16:03 GMT  
		Size: 8.8 MB (8763580 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cceb5fb51ea5416dda0f6c426ca36d5f915e5ddb2c6bfd7c283355b696fb2840`  
		Last Modified: Sat, 04 Jul 2026 12:16:01 GMT  
		Size: 69.9 KB (69855 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-apache` - linux; s390x

```console
$ docker pull wordpress@sha256:01b22078ee1ddfa8f9faf64e31e430fc706ba6bacb74d7f72ef6af2c9d1a9b43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.4 MB (245377865 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a93182a6e9d40577b5225995a9a0fb561439a258cb01b88f588607510682c8bb`
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
# Tue, 14 Jul 2026 01:53:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 14 Jul 2026 01:53:57 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 14 Jul 2026 01:53:57 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 14 Jul 2026 01:53:57 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:53:57 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 14 Jul 2026 01:53:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 14 Jul 2026 01:53:57 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 14 Jul 2026 01:53:57 GMT
ENV PHP_VERSION=8.3.32
# Tue, 14 Jul 2026 01:53:57 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.32.tar.xz.asc
# Tue, 14 Jul 2026 01:53:57 GMT
ENV PHP_SHA256=8698ec1f9402fa5e5e872ae3d0916b62f5f27503c1fbfc9cc3521e113355ea92
# Tue, 14 Jul 2026 02:04:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 14 Jul 2026 02:04:31 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:07:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 14 Jul 2026 02:07:50 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:07:51 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 14 Jul 2026 02:07:51 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 14 Jul 2026 02:07:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 14 Jul 2026 02:07:51 GMT
STOPSIGNAL SIGWINCH
# Tue, 14 Jul 2026 02:07:51 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 14 Jul 2026 02:07:51 GMT
WORKDIR /var/www/html
# Tue, 14 Jul 2026 02:07:51 GMT
EXPOSE map[80/tcp:{}]
# Tue, 14 Jul 2026 02:07:51 GMT
CMD ["apache2-foreground"]
# Thu, 16 Jul 2026 17:54:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		ghostscript 		libheif-plugin-aomenc 		libheif-plugin-x265 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 16 Jul 2026 17:58:04 GMT
RUN set -ex; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libicu-dev 		libjpeg-dev 		libmagickwand-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$extDir"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query --search 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 16 Jul 2026 17:58:04 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Thu, 16 Jul 2026 17:58:05 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 16 Jul 2026 17:58:06 GMT
RUN set -eux; 	a2enmod rewrite expires; 		a2enmod remoteip; 	{ 		echo 'RemoteIPHeader X-Forwarded-For'; 		echo 'RemoteIPInternalProxy 10.0.0.0/8'; 		echo 'RemoteIPInternalProxy 172.16.0.0/12'; 		echo 'RemoteIPInternalProxy 192.168.0.0/16'; 		echo 'RemoteIPInternalProxy 169.254.0.0/16'; 		echo 'RemoteIPInternalProxy 127.0.0.0/8'; 	} > /etc/apache2/conf-available/remoteip.conf; 	a2enconf remoteip; 	find /etc/apache2 -type f -name '*.conf' -exec sed -ri 's/([[:space:]]*LogFormat[[:space:]]+"[^"]*)%h([^"]*")/\1%a\2/g' '{}' + # buildkit
# Thu, 16 Jul 2026 17:58:08 GMT
RUN set -eux; 	version='7.1-beta1'; 	sha1='de8d2d764c716181a1e8bab701e959ceeba14269'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Thu, 16 Jul 2026 17:58:09 GMT
VOLUME [/var/www/html]
# Thu, 16 Jul 2026 17:58:09 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Thu, 16 Jul 2026 17:58:09 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 16 Jul 2026 17:58:10 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Thu, 16 Jul 2026 17:58:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 16 Jul 2026 17:58:10 GMT
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
	-	`sha256:24b4a612d797827022f3dd188f090edf0f8a00e5be1a56cdc472c64e49086889`  
		Last Modified: Tue, 14 Jul 2026 01:59:05 GMT  
		Size: 4.3 MB (4332511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0df470aade0d976bdb339411bc69b857e56219e4c01cc16831076ae1c7018f53`  
		Last Modified: Tue, 14 Jul 2026 01:59:04 GMT  
		Size: 436.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84dd4c86f8e49dc1c907c883a2e9b0280e2fdff33fe9ee53adc9363143002eeb`  
		Last Modified: Tue, 14 Jul 2026 01:59:04 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5793d0804998942e29f1ad1bd6b265ea9f685a77f3d81487d2eb3cb0bd12353f`  
		Last Modified: Tue, 14 Jul 2026 02:08:15 GMT  
		Size: 12.8 MB (12771160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:894371775d9e63fd36165595c769c9796e0a00138780674efe564b441331b9b4`  
		Last Modified: Tue, 14 Jul 2026 02:08:15 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:927c069d60a67c577278fe5c6f174f7c2fda04e338f05e85680a1d2b4771f3c0`  
		Last Modified: Tue, 14 Jul 2026 02:08:15 GMT  
		Size: 11.6 MB (11572799 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afd327946736bd97439702f1cfd5e2e8d6fbcfb4c4bed4c20096f1154a7a0aa4`  
		Last Modified: Tue, 14 Jul 2026 02:08:15 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0599bbd55855aeca5b445a8d55849aa81151639cfcccdac81c908916e252beca`  
		Last Modified: Tue, 14 Jul 2026 02:08:16 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e2dbe569c2660f210fb5138f39426b3338d44fa7cdde616e0ff128177b37770`  
		Last Modified: Tue, 14 Jul 2026 02:08:16 GMT  
		Size: 242.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:343d2652f89c0715807e2a07495f52f9aadf9fc89fa1bbb820ab157fbd7d793a`  
		Last Modified: Tue, 14 Jul 2026 02:08:16 GMT  
		Size: 889.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27b8e37fcc3e05b2ed14405728573d6e137761c9188379509c3828231760450d`  
		Last Modified: Thu, 16 Jul 2026 17:58:52 GMT  
		Size: 31.4 MB (31397552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd8ef4aae6d7e4a8f25e0d424f41ff86864542206b76d677f7cff88bff48f083`  
		Last Modified: Thu, 16 Jul 2026 17:58:52 GMT  
		Size: 27.3 MB (27320504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7386393c3c05384584cad1a0c7ce3cbfd58f0df63ecb034bda3b617997f4a8e2`  
		Last Modified: Thu, 16 Jul 2026 17:58:51 GMT  
		Size: 311.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ace7f6733a647369022b2200df1a88e7e6c81444f48f7a4453a6bf7f1d37239e`  
		Last Modified: Thu, 16 Jul 2026 17:58:51 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:248aa1c4c121c37a414c2227f78e06dc23273a7c4934abfb9ab9e980717ed7bc`  
		Last Modified: Thu, 16 Jul 2026 17:58:52 GMT  
		Size: 18.8 KB (18801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53efbb10bfa8fcbe5484f2a5a04c082bd3943acf032cff08e707dbd464d1c0a9`  
		Last Modified: Thu, 16 Jul 2026 17:58:53 GMT  
		Size: 35.5 MB (35534285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8db96c355d31cdfc1597c6b63a101dadedc2fc52184e5a6c17969f3df00012af`  
		Last Modified: Thu, 16 Jul 2026 17:58:53 GMT  
		Size: 2.4 KB (2439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39eafcdc33b6cf2e48929db2a44ec589a0ede47072d4376bc02055a200f5731b`  
		Last Modified: Thu, 16 Jul 2026 17:58:54 GMT  
		Size: 1.8 KB (1769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af4e48c85cf6efce4239d1bb9154805f33f97631adbf7c255ed0cabc6fff6e0f`  
		Last Modified: Thu, 16 Jul 2026 17:58:54 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-apache` - unknown; unknown

```console
$ docker pull wordpress@sha256:0d4ac8a1edc89aa891a77af5727b8f70ea3f15807fdcfde637c85a0e49784c4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **8.5 MB (8484851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e14e0a6c63d72a8176565c188ee4fda741007f6c229eebb03e928e2757f2a2dd`

```dockerfile
```

-	Layers:
	-	`sha256:ea91d6d371bd5c217f8b6342eec0b4e7c2793e8c7378943f4d7a7a053463c579`  
		Last Modified: Thu, 16 Jul 2026 17:58:51 GMT  
		Size: 8.4 MB (8416464 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:201b642f7672019161f3228de61ab5c68307317565f9b8d71ef0444c2eb9ee15`  
		Last Modified: Thu, 16 Jul 2026 17:58:51 GMT  
		Size: 68.4 KB (68387 bytes)  
		MIME: application/vnd.in-toto+json
