## `drupal:11-apache-bookworm`

```console
$ docker pull drupal@sha256:28f7931ecbcb90b9c19a273ae2d9220d6b4beb4438ada7db00ab6425dcf0632f
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

### `drupal:11-apache-bookworm` - linux; amd64

```console
$ docker pull drupal@sha256:d04463edb77a25e8a7a37a15d6f90d22c93ccf48509f4dcef1b312b784e1c9b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.6 MB (216624414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bb5214b7a11225e3efcec78cf9fc4c296d0c69b2c319b0d187995fdadc56523`
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
# Thu, 03 Sep 2026 23:33:29 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 03 Sep 2026 23:33:29 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 03 Sep 2026 23:33:29 GMT
RUN { 		echo 'output_buffering=true'; 	} > /usr/local/etc/php/conf.d/docker-php-drupal-recommended.ini # buildkit
# Thu, 03 Sep 2026 23:33:29 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Thu, 03 Sep 2026 23:33:29 GMT
ENV DRUPAL_VERSION=11.4.6
# Thu, 03 Sep 2026 23:33:29 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 03 Sep 2026 23:33:29 GMT
WORKDIR /opt/drupal
# Thu, 03 Sep 2026 23:33:36 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Thu, 03 Sep 2026 23:33:36 GMT
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
	-	`sha256:b9d4a115c71a4914bf79e3b990f494f8b1c698b76fd18b7401f248aa8d3c1565`  
		Last Modified: Thu, 03 Sep 2026 23:33:53 GMT  
		Size: 9.7 MB (9716189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d426290f7c656e8d87638cd305f7d61b1b6a56b1916c2b14fb363fc55f35fa68`  
		Last Modified: Thu, 03 Sep 2026 23:33:53 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c29c8c4db6f48db88d83d54ad0c344b8a7a0ebd5665bc176f6c83f4a8c7f252`  
		Last Modified: Thu, 03 Sep 2026 23:33:53 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14d5e454173f1385d1a45d66abe881565960848a4265e5cee1c8a6e45b7662d1`  
		Last Modified: Thu, 03 Sep 2026 23:33:53 GMT  
		Size: 833.0 KB (832980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00580bf5b57bc23a9357abc186fc9d4fda0dc9c8ac061ec3a2cd291d49238dda`  
		Last Modified: Thu, 03 Sep 2026 23:33:52 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ff2d7925e77e1d770dbbc0f27afd394bf8963b4d7430d414aaf93f7040882b8`  
		Last Modified: Thu, 03 Sep 2026 23:33:55 GMT  
		Size: 23.6 MB (23598671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:11-apache-bookworm` - unknown; unknown

```console
$ docker pull drupal@sha256:431af5d7d7d5f206cb82d86c235aeb10053ae0a20419e213faefc5004ac40fac
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7207127 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff7b677dd53a7523eedd9cccd56893084b7254d6aee02c259d3e4df20891265d`

```dockerfile
```

-	Layers:
	-	`sha256:4cce08d5b50d7a7d6400015a84a604114c7fdfd0fe1f753b64b303ca10013448`  
		Last Modified: Thu, 03 Sep 2026 23:33:53 GMT  
		Size: 7.2 MB (7164119 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a69f5ef10e98e17089fbb6e683e15bb7757932cd7cbde695ead73d59c3e308fe`  
		Last Modified: Thu, 03 Sep 2026 23:33:52 GMT  
		Size: 43.0 KB (43008 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:11-apache-bookworm` - linux; arm variant v7

```console
$ docker pull drupal@sha256:e2ea2370f80373acb0bc102c130ec4e864bf365f797fd074ac485499553fc7f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.9 MB (176914270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d86cf9277a141552f51f9edc11becb20127a8bb2e0dad0c60882aac7fe5a860`
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
# Thu, 03 Sep 2026 23:31:38 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 03 Sep 2026 23:31:38 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 03 Sep 2026 23:31:38 GMT
RUN { 		echo 'output_buffering=true'; 	} > /usr/local/etc/php/conf.d/docker-php-drupal-recommended.ini # buildkit
# Thu, 03 Sep 2026 23:31:38 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Thu, 03 Sep 2026 23:31:38 GMT
ENV DRUPAL_VERSION=11.4.6
# Thu, 03 Sep 2026 23:31:38 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 03 Sep 2026 23:31:38 GMT
WORKDIR /opt/drupal
# Thu, 03 Sep 2026 23:31:46 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Thu, 03 Sep 2026 23:31:46 GMT
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
	-	`sha256:c799771c31764c45e0e1d2805769c60ff8762a3510da56b920c5b6c0eae11f72`  
		Last Modified: Thu, 03 Sep 2026 23:32:05 GMT  
		Size: 6.3 MB (6334217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4344c0b5a650e51016fc3bd4a444a8d26acbbc745bdd4004f2c9339b1641aa91`  
		Last Modified: Thu, 03 Sep 2026 23:32:05 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97b91a6b699386ef240a426bc46e60dc944170bece52d75f0fce4de0a7496feb`  
		Last Modified: Thu, 03 Sep 2026 23:32:05 GMT  
		Size: 258.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2b3427d064d0cfe5b9651a9d60d5ba49aaac6a52f1e8cc7bafaad16702323bd`  
		Last Modified: Thu, 03 Sep 2026 23:32:05 GMT  
		Size: 833.0 KB (832980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:875d5df2494b23e12a5bfc698d8bddc4882a1021b966ca9de22dd7b6ad5d34eb`  
		Last Modified: Thu, 03 Sep 2026 23:32:03 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06bca7bf158f1b8bdd99dbf23e08f50176bf670cec5aac79c75ad09a8c3e2f74`  
		Last Modified: Thu, 03 Sep 2026 23:32:08 GMT  
		Size: 23.6 MB (23598457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:11-apache-bookworm` - unknown; unknown

```console
$ docker pull drupal@sha256:5bc18895e45211b79f03a4b991d5891a1d3321712eca211748667f57aaa8fdba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.0 MB (7020873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d8d44f3efb8fe9f0208e870b53f80c4ebc308f576b2c35c82089e39778cb4de`

```dockerfile
```

-	Layers:
	-	`sha256:2bca894d71adbf157ae452f4943aaf79334950c513ded902982d29692f9b9f68`  
		Last Modified: Thu, 03 Sep 2026 23:32:05 GMT  
		Size: 7.0 MB (6977700 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4de9e79ac0eae17a2e1912cb0340db32ec830c593754a25eadb14e0f50b0d117`  
		Last Modified: Thu, 03 Sep 2026 23:32:04 GMT  
		Size: 43.2 KB (43173 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:11-apache-bookworm` - linux; arm64 variant v8

```console
$ docker pull drupal@sha256:a0e453d04a65cd080856b509f68896da7726721dcf3894fcb23c1fb952a32efb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.8 MB (207820968 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2d93f52125425918121f40bd83a8df4711a9b03195ec792711d51624cbf6a600`
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
# Thu, 03 Sep 2026 23:33:06 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 03 Sep 2026 23:33:06 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 03 Sep 2026 23:33:06 GMT
RUN { 		echo 'output_buffering=true'; 	} > /usr/local/etc/php/conf.d/docker-php-drupal-recommended.ini # buildkit
# Thu, 03 Sep 2026 23:33:06 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Thu, 03 Sep 2026 23:33:06 GMT
ENV DRUPAL_VERSION=11.4.6
# Thu, 03 Sep 2026 23:33:06 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 03 Sep 2026 23:33:06 GMT
WORKDIR /opt/drupal
# Thu, 03 Sep 2026 23:33:13 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Thu, 03 Sep 2026 23:33:13 GMT
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
	-	`sha256:3b2c2797e300345a6f825d52eb9c8eb5b4dbd3c3eacdb55551e8e7cdc2088330`  
		Last Modified: Thu, 03 Sep 2026 23:33:33 GMT  
		Size: 7.6 MB (7609268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bdf9e9b9424cd749e486b266246234a623b734277fd65cdd985f5e1f6a9fb48`  
		Last Modified: Thu, 03 Sep 2026 23:33:33 GMT  
		Size: 311.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b36043aaa98f8a95e0ac031f297612669ed85f745c5ec4572f8748c28583e08`  
		Last Modified: Thu, 03 Sep 2026 23:33:33 GMT  
		Size: 255.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4479d2134bf1db39189a33b07cd6938f4f67573501103b1c2d3659b390ff328`  
		Last Modified: Thu, 03 Sep 2026 23:33:33 GMT  
		Size: 833.0 KB (832980 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cea1c2c220d6f4588272d8645b666a55593f81dd45a2f164d89d3cedad5784c`  
		Last Modified: Thu, 03 Sep 2026 23:33:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a11a844eb5c74cd7db5f31e61214541cd9da6207afcdf1192d02d4e996fbfe89`  
		Last Modified: Thu, 03 Sep 2026 23:33:34 GMT  
		Size: 23.6 MB (23598174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:11-apache-bookworm` - unknown; unknown

```console
$ docker pull drupal@sha256:df004371f623a5b144ad698748887c5cdaa6c1a30d967801039742086e44da84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7235874 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:542ada67a965ef6c983ec0d93f461d2ef2af24143f5615b48c5805a4ba4441f2`

```dockerfile
```

-	Layers:
	-	`sha256:95067a4ccf3ceafb07f9395885ed6acea0d8d2d9bb13143926d5fc01066b0b1c`  
		Last Modified: Thu, 03 Sep 2026 23:33:33 GMT  
		Size: 7.2 MB (7192651 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fe83a3609c804b9477ae640867609493988e2f29764af45a96ef77eebb084401`  
		Last Modified: Thu, 03 Sep 2026 23:33:33 GMT  
		Size: 43.2 KB (43223 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:11-apache-bookworm` - linux; 386

```console
$ docker pull drupal@sha256:3a65621496b74962f92f1b26da125821eb26671f235bbdd87cdc78b02706bd9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.5 MB (212508888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02d50d32c0cfe64725b2c41f5cc008cfc8a211e854f466c904d05cdd51dcc1b4`
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
# Thu, 03 Sep 2026 23:33:11 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 03 Sep 2026 23:33:11 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 03 Sep 2026 23:33:11 GMT
RUN { 		echo 'output_buffering=true'; 	} > /usr/local/etc/php/conf.d/docker-php-drupal-recommended.ini # buildkit
# Thu, 03 Sep 2026 23:33:11 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Thu, 03 Sep 2026 23:33:11 GMT
ENV DRUPAL_VERSION=11.4.6
# Thu, 03 Sep 2026 23:33:11 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 03 Sep 2026 23:33:11 GMT
WORKDIR /opt/drupal
# Thu, 03 Sep 2026 23:33:18 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Thu, 03 Sep 2026 23:33:18 GMT
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
	-	`sha256:2963d25a36a843d59729980895153ff3258f5786123ac84173fe274de02943fb`  
		Last Modified: Thu, 03 Sep 2026 23:33:35 GMT  
		Size: 6.6 MB (6560650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:369c6e8dc3c51d7e2d93be2f903b4ba9e8da629b031bc2241b959e7e7ef06692`  
		Last Modified: Thu, 03 Sep 2026 23:33:35 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07518107efd0c48380e3dcdead1918e9a4ba79a982bc19f02c87da8e0d52bf8b`  
		Last Modified: Thu, 03 Sep 2026 23:33:35 GMT  
		Size: 258.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9326140b48a8c7bb798c9514484d538013b55189e53033865d8c11b82134f27`  
		Last Modified: Thu, 03 Sep 2026 23:33:35 GMT  
		Size: 833.0 KB (832978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baadaf4ae9c77440a8ba9c6ea4060ed7791303d62343700da8c9338b6226c25f`  
		Last Modified: Thu, 03 Sep 2026 23:33:36 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec5f8a51c52912fde40b11f474401e45341a8882d91a1d18321c2a74b411c0af`  
		Last Modified: Thu, 03 Sep 2026 23:33:37 GMT  
		Size: 23.6 MB (23598721 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:11-apache-bookworm` - unknown; unknown

```console
$ docker pull drupal@sha256:c27a26ec00908b6ffc5c86de0bada2428e6b8b0530dd989a0431adf20c7fb0f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7180057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e22b4a9cec5aedc7efa10c1d1907d23cba047e6500030f939e59d19a57f9869b`

```dockerfile
```

-	Layers:
	-	`sha256:e1dcf3164eb05a92c3421571f35d68faedf1d61d1103424c6318c4cd3fda393a`  
		Last Modified: Thu, 03 Sep 2026 23:33:35 GMT  
		Size: 7.1 MB (7137115 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f256155fb6b8ddc18c33088c90e272426d49aab5d6c2894151320eb73e5f93bd`  
		Last Modified: Thu, 03 Sep 2026 23:33:35 GMT  
		Size: 42.9 KB (42942 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:11-apache-bookworm` - linux; ppc64le

```console
$ docker pull drupal@sha256:6a7e9b46cafe344dbeb17b843726199d2ee8aedcb3cde4c1c637561f45e146e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.2 MB (219153287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6590e82bde1f5809b1e51447b3b942abba8382f8e269493cf9a2861ce545306c`
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
ENV DRUPAL_VERSION=11.4.6
# Tue, 01 Sep 2026 22:10:28 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 22:10:28 GMT
WORKDIR /opt/drupal
# Thu, 03 Sep 2026 23:32:56 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Thu, 03 Sep 2026 23:32:56 GMT
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
	-	`sha256:966d6467944405b1b3c36a13c924bc70a799d67f2af98c9079a960ee0df4e587`  
		Last Modified: Thu, 03 Sep 2026 23:33:47 GMT  
		Size: 23.6 MB (23598421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:11-apache-bookworm` - unknown; unknown

```console
$ docker pull drupal@sha256:3702cc57e5dc1a5d75b6b684960cc4e9c2d8ff429b10f3c7cafb94d27d7bbd38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.2 MB (7184458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84a63c6a1e8984d16190ad4bb1491c131b5785f9f865b27a5bb54782c1960c67`

```dockerfile
```

-	Layers:
	-	`sha256:5420f5cf2f7ced773529a529df90ae32ec6d83571fd4a2698e0f7cf50990d34d`  
		Last Modified: Thu, 03 Sep 2026 23:33:46 GMT  
		Size: 7.1 MB (7141366 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a593fa3b0903d4b51a10cfab287406f8eef193d88f8cbd6c0206baa9f48bddc5`  
		Last Modified: Thu, 03 Sep 2026 23:33:45 GMT  
		Size: 43.1 KB (43092 bytes)  
		MIME: application/vnd.in-toto+json
