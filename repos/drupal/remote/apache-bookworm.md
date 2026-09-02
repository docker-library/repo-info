## `drupal:apache-bookworm`

```console
$ docker pull drupal@sha256:e1972e2882fb085102bc750b44ff5c2f94e79c6b2aa8cd5d978ea0d9133dabae
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 10
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v7
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `drupal:apache-bookworm` - linux; amd64

```console
$ docker pull drupal@sha256:e3746571c1d95d77d51e4bca7a103d831506dd3b83763ca97f6614428f89bc9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.6 MB (216618031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d335e9d287fa9e4a8e2cb50c8c1a314b690b1bdd5a2d511acbae232170a0909a`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Mon, 31 Aug 2026 19:12:05 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Mon, 31 Aug 2026 19:12:19 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 31 Aug 2026 19:12:19 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 19:12:19 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 31 Aug 2026 19:12:19 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 31 Aug 2026 19:12:19 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 31 Aug 2026 19:12:19 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 31 Aug 2026 19:12:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Mon, 31 Aug 2026 19:12:24 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Mon, 31 Aug 2026 19:12:24 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Mon, 31 Aug 2026 19:12:24 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:12:24 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:12:24 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 31 Aug 2026 19:12:24 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 31 Aug 2026 19:12:24 GMT
ENV PHP_VERSION=8.5.10
# Mon, 31 Aug 2026 19:12:24 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Mon, 31 Aug 2026 19:12:24 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:12:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 31 Aug 2026 19:12:30 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:15:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 31 Aug 2026 19:15:05 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:15:05 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 31 Aug 2026 19:15:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 31 Aug 2026 19:15:05 GMT
STOPSIGNAL SIGWINCH
# Mon, 31 Aug 2026 19:15:05 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:15:05 GMT
WORKDIR /var/www/html
# Mon, 31 Aug 2026 19:15:05 GMT
EXPOSE map[80/tcp:{}]
# Mon, 31 Aug 2026 19:15:05 GMT
CMD ["apache2-foreground"]
# Tue, 01 Sep 2026 22:11:17 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 01 Sep 2026 22:11:17 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Tue, 01 Sep 2026 22:11:18 GMT
RUN { 		echo 'output_buffering=true'; 	} > /usr/local/etc/php/conf.d/docker-php-drupal-recommended.ini # buildkit
# Tue, 01 Sep 2026 22:11:18 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 01 Sep 2026 22:11:18 GMT
ENV DRUPAL_VERSION=11.4.5
# Tue, 01 Sep 2026 22:11:18 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 22:11:18 GMT
WORKDIR /opt/drupal
# Tue, 01 Sep 2026 22:11:24 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 01 Sep 2026 22:11:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d547a433ab78c08d38362bc0158281ff2eea620b6c6536a126d06e8ddfd54cb`  
		Last Modified: Mon, 31 Aug 2026 19:15:24 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07420c05acc3f87913924744e441cb2e7ceec0a37162d5ca06b10fc9e7134fb3`  
		Last Modified: Mon, 31 Aug 2026 19:15:28 GMT  
		Size: 104.4 MB (104353170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54d11da570653077335c48a4e2350896c9edd63f7000ed3c14435655ba319c35`  
		Last Modified: Mon, 31 Aug 2026 19:15:24 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15430791f1667db3d8d90bdf7313e2daa260ee3175b605ab4bbb56c778bb35f6`  
		Last Modified: Mon, 31 Aug 2026 19:15:26 GMT  
		Size: 20.1 MB (20143609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d711f8926ddb7352a9615d38a89302c255686ba4e45005570ea51fb1f9908ef3`  
		Last Modified: Mon, 31 Aug 2026 19:15:26 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b0e587a773709b9bfdfc7887b77d51806570b5133b64f9d9e628d49f765907d`  
		Last Modified: Mon, 31 Aug 2026 19:15:26 GMT  
		Size: 481.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b915561c221d9201384b5c5b69bc7004b69a1e090be4ff7c54dbedb12959df8`  
		Last Modified: Mon, 31 Aug 2026 19:15:27 GMT  
		Size: 14.6 MB (14585331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58ff3dc8b55a170fcdc6ee1641f2966bd990072d84165393f22bdf037b91d294`  
		Last Modified: Mon, 31 Aug 2026 19:15:27 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:603e038ef714fdfe0d7a8f879a4a8d70373c8ea76b3560f3b7a3fc2b5349c385`  
		Last Modified: Mon, 31 Aug 2026 19:15:27 GMT  
		Size: 15.2 MB (15155644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1fd8fd1e63f852df2579162ff663d89713dbb8522a1f46c61a4d3a472a6f54f`  
		Last Modified: Mon, 31 Aug 2026 19:15:28 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:167d5f6caf71e5612bb31c58600c330b440e015b001d97a755efe934403f268d`  
		Last Modified: Mon, 31 Aug 2026 19:15:28 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d1dc13dcbe27e7920a4d91727acbc2de6689ba364bbbee26fcbc7e07278ff97`  
		Last Modified: Mon, 31 Aug 2026 19:15:29 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac1da9f76a8124247f9aee9e6738008f7d83b94ed973ba080e81d8a38818254c`  
		Last Modified: Tue, 01 Sep 2026 22:11:43 GMT  
		Size: 9.7 MB (9716266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50472b0dcdb3d7d0e1e6568d2fde81d0dcd3c9f4a6bc4ed201872263329404f1`  
		Last Modified: Tue, 01 Sep 2026 22:11:43 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93e97e819309485c63c80c2ce1bb7ee2f681e93fc5bb5c7dcf08838a3ec6b006`  
		Last Modified: Tue, 01 Sep 2026 22:11:43 GMT  
		Size: 256.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e7a48fb87583d309dabb31544ab2396836034e1d5b78096f0cc89267eb597a3`  
		Last Modified: Tue, 01 Sep 2026 22:11:43 GMT  
		Size: 833.0 KB (832978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21f807500f4aaa197997fecdd8b4c84a9ecd474796b92bd6903de1f0eab431f8`  
		Last Modified: Tue, 01 Sep 2026 22:11:42 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c98112017d0b6e3fc344815565bf5d4edaa787ec7a32740186ab1f03e00f2fd`  
		Last Modified: Tue, 01 Sep 2026 22:11:45 GMT  
		Size: 23.6 MB (23592214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:apache-bookworm` - unknown; unknown

```console
$ docker pull drupal@sha256:a610df615ee5ac4721a9a78fae2b7ec223a278e91f66c0de17eefdbdfa435039
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7207127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae6bc6951144c919d6835a210148f94d85ed425372e27888bf18bae125982d22`

```dockerfile
```

-	Layers:
	-	`sha256:c332c78d1ed2339a656c39e0370b9e5d0edaf695219dba9392e0f54c66c1cee7`  
		Last Modified: Tue, 01 Sep 2026 22:11:43 GMT  
		Size: 7.2 MB (7164119 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:29cb23834f00771fc103cc7965fde491f435bda30ddc7ef089c85e2492d2445f`  
		Last Modified: Tue, 01 Sep 2026 22:11:43 GMT  
		Size: 43.0 KB (43008 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:apache-bookworm` - linux; arm variant v7

```console
$ docker pull drupal@sha256:5520d826a30e6f125423747b0c269318adc8da80b6bebc8b9abe6f8afbe7c907
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.9 MB (176907916 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ac8df61a64432bc88b2f6701e33232b02ccd05f1817a91fd5e43751ee823922`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1787529600'
# Mon, 31 Aug 2026 19:13:48 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Mon, 31 Aug 2026 19:14:03 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 31 Aug 2026 19:14:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 19:14:03 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 31 Aug 2026 19:14:03 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 31 Aug 2026 19:14:03 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 31 Aug 2026 19:14:03 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 31 Aug 2026 19:14:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Mon, 31 Aug 2026 19:14:10 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Mon, 31 Aug 2026 19:14:10 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Mon, 31 Aug 2026 19:14:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:14:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:14:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 31 Aug 2026 19:14:10 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 31 Aug 2026 19:14:10 GMT
ENV PHP_VERSION=8.5.10
# Mon, 31 Aug 2026 19:14:10 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Mon, 31 Aug 2026 19:14:10 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:14:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 31 Aug 2026 19:14:18 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:17:04 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 31 Aug 2026 19:17:04 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:17:04 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 31 Aug 2026 19:17:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 31 Aug 2026 19:17:04 GMT
STOPSIGNAL SIGWINCH
# Mon, 31 Aug 2026 19:17:04 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:17:04 GMT
WORKDIR /var/www/html
# Mon, 31 Aug 2026 19:17:04 GMT
EXPOSE map[80/tcp:{}]
# Mon, 31 Aug 2026 19:17:04 GMT
CMD ["apache2-foreground"]
# Tue, 01 Sep 2026 22:56:54 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 01 Sep 2026 22:56:54 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Tue, 01 Sep 2026 22:56:54 GMT
RUN { 		echo 'output_buffering=true'; 	} > /usr/local/etc/php/conf.d/docker-php-drupal-recommended.ini # buildkit
# Tue, 01 Sep 2026 22:56:54 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 01 Sep 2026 22:56:54 GMT
ENV DRUPAL_VERSION=11.4.5
# Tue, 01 Sep 2026 22:56:54 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 22:56:54 GMT
WORKDIR /opt/drupal
# Tue, 01 Sep 2026 22:57:03 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 01 Sep 2026 22:57:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:441f33fd84d954d91728ce045d0358ca0600c55299770b0eba913196956f53f1`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 23.9 MB (23939844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:effa455fd5d1b08c7602352e0aaf47e9eba3afcda97ec767ec87deac9329c6fd`  
		Last Modified: Mon, 31 Aug 2026 19:17:20 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a07fa1bccc0b668116afc359463f981417413a80470c4c993b423b22ab0466e0`  
		Last Modified: Mon, 31 Aug 2026 19:17:23 GMT  
		Size: 76.2 MB (76154395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aea7e43be64383c51cc500c0fe538330313b48033312b7adca9a5abfc00d8568`  
		Last Modified: Mon, 31 Aug 2026 19:17:20 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aa87edce72d2d21ce32fb4f59bf44926c58c82ff9f3edccffa954050041e937`  
		Last Modified: Mon, 31 Aug 2026 19:17:21 GMT  
		Size: 18.9 MB (18850308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3974bd0256616a97e876bb2fcd5029c497d24be96e361829ac7fceadb9cac946`  
		Last Modified: Mon, 31 Aug 2026 19:17:21 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a24d3f46d42d99960b4fd07e2964ef4880f40715369b642549a15532083737`  
		Last Modified: Mon, 31 Aug 2026 19:17:21 GMT  
		Size: 483.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:581260f81a700c7e545af423d0c7c82764e28bceba2fabe4058ec044fb576c1f`  
		Last Modified: Mon, 31 Aug 2026 19:17:23 GMT  
		Size: 14.6 MB (14583451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cadd90342caf7d6db5d3ff59c927ab27119a1cfef6a692444dfa32d5a6aadac9`  
		Last Modified: Mon, 31 Aug 2026 19:17:22 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5ca887ebb2cc61ac90d8c94b1f4b4ebd4df44a291230b0221d61b2e6e60e88e`  
		Last Modified: Mon, 31 Aug 2026 19:17:23 GMT  
		Size: 12.6 MB (12614458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2fc828523fbbeae66b9f8192071c2b0d2f337dc662d54d0dd591d085d757c31b`  
		Last Modified: Mon, 31 Aug 2026 19:17:24 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a62e8f417dcc6ecdff8c6c24aa077522c39bae2709018e059db24233a8d223b`  
		Last Modified: Mon, 31 Aug 2026 19:17:24 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bd2ac0f23c3c6e25761f8aa1b5eb479f5882c30f4437c706256280ec9c2bc92`  
		Last Modified: Mon, 31 Aug 2026 19:17:24 GMT  
		Size: 889.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3ae1fd03cb19e822c091a3501e40ec953d59dc1e0902649cd2acababd6bb12c`  
		Last Modified: Tue, 01 Sep 2026 22:57:21 GMT  
		Size: 6.3 MB (6334177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:284a4b2d4d9eb95e536f1ee6d9ee1b7d6fcc577c553c00b36625d49d703ce17a`  
		Last Modified: Tue, 01 Sep 2026 22:57:21 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4553308e85324edd682b216d2c2991805e2dc99d8814166e18f6adfa3e8193db`  
		Last Modified: Tue, 01 Sep 2026 22:57:21 GMT  
		Size: 258.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e07dae373b73416badf8b0ed3b7d9a3e0ff301aae91005befe41e43f376720e3`  
		Last Modified: Tue, 01 Sep 2026 22:57:21 GMT  
		Size: 833.0 KB (832980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89f805520a09664efb093912f88b754cfbeff8fff3e4c4f89cf14d759dfdfce`  
		Last Modified: Tue, 01 Sep 2026 22:57:22 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ce6bc40a88e697c5631c42f649856616d8b352eea084c7b24c6de92fc60e0be`  
		Last Modified: Tue, 01 Sep 2026 22:57:23 GMT  
		Size: 23.6 MB (23592141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:apache-bookworm` - unknown; unknown

```console
$ docker pull drupal@sha256:66987ae9ec240c1020be024db8bfae3f6ece985089586981f23a840a4d363a15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7020874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7548fde4f5c0e558c06b2d3f1fcb2b65e77359886efa1aa7adada8ed276800fa`

```dockerfile
```

-	Layers:
	-	`sha256:b6b5e02fadd769f3115cb68785e8c13d9651a85e0f50fce8704b83dcf2506cdc`  
		Last Modified: Tue, 01 Sep 2026 22:57:21 GMT  
		Size: 7.0 MB (6977700 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d57a9112c49b1d19d8afbc0a877c85a6a4a47037ec297ae6d8f45ca3ef74c0db`  
		Last Modified: Tue, 01 Sep 2026 22:57:21 GMT  
		Size: 43.2 KB (43174 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:apache-bookworm` - linux; arm64 variant v8

```console
$ docker pull drupal@sha256:49102ab28faa75b8c9b1f631da55189a3f079c1d838be99615f2b6bd22b0a7b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.8 MB (207814994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2957ec2f218d496674559c06e9d42d306e34eac93e48445c102a56c5077a4e8f`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Mon, 31 Aug 2026 19:29:18 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Mon, 31 Aug 2026 19:29:32 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 31 Aug 2026 19:29:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 19:29:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 31 Aug 2026 19:29:32 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 31 Aug 2026 19:29:32 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 31 Aug 2026 19:29:32 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 31 Aug 2026 19:29:38 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Mon, 31 Aug 2026 19:29:38 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Mon, 31 Aug 2026 19:29:38 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Mon, 31 Aug 2026 19:29:38 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:29:38 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:29:38 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 31 Aug 2026 19:29:38 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 31 Aug 2026 19:29:38 GMT
ENV PHP_VERSION=8.5.10
# Mon, 31 Aug 2026 19:29:38 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Mon, 31 Aug 2026 19:29:38 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:29:45 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 31 Aug 2026 19:29:45 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:32:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 31 Aug 2026 19:32:59 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:32:59 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 31 Aug 2026 19:32:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 31 Aug 2026 19:32:59 GMT
STOPSIGNAL SIGWINCH
# Mon, 31 Aug 2026 19:32:59 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:32:59 GMT
WORKDIR /var/www/html
# Mon, 31 Aug 2026 19:32:59 GMT
EXPOSE map[80/tcp:{}]
# Mon, 31 Aug 2026 19:32:59 GMT
CMD ["apache2-foreground"]
# Tue, 01 Sep 2026 22:11:16 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 01 Sep 2026 22:11:16 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Tue, 01 Sep 2026 22:11:16 GMT
RUN { 		echo 'output_buffering=true'; 	} > /usr/local/etc/php/conf.d/docker-php-drupal-recommended.ini # buildkit
# Tue, 01 Sep 2026 22:11:16 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 01 Sep 2026 22:11:16 GMT
ENV DRUPAL_VERSION=11.4.5
# Tue, 01 Sep 2026 22:11:16 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 22:11:16 GMT
WORKDIR /opt/drupal
# Tue, 01 Sep 2026 22:11:23 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 01 Sep 2026 22:11:23 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66dbc2fac0f10560aa942aef9f706f28d79ae3314b88b9800a3320636a2bc6a9`  
		Last Modified: Mon, 31 Aug 2026 19:33:19 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c1f4112956e0913194b161795efdf45bb9c3947573355f9435e2c240758397c`  
		Last Modified: Mon, 31 Aug 2026 19:33:23 GMT  
		Size: 98.2 MB (98201317 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a1337ecdb95d7fa31fa88711a619af996b68266298a402044ccb659b1b3796`  
		Last Modified: Mon, 31 Aug 2026 19:32:54 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fc9517ec7ee2999a61f7e75b9be67048e943cd89be90774441d8ccb5dfe96f2`  
		Last Modified: Mon, 31 Aug 2026 19:33:21 GMT  
		Size: 20.2 MB (20171296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f151b528f61d2b5d52c968b417319991bbd22a0833fc84da9c439ee4cd2dddcc`  
		Last Modified: Mon, 31 Aug 2026 19:33:20 GMT  
		Size: 433.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:978ac9166d37f0da252e16de0ea3b101e8b1c5a1c5829a8fb1445a401108ace8`  
		Last Modified: Mon, 31 Aug 2026 19:33:21 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2092c2bdf00da3409cdaa9ef06c31a5bf2653b1a02d3916444c8a293c49d8c3b`  
		Last Modified: Mon, 31 Aug 2026 19:33:22 GMT  
		Size: 14.6 MB (14585087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db40f9ee90deac70339d5b31d817e0550fe75b51846f925e06f259cb3aafadd2`  
		Last Modified: Mon, 31 Aug 2026 19:33:22 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d99483215b0d9a009fb6410da6770fa139d648d69ce7799d17092c5623962b05`  
		Last Modified: Mon, 31 Aug 2026 19:33:23 GMT  
		Size: 14.7 MB (14699402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70e06e7f8620abe52c4c253a003c0b397368e87e78ac0f2b85c6a8916d8363f7`  
		Last Modified: Mon, 31 Aug 2026 19:33:23 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aef604e35f5a9b9881b118d9a716cd54daf6b79a95ef0f9aa4302399e3f35b40`  
		Last Modified: Mon, 31 Aug 2026 19:33:23 GMT  
		Size: 240.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f328b292c206000a9abd9da627fb7c29cdad3ba333e0e1ceb60c9aaee9e0252e`  
		Last Modified: Mon, 31 Aug 2026 19:33:24 GMT  
		Size: 887.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eb57130983631cbd068c8eab78622125238bdf6cb88bb8bfdaad02bc721c593`  
		Last Modified: Tue, 01 Sep 2026 22:11:42 GMT  
		Size: 7.6 MB (7609314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e8936221fc8e9f28741685315664e738d3ba754ce628606372fd34afc8bd39f`  
		Last Modified: Tue, 01 Sep 2026 22:11:42 GMT  
		Size: 310.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:077bac7f88fea9dbdde8bbc6d60262bdf9f146f5a39509375a685f1f038ec8f4`  
		Last Modified: Tue, 01 Sep 2026 22:11:42 GMT  
		Size: 254.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:288d0c98fb2595cdcb12b04f5494c9a36d38fde123adcb2279b1b4baee227321`  
		Last Modified: Tue, 01 Sep 2026 22:11:42 GMT  
		Size: 833.0 KB (832979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beef43cc63f48a41258ffa2630c632e1f42dbac21c051a49e3b5a62b0043c959`  
		Last Modified: Tue, 01 Sep 2026 22:11:43 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5f2039d96a9c476ce3fa62d4ce7580007b7b11bbd6feeaa239ba1822348f735`  
		Last Modified: Tue, 01 Sep 2026 22:11:44 GMT  
		Size: 23.6 MB (23592158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:apache-bookworm` - unknown; unknown

```console
$ docker pull drupal@sha256:f980c47e9dca2c158c7e8a0c5117cf6aaf7a2aa1135bab196ec7eceac1f3e461
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7235874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:224db4a3e379cb4bfe22e5c11a63ffc0a3dd4137a34648d4874574c0fa5a6d6a`

```dockerfile
```

-	Layers:
	-	`sha256:d8f1ff5ec1444f8b98b49483dacd486b64eaf0107440fe8bbc1ec51c76f2934c`  
		Last Modified: Tue, 01 Sep 2026 22:11:42 GMT  
		Size: 7.2 MB (7192651 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a3633b7880dac12ba409eabb0f86782cf13cb9ab9db07379bb0b8f8a258473c8`  
		Last Modified: Tue, 01 Sep 2026 22:11:41 GMT  
		Size: 43.2 KB (43223 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:apache-bookworm` - linux; 386

```console
$ docker pull drupal@sha256:d4791e760d2ea641bab588c068e0e49a325b357417dcd2886fc14b42febc498b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.5 MB (212502292 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a9cf107d3996500bedc99f2aca384c09a1613188b17d33532baacec90f0e1488`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1787529600'
# Mon, 31 Aug 2026 19:05:18 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Mon, 31 Aug 2026 19:05:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 31 Aug 2026 19:05:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 19:05:33 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 31 Aug 2026 19:05:33 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 31 Aug 2026 19:05:33 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Mon, 31 Aug 2026 19:05:33 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Mon, 31 Aug 2026 19:05:40 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Mon, 31 Aug 2026 19:05:40 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Mon, 31 Aug 2026 19:05:40 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Mon, 31 Aug 2026 19:05:40 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:05:40 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:05:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 31 Aug 2026 19:05:40 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 31 Aug 2026 19:05:40 GMT
ENV PHP_VERSION=8.5.10
# Mon, 31 Aug 2026 19:05:40 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Mon, 31 Aug 2026 19:05:40 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:05:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 31 Aug 2026 19:05:47 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:08:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 31 Aug 2026 19:08:44 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:08:44 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 31 Aug 2026 19:08:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 31 Aug 2026 19:08:44 GMT
STOPSIGNAL SIGWINCH
# Mon, 31 Aug 2026 19:08:44 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:08:44 GMT
WORKDIR /var/www/html
# Mon, 31 Aug 2026 19:08:44 GMT
EXPOSE map[80/tcp:{}]
# Mon, 31 Aug 2026 19:08:44 GMT
CMD ["apache2-foreground"]
# Tue, 01 Sep 2026 22:11:17 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 01 Sep 2026 22:11:17 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Tue, 01 Sep 2026 22:11:18 GMT
RUN { 		echo 'output_buffering=true'; 	} > /usr/local/etc/php/conf.d/docker-php-drupal-recommended.ini # buildkit
# Tue, 01 Sep 2026 22:11:18 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 01 Sep 2026 22:11:18 GMT
ENV DRUPAL_VERSION=11.4.5
# Tue, 01 Sep 2026 22:11:18 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 22:11:18 GMT
WORKDIR /opt/drupal
# Tue, 01 Sep 2026 22:11:24 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 01 Sep 2026 22:11:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:916fb20376728caa546c535959e4183327c2e505d617f0cc2f2d4d1c33da898f`  
		Last Modified: Mon, 24 Aug 2026 23:20:30 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c93fdda27b266230a48a885c7db7fd62993436075ce8c8ac385166908b29e09`  
		Last Modified: Mon, 31 Aug 2026 19:09:04 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5fee355d11da7e17aed0ac15b2b793b4d53bc78ae72f1769cd015e9abb85181`  
		Last Modified: Mon, 31 Aug 2026 19:09:07 GMT  
		Size: 101.5 MB (101536092 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e1f6a83e5ac04af3ce8fa1e81d9a340565584569bf0cba0bb35ba477a98c69`  
		Last Modified: Mon, 31 Aug 2026 19:09:04 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc2953387002d53820aa313b3750f1a490d6a08039a73ecef1a9728a998e696`  
		Last Modified: Mon, 31 Aug 2026 19:09:05 GMT  
		Size: 20.7 MB (20668195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e508e264b6173d01286d53d3d0fde675e9e71e5ca0adcc5ea1bd4228b53c3d0`  
		Last Modified: Mon, 31 Aug 2026 19:09:06 GMT  
		Size: 431.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be953fa0e44e18a7b88df7d421d1a027aa48a7e42a8d376c102d9fb5e40b1d76`  
		Last Modified: Mon, 31 Aug 2026 19:09:05 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da9dfcacf29e7d36758c3041e5077e693789c8e300436a494216f79def83862c`  
		Last Modified: Mon, 31 Aug 2026 19:09:07 GMT  
		Size: 14.6 MB (14584483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be3c1f98b3eaf682508ed1e163d2b9c26e94212b94cc8e788af90175ef79625`  
		Last Modified: Mon, 31 Aug 2026 19:09:07 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8821bb340242f14411b0ec324a423736cf576b9c14e9a48a22a3b715e0bf7188`  
		Last Modified: Mon, 31 Aug 2026 19:09:08 GMT  
		Size: 15.5 MB (15500551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f272df1a46e16d09cf087609e1b6d5428b7a23671bafb08b14dcef34c6db8683`  
		Last Modified: Mon, 31 Aug 2026 19:09:08 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59b0a5c068edd2b617a20232788627005d11546be4601b07149e44a486f66c14`  
		Last Modified: Mon, 31 Aug 2026 19:09:09 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cee6db55785e899556c675b593fef63dcafa670fb600df6f9ac8d4bef09f0cb`  
		Last Modified: Mon, 31 Aug 2026 19:09:09 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d639cfa2282da32a907370f84a671dddcc661a4ef25f12cab7c200c67cf551a4`  
		Last Modified: Tue, 01 Sep 2026 22:11:41 GMT  
		Size: 6.6 MB (6560577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de2d4c0550eef5f9479b2e18f13362c309eef6f03d7695cbb1e94fe0eac96e62`  
		Last Modified: Tue, 01 Sep 2026 22:11:40 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6c9f7c374080676c33dc7551b7b824da88511515557453b1c59cabc4b1b622a`  
		Last Modified: Tue, 01 Sep 2026 22:11:41 GMT  
		Size: 258.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dd5397c298c938b5b4c2ce223d71fad1da9817dfe2d37004837392e3b051992`  
		Last Modified: Tue, 01 Sep 2026 22:11:41 GMT  
		Size: 833.0 KB (832976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21f807500f4aaa197997fecdd8b4c84a9ecd474796b92bd6903de1f0eab431f8`  
		Last Modified: Tue, 01 Sep 2026 22:11:42 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6984fc10dea6c588d1d15899ab79e97c83e69ce237f0597178f852812969b28c`  
		Last Modified: Tue, 01 Sep 2026 22:11:42 GMT  
		Size: 23.6 MB (23592200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:apache-bookworm` - unknown; unknown

```console
$ docker pull drupal@sha256:35e83b8a75686b69adc881695da5740b3f3af171398af668bdd9c493590cced6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7180057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31161c3289858306343ea711440365a5e622f53d7a2965489d91dbc9364772d5`

```dockerfile
```

-	Layers:
	-	`sha256:58b67bccf2ed9969e4e55cd35b18669f372a88ad808e930dcff5adabe51836b3`  
		Last Modified: Tue, 01 Sep 2026 22:11:41 GMT  
		Size: 7.1 MB (7137115 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e504244297c88f4f91ab029cd8727e5fc6bc101a123f3b374153c2afddebda56`  
		Last Modified: Tue, 01 Sep 2026 22:11:40 GMT  
		Size: 42.9 KB (42942 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:apache-bookworm` - linux; ppc64le

```console
$ docker pull drupal@sha256:e21199b4d738a01aecdb00504a02a5cbfb7c6fcfe11cfc6a88670e47276a00da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219147108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f0041d0829829c06778405b3109e64b2de152ea40ea2187388d8684b81bcbe95`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:57:31 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 25 Aug 2026 00:58:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Aug 2026 00:58:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:58:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Aug 2026 00:58:21 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 25 Aug 2026 00:58:21 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 25 Aug 2026 00:58:21 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 25 Aug 2026 00:59:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 25 Aug 2026 00:59:18 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 25 Aug 2026 00:59:19 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 25 Aug 2026 00:59:19 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:59:19 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:59:19 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 00:59:19 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 25 Aug 2026 00:59:19 GMT
ENV PHP_VERSION=8.5.10
# Tue, 25 Aug 2026 00:59:19 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Tue, 25 Aug 2026 00:59:19 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:30:49 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 31 Aug 2026 19:30:50 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:35:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 31 Aug 2026 19:35:30 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:35:32 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 31 Aug 2026 19:35:32 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 31 Aug 2026 19:35:32 GMT
STOPSIGNAL SIGWINCH
# Mon, 31 Aug 2026 19:35:33 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:35:35 GMT
WORKDIR /var/www/html
# Mon, 31 Aug 2026 19:35:35 GMT
EXPOSE map[80/tcp:{}]
# Mon, 31 Aug 2026 19:35:35 GMT
CMD ["apache2-foreground"]
# Mon, 31 Aug 2026 21:59:46 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 31 Aug 2026 21:59:46 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Mon, 31 Aug 2026 21:59:46 GMT
RUN { 		echo 'output_buffering=true'; 	} > /usr/local/etc/php/conf.d/docker-php-drupal-recommended.ini # buildkit
# Tue, 01 Sep 2026 22:10:28 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 01 Sep 2026 22:10:28 GMT
ENV DRUPAL_VERSION=11.4.5
# Tue, 01 Sep 2026 22:10:28 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 22:10:28 GMT
WORKDIR /opt/drupal
# Tue, 01 Sep 2026 22:10:43 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 01 Sep 2026 22:10:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:7aa3e4fcb75b78de0549a83b157bf61da822bcd023735210fb72766eaa14cc64`  
		Last Modified: Mon, 24 Aug 2026 23:19:16 GMT  
		Size: 32.1 MB (32076477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:807cae1e1aee5f78ee239ba7f7081151c4a8880b2f117cd7c464c65b1767a802`  
		Last Modified: Tue, 25 Aug 2026 01:04:12 GMT  
		Size: 229.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f08d4e2298742cd14263e0b6ff729f73cd0806900c3abd83ee09519f39657922`  
		Last Modified: Tue, 25 Aug 2026 01:04:16 GMT  
		Size: 103.3 MB (103333033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:482d9597fb3c91d0bf7f71b991198b743566cc8c615136c0b23e2a17994f6e61`  
		Last Modified: Tue, 25 Aug 2026 01:04:12 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf2745b8551b82019c9c2246442b74018b1ddede9aff38d67bf60b5ca51a64b7`  
		Last Modified: Tue, 25 Aug 2026 01:04:53 GMT  
		Size: 21.3 MB (21333942 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:add3e7a5857aa1ee10ffe2c613694c42e283e3ae0d39f23ca2273b2c8c29a6dc`  
		Last Modified: Tue, 25 Aug 2026 01:04:52 GMT  
		Size: 436.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab88e14e238776613ad561778d794503bb1c53dceb0119c01a0b0051501e859f`  
		Last Modified: Tue, 25 Aug 2026 01:04:51 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0cafcba4204e64ae2bf3d62fd48c176ef35e4b548f251f07ac48d274275a69b`  
		Last Modified: Mon, 31 Aug 2026 19:36:15 GMT  
		Size: 14.6 MB (14584862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:668916631506e5b1894bf998502b399a30ed4754e75082a0986776180df17cf0`  
		Last Modified: Mon, 31 Aug 2026 19:36:14 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7667f54f49b1d14a603e3ea03af84ba84303423f9ab2e32b6053ccdb8dec5d11`  
		Last Modified: Mon, 31 Aug 2026 19:36:15 GMT  
		Size: 15.2 MB (15158109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a86bc10e79dc17183c9648fd3fe3358f143ca86a43461e9fd6b8088d060a5bc`  
		Last Modified: Mon, 31 Aug 2026 19:36:14 GMT  
		Size: 2.5 KB (2459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f83913c8ff975d04ac022fb4bb2f3df9b3e1a97cb54634d6287f781d852a84b4`  
		Last Modified: Mon, 31 Aug 2026 19:36:15 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d820fd91012c480fd9a89b80f2d90d7712167750edc38a48f30bc49064788919`  
		Last Modified: Mon, 31 Aug 2026 19:36:15 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb52818725eb7c395d4ce225cc5275ff2273a9b6379811107b6ed1310a14515f`  
		Last Modified: Mon, 31 Aug 2026 22:00:44 GMT  
		Size: 8.2 MB (8229283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d77bfd5283e1a4cec4a21084cd3f4e2d869751873dba2c31edc3af19b3bc0d0c`  
		Last Modified: Mon, 31 Aug 2026 22:00:43 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f458fe81b3a950e06016517ef6e9596513fbee0a5a7f497becd0b38a98e81db`  
		Last Modified: Mon, 31 Aug 2026 22:00:44 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6760dd02e89c851cdf3805b6370f22efe601140a057e0d54db09777998624424`  
		Last Modified: Tue, 01 Sep 2026 22:11:24 GMT  
		Size: 833.0 KB (832980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7c4e22737a5fd079a0afb91953711067ab0f00b2e3abe138b0e33489334d07e`  
		Last Modified: Tue, 01 Sep 2026 22:11:23 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:898fb5eeeedf32ab83d7ed646153177984697a018f087eba82f6d6e63de53f24`  
		Last Modified: Tue, 01 Sep 2026 22:11:24 GMT  
		Size: 23.6 MB (23592242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:apache-bookworm` - unknown; unknown

```console
$ docker pull drupal@sha256:e6a07dbf8d3a99d37c7886dd5cffea102e019240bae82e1e693c8c85d03b6fce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7184458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ce684ae125ac61614ce167cec274ec111539244d5b5272a2c5288086d519307`

```dockerfile
```

-	Layers:
	-	`sha256:5cecb4ee5133c5bf949f5933e8f94641318fe9c3c7ab729f0ba4c2f64ac6e703`  
		Last Modified: Tue, 01 Sep 2026 22:11:23 GMT  
		Size: 7.1 MB (7141366 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2629f2ccadb596abc040db779b6123c49912d156dc1710751c949a5cb1155d85`  
		Last Modified: Tue, 01 Sep 2026 22:11:23 GMT  
		Size: 43.1 KB (43092 bytes)  
		MIME: application/vnd.in-toto+json
