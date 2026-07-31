## `drupal:php8.4-apache-bookworm`

```console
$ docker pull drupal@sha256:96ce069a5b51dc93254afa2cf17fd1cd28f5cfe4accbb6951592427c5eca225c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 12
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
	-	linux; s390x
	-	unknown; unknown

### `drupal:php8.4-apache-bookworm` - linux; amd64

```console
$ docker pull drupal@sha256:df0ce1d57463e2e6bb486b967e853467a0a5b7a754df2e7861be925321e3123e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.4 MB (214390448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:43efc949e750ed43dc5b583632666eda9474c15e78b6626d69d234adcb87b7e4`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1783900800'
# Thu, 30 Jul 2026 22:45:41 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 30 Jul 2026 22:45:55 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 30 Jul 2026 22:45:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 30 Jul 2026 22:45:55 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:45:55 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:45:55 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 30 Jul 2026 22:45:55 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 30 Jul 2026 22:46:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 30 Jul 2026 22:46:01 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 30 Jul 2026 22:46:01 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 30 Jul 2026 22:46:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:46:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:46:01 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:46:01 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 30 Jul 2026 22:46:01 GMT
ENV PHP_VERSION=8.4.24
# Thu, 30 Jul 2026 22:46:01 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Thu, 30 Jul 2026 22:46:01 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Thu, 30 Jul 2026 22:46:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 30 Jul 2026 22:46:08 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:48:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:48:43 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:48:43 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 22:48:43 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:48:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:48:43 GMT
STOPSIGNAL SIGWINCH
# Thu, 30 Jul 2026 22:48:43 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:48:43 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 22:48:43 GMT
EXPOSE map[80/tcp:{}]
# Thu, 30 Jul 2026 22:48:43 GMT
CMD ["apache2-foreground"]
# Fri, 31 Jul 2026 00:09:24 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 31 Jul 2026 00:09:24 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Fri, 31 Jul 2026 00:09:24 GMT
RUN { 		echo 'output_buffering=true'; 	} > /usr/local/etc/php/conf.d/docker-php-drupal-recommended.ini # buildkit
# Fri, 31 Jul 2026 00:09:24 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:09:24 GMT
ENV DRUPAL_VERSION=11.4.4
# Fri, 31 Jul 2026 00:09:24 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Fri, 31 Jul 2026 00:09:24 GMT
WORKDIR /opt/drupal
# Fri, 31 Jul 2026 00:09:30 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Fri, 31 Jul 2026 00:09:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:597c6c618d36213af657a6a8444a5d87801f9a219682b206ad21ccb8f3e57bbd`  
		Last Modified: Tue, 14 Jul 2026 00:14:25 GMT  
		Size: 28.2 MB (28232643 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8f2fe1652b4682f8eb257b85908ebba792cebdea0a11bfbb9f525c4cd777fad`  
		Last Modified: Thu, 30 Jul 2026 22:49:03 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c8905cfb5b48e018648a25b87d0605f4741bbbe4fc1c16608aa85307fba91e4`  
		Last Modified: Thu, 30 Jul 2026 22:49:06 GMT  
		Size: 104.3 MB (104346528 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27ade26a5fbf1ee4cd682eb146ddbb41c39f4cf2df88b83c0e1a62a7bb1bd89e`  
		Last Modified: Thu, 30 Jul 2026 22:49:03 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdba6737dfc4cde57cfb30bcd453e01a83e40fe63414ceb54bf39eff539b67b4`  
		Last Modified: Thu, 30 Jul 2026 22:49:04 GMT  
		Size: 20.1 MB (20141689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a31acb40c0e9800e1a551816c0fb8911ca638d8e9cf99d1fcf12d24900d77eae`  
		Last Modified: Thu, 30 Jul 2026 22:49:04 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d46c3ffcf6f3216f4163b7f92e46534b8239c064fb97a8178a00f7a8f59c367a`  
		Last Modified: Thu, 30 Jul 2026 22:49:05 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc76a82bc85bd762f365b9f2a280fcbcbf44f4462066292d8a86f572c71bb66c`  
		Last Modified: Thu, 30 Jul 2026 22:49:06 GMT  
		Size: 13.9 MB (13881284 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81cc48f2aa8b7da9f4eec3a7dc4c534ab066acfc1a2dd7c3bc5787bceedbd4b6`  
		Last Modified: Thu, 30 Jul 2026 22:49:06 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d76f333348140eef9a6f3e6973d541904aade94a28a542b93b3f355694f27c6`  
		Last Modified: Thu, 30 Jul 2026 22:49:06 GMT  
		Size: 13.7 MB (13672109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47f0afa6ccdb5871099d95c8d0154f579455bf0cfeb9e24ad38e17b2307cc1b7`  
		Last Modified: Thu, 30 Jul 2026 22:49:07 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0960f02f00e86f4875c3a066c3cbdcdc383266b57669ece236aabc638f35923d`  
		Last Modified: Thu, 30 Jul 2026 22:49:08 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f90239e32a0b132de50116f40fc1aec67a4f71f8b61a1c4fe6c4fd89fa34762`  
		Last Modified: Thu, 30 Jul 2026 22:49:08 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4357da2268f1d35554141d1f8b9c4a16e9ae0b03e59eb73964a5076a98fdffcf`  
		Last Modified: Thu, 30 Jul 2026 22:49:08 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3fa31ead4a555989a81e79c944f9c945ffa608ecb88992613355ce4a12cff1e`  
		Last Modified: Fri, 31 Jul 2026 00:09:47 GMT  
		Size: 9.7 MB (9715263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:078f3fcb4e2b9eb39236a9582032009642ff55d0da1826e6e02129ac3c196ae8`  
		Last Modified: Fri, 31 Jul 2026 00:09:47 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af6a97abd1019778a2f0da017230b71b534a8287aad864715703cbc7d1786e2b`  
		Last Modified: Fri, 31 Jul 2026 00:09:47 GMT  
		Size: 259.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:432be04577a5c3b361d3e60f25c9a0adf2fd76d83669a5fa4cd8eda1671f0d9d`  
		Last Modified: Fri, 31 Jul 2026 00:09:47 GMT  
		Size: 832.3 KB (832285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cddbf8c9ce639fa1f3893b3bc3710a1924eadf56092eafab4e9e0a5f23da354b`  
		Last Modified: Fri, 31 Jul 2026 00:09:48 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:008aed5cd78ad67d478e2231c0de95579080b3b130645b7c78554910a504afcd`  
		Last Modified: Fri, 31 Jul 2026 00:09:49 GMT  
		Size: 23.6 MB (23562217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.4-apache-bookworm` - unknown; unknown

```console
$ docker pull drupal@sha256:6fd60c6e1b5785239c9bb1efe950f30903128119d4cbb61cf9f41d1c0ec5fbae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7201589 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb7b9841403b289abc59af96d1376c7c8ae33e91237fa21dc7854752d3fb6867`

```dockerfile
```

-	Layers:
	-	`sha256:adba2d184a0fc9290a8b685c0986e8a203ce2145211306edc65cd1683f2b2828`  
		Last Modified: Fri, 31 Jul 2026 00:09:47 GMT  
		Size: 7.2 MB (7158797 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c69e2e6339ad19e151b38ced3d25558b72a51c8a83cc8503c87feb19b0b9066f`  
		Last Modified: Fri, 31 Jul 2026 00:09:46 GMT  
		Size: 42.8 KB (42792 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.4-apache-bookworm` - linux; arm variant v7

```console
$ docker pull drupal@sha256:2aeab282d32f7e7abf84a923ea82f515bedcef8e01c2052e664497999682e872
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.3 MB (175261745 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d23287fcd0a655f0f00db7a0483dd4435b2c92c5747a8d3b019753231d73f48a`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1783900800'
# Thu, 30 Jul 2026 23:04:59 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 30 Jul 2026 23:05:14 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 30 Jul 2026 23:05:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 30 Jul 2026 23:05:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 23:05:14 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 23:05:14 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 30 Jul 2026 23:05:14 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 30 Jul 2026 23:05:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 30 Jul 2026 23:05:21 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 30 Jul 2026 23:05:21 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 30 Jul 2026 23:05:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 23:05:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 23:05:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 23:05:21 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 30 Jul 2026 23:05:21 GMT
ENV PHP_VERSION=8.4.24
# Thu, 30 Jul 2026 23:05:21 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Thu, 30 Jul 2026 23:05:21 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Thu, 30 Jul 2026 23:05:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 30 Jul 2026 23:05:30 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:08:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 23:08:16 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:08:17 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 23:08:17 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 23:08:17 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 23:08:17 GMT
STOPSIGNAL SIGWINCH
# Thu, 30 Jul 2026 23:08:17 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:08:17 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 23:08:17 GMT
EXPOSE map[80/tcp:{}]
# Thu, 30 Jul 2026 23:08:17 GMT
CMD ["apache2-foreground"]
# Fri, 31 Jul 2026 00:21:59 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 31 Jul 2026 00:22:00 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Fri, 31 Jul 2026 00:22:00 GMT
RUN { 		echo 'output_buffering=true'; 	} > /usr/local/etc/php/conf.d/docker-php-drupal-recommended.ini # buildkit
# Fri, 31 Jul 2026 00:22:00 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:22:00 GMT
ENV DRUPAL_VERSION=11.4.4
# Fri, 31 Jul 2026 00:22:00 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Fri, 31 Jul 2026 00:22:00 GMT
WORKDIR /opt/drupal
# Fri, 31 Jul 2026 00:22:07 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Fri, 31 Jul 2026 00:22:07 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:062aa2cf4b57fd502d033561ab916d965684abc49a9e917b51749972ddf8ade5`  
		Last Modified: Tue, 14 Jul 2026 00:14:03 GMT  
		Size: 23.9 MB (23939779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ba1353aada508b784c3623fde16e1a0d82fb7f7fefcc4f514e292e83af8477b`  
		Last Modified: Thu, 30 Jul 2026 23:08:33 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8111832d25ab7479ab06300f44c236a5e5c1faa801d0d62c06afc117ed0dbba4`  
		Last Modified: Thu, 30 Jul 2026 23:08:35 GMT  
		Size: 76.2 MB (76153822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea1157ea3cc9e6bd9e71c1a7bfb28606b5d128cc0dd06610806046e6d7ee7b02`  
		Last Modified: Thu, 30 Jul 2026 23:08:33 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bcf391369057eaf133de3bd33657b4f539d4d788425d6c975c89493fe41c886`  
		Last Modified: Thu, 30 Jul 2026 23:08:34 GMT  
		Size: 18.9 MB (18850879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a708054709b572f4b3a7dbba698fbfd1524480a07920d21a27ea39c71845d112`  
		Last Modified: Thu, 30 Jul 2026 23:08:34 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a59b6db3648d3f0776eb874afb62c23be84b5dbc572c8ef6a2311a38700840c`  
		Last Modified: Thu, 30 Jul 2026 23:08:34 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14a1c452225c848421a885e46efc9dc3445b732fbb986fc26a09b210928d6e44`  
		Last Modified: Thu, 30 Jul 2026 23:08:35 GMT  
		Size: 13.9 MB (13879440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8045eac76c8ab37a7d2dc4b2e20e70f49bc4128f89f324b18908724dce11a6c`  
		Last Modified: Thu, 30 Jul 2026 23:08:35 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57f9e84083cb27425e3b55dea97c1417063338b0a39a9dc01891416455b72a75`  
		Last Modified: Thu, 30 Jul 2026 23:08:35 GMT  
		Size: 11.7 MB (11702646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63542b55c636d77bdde264363b42a7d2df8aad590ce8007c697a8d1fd55a6718`  
		Last Modified: Thu, 30 Jul 2026 23:08:36 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b38620b9ed6ab1a6e6606269c081f423d845d389b9bb396cbb94dd361f6f0dd8`  
		Last Modified: Thu, 30 Jul 2026 23:08:37 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:044f8b5554c30e6f428b8413c1e42cf8b4d9cd8c45845a30cfaec86cc09183b9`  
		Last Modified: Thu, 30 Jul 2026 23:08:37 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58d803977be750704611b41d30d9324caa8d05c290c5deafa61a23796d227e1b`  
		Last Modified: Thu, 30 Jul 2026 23:08:37 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:459a404797499e8fac6740d4c45c69a0112c1e06fc9e9bce88170183b7e67e2f`  
		Last Modified: Fri, 31 Jul 2026 00:22:25 GMT  
		Size: 6.3 MB (6333888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d34d9bcc1a9e5a17a3a0239ea951bf87aac0147fe5c5c376a49ad71b8c19019`  
		Last Modified: Fri, 31 Jul 2026 00:22:25 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbb29d3ef11c58f31ae02848f71ca4e3af9aad32cd07b85b5abe0986c307c072`  
		Last Modified: Fri, 31 Jul 2026 00:22:25 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c118fc36400fbd8ce1d276c45700666794b5d624615adda2372efb529d35abd`  
		Last Modified: Fri, 31 Jul 2026 00:22:26 GMT  
		Size: 832.3 KB (832286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b5b6faed00d4d211b506a06ef59fc38f3ecc77d344739caf3e791d15a64f1a5`  
		Last Modified: Fri, 31 Jul 2026 00:22:27 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f6d083d2330a90da3c4e37006d35633f8c34c29f6f01ca399a07dca5b44a92a`  
		Last Modified: Fri, 31 Jul 2026 00:22:27 GMT  
		Size: 23.6 MB (23562588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.4-apache-bookworm` - unknown; unknown

```console
$ docker pull drupal@sha256:637720621e2db2e86c2881f7f03936146cd3ee0f7472c0ecf798f7dd9640b651
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7015272 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aaf15a0321de46a9eee991bbe31506b7eee298947d5bae167b1b3c521870d3c7`

```dockerfile
```

-	Layers:
	-	`sha256:eeda77a54f1ef6188a39654c5d1b12596dc30cec0d7de9d8f6e07891a5b7a96d`  
		Last Modified: Fri, 31 Jul 2026 00:22:25 GMT  
		Size: 7.0 MB (6972346 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f64cb08e629d441cda1742f290c71129795e493974051d88c5ef239f689712e4`  
		Last Modified: Fri, 31 Jul 2026 00:22:25 GMT  
		Size: 42.9 KB (42926 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.4-apache-bookworm` - linux; arm64 variant v8

```console
$ docker pull drupal@sha256:00aff2a64e64d529ffed0b85ce6f481bb7411d4911d66fdfa920c95b651f2a9e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.7 MB (205665411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37eec858925e3c348daea3ec3116363c0f854dc1f59614e8fbecc57b86729306`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1783900800'
# Thu, 30 Jul 2026 22:46:04 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 30 Jul 2026 22:46:17 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 30 Jul 2026 22:46:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 30 Jul 2026 22:46:17 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:46:17 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:46:17 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 30 Jul 2026 22:46:17 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 30 Jul 2026 22:46:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 30 Jul 2026 22:46:23 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 30 Jul 2026 22:46:23 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 30 Jul 2026 22:46:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:46:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:46:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:46:23 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 30 Jul 2026 22:46:23 GMT
ENV PHP_VERSION=8.4.24
# Thu, 30 Jul 2026 22:46:23 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Thu, 30 Jul 2026 22:46:23 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Thu, 30 Jul 2026 22:46:30 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 30 Jul 2026 22:46:30 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:49:16 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:49:16 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:49:16 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 22:49:17 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:49:17 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:49:17 GMT
STOPSIGNAL SIGWINCH
# Thu, 30 Jul 2026 22:49:17 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:49:17 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 22:49:17 GMT
EXPOSE map[80/tcp:{}]
# Thu, 30 Jul 2026 22:49:17 GMT
CMD ["apache2-foreground"]
# Fri, 31 Jul 2026 00:12:25 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 31 Jul 2026 00:12:25 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Fri, 31 Jul 2026 00:12:25 GMT
RUN { 		echo 'output_buffering=true'; 	} > /usr/local/etc/php/conf.d/docker-php-drupal-recommended.ini # buildkit
# Fri, 31 Jul 2026 00:12:25 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:12:25 GMT
ENV DRUPAL_VERSION=11.4.4
# Fri, 31 Jul 2026 00:12:25 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Fri, 31 Jul 2026 00:12:25 GMT
WORKDIR /opt/drupal
# Fri, 31 Jul 2026 00:12:33 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Fri, 31 Jul 2026 00:12:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:53bb9e501f1803aca595be8d902a62cea6bf4d996ce6f7dfe16c1c97be343e6c`  
		Last Modified: Tue, 14 Jul 2026 00:14:08 GMT  
		Size: 28.1 MB (28117255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1f58b1c3dd091ecee8c0b0c69c006483519abf175d8299c64999d89512d173c`  
		Last Modified: Thu, 30 Jul 2026 22:49:36 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a46e7518b7d2a8c2849be10cb9d2e9b76540358229629f61b076adbd0954b53`  
		Last Modified: Thu, 30 Jul 2026 22:49:38 GMT  
		Size: 98.2 MB (98181747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4b2339b2332fb40e3633a3cf4acce35f69b37b6631f62ccf2386acb2f8f3d20`  
		Last Modified: Thu, 30 Jul 2026 22:49:36 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62f3d30ba4fdcc05a554e0198a86024f12628b21c486e3c51ea4777054713cab`  
		Last Modified: Thu, 30 Jul 2026 22:49:37 GMT  
		Size: 20.2 MB (20166121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18a2522444ff1331d59d33e0a4b2aaf623257877f334752b1c4af6a4ac583bdd`  
		Last Modified: Thu, 30 Jul 2026 22:49:37 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abc54dad499ea0bb9a86f063cc1058eb5c5153a149a97dfdcbce547859752d28`  
		Last Modified: Thu, 30 Jul 2026 22:49:37 GMT  
		Size: 482.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9db5c0de2cdbd7181faa7cb4c1af100001544d85a5bae47b1a2e728181eabce`  
		Last Modified: Thu, 30 Jul 2026 22:49:39 GMT  
		Size: 13.9 MB (13880948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a9b2ab5dddbc13abfd405f0c8e7e7aac83519b4b4fdc8fe52cf3cac02f4da2d`  
		Last Modified: Thu, 30 Jul 2026 22:49:39 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0b1ed9801e4190dae089fc3abc9c4fbef108335f29eeb4b802be63e720a842b`  
		Last Modified: Thu, 30 Jul 2026 22:49:39 GMT  
		Size: 13.3 MB (13309119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5bca37c320c50bc3883a5a80a3b85efe89c63ce511ece64a0ba1b83c1e5bfc0`  
		Last Modified: Thu, 30 Jul 2026 22:49:40 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:382207f7ec52b53469792ae9c5dbfdc982e73f9a9354054e2be7779e517b1533`  
		Last Modified: Thu, 30 Jul 2026 22:49:40 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1159e48747ea16fc2eb24aaca733c727246072e585f059ef99129915eb227df5`  
		Last Modified: Thu, 30 Jul 2026 22:49:40 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a105aabdeebbd58df04d286180f5a1ce923e91ac64ba0eab9f35bc38279b341f`  
		Last Modified: Thu, 30 Jul 2026 22:49:40 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e956d117f53ac1475c8d7f7002f07eac104c183d8a56619cf8e5a3755aee35cf`  
		Last Modified: Fri, 31 Jul 2026 00:12:52 GMT  
		Size: 7.6 MB (7608599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ea809385ee5fe936d4cfc2fb4bd9ba03d1b6f3022efc02f5c1bb2b4a88b4b28`  
		Last Modified: Fri, 31 Jul 2026 00:12:51 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd3825cb1255dae3574c128554d290c9b6a95a56f2c1c4ef21dc426952f5c112`  
		Last Modified: Fri, 31 Jul 2026 00:12:51 GMT  
		Size: 259.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99426a90f1c4217f90c10ab39c1653d60f57720a805c6e59639eac0e302187c8`  
		Last Modified: Fri, 31 Jul 2026 00:12:51 GMT  
		Size: 832.3 KB (832288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7f8288a35eee22a3ac5848cd1a812be1e4870d3f7d3412aa95398b5e705ffca`  
		Last Modified: Fri, 31 Jul 2026 00:12:53 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:202b3fb43c1401539f6352e06523df2d241ddd4296f859ad7ec333d9525068d9`  
		Last Modified: Fri, 31 Jul 2026 00:12:53 GMT  
		Size: 23.6 MB (23562908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.4-apache-bookworm` - unknown; unknown

```console
$ docker pull drupal@sha256:d5d0fa02796fd1df6f600effe8e4bac4b5da768dd715624517903a1dfd6787f5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7230241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b9be9df51b2ae42094eee8896ae9ea8fb4695dfbd5ef259a7c2a08966948d09b`

```dockerfile
```

-	Layers:
	-	`sha256:a8b0fb7e610aa35cc77aad1dac3b1052933a16ad31a07d3f8a819bd362fa73f1`  
		Last Modified: Fri, 31 Jul 2026 00:12:51 GMT  
		Size: 7.2 MB (7187281 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e3bec5975de9012b70f1c8569160eb3badc5214871c2b0a9874007804e48e675`  
		Last Modified: Fri, 31 Jul 2026 00:12:51 GMT  
		Size: 43.0 KB (42960 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.4-apache-bookworm` - linux; 386

```console
$ docker pull drupal@sha256:ce8851eafcdf629a744b49a462345c541c3292819707bf8d942f02905cd18f5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.2 MB (210233537 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ba29ff9e43c53f1f62fab0022f0e1e84df4f3f174ff8eed058e77b66a51dc11`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1783900800'
# Thu, 30 Jul 2026 22:46:07 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 30 Jul 2026 22:46:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 30 Jul 2026 22:46:21 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 30 Jul 2026 22:46:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:46:21 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:46:21 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 30 Jul 2026 22:46:21 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 30 Jul 2026 22:46:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 30 Jul 2026 22:46:27 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 30 Jul 2026 22:46:27 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 30 Jul 2026 22:46:27 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:46:27 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:46:27 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:46:27 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 30 Jul 2026 22:46:27 GMT
ENV PHP_VERSION=8.4.24
# Thu, 30 Jul 2026 22:46:27 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Thu, 30 Jul 2026 22:46:27 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Thu, 30 Jul 2026 22:46:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 30 Jul 2026 22:46:34 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:49:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:49:14 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:49:14 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 22:49:14 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:49:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:49:14 GMT
STOPSIGNAL SIGWINCH
# Thu, 30 Jul 2026 22:49:14 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:49:15 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 22:49:15 GMT
EXPOSE map[80/tcp:{}]
# Thu, 30 Jul 2026 22:49:15 GMT
CMD ["apache2-foreground"]
# Fri, 31 Jul 2026 00:09:28 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 31 Jul 2026 00:09:28 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Fri, 31 Jul 2026 00:09:28 GMT
RUN { 		echo 'output_buffering=true'; 	} > /usr/local/etc/php/conf.d/docker-php-drupal-recommended.ini # buildkit
# Fri, 31 Jul 2026 00:09:28 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:09:28 GMT
ENV DRUPAL_VERSION=11.4.4
# Fri, 31 Jul 2026 00:09:28 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Fri, 31 Jul 2026 00:09:28 GMT
WORKDIR /opt/drupal
# Fri, 31 Jul 2026 00:09:34 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Fri, 31 Jul 2026 00:09:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:bf72a913910eb4642e4c6222887aecd4a49ccbddcb61dd27621e31f8bce1a917`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 29.2 MB (29221052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9988e66970f6c1458cf24b0dcc35ea0376cdf5713c4c8ff494f0b8b87e211fe`  
		Last Modified: Thu, 30 Jul 2026 22:49:34 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da652a5c6755d00b0797bae820b50a463b160bde395e87e0b582fd8789f6f1f`  
		Last Modified: Thu, 30 Jul 2026 22:49:37 GMT  
		Size: 101.5 MB (101537826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f568a442839be9058bdfb7845e7f65448f408262525a0be39fe9c08742fb2978`  
		Last Modified: Thu, 30 Jul 2026 22:49:34 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e78c4b5d9ed84587cc85dbc7aaa5e9e2bd14a61a3f2bf22b88638774841bc3a`  
		Last Modified: Thu, 30 Jul 2026 22:49:35 GMT  
		Size: 20.7 MB (20667802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a119bc77700d22bff648af3764dfecc850eb893d856adda9cf5cf7af7d3950f0`  
		Last Modified: Thu, 30 Jul 2026 22:49:35 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c320024b385aa75aebdb63bc761bfc331315b4a12e01618679f9e3d2e1b234d0`  
		Last Modified: Thu, 30 Jul 2026 22:49:35 GMT  
		Size: 482.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bc806899b67916a705a98977df7914dff74e1d4b5e12d57d0fddbb5c9f4a1eb`  
		Last Modified: Thu, 30 Jul 2026 22:49:36 GMT  
		Size: 13.9 MB (13880320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:823c16de0fb948231eb27d391552bc33c9d8bd709160e46f5b6304725119a528`  
		Last Modified: Thu, 30 Jul 2026 22:49:36 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b5ea1c4b78c80fdf7f6e63890dab1e21a9b646f8e95604478070b3508cf9f8`  
		Last Modified: Thu, 30 Jul 2026 22:49:37 GMT  
		Size: 14.0 MB (13965315 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a53ced428ea9c28904ab6ed9ae1d920ed33441107088a3f3c2743d942669029f`  
		Last Modified: Thu, 30 Jul 2026 22:49:37 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ddcf19b93214714dee057e2ab7decb76aba81873ddf86be139d462cbe0ece15`  
		Last Modified: Thu, 30 Jul 2026 22:49:38 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dbce94ba3117750336e136abbc0d8c5c1ef41b7b928e67ba4f6199aaa70e8be`  
		Last Modified: Thu, 30 Jul 2026 22:49:38 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a303ed593287bd6b26c1dd906b906bf2bf810f4a503b3f94ed2bda5c19698154`  
		Last Modified: Thu, 30 Jul 2026 22:49:39 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0df8f9569203b0db9d3b61d5666436e7d6d7c2ecefe8a6be98d65ff90f5b09f9`  
		Last Modified: Fri, 31 Jul 2026 00:09:51 GMT  
		Size: 6.6 MB (6560182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70ab74b4bf884a68f855255094c5f74c566cedad68fae0250954f68aa9641526`  
		Last Modified: Fri, 31 Jul 2026 00:09:51 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86010bb315074cc6a079dcbe624faf6c82e60c766ecd9b562e1854154dc254a4`  
		Last Modified: Fri, 31 Jul 2026 00:09:51 GMT  
		Size: 260.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b78ad3c68216f78960941e06b26e56b79857fea3ca4e48831eac1316f5f5042`  
		Last Modified: Fri, 31 Jul 2026 00:09:51 GMT  
		Size: 832.3 KB (832290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b38c7c8097ca060c2c5af7b42cedf82607105d88a28ceedfd2c33fa9020ca5e`  
		Last Modified: Fri, 31 Jul 2026 00:09:52 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e705b4f4d241305787c9bf0cf5a7c3a166c170d1d96d5b0562a356e0102d8d8`  
		Last Modified: Fri, 31 Jul 2026 00:09:53 GMT  
		Size: 23.6 MB (23562321 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.4-apache-bookworm` - unknown; unknown

```console
$ docker pull drupal@sha256:422d950a3f24f0bd8817b17a668f3ccc4fd45db5fc65a1deb1c56ce6ddcd0967
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7174560 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a7518678a36e32d8bb2ff0ff2b5ab348759c7d9c11dee93b80111d0c3b53e06`

```dockerfile
```

-	Layers:
	-	`sha256:8b95aa741568894cf54c9857c2befb0262ebd18af9b3443ef91d5850f2c1f612`  
		Last Modified: Fri, 31 Jul 2026 00:09:51 GMT  
		Size: 7.1 MB (7131813 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f12c664292ef4b9d9feb6209b371256a9db63695b14a5fd57d3c33d35fc964bc`  
		Last Modified: Fri, 31 Jul 2026 00:09:51 GMT  
		Size: 42.7 KB (42747 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.4-apache-bookworm` - linux; ppc64le

```console
$ docker pull drupal@sha256:e5168cb30f4d8b6e6d91d036ee90188dbc58f6e51aade3758e7e62f457c1b9d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.3 MB (217340487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17a8ea080ad37786f6894e985a62ba65edf2f58ddaa7bdef8e62d68172a058d4`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1783900800'
# Thu, 30 Jul 2026 22:44:20 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 30 Jul 2026 22:44:53 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 30 Jul 2026 22:44:53 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 30 Jul 2026 22:44:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:44:53 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:44:53 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 30 Jul 2026 22:44:53 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 30 Jul 2026 22:45:08 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 30 Jul 2026 22:45:09 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 30 Jul 2026 22:45:09 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 30 Jul 2026 22:45:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:45:09 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:45:09 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:45:09 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 30 Jul 2026 22:45:09 GMT
ENV PHP_VERSION=8.4.24
# Thu, 30 Jul 2026 22:45:09 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Thu, 30 Jul 2026 22:45:09 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Fri, 31 Jul 2026 00:13:15 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Fri, 31 Jul 2026 00:13:15 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:17:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 31 Jul 2026 00:17:56 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:17:56 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 31 Jul 2026 00:17:57 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 31 Jul 2026 00:17:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 31 Jul 2026 00:17:57 GMT
STOPSIGNAL SIGWINCH
# Fri, 31 Jul 2026 00:17:57 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:17:58 GMT
WORKDIR /var/www/html
# Fri, 31 Jul 2026 00:17:58 GMT
EXPOSE map[80/tcp:{}]
# Fri, 31 Jul 2026 00:17:58 GMT
CMD ["apache2-foreground"]
# Fri, 31 Jul 2026 04:10:57 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 31 Jul 2026 04:10:58 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Fri, 31 Jul 2026 04:10:58 GMT
RUN { 		echo 'output_buffering=true'; 	} > /usr/local/etc/php/conf.d/docker-php-drupal-recommended.ini # buildkit
# Fri, 31 Jul 2026 04:10:58 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 04:10:58 GMT
ENV DRUPAL_VERSION=11.4.4
# Fri, 31 Jul 2026 04:10:58 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Fri, 31 Jul 2026 04:10:58 GMT
WORKDIR /opt/drupal
# Fri, 31 Jul 2026 04:11:10 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Fri, 31 Jul 2026 04:11:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:c9b1d20e671cdac31ba36b01a8605f995a4fceefbdee30a5e42b874e37fce12b`  
		Last Modified: Tue, 14 Jul 2026 00:12:54 GMT  
		Size: 32.1 MB (32076414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6eb21136e146c4b14135410ca938e4ef49d4c78cf79b952163bb55b846b11847`  
		Last Modified: Thu, 30 Jul 2026 22:50:13 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1219787a9437246fc4e3e8f7ef5c7d32c0ee747aa9887fa3c9d4fcad3afdd21`  
		Last Modified: Thu, 30 Jul 2026 22:50:16 GMT  
		Size: 103.3 MB (103334966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cf1d8d1d4e36f47ae0decd8d4622d30db21a160973ca76b7f446ba70908ba60`  
		Last Modified: Thu, 30 Jul 2026 22:50:13 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e377eded8de6d009f365d03897a169765d5b897da8c9a56220375e5a97594c0`  
		Last Modified: Thu, 30 Jul 2026 22:50:33 GMT  
		Size: 21.3 MB (21335425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:721d1858a8a26417383ee784aa5c40952cd4acf990a2cae9aa23b4b0e157c383`  
		Last Modified: Thu, 30 Jul 2026 22:50:33 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e13ab22dd59f2b0f8f63e9c7dffbf8852f705a06c150b207dd25454a5eb0f59`  
		Last Modified: Thu, 30 Jul 2026 22:50:32 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e4c603574be704197d4156d6429ddc333cc57dbdbd124c2502c4a9a7b418f8e`  
		Last Modified: Fri, 31 Jul 2026 00:18:22 GMT  
		Size: 13.9 MB (13880764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1913f73e1531a492a4085bf60b5c86f1884098945b59536fe67be6dd2bdc1875`  
		Last Modified: Fri, 31 Jul 2026 00:18:21 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9887aa247e0e1f667464e4032a13e931a0e96626c4b7448a1beceb013c2c081`  
		Last Modified: Fri, 31 Jul 2026 00:18:22 GMT  
		Size: 14.1 MB (14081816 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd991a96ed9771312896487008654f7ea0e9586d874eef175b63647d120afe16`  
		Last Modified: Fri, 31 Jul 2026 00:18:21 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40f38015aa5e91b168a49e8c3e23960b71a59bb0f6d2e51367729b0adeb161dd`  
		Last Modified: Fri, 31 Jul 2026 00:18:22 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bd8255d71d567f67ffe997485e540f4773631267b93036329a12c8a94718916`  
		Last Modified: Fri, 31 Jul 2026 00:18:22 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fac2722ef16afbd4d9bd72cc0948bfb87fc84c130b0abaebf364df50da80b5e5`  
		Last Modified: Fri, 31 Jul 2026 00:18:23 GMT  
		Size: 892.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ebe976ef13bf085afd36712bc2be662bbe0b4eae3e12b740bbc0571e903b9e0`  
		Last Modified: Fri, 31 Jul 2026 04:11:49 GMT  
		Size: 8.2 MB (8230380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15d98d2234b5a32060e23ac0964d0b3327b2569f489eff4a3afde536b5a8257b`  
		Last Modified: Fri, 31 Jul 2026 04:11:49 GMT  
		Size: 317.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed47b6b8c1208aadd95862e4fb6225bded252d239b827b787a7e74c8d4fe6a1e`  
		Last Modified: Fri, 31 Jul 2026 04:11:49 GMT  
		Size: 260.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc990e2cdf1ecdb9b3f9eee027ad71aaaba96db242f98241cdefeb4b573c4420`  
		Last Modified: Fri, 31 Jul 2026 04:11:49 GMT  
		Size: 832.3 KB (832290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2104b3531aaaf1798231eb391f67780c97cec45457017e1cf356e7d4e02aba82`  
		Last Modified: Fri, 31 Jul 2026 04:11:50 GMT  
		Size: 113.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff2b2419b8d1a582ae14de1823717d8f0e0566b58e68ce9fe741bec559141391`  
		Last Modified: Fri, 31 Jul 2026 04:11:51 GMT  
		Size: 23.6 MB (23562001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.4-apache-bookworm` - unknown; unknown

```console
$ docker pull drupal@sha256:36c9ae0331dd064bd6ac5fd515e5fce71701e1a90cac7abcc73be6972aceeab7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7178872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95fa354c3364cd10de239f7d31f0eb2efed3900e4a3e3222b25ced9d6eae8765`

```dockerfile
```

-	Layers:
	-	`sha256:e8728596fb635f8686d7f5081cb4a3b4bbc22599a20281110f8a6c0a9ae60733`  
		Last Modified: Fri, 31 Jul 2026 04:11:49 GMT  
		Size: 7.1 MB (7136020 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58efccb4bc7b0831976ac1b1f363256921a04f396ce2a1559494dafd8668e367`  
		Last Modified: Fri, 31 Jul 2026 04:11:49 GMT  
		Size: 42.9 KB (42852 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.4-apache-bookworm` - linux; s390x

```console
$ docker pull drupal@sha256:52a07baa0b675702fc1f5a57f6ecdfe323baaf2bbae7b02cd14097c5b02546a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.0 MB (185979078 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76fa15d02fab5d5a9b7fd1a7f065535fc1d73b8e4e52fca8f249e09051251561`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 14 Jul 2026 01:33:13 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 30 Jul 2026 22:38:49 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 30 Jul 2026 22:38:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 30 Jul 2026 22:38:49 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:38:49 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:38:49 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 30 Jul 2026 22:38:49 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 30 Jul 2026 22:38:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	rm -rf /var/lib/apt/lists/*; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 30 Jul 2026 22:38:57 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 30 Jul 2026 22:38:57 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 30 Jul 2026 22:38:57 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:38:57 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:38:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:38:57 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 30 Jul 2026 22:38:57 GMT
ENV PHP_VERSION=8.4.24
# Thu, 30 Jul 2026 22:38:57 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Thu, 30 Jul 2026 22:38:57 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Thu, 30 Jul 2026 23:15:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 30 Jul 2026 23:15:32 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:19:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 23:19:10 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:19:10 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 23:19:10 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 23:19:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 23:19:10 GMT
STOPSIGNAL SIGWINCH
# Thu, 30 Jul 2026 23:19:10 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:19:10 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 23:19:10 GMT
EXPOSE map[80/tcp:{}]
# Thu, 30 Jul 2026 23:19:10 GMT
CMD ["apache2-foreground"]
# Fri, 31 Jul 2026 00:28:51 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Fri, 31 Jul 2026 00:28:52 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Fri, 31 Jul 2026 00:28:52 GMT
RUN { 		echo 'output_buffering=true'; 	} > /usr/local/etc/php/conf.d/docker-php-drupal-recommended.ini # buildkit
# Fri, 31 Jul 2026 00:28:52 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:28:52 GMT
ENV DRUPAL_VERSION=11.4.4
# Fri, 31 Jul 2026 00:28:52 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Fri, 31 Jul 2026 00:28:52 GMT
WORKDIR /opt/drupal
# Fri, 31 Jul 2026 00:29:02 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Fri, 31 Jul 2026 00:29:02 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:4971e817c2048911f7b7a71fa5dd971e69ec06af7b57843f7ab722f5371fa59f`  
		Last Modified: Tue, 14 Jul 2026 00:14:13 GMT  
		Size: 26.9 MB (26888267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0bb9ba438c6c12ec33506edf6c13b58b9bb8e3e6db8252da9004581e867ae8e`  
		Last Modified: Tue, 14 Jul 2026 01:38:47 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e666f1a046d908b9d0375870e2246f5e767105bfeaa4896b00530db455a2c383`  
		Last Modified: Thu, 30 Jul 2026 22:43:08 GMT  
		Size: 80.8 MB (80829815 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e272e2f92145712b2cd3484e7060fce03a6ae74132693c2539f4e9fffc73d8b0`  
		Last Modified: Thu, 30 Jul 2026 22:43:06 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a9edeb61bfaaf7efd2e872677403ca3c6aa7d85ae79482d7c37ccf5f6393664`  
		Last Modified: Thu, 30 Jul 2026 22:43:17 GMT  
		Size: 19.9 MB (19920355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:439c94cce65d139d9f2e8ffa7f439f2f4579d1947ec7cffc9c90222c4bd85b1e`  
		Last Modified: Thu, 30 Jul 2026 22:43:16 GMT  
		Size: 432.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29c99abc7ba833e9cec18170174ed4dfa50d4bf606b623879b7c296d06c0e363`  
		Last Modified: Thu, 30 Jul 2026 22:43:16 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8678b35d0cee5a25c8d853e95623274a62db3671a4a6c65419d5a3f89ebe034e`  
		Last Modified: Thu, 30 Jul 2026 23:19:27 GMT  
		Size: 13.9 MB (13879808 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b42d3cdf16b95325cd03b6dde426edf33ccbaee61e93868b21d8fb6683a8eeb1`  
		Last Modified: Thu, 30 Jul 2026 23:19:27 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84dab76fdafd4e4ba6f68b41b31a6d6e1111c311fa4a1a17ee9afdb9bd107222`  
		Last Modified: Thu, 30 Jul 2026 23:19:27 GMT  
		Size: 12.7 MB (12718938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b97295c069506b0462314e2f6714d5eac4b5bf8b88a4a619b07b1bf37301b084`  
		Last Modified: Thu, 30 Jul 2026 23:19:27 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70e2049c40337a20937d25d7ea4626b97644365a937a3d393b6f069e9d476733`  
		Last Modified: Thu, 30 Jul 2026 23:19:28 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f6306d9ea4221b18846c7df87a28961a081f30ccc948cb14cf59ff8e9a9fd9c`  
		Last Modified: Thu, 30 Jul 2026 23:19:28 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30b53f4bdd9d2eea985c4c150deccecc5796ec0e291ce8a77a000e65e626447c`  
		Last Modified: Thu, 30 Jul 2026 23:19:29 GMT  
		Size: 890.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a43012ba7b3bbca2f628c660a374638cca026f3a08bde481a4b3be480308d33`  
		Last Modified: Fri, 31 Jul 2026 00:29:35 GMT  
		Size: 7.3 MB (7340912 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94e9872f18c75af3b14ebe34c296775e527c6fc3642ca3a31af5f528a8dd3ebc`  
		Last Modified: Fri, 31 Jul 2026 00:29:35 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b65a4e1440699e6887aa55b5ffb6e823f5dbca8dda935d5a20fb45892a2ba6b7`  
		Last Modified: Fri, 31 Jul 2026 00:29:35 GMT  
		Size: 256.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb5c6d14d1be9c94d9a818cf93db6cbf0e33679fa68397125d4ffb1c03d1d947`  
		Last Modified: Fri, 31 Jul 2026 00:29:35 GMT  
		Size: 832.3 KB (832289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01e9a8066f4fefa3133f3af19d8fef667157d58f02a38b6bd87766d0bbc8db7a`  
		Last Modified: Fri, 31 Jul 2026 00:29:36 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f712f3bd420abe9dd704f8879c9d21bb35d3eb4a2bfe04db2e6d1b42cf0c393b`  
		Last Modified: Fri, 31 Jul 2026 00:29:37 GMT  
		Size: 23.6 MB (23562280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.4-apache-bookworm` - unknown; unknown

```console
$ docker pull drupal@sha256:8cd607320d1f536078a165d336962fc95c1434d202bb5e05d453ed2db07954a0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7038713 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1da7b054ae1549f58a1e083e304cf950dc9772c3fccdbd924287d61c69422a35`

```dockerfile
```

-	Layers:
	-	`sha256:227e610d818d659a06ce22ecae68a358fe08746e8ffcfbc0199ac260d48d8ff6`  
		Last Modified: Fri, 31 Jul 2026 00:29:35 GMT  
		Size: 7.0 MB (6995928 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:32e60e4af81a9f056f5c86748c37305d4b0949552bd3863c2913635959a7fe32`  
		Last Modified: Fri, 31 Jul 2026 00:29:35 GMT  
		Size: 42.8 KB (42785 bytes)  
		MIME: application/vnd.in-toto+json
