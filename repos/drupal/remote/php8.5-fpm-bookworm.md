## `drupal:php8.5-fpm-bookworm`

```console
$ docker pull drupal@sha256:4adeba50bd0fdc20b30ccd058279c42bdd0125a7bc567e291c6c991f5d6435c9
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

### `drupal:php8.5-fpm-bookworm` - linux; amd64

```console
$ docker pull drupal@sha256:32d45036a499d09f16dd9c9291a4e4a9f7e56b4de59d95edc45d8b2a91a7bc27
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **214.7 MB (214741129 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad1b52add83d2d1c18f9f44681db6caa10ac3f4ad78cee600894d389b229a4db`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:23:42 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 06 Oct 2026 01:24:00 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 06 Oct 2026 01:24:00 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:24:00 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 06 Oct 2026 01:24:00 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 06 Oct 2026 01:24:00 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:24:00 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:24:00 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 06 Oct 2026 01:24:00 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 06 Oct 2026 01:24:00 GMT
ENV PHP_VERSION=8.5.11
# Tue, 06 Oct 2026 01:24:00 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Tue, 06 Oct 2026 01:24:00 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Tue, 06 Oct 2026 01:24:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 01:24:09 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:26:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 01:26:51 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:26:51 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 01:26:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 01:26:51 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 01:26:51 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 06 Oct 2026 01:26:51 GMT
STOPSIGNAL SIGQUIT
# Tue, 06 Oct 2026 01:26:51 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 06 Oct 2026 01:26:51 GMT
CMD ["php-fpm"]
# Mon, 12 Oct 2026 22:50:07 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 22:50:07 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Mon, 12 Oct 2026 22:50:07 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 22:50:07 GMT
ENV DRUPAL_VERSION=11.4.9
# Mon, 12 Oct 2026 22:50:07 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 12 Oct 2026 22:50:07 GMT
WORKDIR /opt/drupal
# Mon, 12 Oct 2026 22:50:13 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Mon, 12 Oct 2026 22:50:13 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:7fd1ebe418b5079d4aa36f416af9b143d127bc75b0155d71cb5fd559b5e04d39`  
		Last Modified: Tue, 06 Oct 2026 00:13:34 GMT  
		Size: 28.2 MB (28249323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60842cfb436984ff75b16d1f14674f45b934d6b98813a6746c4d2bc6421933bf`  
		Last Modified: Tue, 06 Oct 2026 01:27:12 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98e26f9625c13fa2dd7fe1275fb206a40102a91204d15e9289bf64be1272dbdb`  
		Last Modified: Tue, 06 Oct 2026 01:27:15 GMT  
		Size: 106.5 MB (106458323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c399c9508d3815d7d691125bad8d525b37a82ded353b80ead25f47d1ff7d689`  
		Last Modified: Tue, 06 Oct 2026 01:27:12 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6515e8a708704aae50611421d68cd76f4f13dafe3b82434b816ddb271663efa8`  
		Last Modified: Tue, 06 Oct 2026 01:27:12 GMT  
		Size: 14.6 MB (14579785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:253f2758cb4f213e883298dc3c2fa8a44ea12cf86342003b566b9fda4a32e088`  
		Last Modified: Tue, 06 Oct 2026 01:27:13 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f252cc294f604e79c5010d69a7cde601f2599b1f9614cfbdc158599eca1401f2`  
		Last Modified: Tue, 06 Oct 2026 01:27:14 GMT  
		Size: 31.2 MB (31225037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f88ac57e8083fe4329619bd3448be66e7ce5f53e18ebcbaf3c5261896d8ab92`  
		Last Modified: Tue, 06 Oct 2026 01:27:14 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ae404a6d0734d69ba5fb4ce234484288e1e5f31eac25f63da9dc7d8b124d9a`  
		Last Modified: Tue, 06 Oct 2026 01:27:14 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf06f42ef34e04d286123808f3a42c89ede751bcc4f88ab2270eb34dce34fe3a`  
		Last Modified: Tue, 06 Oct 2026 01:27:15 GMT  
		Size: 9.3 KB (9263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28aa33c8278ec5086c38b3809e50ea71be4bf375593f5d1e87b1f0b04a363770`  
		Last Modified: Mon, 12 Oct 2026 22:50:30 GMT  
		Size: 9.7 MB (9695033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21956e5295d70eff75b5d9e2cfa1c2f95fe0eedc39c93837195b6664b25bb069`  
		Last Modified: Mon, 12 Oct 2026 22:50:30 GMT  
		Size: 317.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7bd38f005e3ce40bfd1f24c83f1a20229793b158cdd8e09145176558de94fe0`  
		Last Modified: Mon, 12 Oct 2026 22:50:30 GMT  
		Size: 833.0 KB (832983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c199a67084caac31f33b14d5605cf876a3783e8a9672222aa782b903bddb9c52`  
		Last Modified: Mon, 12 Oct 2026 22:50:30 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98e0ab6b3716dcc08235d3ee403499971035a5554999452025aa3b56459c281c`  
		Last Modified: Mon, 12 Oct 2026 22:50:32 GMT  
		Size: 23.7 MB (23687280 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.5-fpm-bookworm` - unknown; unknown

```console
$ docker pull drupal@sha256:92bac415588b7987dc923a5a325c4b9e0f0d58f23be2e2bd07d2a0d2c2136a11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6670383 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28d2b09155f22b581033a7800b67556b55b94669d6e56fcc37f29c575643ba0a`

```dockerfile
```

-	Layers:
	-	`sha256:ba1653f83d182787458c211492100f67863641c3f5dc9b54b494728c1813f20b`  
		Last Modified: Mon, 12 Oct 2026 22:50:30 GMT  
		Size: 6.6 MB (6635410 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00228166cc1246e279f85649491f2dfb6db28693816ed71a512c137d225d46b7`  
		Last Modified: Mon, 12 Oct 2026 22:50:30 GMT  
		Size: 35.0 KB (34973 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.5-fpm-bookworm` - linux; arm variant v7

```console
$ docker pull drupal@sha256:5eef00096a0703462d5c2378f2a4a58fe2f4df82dc0752dc0d04c29199268a16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **175.3 MB (175316923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1aca58972130547135802f3a96bff562049816af62594a355c38b340afebbbe8`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:34:29 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 06 Oct 2026 01:34:45 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 06 Oct 2026 01:34:45 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:34:45 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 06 Oct 2026 01:34:45 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 06 Oct 2026 01:34:45 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:34:45 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:34:45 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 06 Oct 2026 01:34:45 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 06 Oct 2026 01:34:45 GMT
ENV PHP_VERSION=8.5.11
# Tue, 06 Oct 2026 01:34:45 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Tue, 06 Oct 2026 01:34:45 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Tue, 06 Oct 2026 01:34:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 01:34:53 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:37:29 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 01:37:29 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:37:29 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 01:37:29 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 01:37:29 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 01:37:29 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 06 Oct 2026 01:37:29 GMT
STOPSIGNAL SIGQUIT
# Tue, 06 Oct 2026 01:37:29 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 06 Oct 2026 01:37:29 GMT
CMD ["php-fpm"]
# Mon, 12 Oct 2026 23:00:23 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 23:00:23 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Mon, 12 Oct 2026 23:00:23 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 23:00:24 GMT
ENV DRUPAL_VERSION=11.4.9
# Mon, 12 Oct 2026 23:00:24 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 12 Oct 2026 23:00:24 GMT
WORKDIR /opt/drupal
# Mon, 12 Oct 2026 23:00:31 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Mon, 12 Oct 2026 23:00:31 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:1bcae38a5e348bbef67c8b1d84a35e8bfbeffc96751ee5ae9dc8e986d40eb968`  
		Last Modified: Tue, 06 Oct 2026 00:13:17 GMT  
		Size: 24.0 MB (23956571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feb16a4d4449afd543be7961ff2064911cb7d34c8e5b11fbb08c771708c226f5`  
		Last Modified: Tue, 06 Oct 2026 01:37:45 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:077ea2cdbb698fb6eeaf22146cb0e3103aa1558f13e53416c52ac40b84a25600`  
		Last Modified: Tue, 06 Oct 2026 01:37:47 GMT  
		Size: 78.1 MB (78057008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4841d124979fa4250fac49c3ab9389d9d5057bc0e1ede702bab5b243b22177a`  
		Last Modified: Tue, 06 Oct 2026 01:37:45 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c0d59905b0d7dac74106c26724ab8ef5261969d1f082f38da4535b5906cb173`  
		Last Modified: Tue, 06 Oct 2026 01:37:46 GMT  
		Size: 14.6 MB (14577999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f75780de443670ae791b8d06debc50f355e5ecccda6b78e090fb7a7a0f5e35e0`  
		Last Modified: Tue, 06 Oct 2026 01:37:46 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2113ab1e40f455d48fcaeca925b22a0d8cac370fc735c21651f306d9681c6d37`  
		Last Modified: Tue, 06 Oct 2026 01:37:47 GMT  
		Size: 27.9 MB (27881153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:662dce908c9cbdac269f78ded70318d02a256dc29626a6b214147116f4cfd5b3`  
		Last Modified: Tue, 06 Oct 2026 01:37:47 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:642e029ea257ad0c3ffc4445b3c1f4ad7623251c803a24e2eabb0575c5472a9b`  
		Last Modified: Tue, 06 Oct 2026 01:37:47 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:582be4f69369fbf92d40057a2f16e234292ca2d374910d60408959cc3e6fd36d`  
		Last Modified: Tue, 06 Oct 2026 01:37:48 GMT  
		Size: 9.3 KB (9265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b5161a4eb6cd49811003a468a638507aa1fafd1e06516d06ba54339dd001cd6`  
		Last Modified: Mon, 12 Oct 2026 23:00:49 GMT  
		Size: 6.3 MB (6311838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15522cb7eeaffd3124b9db1592031f314298725f4b5ef5ba4b1adaf778577e5e`  
		Last Modified: Mon, 12 Oct 2026 23:00:49 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e7073dc55ec5f15260465e1c8adfad490d311e625f292288e227cbcccce3002`  
		Last Modified: Mon, 12 Oct 2026 23:00:49 GMT  
		Size: 833.0 KB (832981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57051a4b8269e0eb5a2a4446cca0eddf7e51769f73613fa15145646811dcd8a2`  
		Last Modified: Mon, 12 Oct 2026 23:00:49 GMT  
		Size: 113.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d1967f1b78a6ef7363028fd677e2f998eff6e4165c8a31f26fe02e07456a1a2`  
		Last Modified: Mon, 12 Oct 2026 23:00:51 GMT  
		Size: 23.7 MB (23686017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.5-fpm-bookworm` - unknown; unknown

```console
$ docker pull drupal@sha256:118aa7d484914cc1a477875e2a0df55c123a06946f8ae73af1cf6c031ee5cad4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6484070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad278f49b52afb3441fdac09569133c232fdc020962ccaa7c32d85f5366a429f`

```dockerfile
```

-	Layers:
	-	`sha256:9cf6bc83beacc6fdfbccaec8084a1ab976a467c5d6fadb2553601825b1ff6fe6`  
		Last Modified: Mon, 12 Oct 2026 23:00:49 GMT  
		Size: 6.4 MB (6448943 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2ec3f964477770819aefe8468ad20bcf41fda19a042c8730a105be2b6c7fd4d2`  
		Last Modified: Mon, 12 Oct 2026 23:00:49 GMT  
		Size: 35.1 KB (35127 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.5-fpm-bookworm` - linux; arm64 variant v8

```console
$ docker pull drupal@sha256:f70f69e991ff240fab994943efeb7787ba36b59ee6bd9a3d6079a3b2ab29cc32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **205.8 MB (205831486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccfdb1ab29bed92a9d0bd9583372116013ba55c6777229efcc673e34fd88541d`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:24:26 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 06 Oct 2026 01:24:43 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 06 Oct 2026 01:24:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:24:43 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 06 Oct 2026 01:24:43 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 06 Oct 2026 01:24:43 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:24:43 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:24:43 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 06 Oct 2026 01:24:43 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 06 Oct 2026 01:24:43 GMT
ENV PHP_VERSION=8.5.11
# Tue, 06 Oct 2026 01:24:43 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Tue, 06 Oct 2026 01:24:43 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Tue, 06 Oct 2026 01:24:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 01:24:53 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:27:59 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 01:27:59 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:27:59 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 01:27:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 01:27:59 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 01:27:59 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 06 Oct 2026 01:27:59 GMT
STOPSIGNAL SIGQUIT
# Tue, 06 Oct 2026 01:27:59 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 06 Oct 2026 01:27:59 GMT
CMD ["php-fpm"]
# Mon, 12 Oct 2026 22:59:30 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 22:59:30 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Mon, 12 Oct 2026 22:59:30 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 22:59:30 GMT
ENV DRUPAL_VERSION=11.4.9
# Mon, 12 Oct 2026 22:59:30 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 12 Oct 2026 22:59:30 GMT
WORKDIR /opt/drupal
# Mon, 12 Oct 2026 22:59:37 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Mon, 12 Oct 2026 22:59:37 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:c75f989a229d12b2d2613a5997de9ff3546f664c22da9248720033a2410220f6`  
		Last Modified: Tue, 06 Oct 2026 00:13:08 GMT  
		Size: 28.1 MB (28137179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5532f2042b1fd7cb96e1700a8754411218f77495ae2c0f8def6451f16184a8a3`  
		Last Modified: Tue, 06 Oct 2026 01:28:19 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62d2e8e8c72679f26303823ea3a085a5eece0dd49813a9871b619cd0311d7cd8`  
		Last Modified: Tue, 06 Oct 2026 01:28:23 GMT  
		Size: 100.3 MB (100250024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5500c208f2f463715e01da878f5d55a1b1a6c3ac6f80646010b30a5cb3f603f`  
		Last Modified: Tue, 06 Oct 2026 01:28:19 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a48aa871c8ca1f71649353f6ef6abdaab1fb6f99adb75a2322efb4e1e8f505d`  
		Last Modified: Tue, 06 Oct 2026 01:28:20 GMT  
		Size: 14.6 MB (14579603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c6c965c51b90f0415d007c64124d76c954735b8497e69d4c3216abd19118219`  
		Last Modified: Tue, 06 Oct 2026 01:28:20 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d8e472265c3af9d815936f2eb43a7931dd7d1816adf9159d5cc6f85c13f55b6`  
		Last Modified: Tue, 06 Oct 2026 01:28:22 GMT  
		Size: 30.7 MB (30743557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06553a4602ee9dbbd6f5f2d3e6615fe31c371cd457cf5ae4562d0d05c2d41b5f`  
		Last Modified: Tue, 06 Oct 2026 01:28:22 GMT  
		Size: 2.5 KB (2455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c110faa01782c4e0d172347eaf8945396d9e42b524e65eeade8076c41ab097f1`  
		Last Modified: Tue, 06 Oct 2026 01:28:22 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c78f2a22eca97a99ac6da1de317e9e101d5e8ad78b4fe361c84d37f99cf1c606`  
		Last Modified: Tue, 06 Oct 2026 01:28:23 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae36bd9397298535f16f67028932c4e2e1ca5789da1e4530a8f8b10b6ef24a2f`  
		Last Modified: Mon, 12 Oct 2026 22:59:55 GMT  
		Size: 7.6 MB (7586891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd36087e7587813c2a3b1a1555d4aac0efca33a00d4b227ca2784d35f4a0d1c`  
		Last Modified: Mon, 12 Oct 2026 22:59:55 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8c7e91036036549372e68d328f698a92dbc238fdba44672c193899148d1acc8`  
		Last Modified: Mon, 12 Oct 2026 22:59:55 GMT  
		Size: 833.0 KB (832986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12208cf02af119bda2c2777ee40a73f3b725994c6321029152e32630469f53e3`  
		Last Modified: Mon, 12 Oct 2026 22:59:55 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f89ee7188073480bf9faaf51ac3bcfde6bdef4c51bab2773ade23f6f60694a5`  
		Last Modified: Mon, 12 Oct 2026 22:59:56 GMT  
		Size: 23.7 MB (23687884 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.5-fpm-bookworm` - unknown; unknown

```console
$ docker pull drupal@sha256:2430b1be5bcfa78d856ce242f6174c3fcbac3b0d4c411b2f025b3354f4f768cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6699107 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9da9484aeb737cafb0e471deb207bdb5b8e314a183a946a23230181abdaa66e3`

```dockerfile
```

-	Layers:
	-	`sha256:deb966256ff3a78e15a28e9d060a58988be5b24333e98320bbffbf1c7c73b83e`  
		Last Modified: Mon, 12 Oct 2026 22:59:55 GMT  
		Size: 6.7 MB (6663926 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e88430023c0504b7ada4c1c58f616a2b8f1769566067cd447baf91f761bc9ea`  
		Last Modified: Mon, 12 Oct 2026 22:59:54 GMT  
		Size: 35.2 KB (35181 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.5-fpm-bookworm` - linux; 386

```console
$ docker pull drupal@sha256:49d96a775fe9613c456253f29e33dc57f4e98f7a7d969f34f1a84facff26a978
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.6 MB (210603536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8f1efe4657b3033c838e304d7626dc00261dc99e821ca91bed3420258410329`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 01:19:13 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 06 Oct 2026 01:19:32 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 06 Oct 2026 01:19:32 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 01:19:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 06 Oct 2026 01:19:32 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 06 Oct 2026 01:19:32 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:19:32 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 01:19:32 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 06 Oct 2026 01:19:32 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 06 Oct 2026 01:19:32 GMT
ENV PHP_VERSION=8.5.11
# Tue, 06 Oct 2026 01:19:32 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Tue, 06 Oct 2026 01:19:32 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Tue, 06 Oct 2026 01:23:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 01:23:11 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:26:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 01:26:20 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 01:26:20 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 01:26:20 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 01:26:20 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 01:26:21 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 06 Oct 2026 01:26:21 GMT
STOPSIGNAL SIGQUIT
# Tue, 06 Oct 2026 01:26:21 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 06 Oct 2026 01:26:21 GMT
CMD ["php-fpm"]
# Mon, 12 Oct 2026 22:57:51 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 12 Oct 2026 22:57:51 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Mon, 12 Oct 2026 22:57:51 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 22:57:51 GMT
ENV DRUPAL_VERSION=11.4.9
# Mon, 12 Oct 2026 22:57:51 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 12 Oct 2026 22:57:51 GMT
WORKDIR /opt/drupal
# Mon, 12 Oct 2026 22:57:57 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Mon, 12 Oct 2026 22:57:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:4fde7ff71d38b44de13588c355f9acc395f4ecbec569968085401a6d6b40eff2`  
		Last Modified: Tue, 06 Oct 2026 00:13:26 GMT  
		Size: 29.2 MB (29239373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2203cb5682f4b64090bf87c3b4e1816a1b366504493e731e1c1bb72cb516e22e`  
		Last Modified: Tue, 06 Oct 2026 01:22:53 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e70b694e0c9cb242f75fe7e2b4607e80818b78f8dabc6da38d7c7e6b453e180b`  
		Last Modified: Tue, 06 Oct 2026 01:22:57 GMT  
		Size: 103.8 MB (103795517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc976f7817268ec9430439ecbdf6e300c99e1820817d9929813dcd0b58e7275`  
		Last Modified: Tue, 06 Oct 2026 01:22:53 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c42607d1ee3fb31ad0e30b7ff65c859b8d02ddf57b68e98b60bbca06b1f77dbe`  
		Last Modified: Tue, 06 Oct 2026 01:26:33 GMT  
		Size: 14.6 MB (14579086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12f8e219c1763f4f4273889eadd6a037614aa718d6de4d737cb506f07d1370f7`  
		Last Modified: Tue, 06 Oct 2026 01:26:32 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68d5093d03f4cd8d10c5f326c36e7b9870c9f7fe85f6dbb2dd103dc3cbc9c9ff`  
		Last Modified: Tue, 06 Oct 2026 01:26:33 GMT  
		Size: 31.9 MB (31916930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:328f690e8fe8c9b0015031ad4faad08a393539b147b14881a359ededcdc45a80`  
		Last Modified: Tue, 06 Oct 2026 01:26:32 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f965b752cdbab9a1586b2dd7dd2aa9d746631ab87d41866b3cc75215b9ab138f`  
		Last Modified: Tue, 06 Oct 2026 01:26:33 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0398abd1bd5de9dbb405cbd1696f5ad4e962d8dd541eca69f5512c2023d5598`  
		Last Modified: Tue, 06 Oct 2026 01:26:33 GMT  
		Size: 9.3 KB (9265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd8482f766c2c3dede696270f673acbfa47b4ee5ddd3d17335f97056964adec3`  
		Last Modified: Mon, 12 Oct 2026 22:58:14 GMT  
		Size: 6.5 MB (6538853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3145fc04a76607ad9a5cae9ef32479ac1246bb872c69959d7bf0ff1a14e5d693`  
		Last Modified: Mon, 12 Oct 2026 22:58:14 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a08dbde2e98aa9061ceb39181ec1f6949e1b5d7ab9cc7fa4d16220deaa8cf63`  
		Last Modified: Mon, 12 Oct 2026 22:58:14 GMT  
		Size: 833.0 KB (832983 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21758f853dbb49346bb48e94a7b953a70570fff6152b0b45a53662c03bc3c308`  
		Last Modified: Mon, 12 Oct 2026 22:58:14 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b396d815a6d41eb1201e0cedc9e6a5c02cf6aa2de6e63e575b48fc94a9ccbd0a`  
		Last Modified: Mon, 12 Oct 2026 22:58:15 GMT  
		Size: 23.7 MB (23687433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.5-fpm-bookworm` - unknown; unknown

```console
$ docker pull drupal@sha256:6590cd7891424a9f3a9788b37c495dce8b36a49f9009df2bd29f1dcdc2464f38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6643348 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d80205680f48e415bb3c876d3242fbe97cb552b3d6179afe33a96162f0611f2f`

```dockerfile
```

-	Layers:
	-	`sha256:3c8543c180b46bfb2c883858ce0dfc4203152063583b77db083aab0b4b4428be`  
		Last Modified: Mon, 12 Oct 2026 22:58:14 GMT  
		Size: 6.6 MB (6608438 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03be3c8a6f3a69244832a25b60833641506ef3f9ea90461b639f206fad1e69ea`  
		Last Modified: Mon, 12 Oct 2026 22:58:13 GMT  
		Size: 34.9 KB (34910 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.5-fpm-bookworm` - linux; ppc64le

```console
$ docker pull drupal@sha256:f7030b0bfa18b5c16c6346a2bbe5a0ee5c828c54cb1d50f19727a9dd69d8c8f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.9 MB (216850833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ea166080c53f10ce0c97571f6adbcf294bb27ac1b4d6a9fb929d0bf353ff49e5`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 02:26:04 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 06 Oct 2026 02:26:56 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 06 Oct 2026 02:26:56 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 02:26:56 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 06 Oct 2026 02:26:56 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 06 Oct 2026 02:26:56 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 02:26:56 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 06 Oct 2026 02:26:56 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 06 Oct 2026 02:26:56 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 06 Oct 2026 02:26:56 GMT
ENV PHP_VERSION=8.5.11
# Tue, 06 Oct 2026 02:26:56 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Tue, 06 Oct 2026 02:26:56 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Tue, 06 Oct 2026 02:46:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 06 Oct 2026 02:46:38 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:57:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 06 Oct 2026 02:57:24 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 02:57:25 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 06 Oct 2026 02:57:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 06 Oct 2026 02:57:25 GMT
WORKDIR /var/www/html
# Tue, 06 Oct 2026 02:57:26 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 06 Oct 2026 02:57:26 GMT
STOPSIGNAL SIGQUIT
# Tue, 06 Oct 2026 02:57:26 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 06 Oct 2026 02:57:26 GMT
CMD ["php-fpm"]
# Tue, 06 Oct 2026 11:44:36 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 06 Oct 2026 11:44:37 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Tue, 06 Oct 2026 11:44:39 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 06 Oct 2026 11:44:41 GMT
ENV DRUPAL_VERSION=11.4.8
# Tue, 06 Oct 2026 11:44:41 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 06 Oct 2026 11:44:41 GMT
WORKDIR /opt/drupal
# Tue, 06 Oct 2026 11:47:42 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 06 Oct 2026 11:47:42 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:1f3f8c47175317b9e585f790a7a31d74fa5e58d183221b62e4cc6945ea188893`  
		Last Modified: Tue, 06 Oct 2026 00:12:11 GMT  
		Size: 32.1 MB (32092434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2789e2ef0186abdcd12660ec9600c2417a359541b63343a3160c7dc435dc7e0e`  
		Last Modified: Tue, 06 Oct 2026 02:32:48 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:321e77ced5d9ec45dd23954f83db75fe42798c995171ebdad361a53f35abdfcf`  
		Last Modified: Tue, 06 Oct 2026 02:32:52 GMT  
		Size: 105.6 MB (105610722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d966707ad6e13c03374836ee5e6eed28458a6c68a433b9e1607b0cb6a95f6f58`  
		Last Modified: Tue, 06 Oct 2026 02:32:49 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b1f579be1a4e746226b9d8b8a8c09394eb9571250c6f036213a188e6d092423`  
		Last Modified: Tue, 06 Oct 2026 02:52:51 GMT  
		Size: 14.6 MB (14579335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:053397d887106ef2ff651ddf45270eab818ae9d2e7a64c1b24d4f0f52af8edbf`  
		Last Modified: Tue, 06 Oct 2026 02:52:04 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b555c13384effddec86b9c3ac083445bcf0b8c73abbbd51986ef3d695ae0062`  
		Last Modified: Tue, 06 Oct 2026 02:57:58 GMT  
		Size: 31.9 MB (31879997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb09f4489a61781e19866075a90d9f091afd571f8df29eb513b4e80432311895`  
		Last Modified: Tue, 06 Oct 2026 02:57:57 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db5af4818ad92ab63322e4b749ac4fc178983b27b2c85caebb4c336932b4971f`  
		Last Modified: Tue, 06 Oct 2026 02:57:57 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c99f81f41c3cc1b6e91a9fede7d87cab48b4d749ce051af6b29ab1ebf63185fa`  
		Last Modified: Tue, 06 Oct 2026 02:57:57 GMT  
		Size: 9.3 KB (9266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6424210369b9814eabd2dc9379ce737da93cd0c73555922cde75207c6ef1f5a`  
		Last Modified: Tue, 06 Oct 2026 11:45:28 GMT  
		Size: 8.2 MB (8208030 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:981b50720f67b4e1414fe3df17e6cca27263eeec901298b92b3624fbc58298fd`  
		Last Modified: Tue, 06 Oct 2026 11:45:28 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43a651337234bc6d343b40b6c72dbf7ef87183153c6cc320f2d4b1d175c4fb81`  
		Last Modified: Tue, 06 Oct 2026 11:45:28 GMT  
		Size: 833.0 KB (832985 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a570c6b3ef0f29fbe9d4b3d3e7906a86951d37e108a2ba0e242ded613c6820f`  
		Last Modified: Tue, 06 Oct 2026 11:45:28 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ef61de997a6da26fc35da9c5bc0cc180d450e8e1e519c03ca60d53c6b7037a2`  
		Last Modified: Tue, 06 Oct 2026 11:48:30 GMT  
		Size: 23.6 MB (23633962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.5-fpm-bookworm` - unknown; unknown

```console
$ docker pull drupal@sha256:484c40acf503fb700b2d13788d501838967d590207898b10882aa2d96a34fb08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6647600 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8cc7af5d884d4487650402ddd549bb33dbb83f55000df2d3ad8975a29ec05b5c`

```dockerfile
```

-	Layers:
	-	`sha256:f1e15dae80adff62142f5b85d4e73970713dededa5ec14346152e7499f3c59cd`  
		Last Modified: Tue, 06 Oct 2026 11:48:29 GMT  
		Size: 6.6 MB (6612545 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:18040c62edd9945664eee20b6986570702f38418a17ec8c018177619ed3f580c`  
		Last Modified: Tue, 06 Oct 2026 11:48:29 GMT  
		Size: 35.1 KB (35055 bytes)  
		MIME: application/vnd.in-toto+json
