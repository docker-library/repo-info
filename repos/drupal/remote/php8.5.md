## `drupal:php8.5`

```console
$ docker pull drupal@sha256:44e7980f49d4a457090174ed323c0cb944280be660f979cb4576e1adc4d21acc
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

### `drupal:php8.5` - linux; amd64

```console
$ docker pull drupal@sha256:1fc5ad9220f54b7919fa611534ee601190843fc65571e1ed6f42e3862ee32f09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **217.1 MB (217096236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99ff30ea308a8f8af198a133115771f6072d9c6b377aaa1488d85ca922e3f7e5`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:20:49 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 06 Oct 2026 01:21:07 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 06 Oct 2026 01:21:07 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 01:21:07 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 06 Oct 2026 01:21:07 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 06 Oct 2026 01:21:07 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 06 Oct 2026 01:21:07 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 06 Oct 2026 01:21:14 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 06 Oct 2026 01:21:14 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 06 Oct 2026 01:21:14 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 06 Oct 2026 01:21:14 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:21:14 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:21:14 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 06 Oct 2026 01:21:14 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 06 Oct 2026 01:21:14 GMT
ENV PHP_VERSION=8.5.11
# Tue, 06 Oct 2026 01:21:14 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Tue, 06 Oct 2026 01:21:14 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Tue, 06 Oct 2026 01:21:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 01:21:23 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:24:27 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 01:24:27 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:24:27 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 01:24:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 01:24:27 GMT
STOPSIGNAL SIGWINCH
# Tue, 06 Oct 2026 01:24:27 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:24:27 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 01:24:27 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 01:24:27 GMT
CMD ["apache2-foreground"]
# Mon, 12 Oct 2026 22:50:17 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 22:50:17 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Mon, 12 Oct 2026 22:50:17 GMT
RUN { 		echo 'output_buffering=true'; 	} > /usr/local/etc/php/conf.d/docker-php-drupal-recommended.ini # buildkit
# Mon, 12 Oct 2026 22:50:17 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 22:50:17 GMT
ENV DRUPAL_VERSION=11.4.9
# Mon, 12 Oct 2026 22:50:17 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 12 Oct 2026 22:50:17 GMT
WORKDIR /opt/drupal
# Mon, 12 Oct 2026 22:50:24 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Mon, 12 Oct 2026 22:50:24 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b06d38994c79b19a032ce7776dcdb8a51011c98e6705b56935e74aead91503bb`  
		Last Modified: Tue, 06 Oct 2026 01:24:50 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98ec16867954f0644986e8414b37a5849cb07d2a8e7d8cd278c2be654c0821b1`  
		Last Modified: Tue, 06 Oct 2026 01:24:53 GMT  
		Size: 117.8 MB (117842880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fadac184c029c1a71b40dd1385e7eb7d23f31cda157d0797ae49853d2764da35`  
		Last Modified: Tue, 06 Oct 2026 01:24:50 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e37af3e95c477787b7d69fdf6bd100e2aec6c5c59b8239b541facc7bfbfc0e91`  
		Last Modified: Tue, 06 Oct 2026 01:24:50 GMT  
		Size: 4.2 MB (4239074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa171a020838bcc05bc5a1c7e4a74a2e18f6e2b7d21ff15eddfa01c184a2cc0a`  
		Last Modified: Tue, 06 Oct 2026 01:24:51 GMT  
		Size: 430.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4527b7aef5dbcaf48a24ea1fda6d7cac47e2fd6bcc0b681f361290a366475f6`  
		Last Modified: Tue, 06 Oct 2026 01:24:51 GMT  
		Size: 482.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3abeca9d74cb7381d9e1b25aac55e8629c7890be8fcd33867286bd2e829ed1ab`  
		Last Modified: Tue, 06 Oct 2026 01:24:52 GMT  
		Size: 14.6 MB (14636662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c1de721bd737707a80a1d444b72cc525a1ac8e2f5966cc6ac3e47258dfdd835`  
		Last Modified: Tue, 06 Oct 2026 01:24:52 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dd2ad9d76f9759ab7c09e2a574f19751adc25af0636ba493f1e9cc228b874e2`  
		Last Modified: Tue, 06 Oct 2026 01:24:53 GMT  
		Size: 15.2 MB (15193125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e10234afeedea0abac3169513698b863017fb236609b80f86794b3142eed6325`  
		Last Modified: Tue, 06 Oct 2026 01:24:54 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4814c1f6b2f7c598af4fabaebb885063e0da0f5728f313475b605957c2708ce0`  
		Last Modified: Tue, 06 Oct 2026 01:24:54 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4682996e77b865fad8a9c997e326b34a7ca512700f8cbc10e46d371a6366f4`  
		Last Modified: Tue, 06 Oct 2026 01:24:54 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d68749043931b23a3a0dab65ef8c6d36f20740467a86303ccf4c444b60136078`  
		Last Modified: Mon, 12 Oct 2026 22:50:43 GMT  
		Size: 10.8 MB (10816283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7766e09831a4e7a816b7074cc99a23dabc0b08435263851f9be56565cadaa525`  
		Last Modified: Mon, 12 Oct 2026 22:50:42 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db96a6b283ae4aae5a5ee325e40b7e7be8beadecbd2471a37ff138df824bd075`  
		Last Modified: Mon, 12 Oct 2026 22:50:42 GMT  
		Size: 256.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2209173df177f6857728a42cca2a2091eafb1148c9b6a6680b4661e0b6aba3b3`  
		Last Modified: Mon, 12 Oct 2026 22:50:42 GMT  
		Size: 833.0 KB (832981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cdd678b6ed313c603878f4028386cfb3fea755836adf53d3974f6e5890dca60`  
		Last Modified: Mon, 12 Oct 2026 22:50:43 GMT  
		Size: 113.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db708064bbf4e35472abfedc54a4ba4c3fd6df167a73cc10b867984ad44b6aa1`  
		Last Modified: Mon, 12 Oct 2026 22:50:44 GMT  
		Size: 23.7 MB (23685715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.5` - unknown; unknown

```console
$ docker pull drupal@sha256:382b7d2a178623e55470048a63b1a315626e295614bf60f7d590ff8b42f72b1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7524934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:435d3a1a4a4f43c203f856f5f067411272d9ff36061f29ffc18b87fa5efc4f41`

```dockerfile
```

-	Layers:
	-	`sha256:456ae3d793e7316da5ce0a37f3fbb7d41715786abe8d3defb7501635976128f5`  
		Last Modified: Mon, 12 Oct 2026 22:50:42 GMT  
		Size: 7.5 MB (7477067 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:20908b4f47a2e782f2632021f76b10da2eab6127b705ec2ac5e90d0df4e16e29`  
		Last Modified: Mon, 12 Oct 2026 22:50:42 GMT  
		Size: 47.9 KB (47867 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.5` - linux; arm variant v7

```console
$ docker pull drupal@sha256:c8b15e9bc69bfe2d6e989669a805e13d5c1aa7a2012ea42f35f8f03406b8962c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **174.7 MB (174674579 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:770de5e7c0f5d748b2642d49cae7c29f5fe5d52c2bf4951d20f5e7198bca4517`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:27:28 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 06 Oct 2026 01:27:47 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 06 Oct 2026 01:27:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 01:27:47 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 06 Oct 2026 01:27:48 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 06 Oct 2026 01:27:48 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 06 Oct 2026 01:27:48 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 06 Oct 2026 01:31:04 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 06 Oct 2026 01:31:04 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 06 Oct 2026 01:31:05 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 06 Oct 2026 01:31:05 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:31:05 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:31:05 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 06 Oct 2026 01:31:05 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 06 Oct 2026 01:31:05 GMT
ENV PHP_VERSION=8.5.11
# Tue, 06 Oct 2026 01:31:05 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Tue, 06 Oct 2026 01:31:05 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Tue, 06 Oct 2026 01:31:14 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 01:31:14 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:34:10 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 01:34:10 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:34:10 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 01:34:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 01:34:10 GMT
STOPSIGNAL SIGWINCH
# Tue, 06 Oct 2026 01:34:10 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:34:10 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 01:34:10 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 01:34:10 GMT
CMD ["apache2-foreground"]
# Mon, 12 Oct 2026 23:00:29 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 23:00:29 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Mon, 12 Oct 2026 23:00:30 GMT
RUN { 		echo 'output_buffering=true'; 	} > /usr/local/etc/php/conf.d/docker-php-drupal-recommended.ini # buildkit
# Mon, 12 Oct 2026 23:00:30 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 23:00:30 GMT
ENV DRUPAL_VERSION=11.4.9
# Mon, 12 Oct 2026 23:00:30 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 12 Oct 2026 23:00:30 GMT
WORKDIR /opt/drupal
# Mon, 12 Oct 2026 23:00:37 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Mon, 12 Oct 2026 23:00:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:300a23646f25b185ab2272dd30c5f746e1b89a5b96a25accc2ae4aa55e80f6d1`  
		Last Modified: Tue, 06 Oct 2026 00:13:54 GMT  
		Size: 26.3 MB (26258178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2d460ede25fb3385204549c0698292e64106c41e80019c13740aec930cdade0`  
		Last Modified: Tue, 06 Oct 2026 01:30:48 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98d2f00c6f9057044548c1ae704cdf4e6a25e64802e629ae720dfbfadb129524`  
		Last Modified: Tue, 06 Oct 2026 01:30:50 GMT  
		Size: 86.3 MB (86264971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f4cba97257370eafe744930740cc5be563c6688bbff797ff52f25ea2083bdeb`  
		Last Modified: Tue, 06 Oct 2026 01:30:48 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a8533be2706ee928ff1697260243f241166e50c9e5170a8a536cade43f29860`  
		Last Modified: Tue, 06 Oct 2026 01:34:20 GMT  
		Size: 3.8 MB (3763866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ab07c2f207c920831f0b59d0a7f1ddeb2ba17025e01cd8f48e20d653018817f`  
		Last Modified: Tue, 06 Oct 2026 01:34:20 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:905f09356c790c04a4012e32309b0c701d6c856861b707605ba63b50c54a5a93`  
		Last Modified: Tue, 06 Oct 2026 01:34:20 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df41a0b27deac8c23ea6c2b557569ab8baa512f7fb32911742fb9ab1570abc30`  
		Last Modified: Tue, 06 Oct 2026 01:34:21 GMT  
		Size: 14.6 MB (14633928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3a879de8db5f30ea6f70abf1500f735e73237f7ba13b4396ee0e74e45daaea1`  
		Last Modified: Tue, 06 Oct 2026 01:34:21 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fa6a452e6a7283bbcb55db896880b9bcc423e88184c55b9a7281f0f50d57925`  
		Last Modified: Tue, 06 Oct 2026 01:34:22 GMT  
		Size: 12.6 MB (12636774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9107dd155dee6f7356e1d79d4b2363a22eeba72ea9ddc64ef8e72f4162c6e772`  
		Last Modified: Tue, 06 Oct 2026 01:34:22 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abe60d3a39ec5744eb09e04e1f9ef5ea9f362192e3477b1329ab4ff32f67080d`  
		Last Modified: Tue, 06 Oct 2026 01:34:22 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68a80d2b4169cdb89c03e7dc53a6e4d44dd5616cb04fceef6c820aee6747b761`  
		Last Modified: Tue, 06 Oct 2026 01:34:22 GMT  
		Size: 887.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b60fb4800fe7cd448cdf170a3c49d1415ef5e121dd743d8d9fcff4e1592a86b8`  
		Last Modified: Mon, 12 Oct 2026 23:00:56 GMT  
		Size: 6.6 MB (6591667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4541ce786602cd431b45197043ff502117a9309dae2d53627ea13356a6321ee`  
		Last Modified: Mon, 12 Oct 2026 23:00:56 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11af4b6ee3765ee27e5028c3f089221e37b5f90f0116a1587dd8bc771dbbe1ff`  
		Last Modified: Mon, 12 Oct 2026 23:00:56 GMT  
		Size: 259.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44fb41744e785629c2e9467884895886116d84dd187399a714f5f5a5e07fc22e`  
		Last Modified: Mon, 12 Oct 2026 23:00:56 GMT  
		Size: 833.0 KB (832979 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74f11b0d6589dd24b91c55c5fc4b66287b7fd49a0a77a843b0c426cd142fd22d`  
		Last Modified: Mon, 12 Oct 2026 23:00:57 GMT  
		Size: 113.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34cdd1601614d97c2ce85c9ea9113aa7e97b502530b46694b4bde663fa9df587`  
		Last Modified: Mon, 12 Oct 2026 23:00:58 GMT  
		Size: 23.7 MB (23686057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.5` - unknown; unknown

```console
$ docker pull drupal@sha256:3e9beb21b91202a773f4bf978ec7aa255539562f0e9f326f730ec460c9786e4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7329524 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2dc384b13138819745c542ef7dedaa2da89f739e10d080d10a5b792e51af8fd`

```dockerfile
```

-	Layers:
	-	`sha256:7fea58949214c67dcc583e20782f91c8cf1b1becfcd8d5ac1458aeb1b1d6ac00`  
		Last Modified: Mon, 12 Oct 2026 23:00:56 GMT  
		Size: 7.3 MB (7281370 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5616305002a50bef8bfa327fad82ad80f8e30d550e4db9e468372cbc9b77a3e5`  
		Last Modified: Mon, 12 Oct 2026 23:00:55 GMT  
		Size: 48.2 KB (48154 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.5` - linux; arm64 variant v8

```console
$ docker pull drupal@sha256:495804b93d2c001a90624ac4334aa10d09d3d8057ad38307d6e0750da3f4e69c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **207.9 MB (207941534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71b82b63b6cb118b6ca0099d63c91dae511bc13afb974c52559df8dc180df190`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:21:06 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 06 Oct 2026 01:21:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 06 Oct 2026 01:21:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 01:21:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 06 Oct 2026 01:21:23 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 06 Oct 2026 01:21:23 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 06 Oct 2026 01:21:23 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 06 Oct 2026 01:21:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 06 Oct 2026 01:21:30 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 06 Oct 2026 01:21:30 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 06 Oct 2026 01:21:30 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:21:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:21:30 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 06 Oct 2026 01:21:30 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 06 Oct 2026 01:21:30 GMT
ENV PHP_VERSION=8.5.11
# Tue, 06 Oct 2026 01:21:30 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Tue, 06 Oct 2026 01:21:30 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Tue, 06 Oct 2026 01:21:39 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 01:21:39 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:25:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 01:25:01 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:25:01 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 01:25:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 01:25:01 GMT
STOPSIGNAL SIGWINCH
# Tue, 06 Oct 2026 01:25:01 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:25:01 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 01:25:01 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 01:25:01 GMT
CMD ["apache2-foreground"]
# Mon, 12 Oct 2026 22:58:23 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 22:58:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Mon, 12 Oct 2026 22:58:23 GMT
RUN { 		echo 'output_buffering=true'; 	} > /usr/local/etc/php/conf.d/docker-php-drupal-recommended.ini # buildkit
# Mon, 12 Oct 2026 22:58:23 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 22:58:23 GMT
ENV DRUPAL_VERSION=11.4.9
# Mon, 12 Oct 2026 22:58:23 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 12 Oct 2026 22:58:23 GMT
WORKDIR /opt/drupal
# Mon, 12 Oct 2026 22:58:30 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Mon, 12 Oct 2026 22:58:30 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afb3cff3ed5c6d12e587fcf1d3c958a0aa558085f4c61e7f500f25ad596241c8`  
		Last Modified: Tue, 06 Oct 2026 01:25:22 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c6c490b6fbed29387e934b76c4adf4483597151f5c0ea4edb364b9d163f2680`  
		Last Modified: Tue, 06 Oct 2026 01:25:25 GMT  
		Size: 110.2 MB (110179368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c313724d28c43dad9f9a70b83664d1c226a1526fdeb254de05672eb9a9cf574e`  
		Last Modified: Tue, 06 Oct 2026 01:25:22 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26927100228d8d32c9bca523ccaf7dcacefcf7594e04b6d1597aaa981a043cd3`  
		Last Modified: Tue, 06 Oct 2026 01:25:23 GMT  
		Size: 4.3 MB (4314438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55494ee3c0696dd307a9e4232ace97ce88019e8ff31f692d1a752426d4594939`  
		Last Modified: Tue, 06 Oct 2026 01:25:23 GMT  
		Size: 429.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13e1d5ac410126dd897a90cf5ee5ee4e83a69ef067fe9174ee0cce240c585391`  
		Last Modified: Tue, 06 Oct 2026 01:25:24 GMT  
		Size: 482.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b00d683c0242d74528f7b991c6353f605b00520234957f96a72c8f354c100e0`  
		Last Modified: Tue, 06 Oct 2026 01:25:24 GMT  
		Size: 14.6 MB (14636214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa1de83bc612772a14e1524714148c17e99d273fbd7caa370e38655e97a5c14b`  
		Last Modified: Tue, 06 Oct 2026 01:25:25 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f69f3c819aca41043bd4b999ac9402fb8a3a3c9a10eaa90db39e69e3591b2c6`  
		Last Modified: Tue, 06 Oct 2026 01:25:25 GMT  
		Size: 14.8 MB (14756918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52b00a15ef4bc9c359a7b6eb9ab5c5702957ffac926873e60aa9181eb9faadc5`  
		Last Modified: Tue, 06 Oct 2026 01:25:26 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ae06c250deb8110ddcfb9e1fa981b7dced7822f982bb75bfd82109fdee90ab6`  
		Last Modified: Tue, 06 Oct 2026 01:25:26 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74044605f48190ec1ab60671c416f9d877753ade1d7149e059097dc76f6d46c0`  
		Last Modified: Tue, 06 Oct 2026 01:25:27 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9de3410d4046b45e2c84683c41569a61923d9135027cfeecfe2f082d7025d54`  
		Last Modified: Mon, 12 Oct 2026 22:58:49 GMT  
		Size: 9.3 MB (9327757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ac9dbd7926513635d0041aba2e2319e656fbbd3ff24b7e558f7fecb9ae40ca3`  
		Last Modified: Mon, 12 Oct 2026 22:58:48 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:165b7498b451cabf2e9633f0adec1bd07ebc7adbb93fc6a4666bc969c98ed7cd`  
		Last Modified: Mon, 12 Oct 2026 22:58:48 GMT  
		Size: 261.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4d0cfbe46881c23e02ee81420ee124ed3b6863ed33d3823f9b832fff7e089aa`  
		Last Modified: Mon, 12 Oct 2026 22:58:48 GMT  
		Size: 833.0 KB (832982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c119487e33df7bd9001bd5351582e124c6df43480abb00a9a9e572e1bbc1a00d`  
		Last Modified: Mon, 12 Oct 2026 22:58:50 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f2dba4f84a30af252326f271ea35ed42a001c737757bdda264febbb390f2594`  
		Last Modified: Mon, 12 Oct 2026 22:58:50 GMT  
		Size: 23.7 MB (23687400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.5` - unknown; unknown

```console
$ docker pull drupal@sha256:bfdf66afdf69f51c1bd78d45f599c69d3a271ba1bbcb4e95e38862f02ccf5035
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7622974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2f177f417e9cba2449faf6eea9f8992d5527d53ab1a2cfd11b784025ce5e927`

```dockerfile
```

-	Layers:
	-	`sha256:716f91f82ae25cdcd5b04819a548408627534a19a5f2dc38f2bf10c55a3c7e23`  
		Last Modified: Mon, 12 Oct 2026 22:58:48 GMT  
		Size: 7.6 MB (7574699 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38e2629142255f19052c85aa7e375cf26b4bffda7d753bf30d610063871dff65`  
		Last Modified: Mon, 12 Oct 2026 22:58:48 GMT  
		Size: 48.3 KB (48275 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.5` - linux; 386

```console
$ docker pull drupal@sha256:26dade7a60d5389055081862f8dbc0f8d2ba2ac9f03805a852810309b0018938
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.2 MB (215215598 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:96a912ad7afce5f522c290da9555c372dab2c0c6187ac107acd97a1b790457ab`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:21:58 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 06 Oct 2026 01:22:22 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 06 Oct 2026 01:22:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 01:22:22 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 06 Oct 2026 01:22:22 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 06 Oct 2026 01:22:22 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 06 Oct 2026 01:22:22 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 06 Oct 2026 01:22:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 06 Oct 2026 01:22:30 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 06 Oct 2026 01:22:30 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 06 Oct 2026 01:22:30 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:22:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:22:30 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 06 Oct 2026 01:22:30 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 06 Oct 2026 01:22:30 GMT
ENV PHP_VERSION=8.5.11
# Tue, 06 Oct 2026 01:22:30 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Tue, 06 Oct 2026 01:22:30 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Tue, 06 Oct 2026 01:22:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 01:22:40 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:26:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 01:26:22 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:26:22 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 01:26:22 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 01:26:22 GMT
STOPSIGNAL SIGWINCH
# Tue, 06 Oct 2026 01:26:22 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:26:22 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 01:26:22 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 01:26:22 GMT
CMD ["apache2-foreground"]
# Mon, 12 Oct 2026 22:57:36 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 22:57:37 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Mon, 12 Oct 2026 22:57:37 GMT
RUN { 		echo 'output_buffering=true'; 	} > /usr/local/etc/php/conf.d/docker-php-drupal-recommended.ini # buildkit
# Mon, 12 Oct 2026 22:57:37 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 22:57:37 GMT
ENV DRUPAL_VERSION=11.4.9
# Mon, 12 Oct 2026 22:57:37 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 12 Oct 2026 22:57:37 GMT
WORKDIR /opt/drupal
# Mon, 12 Oct 2026 22:57:43 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Mon, 12 Oct 2026 22:57:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:b59aaa0193108c500830004d6b7bf57fbd8ddfd00c73f9c19253d16fa8acb12e`  
		Last Modified: Tue, 06 Oct 2026 00:13:53 GMT  
		Size: 31.4 MB (31353297 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b10fcafa6d3cca6533cc1c913c67edbd15b62fc0b07ff8a0c4fed55517bbe466`  
		Last Modified: Tue, 06 Oct 2026 01:26:44 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f226632471a620b16e5e51f47bd84a6fbf26514b6a60e07f89ae4dddecf86644`  
		Last Modified: Tue, 06 Oct 2026 01:26:47 GMT  
		Size: 116.1 MB (116149067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f02c051f47314dad0de0732c594c03c8986a6da635c7fc1999f5b634731af144`  
		Last Modified: Tue, 06 Oct 2026 01:26:44 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64f0b7a23ad56b2656c627073e1b6df61e0272a58a24ef7212659ab7e372277f`  
		Last Modified: Tue, 06 Oct 2026 01:26:45 GMT  
		Size: 4.5 MB (4471220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2303944d59a7ae0dd0c66c1d35d95cce49d52a4e9a4810268414195d4ef32f84`  
		Last Modified: Tue, 06 Oct 2026 01:26:45 GMT  
		Size: 431.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aeb8a507a493b924c99aefae41484e4a25bb8716300bf33bb78a7a5433719863`  
		Last Modified: Tue, 06 Oct 2026 01:26:45 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95e8468bbaa6d68b43805fc26eec6af1c38a4969ec535dae6bb697798fe692cb`  
		Last Modified: Tue, 06 Oct 2026 01:26:47 GMT  
		Size: 14.6 MB (14635509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:273eb0a4cedbbe00c9c45571649d68191663f34c15bcddb8e9147d6ac1ad55b6`  
		Last Modified: Tue, 06 Oct 2026 01:26:47 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d24cc7643dba8d3a0b6c6f4de904a4ccd0025e543b97273c426adebb2b600418`  
		Last Modified: Tue, 06 Oct 2026 01:26:47 GMT  
		Size: 15.6 MB (15608905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98b3039f930d038ed45940ea89d03bb959b99687eae8e39947db0990698b8da0`  
		Last Modified: Tue, 06 Oct 2026 01:26:48 GMT  
		Size: 2.5 KB (2460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1710034fc1ce26038b2f606307c10adaece180f0cf46bb01168d49e73573452`  
		Last Modified: Tue, 06 Oct 2026 01:26:48 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1fdbbe34f0e69558c14715663a7a2378ea5984e865dd3226f3517dc103f0f14`  
		Last Modified: Tue, 06 Oct 2026 01:26:48 GMT  
		Size: 891.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3782582c9623a8df23fc20a5f8d6af80f425e9892fa2649165ad04282aaefa2`  
		Last Modified: Mon, 12 Oct 2026 22:58:00 GMT  
		Size: 8.5 MB (8470996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a5d3ff30d51db22690bf74688349fba5a5e6640cefbf6ec42384ea9a919398a`  
		Last Modified: Mon, 12 Oct 2026 22:57:59 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e00787354ab49ad0cda63fa1ba869690671426ec06cad3a89fe7ff4bfc3c213c`  
		Last Modified: Mon, 12 Oct 2026 22:58:00 GMT  
		Size: 258.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38f3b92d7290cec8e133ac7b36fc161b41614d5bd5b8a1f4113af4482a78f81a`  
		Last Modified: Mon, 12 Oct 2026 22:57:59 GMT  
		Size: 833.0 KB (832986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bac4d12f8885871ce89deb568091913a91941caa5c65effa6721cfddc46a4dc3`  
		Last Modified: Mon, 12 Oct 2026 22:58:00 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6606683b01ff068852a32bf5b5eeb77a26dbb45aa94020ecbb963aacb10df59f`  
		Last Modified: Mon, 12 Oct 2026 22:58:01 GMT  
		Size: 23.7 MB (23687447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.5` - unknown; unknown

```console
$ docker pull drupal@sha256:b677a80e86bfa445635bc6d5067efb1a67f7d9df1c1c9da132984feabf09a1ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7498339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:179dff2f3a2522162725fddb85ddd7c0719dabb1bc6411044409b615668a1d66`

```dockerfile
```

-	Layers:
	-	`sha256:abff9a3f36159d9dd88cbf42616379fa44dc585f6ff004bc069ebbb241e3fb23`  
		Last Modified: Mon, 12 Oct 2026 22:57:59 GMT  
		Size: 7.5 MB (7450623 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce535397ba38f33bc65cebab2afa01aa6648951f452c52bf3fb878eb013c399d`  
		Last Modified: Mon, 12 Oct 2026 22:57:59 GMT  
		Size: 47.7 KB (47716 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.5` - linux; ppc64le

```console
$ docker pull drupal@sha256:549bada8c08de3579651aabf9395ac9630264429e21eb9d1411730ad3d4bdb61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.3 MB (211291944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f460a48b031d02e95347960e6688053f6b49fcf1e2cba9930a17ee7030f0ef9`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 02:05:20 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 06 Oct 2026 02:06:17 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 06 Oct 2026 02:06:17 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 02:06:17 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 06 Oct 2026 02:06:18 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 06 Oct 2026 02:06:18 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 06 Oct 2026 02:06:18 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 06 Oct 2026 02:14:25 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 06 Oct 2026 02:14:25 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 06 Oct 2026 02:14:26 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 06 Oct 2026 02:14:26 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 02:14:26 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 02:14:26 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 06 Oct 2026 02:14:26 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 06 Oct 2026 02:14:26 GMT
ENV PHP_VERSION=8.5.11
# Tue, 06 Oct 2026 02:14:26 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Tue, 06 Oct 2026 02:14:26 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Tue, 06 Oct 2026 02:38:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 02:38:42 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:43:50 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 02:43:51 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:43:51 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 02:43:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 02:43:51 GMT
STOPSIGNAL SIGWINCH
# Tue, 06 Oct 2026 02:43:52 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:43:52 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 02:43:52 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 02:43:52 GMT
CMD ["apache2-foreground"]
# Tue, 06 Oct 2026 11:42:05 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 11:42:08 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Tue, 06 Oct 2026 11:42:11 GMT
RUN { 		echo 'output_buffering=true'; 	} > /usr/local/etc/php/conf.d/docker-php-drupal-recommended.ini # buildkit
# Tue, 06 Oct 2026 11:42:12 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 11:42:14 GMT
ENV DRUPAL_VERSION=11.4.8
# Tue, 06 Oct 2026 11:42:14 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 06 Oct 2026 11:42:14 GMT
WORKDIR /opt/drupal
# Tue, 06 Oct 2026 11:46:16 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 06 Oct 2026 11:46:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f4c3ba8f520985bdafac3d3cf597f71fc2df13a13c28d40fa74686237cddca`  
		Last Modified: Tue, 06 Oct 2026 02:13:38 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66ec1afed59b6051b2c4360952bc5184afdd5f96bfc6375613861a64dd0931a6`  
		Last Modified: Tue, 06 Oct 2026 02:13:42 GMT  
		Size: 109.6 MB (109613006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a808db6c906f6422950e5d4354d10cdb64c810315d4f011e8b2a3e0a263c035e`  
		Last Modified: Tue, 06 Oct 2026 02:13:38 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb34396ca65b7de68ca91d2fffa68cff8ad9622eb4be9ee1ad4f2b99ab396cbd`  
		Last Modified: Tue, 06 Oct 2026 02:22:10 GMT  
		Size: 4.9 MB (4896922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2dc20a3709861d6fb705b736002aaf915f9505e1b57b85a0be64e2e04d44b17`  
		Last Modified: Tue, 06 Oct 2026 02:22:10 GMT  
		Size: 433.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e48dada0fcbe125591b76d10b2317e9a578244febc1e11352bf93fe4587ea642`  
		Last Modified: Tue, 06 Oct 2026 02:22:10 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af21de91135bdc4206f8776b7eae0e221bc726b139d04f3f85935f5f08a4207a`  
		Last Modified: Tue, 06 Oct 2026 02:44:30 GMT  
		Size: 14.6 MB (14635650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbfa36c207d6e443980a24c97dbd6371bfbff715f27da9a5624d6005dbdfd8cf`  
		Last Modified: Tue, 06 Oct 2026 02:44:29 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49c42ffc1505b43039fec68d63506645d8483d0577a009e2fe61f1b9465f09dd`  
		Last Modified: Tue, 06 Oct 2026 02:44:30 GMT  
		Size: 15.2 MB (15185004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26db9ffb61fbfd88bc5f8c7455c482ccdb9fc494ba2bf6ebc2055068ee081ce9`  
		Last Modified: Tue, 06 Oct 2026 02:44:29 GMT  
		Size: 2.5 KB (2461 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e90d5e6e7ef4618613c546186e6073f65aaac824455d9aac8d5d1286df5c7ca9`  
		Last Modified: Tue, 06 Oct 2026 02:44:30 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff703047c3fcf38dda1201fe2a54caa45bb08e86ef84a32db3a6491fd7ebff47`  
		Last Modified: Tue, 06 Oct 2026 02:44:30 GMT  
		Size: 892.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:966035700408715f0b7b5a65a5609f4db23a0ebbf079c7abdaf3881b11c4d25d`  
		Last Modified: Tue, 06 Oct 2026 11:43:04 GMT  
		Size: 8.8 MB (8836358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a0cc099d477c175f7aa7e4031de77d32fc836a24477e25adb42c2532a801dfe`  
		Last Modified: Tue, 06 Oct 2026 11:43:03 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0c34eed5cb316203a567d483832e4d1a321c4ba712cbedc76f56d4aee266222`  
		Last Modified: Tue, 06 Oct 2026 11:43:03 GMT  
		Size: 258.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6800c125da68c75a36dc2aded064311fc4426d4f3209eb4c0e8b26843496c80a`  
		Last Modified: Tue, 06 Oct 2026 11:43:04 GMT  
		Size: 833.0 KB (832985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd663a1556f67ab3fd8e573247673d10a0bcc5486cb2434490c2a8075095a53`  
		Last Modified: Tue, 06 Oct 2026 11:43:05 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:809043de75c6a1abb3357c57dfa41b33ea08ecf18c495f73ab77521afb51fcba`  
		Last Modified: Tue, 06 Oct 2026 11:47:08 GMT  
		Size: 23.6 MB (23634240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.5` - unknown; unknown

```console
$ docker pull drupal@sha256:cb171f425c0f07401cddddf6e4560ccea409b6031b61aa4c3bbd8ad54058688a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7525575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a43657aefed13a9caf60eb431bab1aa60bde3003d8b661d472eb7722449a34e6`

```dockerfile
```

-	Layers:
	-	`sha256:ccff100988582fbc955a77426b97549a40ebe3a90c2dbd30a2214a34cc2c7b92`  
		Last Modified: Tue, 06 Oct 2026 11:47:07 GMT  
		Size: 7.5 MB (7477534 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52d539c46ff3f8600944e8f0fe933a3f08ae9c865f441d647cfe45c24ee2ce84`  
		Last Modified: Tue, 06 Oct 2026 11:47:07 GMT  
		Size: 48.0 KB (48041 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.5` - linux; riscv64

```console
$ docker pull drupal@sha256:33cdb2ee6a1df8400bbcb014d0457571d89a2ff253c3566417b9fe3399aa6282
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.3 MB (239269049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fa7cdef59269030698b5cd62757bcd073a72f58106527b00a6aa65cb4fa1294`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'riscv64' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 13:40:43 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 06 Oct 2026 13:42:50 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 06 Oct 2026 13:42:50 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 13:42:50 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 06 Oct 2026 13:42:51 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 06 Oct 2026 13:42:51 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 06 Oct 2026 13:42:51 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 06 Oct 2026 14:48:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 06 Oct 2026 14:48:33 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 06 Oct 2026 14:48:33 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 06 Oct 2026 14:48:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 14:48:33 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 14:48:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 06 Oct 2026 14:48:33 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 06 Oct 2026 14:48:33 GMT
ENV PHP_VERSION=8.5.11
# Tue, 06 Oct 2026 14:48:33 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Tue, 06 Oct 2026 14:48:33 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Tue, 06 Oct 2026 17:57:57 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 17:57:57 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 18:57:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 18:57:55 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 18:57:56 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 18:57:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 18:57:56 GMT
STOPSIGNAL SIGWINCH
# Tue, 06 Oct 2026 18:57:56 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 18:57:56 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 18:57:56 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 18:57:56 GMT
CMD ["apache2-foreground"]
# Thu, 08 Oct 2026 13:55:24 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 08 Oct 2026 13:55:24 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 08 Oct 2026 13:55:24 GMT
RUN { 		echo 'output_buffering=true'; 	} > /usr/local/etc/php/conf.d/docker-php-drupal-recommended.ini # buildkit
# Thu, 08 Oct 2026 13:55:25 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Thu, 08 Oct 2026 13:55:25 GMT
ENV DRUPAL_VERSION=11.4.8
# Thu, 08 Oct 2026 13:55:25 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 08 Oct 2026 13:55:25 GMT
WORKDIR /opt/drupal
# Thu, 08 Oct 2026 14:01:31 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Thu, 08 Oct 2026 14:01:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:1364b1e77d3006c004db36d8a6c7fa2d8fa7bdc4041d47119ef1745b0fe87e13`  
		Last Modified: Tue, 06 Oct 2026 00:32:14 GMT  
		Size: 28.3 MB (28333763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48aaf34f6bbd390cdb6465c85eb5a7f863d1234fcab5d9f06f044f3083428268`  
		Last Modified: Tue, 06 Oct 2026 14:45:17 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28e83dba9bd9a90fae32fda7544beed84181e93ba7de5e63377339f9b1c98dc7`  
		Last Modified: Tue, 06 Oct 2026 14:45:44 GMT  
		Size: 146.6 MB (146597027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e29baf3a93736ee739c55151019f11266588429784b2b8a433a17201dc995d68`  
		Last Modified: Tue, 06 Oct 2026 14:45:17 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea4b8c8d7858f65af436bdc1c287c7f87605de438f0cde1f5223d97f7e86cdfd`  
		Last Modified: Tue, 06 Oct 2026 15:48:27 GMT  
		Size: 4.0 MB (4047419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:641e32a1ed79b687c6aca6f0e89a3398c7c1e37545fb8ed0330b48875ac88df2`  
		Last Modified: Tue, 06 Oct 2026 15:48:26 GMT  
		Size: 436.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1c2230167315d1d89238b6af4f2b8714ed13e4a337b367cde24217b1098e9a5`  
		Last Modified: Tue, 06 Oct 2026 15:48:26 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edcb79af22041feaebdce777641d11376aae65c808b6569327cc6ea2f39aded9`  
		Last Modified: Tue, 06 Oct 2026 19:01:25 GMT  
		Size: 14.6 MB (14635606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:295ab5a6636592c5e621731c2b7c409c8fb4a0fdc2cf087b02133eb1c50a8cf2`  
		Last Modified: Tue, 06 Oct 2026 19:01:21 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdcd002d23b3323ec5b49f25b43f9fc856213b5ad1041823dba6e2d787be979f`  
		Last Modified: Tue, 06 Oct 2026 19:01:26 GMT  
		Size: 14.1 MB (14104497 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9dbc04bda6f28dbff8df8e478c95b78da2da238c95bdb20f1494261257ed15a`  
		Last Modified: Tue, 06 Oct 2026 19:01:21 GMT  
		Size: 2.5 KB (2464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:398062558475d24c6d49e49427b9071ab8f80f17e12e980d9694345116acdd49`  
		Last Modified: Tue, 06 Oct 2026 19:01:23 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be5acb4d25f83790b27076ea838f61679b5ddfb13bd1955918e465b65647048e`  
		Last Modified: Tue, 06 Oct 2026 19:01:24 GMT  
		Size: 894.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d647717d087c484317c7a172f7676614a4fb0ca2cbd69947ca1f23ed81ffb9b5`  
		Last Modified: Thu, 08 Oct 2026 14:00:11 GMT  
		Size: 7.1 MB (7077567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f04539f42092db9c9b084bdc69a0d5a193e97e5f2516b3e55bcc0859b094d5bd`  
		Last Modified: Thu, 08 Oct 2026 14:00:10 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66f91e108e559eda6dbaf873960f2872dc63fb5af5c3ea1f41069a78646d52ca`  
		Last Modified: Thu, 08 Oct 2026 14:00:10 GMT  
		Size: 259.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21ca8b929af24521e0c666ff94d875d034779d9597a935bbb0959f44710fe515`  
		Last Modified: Thu, 08 Oct 2026 14:00:10 GMT  
		Size: 833.0 KB (832981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4d19bb78034445a4f7ca0566f84adec1ba397d420fee17cc057266fcb5b7e2b`  
		Last Modified: Thu, 08 Oct 2026 14:00:11 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df22cafd8bd873bc14c23f90cf272507cb6c3c5c76b831e15069fd43c3bd15d6`  
		Last Modified: Thu, 08 Oct 2026 14:06:37 GMT  
		Size: 23.6 MB (23633997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.5` - unknown; unknown

```console
$ docker pull drupal@sha256:779860d761c6b5cad3452c0e220aae1cb500a918baa36fc7b473372efbdc4517
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.6 MB (7597180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b580735570fef3be7fa0708f219235891547bc4cb9f48a78d88cb82363a396f`

```dockerfile
```

-	Layers:
	-	`sha256:0f20f0e3890a8fcb0e53d79135371a47fc315aa80dc6e33fb7140c1de1f97b07`  
		Last Modified: Thu, 08 Oct 2026 14:06:34 GMT  
		Size: 7.5 MB (7549139 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98b8757f2edc01f5e4cd0876c7e9fee371e028eeddab2167a5d6d26528835d91`  
		Last Modified: Thu, 08 Oct 2026 14:06:32 GMT  
		Size: 48.0 KB (48041 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.5` - linux; s390x

```console
$ docker pull drupal@sha256:0aa805c829cd463e98b8655f9471ff5eb8936adb9638f5faa676ef731670fc6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.8 MB (187825389 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca8c22d872fdc4cb37b1d4f205f8ac648c2a7caebed0322299e4e448184ea4a8`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["apache2-foreground"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1791158400'
# Tue, 06 Oct 2026 01:20:18 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 06 Oct 2026 01:20:30 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 06 Oct 2026 01:20:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	apt-get dist-clean # buildkit
# Tue, 06 Oct 2026 01:20:30 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 06 Oct 2026 01:20:30 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 06 Oct 2026 01:20:30 GMT
ENV APACHE_CONFDIR=/etc/apache2
# Tue, 06 Oct 2026 01:20:30 GMT
ENV APACHE_ENVVARS=/etc/apache2/envvars
# Tue, 06 Oct 2026 01:20:36 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends apache2; 	apt-get dist-clean; 		sed -ri 's/^export ([^=]+)=(.*)$/: ${\1:=\2}\nexport \1/' "$APACHE_ENVVARS"; 		. "$APACHE_ENVVARS"; 	for dir in 		"$APACHE_LOCK_DIR" 		"$APACHE_RUN_DIR" 		"$APACHE_LOG_DIR" 		"$APACHE_RUN_DIR/socks" 	; do 		rm -rvf "$dir"; 		mkdir -p "$dir"; 		chown "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$dir"; 		chmod 1777 "$dir"; 	done; 		rm -rvf /var/www/html/*; 		ln -sfT /dev/stderr "$APACHE_LOG_DIR/error.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/access.log"; 	ln -sfT /dev/stdout "$APACHE_LOG_DIR/other_vhosts_access.log"; 	chown -R --no-dereference "$APACHE_RUN_USER:$APACHE_RUN_GROUP" "$APACHE_LOG_DIR" # buildkit
# Tue, 06 Oct 2026 01:20:36 GMT
RUN a2dismod mpm_event && a2enmod mpm_prefork # buildkit
# Tue, 06 Oct 2026 01:20:36 GMT
RUN { 		echo '<FilesMatch \.php$>'; 		echo '\tSetHandler application/x-httpd-php'; 		echo '</FilesMatch>'; 		echo; 		echo 'DirectoryIndex disabled'; 		echo 'DirectoryIndex index.php index.html'; 		echo; 		echo '<Directory /var/www/>'; 		echo '\tOptions -Indexes'; 		echo '\tAllowOverride All'; 		echo '</Directory>'; 	} | tee "$APACHE_CONFDIR/conf-available/docker-php.conf" 	&& a2enconf docker-php # buildkit
# Tue, 06 Oct 2026 01:20:36 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:20:36 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:20:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 06 Oct 2026 01:20:36 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 06 Oct 2026 01:20:36 GMT
ENV PHP_VERSION=8.5.11
# Tue, 06 Oct 2026 01:20:36 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Tue, 06 Oct 2026 01:20:36 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Tue, 06 Oct 2026 01:24:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	apt-get dist-clean; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 01:24:22 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:27:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		apache2-dev 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--with-apxs2 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	apt-get dist-clean; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 01:27:32 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:27:32 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 01:27:32 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 01:27:32 GMT
STOPSIGNAL SIGWINCH
# Tue, 06 Oct 2026 01:27:32 GMT
COPY apache2-foreground /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:27:32 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 01:27:32 GMT
EXPOSE map[80/tcp:{}]
# Tue, 06 Oct 2026 01:27:32 GMT
CMD ["apache2-foreground"]
# Mon, 12 Oct 2026 23:01:39 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 23:01:40 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Mon, 12 Oct 2026 23:01:41 GMT
RUN { 		echo 'output_buffering=true'; 	} > /usr/local/etc/php/conf.d/docker-php-drupal-recommended.ini # buildkit
# Mon, 12 Oct 2026 23:01:42 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 23:01:42 GMT
ENV DRUPAL_VERSION=11.4.9
# Mon, 12 Oct 2026 23:01:42 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 12 Oct 2026 23:01:42 GMT
WORKDIR /opt/drupal
# Mon, 12 Oct 2026 23:01:53 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Mon, 12 Oct 2026 23:01:53 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:fd14e6ce0256b9093e480e6146009effeb6c2bc486ff0052d50a32cbab8335fc`  
		Last Modified: Tue, 06 Oct 2026 00:13:11 GMT  
		Size: 29.9 MB (29909247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00c91620974d08bb58f31425d89c71eb019c1b831653d750708927ef95e21402`  
		Last Modified: Tue, 06 Oct 2026 01:23:54 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:518a5e39bfbf0adf885bceb28955afa7d9aab04b7156e7954655d2b1d249cfc9`  
		Last Modified: Tue, 06 Oct 2026 01:23:56 GMT  
		Size: 92.6 MB (92574660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da235c7b6698ddf09a93cb34c609557ee0b2d5275fb8689801285fd21fc188c0`  
		Last Modified: Tue, 06 Oct 2026 01:23:54 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52fd9ea9d15582ffd25516088bf7a5da6a1b2cc58a616e523e985785be637e4c`  
		Last Modified: Tue, 06 Oct 2026 01:23:55 GMT  
		Size: 4.3 MB (4338457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93840999bdee60be8f9e326ffe7ba11cf6cc82b90fc17eb95abe1b017a36c0d7`  
		Last Modified: Tue, 06 Oct 2026 01:23:55 GMT  
		Size: 427.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93c09c4138934f435453647a21294d5951fb5ea2db1be5fa89cc4e253c9a3ca0`  
		Last Modified: Tue, 06 Oct 2026 01:23:55 GMT  
		Size: 483.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89d5ffb340ecd8fae75f7785c550bd2c36e501affef034c6676e24297a480057`  
		Last Modified: Tue, 06 Oct 2026 01:27:48 GMT  
		Size: 14.6 MB (14634856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2027b94bcb16a77358f38e22c0c538d204045e7e7beba2ecec46292fdbbed2aa`  
		Last Modified: Tue, 06 Oct 2026 01:27:48 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af0d356b7fc3d3928c77a4df5e6dccd1b7e03ba834921a89f335a70e69c92a6`  
		Last Modified: Tue, 06 Oct 2026 01:27:49 GMT  
		Size: 14.5 MB (14462826 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0a1c236e4bd0937ca32076d46eef3823b1f2d57ba37238be582148267d9e547`  
		Last Modified: Tue, 06 Oct 2026 01:27:48 GMT  
		Size: 2.5 KB (2463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:377a092069621035c87653eefd1b73249837fe5a85228e2a9751eb783df3b397`  
		Last Modified: Tue, 06 Oct 2026 01:27:49 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d33c06d8107beff662a7fef285772234ede698715e14716084afc9cece0bca4`  
		Last Modified: Tue, 06 Oct 2026 01:27:49 GMT  
		Size: 893.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb83cb795a1b219559759fb63d7ec8896c9448142188e656f3ad7b3a661eebf3`  
		Last Modified: Mon, 12 Oct 2026 23:02:52 GMT  
		Size: 7.4 MB (7378369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bd598701eeb03f1432d9c1a6881714d0eb480d279374de85009ce72c0beab81`  
		Last Modified: Mon, 12 Oct 2026 23:02:52 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e47b85a73edc0824e7c8deb5dbbf19084c25923bdde80d74c2159a60c37294a1`  
		Last Modified: Mon, 12 Oct 2026 23:02:52 GMT  
		Size: 258.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de295cd28d125e95c461fc48eef3679845893ce891a4bc3c61942c208d2323ef`  
		Last Modified: Mon, 12 Oct 2026 23:02:52 GMT  
		Size: 833.0 KB (832982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eb38a194a90d87e55e51e2c24ed4f2b58b2f69613f9bb11287e76d730555643`  
		Last Modified: Mon, 12 Oct 2026 23:02:53 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba198738b4b566b302b29e773579607cdae8306869d8f185b91ac1d7a23bdc7f`  
		Last Modified: Mon, 12 Oct 2026 23:02:54 GMT  
		Size: 23.7 MB (23687820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.5` - unknown; unknown

```console
$ docker pull drupal@sha256:b5be2d73ab33672275e644ad091e88057ae9386ec0e877eadf96edbec6901f66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.3 MB (7257143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5050239a336ac528bd626ce5a28489f4a3e66d3a36af81e49d35f02c20255b2b`

```dockerfile
```

-	Layers:
	-	`sha256:918131624cf84e4da35abbdb797fac2a3ba56fe7d22af14beaa489e114a60d9e`  
		Last Modified: Mon, 12 Oct 2026 23:02:53 GMT  
		Size: 7.2 MB (7209289 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:70dc71be76cae80fa2b09cb36240d95ce423fb7a99d29ba919f82bb101134ca7`  
		Last Modified: Mon, 12 Oct 2026 23:02:51 GMT  
		Size: 47.9 KB (47854 bytes)  
		MIME: application/vnd.in-toto+json
