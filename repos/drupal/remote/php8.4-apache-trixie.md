## `drupal:php8.4-apache-trixie`

```console
$ docker pull drupal@sha256:fdffcd93e5a4774f3642b12f079d08e833028c1ead1510f4c56ec3aecead9714
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
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
	-	linux; riscv64
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `drupal:php8.4-apache-trixie` - linux; amd64

```console
$ docker pull drupal@sha256:296fc146733d6369412cbebcdcfd34dd21dada97ea4db9f2dc5ee1922df73650
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215210113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49fe30b8e18a5711fefae5cd4521bd2e376cf77a8a6af36fe07dc141fe84146a`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:21:40 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 05 Nov 2026 07:21:58 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 05 Nov 2026 07:21:58 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:21:58 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 07:21:59 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 07:21:59 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 05 Nov 2026 07:21:59 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 05 Nov 2026 07:22:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 05 Nov 2026 07:22:04 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 05 Nov 2026 07:22:04 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 05 Nov 2026 07:22:04 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:22:04 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:22:04 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 07:22:04 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 05 Nov 2026 07:22:04 GMT
ENV PHP_VERSION=8.4.27
# Thu, 05 Nov 2026 07:22:04 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Thu, 05 Nov 2026 07:22:04 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Thu, 05 Nov 2026 07:22:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 05 Nov 2026 07:22:12 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:24:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 07:24:35 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:24:36 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 07:24:36 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 07:24:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 07:24:36 GMT
STOPSIGNAL SIGWINCH
# Thu, 05 Nov 2026 07:24:36 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:24:36 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 07:24:36 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 07:24:36 GMT
CMD ["apache2-foreground"]
# Tue, 10 Nov 2026 21:40:50 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 21:40:50 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Tue, 10 Nov 2026 21:40:50 GMT
RUN { 		echo 'output_buffering=true'; 	} > /usr/local/etc/php/conf.d/docker-php-drupal-recommended.ini # buildkit
# Tue, 10 Nov 2026 21:40:50 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:40:50 GMT
ENV DRUPAL_VERSION=11.4.12
# Tue, 10 Nov 2026 21:40:50 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 10 Nov 2026 21:40:50 GMT
WORKDIR /opt/drupal
# Tue, 10 Nov 2026 21:40:55 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 10 Nov 2026 21:40:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:37fb86c2a767b88d500c6872195f88078f64765fe0d2f9cc375cc2efbd4c0a41`  
		Last Modified: Thu, 05 Nov 2026 06:16:45 GMT  
		Size: 29.9 MB (29856132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc1809275eb74212e1003b3c8184a9babff13f3938b5126b32439e46a86b4f76`  
		Last Modified: Thu, 05 Nov 2026 07:24:56 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:763317e8e82406bcd93298e660dff460212d57b26566e8c13784c079c471cbd2`  
		Last Modified: Thu, 05 Nov 2026 07:24:59 GMT  
		Size: 117.8 MB (117838081 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1279874e909260556a2946171c72d718a320ad6a0a591dc1378651cd0f247f0`  
		Last Modified: Thu, 05 Nov 2026 07:24:56 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9d4be292819677c165d27d056e172f17ec2837bf1dda5b0faf45dc591b8266a`  
		Last Modified: Thu, 05 Nov 2026 07:24:56 GMT  
		Size: 4.2 MB (4244098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6476889f09276744dab0badd432a59084f89f516f964fddee68da30055e95435`  
		Last Modified: Thu, 05 Nov 2026 07:24:57 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77998a05dd42e6541018aaf55823057eb7a20737068e9698e5e5b445936d6e25`  
		Last Modified: Thu, 05 Nov 2026 07:24:57 GMT  
		Size: 483.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33398883691602ae36e1407b64fbf2c68f8bb48576259e4e7687d06248a56a46`  
		Last Modified: Thu, 05 Nov 2026 07:24:58 GMT  
		Size: 14.0 MB (14030210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78537a14b060ee5497c5c5be058cdf26ba5bc859b5442a922f30e1ed98d2581a`  
		Last Modified: Thu, 05 Nov 2026 07:24:58 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc70471740f73108c498e6eba7a97b24ecc31ec7e8cf3e1417bcb78d38a509a3`  
		Last Modified: Thu, 05 Nov 2026 07:24:59 GMT  
		Size: 13.8 MB (13755707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef3b170e20ffef31f29c9c4fc696073143e8539e9c5dd3c618c8183fd7ca04f`  
		Last Modified: Thu, 05 Nov 2026 07:24:59 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b25056db48421b53f2565f442ce907db8442ddd936ddd51a82e46890ff703b1`  
		Last Modified: Thu, 05 Nov 2026 07:24:59 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abbdfb142654ea1949d4c870fbd5977f8b4df55317ca1b0f81548ca859443149`  
		Last Modified: Thu, 05 Nov 2026 07:25:00 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:550aa3c8151cd63060d5ec8f18934283642f350d50d3943d9043e5defa8f27ae`  
		Last Modified: Thu, 05 Nov 2026 07:25:00 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:350ab2fa02f01203d628cc7d8cab3fe131a9130b14a9b96dff2b7c294598eb07`  
		Last Modified: Tue, 10 Nov 2026 21:41:11 GMT  
		Size: 10.9 MB (10881008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:715d5f37caf0f911e1822059dfa675089551f0d94b60f7d8e721d4fa558a3a9a`  
		Last Modified: Tue, 10 Nov 2026 21:41:11 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4baf19cfe6d535ae740162a1fee592fac464b56a6a789134785a667763028968`  
		Last Modified: Tue, 10 Nov 2026 21:41:11 GMT  
		Size: 259.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b66cc476f49b4aa03cf00949071e416320d74573b09efbdef618de38bf8dd30`  
		Last Modified: Tue, 10 Nov 2026 21:41:11 GMT  
		Size: 879.8 KB (879800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b58278f92f652d42374958a86c7826da59266b4e8d708ab2130ae48de23e0b4`  
		Last Modified: Tue, 10 Nov 2026 21:41:12 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ccb9601be357a694bf3acf3d701b9e30525f632e254d5e85762f05a579801c1`  
		Last Modified: Tue, 10 Nov 2026 21:41:13 GMT  
		Size: 23.7 MB (23718651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.4-apache-trixie` - unknown; unknown

```console
$ docker pull drupal@sha256:8a7a9fe5fe7b25e108c78b565a41f8d5def9fbfb82a88a15823cfa75e4bb3cf6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7518707 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef59339a8163412c6e30f3288da683fac6ed031fe29061157524858a78030276`

```dockerfile
```

-	Layers:
	-	`sha256:7caba0a4483bb3f86220fa92da6495262a3a8d8ed2f3cf81c349738605bb93cd`  
		Last Modified: Tue, 10 Nov 2026 21:41:11 GMT  
		Size: 7.5 MB (7473431 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fcbd21b15ffcd8ffd9d15ed963b186b9a47e877a0136544848fa85c03d2e6362`  
		Last Modified: Tue, 10 Nov 2026 21:41:11 GMT  
		Size: 45.3 KB (45276 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.4-apache-trixie` - linux; arm variant v7

```console
$ docker pull drupal@sha256:962d9510dfe8b4128d1c40d97c17405b7caf9f7b52c5904840f8f25218a05207
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **173.3 MB (173333021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26e3944afad43fc3508ece5cd95f2c3792a01bf820275f2ab1401f675657aaf5`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:27:23 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 05 Nov 2026 07:27:43 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 05 Nov 2026 07:27:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:27:43 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 07:27:43 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 07:27:43 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 05 Nov 2026 07:27:43 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 05 Nov 2026 07:34:39 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 05 Nov 2026 07:34:39 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 05 Nov 2026 07:34:40 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 05 Nov 2026 07:34:40 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:34:40 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:34:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 07:34:40 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 05 Nov 2026 07:34:40 GMT
ENV PHP_VERSION=8.4.27
# Thu, 05 Nov 2026 07:34:40 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Thu, 05 Nov 2026 07:34:40 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Thu, 05 Nov 2026 07:34:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 05 Nov 2026 07:34:50 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:37:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 07:37:39 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:37:39 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 07:37:39 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 07:37:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 07:37:39 GMT
STOPSIGNAL SIGWINCH
# Thu, 05 Nov 2026 07:37:39 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:37:40 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 07:37:40 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 07:37:40 GMT
CMD ["apache2-foreground"]
# Tue, 10 Nov 2026 21:52:29 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 21:52:29 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Tue, 10 Nov 2026 21:52:29 GMT
RUN { 		echo 'output_buffering=true'; 	} > /usr/local/etc/php/conf.d/docker-php-drupal-recommended.ini # buildkit
# Tue, 10 Nov 2026 21:52:29 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:52:29 GMT
ENV DRUPAL_VERSION=11.4.12
# Tue, 10 Nov 2026 21:52:29 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 10 Nov 2026 21:52:29 GMT
WORKDIR /opt/drupal
# Tue, 10 Nov 2026 21:52:38 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 10 Nov 2026 21:52:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:0b78a5fe7810b9342d6d9e33a1bae5b9a7b92e5a742e413e190b32a7b0b3cfb5`  
		Last Modified: Thu, 05 Nov 2026 06:16:16 GMT  
		Size: 26.3 MB (26272915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21d5924d344062ea700cfc71fc4783865482421af84bb72d2bf4e8f0c3870e46`  
		Last Modified: Thu, 05 Nov 2026 07:30:58 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a0a2be865da742ad12811aad089994cf1168f02b8fc8dce96ce84bc07e96784`  
		Last Modified: Thu, 05 Nov 2026 07:31:01 GMT  
		Size: 86.3 MB (86256923 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:844bb047a74f12df1613004a1663597cd159fa7c95d111a5aa767422696817e2`  
		Last Modified: Thu, 05 Nov 2026 07:30:58 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18714ca7994391157d78847badd633dee82fe785455e53754dc5520c0e2c9d81`  
		Last Modified: Thu, 05 Nov 2026 07:37:50 GMT  
		Size: 3.8 MB (3768327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:948f1660695482a4c06e83133df65434a23c9dafe030924a145a822c0b943c58`  
		Last Modified: Thu, 05 Nov 2026 07:37:50 GMT  
		Size: 431.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c8877d1351db7d8dcf87ef51eed55b06d36c112388a13281169ee1f36b7b898`  
		Last Modified: Thu, 05 Nov 2026 07:37:50 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c5cb6b2a4eea170e0630c11c6c695b1a1a55c5c032a00123ccddf81b65e8674`  
		Last Modified: Thu, 05 Nov 2026 07:37:50 GMT  
		Size: 14.0 MB (14027489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca406db3c8f06d17eb8e0c113f1d0c81f40a82219ffb66d94f5ccdc4e9d966f2`  
		Last Modified: Thu, 05 Nov 2026 07:37:51 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af1d50d356ac22911c2403bd05f97162c7136ee4c0ae7c5f6348173852c72322`  
		Last Modified: Thu, 05 Nov 2026 07:37:52 GMT  
		Size: 11.8 MB (11762172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d405741bf8264d0a8d8e59f36aaac4509fceadde589d3e14ffcd0fe0cf962436`  
		Last Modified: Thu, 05 Nov 2026 07:37:51 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8018e3ed2686a7afd6a0285b02a143a40cdc9b3be481e71a3101c7a547a2aa24`  
		Last Modified: Thu, 05 Nov 2026 07:37:52 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26aefd510f3d6abfbde1778a19cb8f4746bd247609512e95ba7085addecef532`  
		Last Modified: Thu, 05 Nov 2026 07:37:52 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:471fbebf22cdcceb32f88af19058e8402e62232de2d9fdcfad406095aee11d9c`  
		Last Modified: Thu, 05 Nov 2026 07:37:53 GMT  
		Size: 894.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2a99ae9ed46eb154da193f1bb9d75ce69b219f226da145f94b243f1b6d52d7a`  
		Last Modified: Tue, 10 Nov 2026 21:52:56 GMT  
		Size: 6.6 MB (6640572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7f5f47287cce62c060bf5c4a597d8a7d2c224b2b88385dd8d5223220263375e`  
		Last Modified: Tue, 10 Nov 2026 21:52:56 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:701cd05b129fe9ae0b1e6a24a8ff413b5b2553d66d2f2d594fb26cd7ac7eab56`  
		Last Modified: Tue, 10 Nov 2026 21:52:56 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37b37c3907a8061bc74164af0b6717a1be1e80ff59e912fca9f3e3a15510839f`  
		Last Modified: Tue, 10 Nov 2026 21:52:56 GMT  
		Size: 879.8 KB (879803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a155c254b88ee17dd89d092d6fe644a4ed2419b92a8e38cc8b7bf870cf1ea52f`  
		Last Modified: Tue, 10 Nov 2026 21:52:58 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcc8427c33118c2051fc0ee2ba4e5a66ba0d0dc0d0ddee3ff0b366d8bcce243e`  
		Last Modified: Tue, 10 Nov 2026 21:52:58 GMT  
		Size: 23.7 MB (23718392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.4-apache-trixie` - unknown; unknown

```console
$ docker pull drupal@sha256:a038d82910b525a02e6a1ec48ed8405df02a06beace339665c36e33e0b0438f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7323106 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55745aada090c2d468b66e847567fd6f22961ccd313ca45957cf19be26db0ac1`

```dockerfile
```

-	Layers:
	-	`sha256:e2722700713a204ad2287e39545d961719c8309866f4f276db68f1e786ade3f4`  
		Last Modified: Tue, 10 Nov 2026 21:52:56 GMT  
		Size: 7.3 MB (7277638 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c43f592a80094b51cbb9d77d109abfeceff0701d6b0dc411e2a85036e03d705c`  
		Last Modified: Tue, 10 Nov 2026 21:52:56 GMT  
		Size: 45.5 KB (45468 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.4-apache-trixie` - linux; arm64 variant v8

```console
$ docker pull drupal@sha256:6ba48fd09b55c61e42fb1d1e364717155a9efb34380068a72bbf77950b64d304
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **206.1 MB (206144438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f2ac9c269515e6fb5607cd465c15a889f841f6068c301c1371ce556bd82a80f`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:17:47 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 05 Nov 2026 07:18:05 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 05 Nov 2026 07:18:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:18:05 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 07:18:05 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 07:18:05 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 05 Nov 2026 07:18:05 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 05 Nov 2026 07:18:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 05 Nov 2026 07:18:12 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 05 Nov 2026 07:18:12 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 05 Nov 2026 07:18:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:18:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:18:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 07:18:12 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 05 Nov 2026 07:18:12 GMT
ENV PHP_VERSION=8.4.27
# Thu, 05 Nov 2026 07:18:12 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Thu, 05 Nov 2026 07:18:12 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Thu, 05 Nov 2026 07:22:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 05 Nov 2026 07:22:14 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:25:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 07:25:26 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:25:27 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 07:25:27 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 07:25:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 07:25:27 GMT
STOPSIGNAL SIGWINCH
# Thu, 05 Nov 2026 07:25:27 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:25:27 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 07:25:27 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 07:25:27 GMT
CMD ["apache2-foreground"]
# Tue, 10 Nov 2026 21:42:41 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 21:42:42 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Tue, 10 Nov 2026 21:42:42 GMT
RUN { 		echo 'output_buffering=true'; 	} > /usr/local/etc/php/conf.d/docker-php-drupal-recommended.ini # buildkit
# Tue, 10 Nov 2026 21:42:42 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:42:42 GMT
ENV DRUPAL_VERSION=11.4.12
# Tue, 10 Nov 2026 21:42:42 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 10 Nov 2026 21:42:42 GMT
WORKDIR /opt/drupal
# Tue, 10 Nov 2026 21:42:48 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 10 Nov 2026 21:42:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:acd43e9bebc37bc4ba7a5f47bd7598913337803e53d468f37d940f11f5d5f1ef`  
		Last Modified: Thu, 05 Nov 2026 06:16:09 GMT  
		Size: 30.2 MB (30214037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edc5ed03be511d9a92ac68a29c1831db31ce6cab7ab614f39db68a593fc49c11`  
		Last Modified: Thu, 05 Nov 2026 07:21:54 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:421158b73c037c31d7ed2579f3e7477ce63ed4212f185a126f9a3c3da8146ad3`  
		Last Modified: Thu, 05 Nov 2026 07:21:57 GMT  
		Size: 110.2 MB (110178348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2073948d455a7f3e0242da7c6241d283f9953cb4ec876b11ca3d1887f6c7d880`  
		Last Modified: Thu, 05 Nov 2026 07:21:54 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3126d3ab14fa63deee300c168f81c40bf634b1cda7224921da465ac96e283503`  
		Last Modified: Thu, 05 Nov 2026 07:21:54 GMT  
		Size: 4.3 MB (4321286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d5d5510890171b9e66fe3af876bc2ec8a9171b314f0c02074085e957fba3a1f`  
		Last Modified: Thu, 05 Nov 2026 07:21:55 GMT  
		Size: 431.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:769ae77a5ce88b1f1bf8cbff94761988157c504e510b60ae464cd59a63861164`  
		Last Modified: Thu, 05 Nov 2026 07:21:55 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f6d6bf2b095431bc210c87fd407c77adc0664684a0a5b9d8ce96445a4f81ceb`  
		Last Modified: Thu, 05 Nov 2026 07:25:39 GMT  
		Size: 14.0 MB (14029831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3949934f15a214df3f49a2ec1b23c46e3f03bd1a8ac1a7786508d41c1be47b21`  
		Last Modified: Thu, 05 Nov 2026 07:25:38 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a388b389e5dbbe95854e55b46f263a994fbc534c57bc040849f5e41053868a75`  
		Last Modified: Thu, 05 Nov 2026 07:25:38 GMT  
		Size: 13.4 MB (13401484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89e513b0c3a7c2738acfc7783543ec5811f33cfbe1203e42a4a8ddfe5cd30b88`  
		Last Modified: Thu, 05 Nov 2026 07:25:38 GMT  
		Size: 2.5 KB (2462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54a9c202c956b728be6600f00e3139872e599e88885bfd370abb3b20d86c36f6`  
		Last Modified: Thu, 05 Nov 2026 07:25:39 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bbe4271f4d387e988c8de5b4116f9a5741af79900cfc73d5189f5cdee680333`  
		Last Modified: Thu, 05 Nov 2026 07:25:39 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb89965a5f8b6e0b6111f203108aa5f2bdeeabb35e3f8f6faff700b9aa63e27e`  
		Last Modified: Thu, 05 Nov 2026 07:25:40 GMT  
		Size: 892.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01bfabfa90fae641dc8868b010994c37ddd0f23fc0910268d764b52002a25fd5`  
		Last Modified: Tue, 10 Nov 2026 21:43:08 GMT  
		Size: 9.4 MB (9394964 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca3344fee8dfb5450ac35bf614932b5df3b3ced976bb298e2424a0db255c5905`  
		Last Modified: Tue, 10 Nov 2026 21:43:07 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6afe0ec2ad9429f281f8c96b710a4b9b45f962da7f8ac9106cb83fae659a5e6`  
		Last Modified: Tue, 10 Nov 2026 21:43:07 GMT  
		Size: 256.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:695918f691501c7fcae89847b903557a744cadd879da3e7eeb2dcab86a42134d`  
		Last Modified: Tue, 10 Nov 2026 21:43:07 GMT  
		Size: 879.8 KB (879800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08ed723bc5f9f1e37a2bf3646a8e7e98b94781cf64f8574865410465c5928647`  
		Last Modified: Tue, 10 Nov 2026 21:42:59 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc7e00d64fa34d1b08d187aa7c78b96429d749f20bdb0e16b93b6754e0417e3c`  
		Last Modified: Tue, 10 Nov 2026 21:43:09 GMT  
		Size: 23.7 MB (23718269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.4-apache-trixie` - unknown; unknown

```console
$ docker pull drupal@sha256:026212862930081391376b814450da6fdc72995897cc0280effee7f42fbd17d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7616460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19df7b808f72adec6c0f67d0560b348aa7a77421e29ab340cd34b10494ea7c59`

```dockerfile
```

-	Layers:
	-	`sha256:6b6cb91ab341478d6e94b91f3c64fa511ac7ad7955ffcecdb0f72af4f60f06e5`  
		Last Modified: Tue, 10 Nov 2026 21:43:07 GMT  
		Size: 7.6 MB (7570919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dce38fc4cec19f84b55dbfd7e2a16f8b5ceaf29d97b4f66042bfba59779202d4`  
		Last Modified: Tue, 10 Nov 2026 21:43:07 GMT  
		Size: 45.5 KB (45541 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.4-apache-trixie` - linux; 386

```console
$ docker pull drupal@sha256:39854f99b84eb3a2ba0b90b61470607a867d7757aae4a5112c1ae7bf26ac9b21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **213.3 MB (213291882 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:800e4ad60e02161f7182b488a5a170aecdf42b130afde06775bad79f43e5e5d2`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:22:07 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 05 Nov 2026 07:22:27 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 05 Nov 2026 07:22:27 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:22:27 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 07:22:27 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 07:22:27 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 05 Nov 2026 07:22:27 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 05 Nov 2026 07:22:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 05 Nov 2026 07:22:34 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 05 Nov 2026 07:22:34 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 05 Nov 2026 07:22:34 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:22:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:22:34 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 07:22:34 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 05 Nov 2026 07:22:34 GMT
ENV PHP_VERSION=8.4.27
# Thu, 05 Nov 2026 07:22:34 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Thu, 05 Nov 2026 07:22:34 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Thu, 05 Nov 2026 07:22:43 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 05 Nov 2026 07:22:43 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:25:44 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 07:25:44 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:25:44 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 07:25:44 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 07:25:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 07:25:44 GMT
STOPSIGNAL SIGWINCH
# Thu, 05 Nov 2026 07:25:44 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:25:44 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 07:25:44 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 07:25:44 GMT
CMD ["apache2-foreground"]
# Tue, 10 Nov 2026 21:39:27 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 21:39:27 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Tue, 10 Nov 2026 21:39:27 GMT
RUN { 		echo 'output_buffering=true'; 	} > /usr/local/etc/php/conf.d/docker-php-drupal-recommended.ini # buildkit
# Tue, 10 Nov 2026 21:39:27 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:39:27 GMT
ENV DRUPAL_VERSION=11.4.12
# Tue, 10 Nov 2026 21:39:27 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 10 Nov 2026 21:39:27 GMT
WORKDIR /opt/drupal
# Tue, 10 Nov 2026 21:39:33 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 10 Nov 2026 21:39:33 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:06ca6191a71938862bdb85445ef63acf48ced1a427e65f85a654472d74e9ce64`  
		Last Modified: Thu, 05 Nov 2026 06:16:19 GMT  
		Size: 31.4 MB (31370759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36decf145b3b08a9f9a21cc266c2fb9adb266605fa2e2c98df473f2b05c44a07`  
		Last Modified: Thu, 05 Nov 2026 07:26:04 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aed384a7a841e24247daf93f5430d4f199175b2b1aab67c7e7a935937fbef656`  
		Last Modified: Thu, 05 Nov 2026 07:26:07 GMT  
		Size: 116.1 MB (116139713 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5609f039d751a2853ecd5e285bbaec1fb2d42b144d192370994d5f06e69c2f9f`  
		Last Modified: Thu, 05 Nov 2026 07:26:04 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93adcfc65eee3ff594d9043225404a08dfd11b85ba243262c5f140dfe321a8b2`  
		Last Modified: Thu, 05 Nov 2026 07:26:04 GMT  
		Size: 4.5 MB (4476991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d98aca01080915b2fd0e96cf9b8d56ad0f6f22143fad51bb47c00287fd291f04`  
		Last Modified: Thu, 05 Nov 2026 07:26:05 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6034787799bba8bf3208b9963161f9babd24ca3d5ed0dbf1c1f1fac6d358d08`  
		Last Modified: Thu, 05 Nov 2026 07:26:05 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c60c2565388717c0aec0e5bb4237c6c50dc2f79c90fd57d764581b600370f569`  
		Last Modified: Thu, 05 Nov 2026 07:26:06 GMT  
		Size: 14.0 MB (14029043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea44d6b72879964caeb8b64ec8572c02e3ecc3aefbb4a11e060aba929e67bec8`  
		Last Modified: Thu, 05 Nov 2026 07:26:06 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2da01bd5fc402f724c2cbb7484bf049a3f0f072d7bc6333bc88f3187abdb94dc`  
		Last Modified: Thu, 05 Nov 2026 07:26:07 GMT  
		Size: 14.1 MB (14136345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f89fd5c7e864841b916103e3a48f8083ddf80895a272678b0ebc922ab12725d5`  
		Last Modified: Thu, 05 Nov 2026 07:26:07 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0129f240f050781bee011f0c01f8fe03176a671621da926ce6825ba1e3e819ab`  
		Last Modified: Thu, 05 Nov 2026 07:26:08 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1657456fb74f80ee4135369f9ab4499f9be01eb336759b641291d36cfe0964b8`  
		Last Modified: Thu, 05 Nov 2026 07:26:08 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9da8ba9ccc80a938f2e90409da198a6400fd972b16656308a5b2a5cf31f5f506`  
		Last Modified: Thu, 05 Nov 2026 07:26:09 GMT  
		Size: 894.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d9f10c46d7cd6de2789b3c0f3ad66fbf359ac78efece5075acdbf38a8491427`  
		Last Modified: Tue, 10 Nov 2026 21:39:49 GMT  
		Size: 8.5 MB (8534313 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3eecea06ff58711821e92683db6bc66e3ed11ffef1e21902bced3b13bb45561`  
		Last Modified: Tue, 10 Nov 2026 21:39:49 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a929112d0f149e7abac855915660f0b6ca7d9f0b60ca95eaa05681ec13924948`  
		Last Modified: Tue, 10 Nov 2026 21:39:49 GMT  
		Size: 258.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d37ddf332c9d196ba3366a9dddf88978e8b48f98d2fe19a61cff5f4256b0e77f`  
		Last Modified: Tue, 10 Nov 2026 21:39:49 GMT  
		Size: 879.8 KB (879801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec1e0653b15d85096f22c9c48f1a8136eff8f76f4b75379069d6a680c474bc11`  
		Last Modified: Tue, 10 Nov 2026 21:39:50 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0e2d1ccd392925c693c4ceb560e753c62521907793f019888848c5d63384546`  
		Last Modified: Tue, 10 Nov 2026 21:39:51 GMT  
		Size: 23.7 MB (23718492 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.4-apache-trixie` - unknown; unknown

```console
$ docker pull drupal@sha256:cec4240b83959bb41b0041ae8eb8effa7c9ac4450183d6fb7a5862d06cc7089d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7492232 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2eb67bb79a6b84435d8bcddf8a9cde3c994a51bf509021e276310cb4c663b3da`

```dockerfile
```

-	Layers:
	-	`sha256:81bc6c5441e68adf3d04345d50e6e60f04e46a338802f0b9ac582f479ed3afea`  
		Last Modified: Tue, 10 Nov 2026 21:39:49 GMT  
		Size: 7.4 MB (7447047 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cbb0733ad4d66e915ec9b51fb752537866d20aa3439a83422326f5d478d2d527`  
		Last Modified: Tue, 10 Nov 2026 21:39:48 GMT  
		Size: 45.2 KB (45185 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.4-apache-trixie` - linux; ppc64le

```console
$ docker pull drupal@sha256:c5436e8df49a846df50089d61a9c0a5725a3527b34603c2bab7f0f4049f65294
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **209.8 MB (209794093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81d82b9d4cfeab31af3e6e77b41b434b0fa589eaad08041d4383d28187d6bf03`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:51:14 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 05 Nov 2026 07:51:49 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 05 Nov 2026 07:51:49 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:51:49 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 07:51:49 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 07:51:49 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 05 Nov 2026 07:51:49 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 05 Nov 2026 07:58:05 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 05 Nov 2026 07:58:06 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 05 Nov 2026 07:58:06 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 05 Nov 2026 07:58:06 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:58:06 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:58:06 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 07:58:06 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 05 Nov 2026 07:58:06 GMT
ENV PHP_VERSION=8.4.27
# Thu, 05 Nov 2026 07:58:06 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Thu, 05 Nov 2026 07:58:06 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Thu, 05 Nov 2026 08:38:05 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 05 Nov 2026 08:38:05 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 08:43:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 08:43:28 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 08:43:29 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 08:43:29 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 08:43:29 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 08:43:29 GMT
STOPSIGNAL SIGWINCH
# Thu, 05 Nov 2026 08:43:29 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 08:43:29 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 08:43:29 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 08:43:29 GMT
CMD ["apache2-foreground"]
# Thu, 05 Nov 2026 17:39:47 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 17:39:49 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 05 Nov 2026 17:39:49 GMT
RUN { 		echo 'output_buffering=true'; 	} > /usr/local/etc/php/conf.d/docker-php-drupal-recommended.ini # buildkit
# Tue, 10 Nov 2026 20:14:16 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 20:14:17 GMT
ENV DRUPAL_VERSION=11.4.11
# Tue, 10 Nov 2026 20:14:17 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 10 Nov 2026 20:14:17 GMT
WORKDIR /opt/drupal
# Tue, 10 Nov 2026 20:22:18 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 10 Nov 2026 20:22:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:33d716a337c18262f51540d4a07992d0eb31456a1d5386930bec26ee2244fa66`  
		Last Modified: Thu, 05 Nov 2026 06:17:58 GMT  
		Size: 33.7 MB (33667648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c7268b190588f776dc9e7d85c3d3e7cd51ab40a5eb161341e7cafba8aa8db15`  
		Last Modified: Thu, 05 Nov 2026 07:57:24 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:531972258920b8490e62ebec510a08a421787308f63d34f6bc4d9b6b8d8abc78`  
		Last Modified: Thu, 05 Nov 2026 07:57:28 GMT  
		Size: 109.6 MB (109611291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b985c27ef371a30298e699042d2ad9aefa1c4153215a3857a6bb042ad47cde`  
		Last Modified: Thu, 05 Nov 2026 07:57:24 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:616500097e552e120f10ca4404d34d9cfb120b7c02c3524f4ce28cf1a60fe39b`  
		Last Modified: Thu, 05 Nov 2026 08:03:41 GMT  
		Size: 4.9 MB (4900783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d6e13085ae5c79bb1881e041bffc310a0ee54a9166ceccd83aec6c5b748d5f4`  
		Last Modified: Thu, 05 Nov 2026 08:03:41 GMT  
		Size: 436.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0899b50a51dc19e2e0faa872575140226b0a41d13820bc6d87dc3abc777b7c8`  
		Last Modified: Thu, 05 Nov 2026 08:03:41 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d2e19a0a6f7eef3843867ccd8e149d69f1a006b720e484af1c93e3c015f7dce`  
		Last Modified: Thu, 05 Nov 2026 08:43:56 GMT  
		Size: 14.0 MB (14035552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23837124b0578a6b62ad43c45ba60416898c9c732e77d98aa23ab443d496e89a`  
		Last Modified: Thu, 05 Nov 2026 08:43:55 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1e85333b9d3389272f4f8f660a2664a9197334ae286f222d6333d9b86723e08`  
		Last Modified: Thu, 05 Nov 2026 08:43:56 GMT  
		Size: 14.2 MB (14165770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4465882557fbca8186670d2c677815f7036ddb0e21b37dbb92bd30a64cd63b7a`  
		Last Modified: Thu, 05 Nov 2026 08:43:55 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:519d849bef9f1cfa7970bb14bdb9166fd1a3067095ee9361cced61e4a80b5f82`  
		Last Modified: Thu, 05 Nov 2026 08:43:57 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52866428497c25b30ccd6f4ab5f7f2c5990d521bfcdb13ae9846422c003e54a1`  
		Last Modified: Thu, 05 Nov 2026 08:43:57 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7af5f6b29ef167a48745fa14de0c68cb3b170205164323272efea8a733539a`  
		Last Modified: Thu, 05 Nov 2026 08:43:58 GMT  
		Size: 892.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67c75e7f8e9d6110c2afb83eb24465aa9bc5059c054d04bdca50a9830e671133`  
		Last Modified: Thu, 05 Nov 2026 17:40:59 GMT  
		Size: 8.8 MB (8838017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d21299a20d655e4a1d9a5b2a3c6a541eac09ec37c4f5c6f538ee6581cfc9acb8`  
		Last Modified: Thu, 05 Nov 2026 17:40:59 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc6798b506d0ae3bb5be6ce3102eac7bc357050627bcbdd7dad30f6b39934ede`  
		Last Modified: Thu, 05 Nov 2026 17:40:59 GMT  
		Size: 256.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06c8ccf5f80204e9b5a89505b20c985a2bd942e8b44fe8c4bf11785faff15250`  
		Last Modified: Tue, 10 Nov 2026 20:15:24 GMT  
		Size: 879.8 KB (879801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9adc28f5ce268fb598bb8f18eca98ac87659e1b81b0d72542228ca8c1a5e5a39`  
		Last Modified: Tue, 10 Nov 2026 20:15:24 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62228800c14669b84c2d95de0f99a0a5d5cf44e26200dac5938528f8c754f45f`  
		Last Modified: Tue, 10 Nov 2026 20:23:13 GMT  
		Size: 23.7 MB (23688797 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.4-apache-trixie` - unknown; unknown

```console
$ docker pull drupal@sha256:95d2b727ac70eb405d1fbfd09b4b772666ca5bf103115933bcaaf17e7881154a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7519176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9653e18e0c62222cec9e4640ddc08e32a8e71296522d08ba7ecef3bde1f55b1b`

```dockerfile
```

-	Layers:
	-	`sha256:a066ed7086cbea48eba698d24eac81b93c7fa24c7924830016249315e5ba91d7`  
		Last Modified: Tue, 10 Nov 2026 20:23:12 GMT  
		Size: 7.5 MB (7473798 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dfa62b36b4cbd5b899c316e80c623bbb3f406d2d9ae9ddbc418bfdff3b90ef25`  
		Last Modified: Tue, 10 Nov 2026 20:23:12 GMT  
		Size: 45.4 KB (45378 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.4-apache-trixie` - linux; riscv64

```console
$ docker pull drupal@sha256:b5d3e2737313ed1e56a252a7c6059053d591a3766dc67bbd3104c87802157a25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **237.8 MB (237839842 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e50ebdd1b6e84d11e8f538934095ccd1d21c729680b0bceb8a8e9844df55ed5`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1793059200'
# Fri, 30 Oct 2026 23:55:10 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Fri, 30 Oct 2026 23:57:16 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Fri, 30 Oct 2026 23:57:16 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Fri, 30 Oct 2026 23:57:16 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 30 Oct 2026 23:57:17 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Fri, 30 Oct 2026 23:57:17 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Fri, 30 Oct 2026 23:57:17 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Sat, 31 Oct 2026 01:01:55 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Sat, 31 Oct 2026 01:01:56 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Sat, 31 Oct 2026 01:01:57 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Sat, 31 Oct 2026 01:01:57 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 31 Oct 2026 01:01:57 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 31 Oct 2026 01:01:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 31 Oct 2026 01:01:57 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Sat, 31 Oct 2026 01:01:57 GMT
ENV PHP_VERSION=8.4.27
# Sat, 31 Oct 2026 01:01:57 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Sat, 31 Oct 2026 01:01:57 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Sat, 31 Oct 2026 08:21:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Sat, 31 Oct 2026 08:21:47 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 31 Oct 2026 09:18:52 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 31 Oct 2026 09:18:53 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 31 Oct 2026 09:18:53 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sat, 31 Oct 2026 09:18:54 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 31 Oct 2026 09:18:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 31 Oct 2026 09:18:54 GMT
STOPSIGNAL SIGWINCH
# Sat, 31 Oct 2026 09:18:54 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Sat, 31 Oct 2026 09:18:55 GMT
WORKDIR /var/www/html
# Sat, 31 Oct 2026 09:18:55 GMT
EXPOSE map[80/tcp:{}]
# Sat, 31 Oct 2026 09:18:55 GMT
CMD ["apache2-foreground"]
# Wed, 04 Nov 2026 18:35:30 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 04 Nov 2026 18:35:30 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Wed, 04 Nov 2026 18:35:31 GMT
RUN { 		echo 'output_buffering=true'; 	} > /usr/local/etc/php/conf.d/docker-php-drupal-recommended.ini # buildkit
# Wed, 04 Nov 2026 18:35:31 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Wed, 04 Nov 2026 18:35:31 GMT
ENV DRUPAL_VERSION=11.4.11
# Wed, 04 Nov 2026 18:35:31 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Wed, 04 Nov 2026 18:35:31 GMT
WORKDIR /opt/drupal
# Wed, 04 Nov 2026 19:36:10 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Wed, 04 Nov 2026 19:36:10 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:a81ae23cfcc12d03cee9e3704fa559c027af15fefe8c60924add8fd17e4c98c1`  
		Last Modified: Wed, 28 Oct 2026 18:39:27 GMT  
		Size: 28.3 MB (28345669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:308faa844a17024435a384738b946fe634eb003f73552debd9138a5ade8890c1`  
		Last Modified: Sat, 31 Oct 2026 00:59:45 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef30f1d6dd17dd75b1fea228d9d3c4083d2fb81fa539a838d60488eecfd56187`  
		Last Modified: Sat, 31 Oct 2026 01:00:13 GMT  
		Size: 146.6 MB (146579136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a343d1d5a63ef08db486d375ae7c6f3e31ace53c10bb304e378584154b0c59e7`  
		Last Modified: Sat, 31 Oct 2026 00:59:45 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6870fc290bf158894e3433174fa9bed1f138153089a796744ada45156e57c0c`  
		Last Modified: Sat, 31 Oct 2026 02:01:55 GMT  
		Size: 4.1 MB (4056429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd22a78fe748616fc5ff21ab77db17ac47cba5caa3aa8ed230a90069136632d4`  
		Last Modified: Sat, 31 Oct 2026 02:01:54 GMT  
		Size: 439.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82f303cda8dc06d1b65a9673581f9c8576f924b13e5881b9a55372adad5c4048`  
		Last Modified: Sat, 31 Oct 2026 02:01:54 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bd0dd3bfafb24577475d3cdf37d7d86eb45c5d6b9f1f521517b68c6773a805a`  
		Last Modified: Sat, 31 Oct 2026 09:22:08 GMT  
		Size: 14.0 MB (14044102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c78ea206aa01790fe9ba890fb3e5de33d02e18ea7ace8e09a6ab76343bb6689`  
		Last Modified: Sat, 31 Oct 2026 09:22:04 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6f44804c704927fbb261387f8b9a7d20870ab0087d9b384b6cc27eb056f4103`  
		Last Modified: Sat, 31 Oct 2026 09:22:09 GMT  
		Size: 13.2 MB (13165384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9d9da99cd95855c49de06833f194eafdff3f0011021812af59f5d9e42870f71`  
		Last Modified: Sat, 31 Oct 2026 09:22:04 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba87d708493d3c353e4907eb979c5940d3904121d9994ec207562c2c9c6c4980`  
		Last Modified: Sat, 31 Oct 2026 09:22:06 GMT  
		Size: 254.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f990727370de58745b13bf989d4f10c6f9ee0fd1eeabfe7595340c9dd0b29c70`  
		Last Modified: Sat, 31 Oct 2026 09:22:07 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0d7a8653ae472e200101657eb97230009489f3e7d3d144361a1036837364276`  
		Last Modified: Sat, 31 Oct 2026 09:22:08 GMT  
		Size: 895.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eef27f3bed358eb911e34f3fc6e1285582831c40561f0b6cf8d0a1cbc1ea520`  
		Last Modified: Wed, 04 Nov 2026 18:41:34 GMT  
		Size: 7.1 MB (7077754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b78f34ea7b3e58feacd08809995197ff50680c254935487bf988549df6925ffb`  
		Last Modified: Wed, 04 Nov 2026 18:41:32 GMT  
		Size: 317.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3569f6825b39affa65ce20a5f4d1de2470c4cb293a435e816e556137d38c7c9a`  
		Last Modified: Wed, 04 Nov 2026 18:41:32 GMT  
		Size: 261.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acc5b450349923a24f75780763ac0817ba5ae9ee1c9fcadd35bce19aedde27ff`  
		Last Modified: Wed, 04 Nov 2026 18:41:33 GMT  
		Size: 876.2 KB (876210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e270f2a2ad9dafce4b4456c141f9dd9092377b10de8250d0a0f78996a1faae95`  
		Last Modified: Wed, 04 Nov 2026 18:41:34 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f42db2feb5e23821edc538d57421a203d4c9a66988f1cceaaf255cdff849f332`  
		Last Modified: Wed, 04 Nov 2026 19:41:19 GMT  
		Size: 23.7 MB (23688697 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.4-apache-trixie` - unknown; unknown

```console
$ docker pull drupal@sha256:9232610058cc852ebeac325d2dd19c7252934227f6835b4722a030fcb7186375
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7590780 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd90079c431bf47b3559db3fd8b49cb562fec9eef748601f880321bf508769a6`

```dockerfile
```

-	Layers:
	-	`sha256:b1ee9b6f9ab3ea70abb5effbfa57844ba181108ad806a2c557571b5110d90b92`  
		Last Modified: Wed, 04 Nov 2026 19:41:16 GMT  
		Size: 7.5 MB (7545403 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1954d34bf8544e5eb611858d9637322f0ec1d8c2f3c158835957c7b018895d98`  
		Last Modified: Wed, 04 Nov 2026 19:41:15 GMT  
		Size: 45.4 KB (45377 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.4-apache-trixie` - linux; s390x

```console
$ docker pull drupal@sha256:a0c7d59fdd70deebff41604072bb05081741abc0389e90a5512015a878318112
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **186.3 MB (186328099 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30c949138bd45bd84b9086b48cb082b6773cb6b75a6809e0079b8045d4c6ee20`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 07:15:46 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 05 Nov 2026 07:16:00 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 05 Nov 2026 07:16:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Thu, 05 Nov 2026 07:16:00 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 07:16:00 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 07:16:00 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Thu, 05 Nov 2026 07:16:00 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Thu, 05 Nov 2026 07:22:46 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Thu, 05 Nov 2026 07:22:46 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Thu, 05 Nov 2026 07:22:46 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Thu, 05 Nov 2026 07:22:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:22:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:22:46 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 07:22:46 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 05 Nov 2026 07:22:46 GMT
ENV PHP_VERSION=8.4.27
# Thu, 05 Nov 2026 07:22:46 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Thu, 05 Nov 2026 07:22:46 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Thu, 05 Nov 2026 07:26:48 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 05 Nov 2026 07:26:48 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:29:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 07:29:41 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:29:41 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 07:29:41 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 07:29:41 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 07:29:41 GMT
STOPSIGNAL SIGWINCH
# Thu, 05 Nov 2026 07:29:41 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:29:41 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 07:29:41 GMT
EXPOSE map[80/tcp:{}]
# Thu, 05 Nov 2026 07:29:41 GMT
CMD ["apache2-foreground"]
# Thu, 05 Nov 2026 08:52:17 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:52:17 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 05 Nov 2026 08:52:17 GMT
RUN { 		echo 'output_buffering=true'; 	} > /usr/local/etc/php/conf.d/docker-php-drupal-recommended.ini # buildkit
# Tue, 10 Nov 2026 20:11:41 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 20:11:42 GMT
ENV DRUPAL_VERSION=11.4.11
# Tue, 10 Nov 2026 20:11:42 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 10 Nov 2026 20:11:42 GMT
WORKDIR /opt/drupal
# Tue, 10 Nov 2026 20:15:34 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 10 Nov 2026 20:15:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:68fa0367de27b0e6a2c3df0454287606106fa6c116da44e6260ef14d71fbf0e4`  
		Last Modified: Thu, 05 Nov 2026 06:15:44 GMT  
		Size: 29.9 MB (29924117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0723662ef84276855ccfb0d70a3973885698c376c4b24fb8bcc09d8a00d1ebc8`  
		Last Modified: Thu, 05 Nov 2026 07:19:05 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40211898d6ec92b8daa6c68bcf4439510b2e322f2167814e7aeb8c112182fcba`  
		Last Modified: Thu, 05 Nov 2026 07:19:07 GMT  
		Size: 92.6 MB (92569706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8551db760c67ef97c61736f8f4b9f50c16f4f32fe36959b4b603716476facf07`  
		Last Modified: Thu, 05 Nov 2026 07:19:05 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cb9b0cb108c42abeaf6787274e5b7b11035702c634cca2ce9a06f8cccc8f450`  
		Last Modified: Thu, 05 Nov 2026 07:26:13 GMT  
		Size: 4.3 MB (4342224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de7eeef3eedecad1917c64e7595c887c81067ac6fb80e14291bc8f8ded77cd5e`  
		Last Modified: Thu, 05 Nov 2026 07:26:13 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b748f769815a2fda37288f4ea0ea4b3e1513c93d16555dc252d2291778906314`  
		Last Modified: Thu, 05 Nov 2026 07:26:13 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca2632506dfb6745547274f7b542b7f18f04f5cda9d2911c5960014859b5424e`  
		Last Modified: Thu, 05 Nov 2026 07:30:01 GMT  
		Size: 14.0 MB (14028293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf0a99174e5c86f21ba3309e0f410421eed18f937a4d4be5a74cbb02cec39363`  
		Last Modified: Thu, 05 Nov 2026 07:30:00 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a12855adf3ab83d1430e18389e9a4bd20ec119abb3ab620fb4a975cca7504b94`  
		Last Modified: Thu, 05 Nov 2026 07:30:01 GMT  
		Size: 13.5 MB (13510156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23590e45f5353cec2be63c2412b0dca06498b4674c2854d78769fa0b2f01c462`  
		Last Modified: Thu, 05 Nov 2026 07:30:00 GMT  
		Size: 2.5 KB (2465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a24c413f6826bc7a9eb662dd44bdeca7e7b80085db4268f1023f96491de705e`  
		Last Modified: Thu, 05 Nov 2026 07:30:02 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19d49ffb1f8dc118e0a1ab85b5b9f78d2fa47464eb7a73b8deef8ccd02800951`  
		Last Modified: Thu, 05 Nov 2026 07:30:02 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf1e50dd6fc30796da17dd9352e60fed49383a340bd9d38c24be69506e73e1a3`  
		Last Modified: Thu, 05 Nov 2026 07:30:02 GMT  
		Size: 894.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f2141813704912de0fb77c9efede0d9c93cb1c389a110717068eb609a3ec112`  
		Last Modified: Thu, 05 Nov 2026 08:52:49 GMT  
		Size: 7.4 MB (7378366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c96076cb4abe4c0203f6b1588f1fd93b9458f9242587d4c7e97c7add13cac8e`  
		Last Modified: Thu, 05 Nov 2026 08:52:49 GMT  
		Size: 312.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5ae36fde74a307edd61bfce381044964f790e7f20d2611500c5857cd7099f86`  
		Last Modified: Thu, 05 Nov 2026 08:52:49 GMT  
		Size: 255.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6575e16e26784010ec1ab58507979f95da22ce74db50711450743f1bfb24290d`  
		Last Modified: Tue, 10 Nov 2026 20:13:19 GMT  
		Size: 879.8 KB (879793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:395bcc34402a5b90aad2b327676ec548d149b54ffa965cb460ce1e4f230f3eae`  
		Last Modified: Tue, 10 Nov 2026 20:13:20 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf6b54d75c2448b3e72d5f467129c395002cd1deae495f35e08cdfb7e82f3ec5`  
		Last Modified: Tue, 10 Nov 2026 20:16:16 GMT  
		Size: 23.7 MB (23689025 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.4-apache-trixie` - unknown; unknown

```console
$ docker pull drupal@sha256:50a61aa9e1f686d64f15bb89d3e4583eef4b793905fc9994b83dabef93c046e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7250888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31291acceb96d55999685062c8dda68caa78d921715688938f2762329554f8e5`

```dockerfile
```

-	Layers:
	-	`sha256:1f15c4618a0ac14546c64af1798c6e2753a9a8df643bd4da1624d3d248a65e84`  
		Last Modified: Tue, 10 Nov 2026 20:16:16 GMT  
		Size: 7.2 MB (7205625 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f3acbbce5fe1cca977d3edfbd9284ee40336457161bf75f9677d1efcdbf60613`  
		Last Modified: Tue, 10 Nov 2026 20:16:15 GMT  
		Size: 45.3 KB (45263 bytes)  
		MIME: application/vnd.in-toto+json
