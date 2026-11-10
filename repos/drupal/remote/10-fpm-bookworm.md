## `drupal:10-fpm-bookworm`

```console
$ docker pull drupal@sha256:902f2f749d57db6277c3e959bbd94bf55babbae611141c1be3ce4c6c58dfa833
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

### `drupal:10-fpm-bookworm` - linux; amd64

```console
$ docker pull drupal@sha256:4efe5b420817abde84068c8e40a30820ffb48a9cbdf6ebdc4c9c7adf0bde4321
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.9 MB (208937423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8847d0d3ff88c82d87998c94edb5340d89aea407977e9318f8e84d9892f1dc98`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:20:19 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 05 Nov 2026 07:20:34 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 05 Nov 2026 07:20:34 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:20:34 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 07:20:34 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 07:20:34 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:20:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:20:34 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 07:20:34 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 05 Nov 2026 07:20:34 GMT
ENV PHP_VERSION=8.4.27
# Thu, 05 Nov 2026 07:20:34 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Thu, 05 Nov 2026 07:20:34 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Thu, 05 Nov 2026 07:23:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 05 Nov 2026 07:23:38 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:25:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 07:25:52 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:25:52 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 07:25:52 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 07:25:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 07:25:52 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 07:25:52 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 05 Nov 2026 07:25:52 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 07:25:52 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 05 Nov 2026 07:25:52 GMT
CMD ["php-fpm"]
# Tue, 10 Nov 2026 21:42:47 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 21:42:47 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Tue, 10 Nov 2026 21:42:47 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:42:47 GMT
ENV DRUPAL_VERSION=10.6.21
# Tue, 10 Nov 2026 21:42:47 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 10 Nov 2026 21:42:47 GMT
WORKDIR /opt/drupal
# Tue, 10 Nov 2026 21:42:52 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 10 Nov 2026 21:42:52 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:392f28eac377791616182c65c17fe9faf2e9b4a925a57b75e62c580629809c2b`  
		Last Modified: Thu, 05 Nov 2026 07:23:21 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f55315052cc337c107e144ade14fcdc296e2c69ef2a044ee42c1faa7f35c1d5b`  
		Last Modified: Thu, 05 Nov 2026 07:23:25 GMT  
		Size: 104.2 MB (104156368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:860d2e79016eec92d7ceeb5a6f399a4d48b526305407d699549eccc0b51caebd`  
		Last Modified: Thu, 05 Nov 2026 07:23:21 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f48cbdfe77ac28939a95652eb1b62ce5167a8c559cef3631f1dd74282e5850ba`  
		Last Modified: Thu, 05 Nov 2026 07:26:03 GMT  
		Size: 14.0 MB (13973049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53e312bd35e51881b7c7a37c53a38b92de4e30fbad076ed235df8e93372def95`  
		Last Modified: Thu, 05 Nov 2026 07:26:02 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b9889b92ae72ba8b85962b1ac8cf923645f6f690166ca2e785b118d866e2fb`  
		Last Modified: Thu, 05 Nov 2026 07:26:03 GMT  
		Size: 29.8 MB (29827723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1220370cdd34e5a453b6ae200e7543571a3221d124d3fd0aeb3587dd31a62f13`  
		Last Modified: Thu, 05 Nov 2026 07:26:02 GMT  
		Size: 2.5 KB (2456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:138c31d9baac2c0181e68a3c6ece2ff9516dbad98189b05888b5c4daa474b4e1`  
		Last Modified: Thu, 05 Nov 2026 07:26:03 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c5af79ae63844452358ba0e76999f7ca2e09b2a21abe63f97a05cbfddc8ca8b`  
		Last Modified: Thu, 05 Nov 2026 07:26:03 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:975fb73e2dc6eeb60859660804f9e99e03d384b1cf131fd6597b899769e0e002`  
		Last Modified: Thu, 05 Nov 2026 07:26:04 GMT  
		Size: 9.3 KB (9272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f36fd38ec8558354d9d68f458d4cf7463f26434640c95d5c8ea1f57be42ae0e1`  
		Last Modified: Tue, 10 Nov 2026 21:43:10 GMT  
		Size: 9.7 MB (9694630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ab144df43bf38861d45c9ec25bb88a60dedbbd2acc102eaafda7970ebb2a18f`  
		Last Modified: Tue, 10 Nov 2026 21:43:09 GMT  
		Size: 318.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1caef5195db8e3dc480a5072d06eb945b851b265df4d16760276f51cff758d28`  
		Last Modified: Tue, 10 Nov 2026 21:43:10 GMT  
		Size: 879.8 KB (879803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5900e18ca64e0ab72c6eab6f7b3acd501aef1288d6ba6b43ba005da7c901c342`  
		Last Modified: Tue, 10 Nov 2026 21:43:10 GMT  
		Size: 113.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cf1740017c6a4d364792adee65ec8f6b73e34848b9d700f874fe4c6995c0730`  
		Last Modified: Tue, 10 Nov 2026 21:43:11 GMT  
		Size: 22.1 MB (22144236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:10-fpm-bookworm` - unknown; unknown

```console
$ docker pull drupal@sha256:ceabd0d156e6a652ea3ccaca8b8d8f82e87c1cb7a990e3529f6c72f2627b002a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6656555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f19163cecf1ce5c4a733a529940445e354fefd79c661643bac58570a4999df4d`

```dockerfile
```

-	Layers:
	-	`sha256:ae9e69e7c64bf21aa663ab69c6038c7553b081e757cf165f94190fb6af6ac34c`  
		Last Modified: Tue, 10 Nov 2026 21:43:10 GMT  
		Size: 6.6 MB (6621283 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d4d298c92c23300e78a7e3bcff7aafaf148343836636bd7e323af06e9eecef26`  
		Last Modified: Tue, 10 Nov 2026 21:43:09 GMT  
		Size: 35.3 KB (35272 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:10-fpm-bookworm` - linux; arm variant v7

```console
$ docker pull drupal@sha256:2c1314356f6a1f579c7be55694b9cdc55b51448aca977657630cae476dc51e20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.3 MB (170263042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1626f0bc6cf8b837db6210fb6fb5b24d2c555d96d2fc7cbc5128b2fa9ba8cb5`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:24:06 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 05 Nov 2026 07:24:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 05 Nov 2026 07:24:23 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:24:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 07:24:23 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 07:24:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:24:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:24:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 07:24:23 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 05 Nov 2026 07:24:23 GMT
ENV PHP_VERSION=8.4.27
# Thu, 05 Nov 2026 07:24:23 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Thu, 05 Nov 2026 07:24:23 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Thu, 05 Nov 2026 07:40:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 05 Nov 2026 07:40:20 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:42:51 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 07:42:51 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:42:51 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 07:42:51 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 07:42:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 07:42:51 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 07:42:51 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 05 Nov 2026 07:42:51 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 07:42:51 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 05 Nov 2026 07:42:51 GMT
CMD ["php-fpm"]
# Tue, 10 Nov 2026 20:17:35 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 20:17:35 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Tue, 10 Nov 2026 20:17:35 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 20:17:35 GMT
ENV DRUPAL_VERSION=10.6.20
# Tue, 10 Nov 2026 20:17:35 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 10 Nov 2026 20:17:35 GMT
WORKDIR /opt/drupal
# Tue, 10 Nov 2026 20:17:43 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 10 Nov 2026 20:17:43 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:b37c96781b87a85cb04abbf5abfe88c91253a506348403ce0022810d702aa72c`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 24.0 MB (23961356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a043566112009502767da610adc97e381bafe024039c7b6af7394278975734f`  
		Last Modified: Thu, 05 Nov 2026 07:27:13 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94daeb491f4a9cb757b1eca36a1848dc3919b3317a665d695413f6aa5d6415bb`  
		Last Modified: Thu, 05 Nov 2026 07:27:15 GMT  
		Size: 76.0 MB (75968083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:282ce708640f84e38263ba283e46843bba5addc92891c22b5180ea8f52db2f1d`  
		Last Modified: Thu, 05 Nov 2026 07:27:13 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:104bebd5ab26b217c3910dd13d6643054f966f0762d6d43ef9a406594fc5e6a9`  
		Last Modified: Thu, 05 Nov 2026 07:43:03 GMT  
		Size: 14.0 MB (13971379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9e5155ec562500daff8c270025464f8bf3f006b7fd15401686804551604fdeb`  
		Last Modified: Thu, 05 Nov 2026 07:43:02 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65b1ce60cc716e262e7df81a14a5fbccf4dd496bd88600baf4e908a56f7285f2`  
		Last Modified: Thu, 05 Nov 2026 07:43:03 GMT  
		Size: 27.0 MB (27037158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b31d9c4e95681fdce5350de8acdc1d9ead60e9433b961ce092a1a8e08de2fca1`  
		Last Modified: Thu, 05 Nov 2026 07:43:02 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c32c4de5a4dea5a6fd2e6acde53a3a9772542d1174aba88010939b17ad098e4`  
		Last Modified: Thu, 05 Nov 2026 07:43:03 GMT  
		Size: 252.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7e76e25fbc7d16660abbf4a1fa39470f80e68c1b7fdcdfa0dce218902c9722c`  
		Last Modified: Thu, 05 Nov 2026 07:43:03 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:803e98b93d545b14cf5d19f1c79f80f3b8a63ca69116f941144a794f1700b8f9`  
		Last Modified: Thu, 05 Nov 2026 07:43:04 GMT  
		Size: 9.3 KB (9267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:227ab8b156b331ac3624447de4bd003b53a110de32729c1f98e0719705ef9058`  
		Last Modified: Tue, 10 Nov 2026 20:18:00 GMT  
		Size: 6.3 MB (6312137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:116d60089281c15a0ba9cc83b593f9f79b63c1ce82b091ace4cf258e9dab9170`  
		Last Modified: Tue, 10 Nov 2026 20:18:00 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4eac171dfc5605e05e9b906429f474b8c5baac9769d8b55f847130485fa6756`  
		Last Modified: Tue, 10 Nov 2026 20:18:00 GMT  
		Size: 879.8 KB (879798 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:840d5f2b1320ecdc1d5266809f455b3a11bc6d2e72fcb053fe17be28c143edb4`  
		Last Modified: Tue, 10 Nov 2026 20:18:00 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a796fdcb03713677f7cb3b4c6a945db1391c09834c5f1ac92bf06891913a1da`  
		Last Modified: Tue, 10 Nov 2026 20:18:02 GMT  
		Size: 22.1 MB (22119512 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:10-fpm-bookworm` - unknown; unknown

```console
$ docker pull drupal@sha256:6068232845f95e8d48b47e89488030ac4ded22fd382edcd82932d756a5d3c57b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6470207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:796334d3554828e2a3a9d5b03efb46b9f96a21d5c36efc869bc72d173e570936`

```dockerfile
```

-	Layers:
	-	`sha256:a08afb847a6065257f6b9ce7acb4088b767cc5a90b1495d2503b72ff34f0decb`  
		Last Modified: Tue, 10 Nov 2026 20:18:00 GMT  
		Size: 6.4 MB (6434800 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:086b3c68bc32fef4b186d667bfda9b1c56c778f27393e5c2f8fefc2d36b1a180`  
		Last Modified: Tue, 10 Nov 2026 20:18:00 GMT  
		Size: 35.4 KB (35407 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:10-fpm-bookworm` - linux; arm64 variant v8

```console
$ docker pull drupal@sha256:98928d3e49805e246fc0efccf61b6010ab99e466e7632626f9ede85d75a643a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.2 MB (200170607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c01fb3232d63e5f0bf83f11d95c7957f189cfef3b327027e54e23ff3bfa7751`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:17:52 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 05 Nov 2026 07:18:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 05 Nov 2026 07:18:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:18:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 07:18:06 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 07:18:06 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:18:06 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:18:06 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 07:18:06 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 05 Nov 2026 07:18:06 GMT
ENV PHP_VERSION=8.4.27
# Thu, 05 Nov 2026 07:18:06 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Thu, 05 Nov 2026 07:18:06 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Thu, 05 Nov 2026 07:25:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 05 Nov 2026 07:25:01 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:27:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 07:27:53 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:27:53 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 07:27:53 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 07:27:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 07:27:53 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 07:27:53 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 05 Nov 2026 07:27:53 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 07:27:53 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 05 Nov 2026 07:27:53 GMT
CMD ["php-fpm"]
# Tue, 10 Nov 2026 20:13:44 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 20:13:44 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Tue, 10 Nov 2026 20:13:44 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 20:13:44 GMT
ENV DRUPAL_VERSION=10.6.20
# Tue, 10 Nov 2026 20:13:44 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 10 Nov 2026 20:13:44 GMT
WORKDIR /opt/drupal
# Tue, 10 Nov 2026 20:13:51 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 10 Nov 2026 20:13:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68f99565605c33e02bc903be0618d6c404c7ce9064728786a186c38cfe0a29b8`  
		Last Modified: Thu, 05 Nov 2026 07:21:16 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6671ccb516db364a4208459f6e06209ff56c17e00005323575358b6bedb930b7`  
		Last Modified: Thu, 05 Nov 2026 07:21:19 GMT  
		Size: 98.0 MB (98004818 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4afa6f96bd78f7bd024a5a59fb0913b306bfa0fc05a74090840ee3751edc347`  
		Last Modified: Thu, 05 Nov 2026 07:21:16 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46a75a63c3101a7b5dee75485b80febd9a3e1586cd982f10ed4f6340ab22a044`  
		Last Modified: Thu, 05 Nov 2026 07:28:05 GMT  
		Size: 14.0 MB (13972920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:694ec57ae132db1ba03f318a82943124eb555bcda6b765fdeebd1cf24f497c50`  
		Last Modified: Thu, 05 Nov 2026 07:28:04 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d738740ebfe491857f4741aa6943f01823e73ce8289aa26df9c954b36ff152e`  
		Last Modified: Thu, 05 Nov 2026 07:28:06 GMT  
		Size: 29.4 MB (29447920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a25dba6053f684d0a3f6e4af7ae8c25487dbe62952e8ce4520a0eeb445d2e8fd`  
		Last Modified: Thu, 05 Nov 2026 07:28:04 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d89b833d2d43b2f82c6828284d965f814302ef6988dc70b8cc0bfd424162da0`  
		Last Modified: Thu, 05 Nov 2026 07:28:06 GMT  
		Size: 253.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:515eaff03e2d0ac089e3abe9b946dc83ed22cd51d9cd2c894ce3a259dc7022f6`  
		Last Modified: Thu, 05 Nov 2026 07:28:06 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c23186590b389c42ee3969e04ce6d377b9974480a24797c7a1217bc94270a4c1`  
		Last Modified: Thu, 05 Nov 2026 07:28:07 GMT  
		Size: 9.3 KB (9269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de0a7ce38990b42ae0bd002f7bcccb6c34b91b9391ed37e0234739ec9586e228`  
		Last Modified: Tue, 10 Nov 2026 20:14:08 GMT  
		Size: 7.6 MB (7587455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ee85b3c395fce4ebf021dd8b288b45284ea390cc275e96216f409141ec02d67`  
		Last Modified: Tue, 10 Nov 2026 20:14:08 GMT  
		Size: 318.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d881bd9dfc7ac9b16d33501a4d70a400d98a59b9e601605d07dd77f3a9113ddb`  
		Last Modified: Tue, 10 Nov 2026 20:14:08 GMT  
		Size: 879.8 KB (879801 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8a337bc487310d6df3ea00fd7dfa04472625c2555a06bd53697cbf78d7a48a6`  
		Last Modified: Tue, 10 Nov 2026 20:14:07 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0335a833bc51235217d25b58c342d4fbac06df4b226645030d70199cc73d7bc4`  
		Last Modified: Tue, 10 Nov 2026 20:14:10 GMT  
		Size: 22.1 MB (22119703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:10-fpm-bookworm` - unknown; unknown

```console
$ docker pull drupal@sha256:3e4a254c97b6765b592d41a18a30804d3912b8dc98f6333def69ae0239e593b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6685225 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b7919bb137c0a522664f7709686b0d475d21e960ab6ec48bf93f0afb7a8d0f9`

```dockerfile
```

-	Layers:
	-	`sha256:5a9657d21534d4e1415e47e2d16f4dc9594b73bb9b41d2ec3998505fd6faf1ad`  
		Last Modified: Tue, 10 Nov 2026 20:14:08 GMT  
		Size: 6.6 MB (6649775 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a7e5dd44cbdf7fe3fcb72b0a20eec0f3ce0fd2f32a11da33219a28526d3bbcb4`  
		Last Modified: Tue, 10 Nov 2026 20:14:08 GMT  
		Size: 35.5 KB (35450 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:10-fpm-bookworm` - linux; 386

```console
$ docker pull drupal@sha256:cc83a400d5489e4f9d4dc43b3a4a9a616d41fe8a39b51a88849cf65db1e97335
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.6 MB (204646208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc1246f3f8f6aff2fe15a9210300f808fe7ae87fba68a751e41a3d1de33e1cc2`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 07:15:50 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 05 Nov 2026 07:16:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 05 Nov 2026 07:16:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 07:16:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 07:16:06 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 07:16:06 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:16:06 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 07:16:06 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 07:16:06 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 05 Nov 2026 07:16:06 GMT
ENV PHP_VERSION=8.4.27
# Thu, 05 Nov 2026 07:16:06 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Thu, 05 Nov 2026 07:16:06 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Thu, 05 Nov 2026 07:23:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 05 Nov 2026 07:23:03 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:25:42 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 07:25:42 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 07:25:42 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 07:25:42 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 07:25:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 07:25:43 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 07:25:43 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 05 Nov 2026 07:25:43 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 07:25:43 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 05 Nov 2026 07:25:43 GMT
CMD ["php-fpm"]
# Tue, 10 Nov 2026 21:41:34 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 10 Nov 2026 21:41:34 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Tue, 10 Nov 2026 21:41:34 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 21:41:34 GMT
ENV DRUPAL_VERSION=10.6.21
# Tue, 10 Nov 2026 21:41:34 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 10 Nov 2026 21:41:34 GMT
WORKDIR /opt/drupal
# Tue, 10 Nov 2026 21:41:40 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 10 Nov 2026 21:41:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:cf916cd28bf8a94b890c149d6b2cdc665c8beb3378aa9c98a18b6ec1bfe54b0c`  
		Last Modified: Thu, 05 Nov 2026 06:15:50 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dd3ae7a34054f30f4ee8216b0014f5479e9587f3f1587bda829fa84a7fa1c04`  
		Last Modified: Thu, 05 Nov 2026 07:19:01 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ca4c5e9ead22c433d5f556ac9295a58f8303371afca21aaefcf2d86ae10c30e`  
		Last Modified: Thu, 05 Nov 2026 07:19:27 GMT  
		Size: 101.4 MB (101354254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8420497a1481549fd017d6b285b341dbdabc0c1c14e73226c1325d3beeec03e7`  
		Last Modified: Thu, 05 Nov 2026 07:19:24 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d289bca3a1ab51b61573370b1988a847cc6b03f45ca7ee543a2c2d8d9a438241`  
		Last Modified: Thu, 05 Nov 2026 07:25:54 GMT  
		Size: 14.0 MB (13972437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4ab2cf6966bde1824f6f6883fdf425eb69b894f30103db85e815c60c3e43000`  
		Last Modified: Thu, 05 Nov 2026 07:25:53 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c0efb0426730627cb08b06167f026c5796e9a7d8e50be6a25c0509ed5d96c4e`  
		Last Modified: Thu, 05 Nov 2026 07:25:54 GMT  
		Size: 30.5 MB (30503977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5b1f270694afda8be2277d54e1d1ff845d61c2f032ebfa827a3995b654aac40`  
		Last Modified: Thu, 05 Nov 2026 07:25:53 GMT  
		Size: 2.5 KB (2455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44fcfbe7adac4020ccb8788d34c7e58d32b6948b74e5bdcac329778c9d8836af`  
		Last Modified: Thu, 05 Nov 2026 07:25:54 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:871b49106f80f43c21e3e85afca66fb665bd52dbce1176ace2412ae44c3dd748`  
		Last Modified: Thu, 05 Nov 2026 07:25:54 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48ef263d2412cc67c637f0c4b31033acd3819275cc6538d49db8c000b00f6050`  
		Last Modified: Thu, 05 Nov 2026 07:25:56 GMT  
		Size: 9.3 KB (9269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e91722873941f01942db1fa0429044179de4889293d6c3f7ec2156ba656d46aa`  
		Last Modified: Tue, 10 Nov 2026 21:41:55 GMT  
		Size: 6.5 MB (6538806 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcff507b35dfccc4639cae38a4635ad037477b21bdf8d9f71a74ae5fb3af2916`  
		Last Modified: Tue, 10 Nov 2026 21:41:55 GMT  
		Size: 317.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c695ba5c5ea7ec5da2e24678c914c05ec4ee0b541f1698d492bbfa8ccd3bba6d`  
		Last Modified: Tue, 10 Nov 2026 21:41:55 GMT  
		Size: 879.8 KB (879803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0658393a138221d472c5ca098ac8082ef23595afb50a1b20eaef57d18c1c717`  
		Last Modified: Tue, 10 Nov 2026 21:41:55 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0c50aaa5be685f33154ee6aa09c89aa03dbba263b1d36f3963ea9efc70b4c3c`  
		Last Modified: Tue, 10 Nov 2026 21:41:57 GMT  
		Size: 22.1 MB (22144099 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:10-fpm-bookworm` - unknown; unknown

```console
$ docker pull drupal@sha256:b5ce9457ae7f5b9f93af089d58faf43bdca9685ea89e2e6332965c19c4fab379
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6629540 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:433d8e9ce923649401401a79fa8c91195e29af29846e148a126f80340b83abc1`

```dockerfile
```

-	Layers:
	-	`sha256:f7e5bba58d689c2763e242c4bc6422454492e6d53e68e23b8b52c5ecfd66938f`  
		Last Modified: Tue, 10 Nov 2026 21:41:55 GMT  
		Size: 6.6 MB (6594321 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11f8badab768269dca6a63b6346b29182fdbbc71eefa3c2e09cabed750f48a8e`  
		Last Modified: Tue, 10 Nov 2026 21:41:55 GMT  
		Size: 35.2 KB (35219 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:10-fpm-bookworm` - linux; ppc64le

```console
$ docker pull drupal@sha256:3d201fed8b2c2532eec81d4587fb969d2e697774cb6a8ef9ee07b76f0b2319d2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.3 MB (211342566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:713f268a35ca0c5a3d1fc1e5444cf331c7bcdb52dd371239ff6753e65527ccc0`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Thu, 05 Nov 2026 08:03:54 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 05 Nov 2026 08:04:41 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 05 Nov 2026 08:04:41 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 08:04:41 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 08:04:42 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 08:04:42 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 08:04:42 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 08:04:42 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 08:04:42 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 05 Nov 2026 08:04:42 GMT
ENV PHP_VERSION=8.4.27
# Thu, 05 Nov 2026 08:04:42 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Thu, 05 Nov 2026 08:04:42 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Thu, 05 Nov 2026 08:45:09 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 05 Nov 2026 08:45:09 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 08:55:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 08:55:32 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 08:55:32 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 08:55:32 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 08:55:32 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 08:55:33 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 08:55:33 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 05 Nov 2026 08:55:33 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 08:55:33 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 05 Nov 2026 08:55:33 GMT
CMD ["php-fpm"]
# Thu, 05 Nov 2026 17:42:24 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 05 Nov 2026 17:42:24 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Tue, 10 Nov 2026 20:15:37 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 20:15:37 GMT
ENV DRUPAL_VERSION=10.6.20
# Tue, 10 Nov 2026 20:15:37 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 10 Nov 2026 20:15:37 GMT
WORKDIR /opt/drupal
# Tue, 10 Nov 2026 20:35:35 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 10 Nov 2026 20:35:35 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:a3dff645b91d02e56b5f761df11ba1d58ba63ceca28ce0fd26bcdff159295e70`  
		Last Modified: Thu, 05 Nov 2026 06:14:37 GMT  
		Size: 32.1 MB (32093560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa2095b0a5eda49ef287a04c031fb0313ce4533cbe3e4f2c33872f768c2158a4`  
		Last Modified: Thu, 05 Nov 2026 08:09:44 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0a2ee7c606d4199ed0082ad62e3d289125b8a06cee669d22c0fad3a63cf3656`  
		Last Modified: Thu, 05 Nov 2026 08:09:48 GMT  
		Size: 103.2 MB (103154965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ee351715c61e3e53c34ededbfd9696be5dadb697c1a838097c9438fcf874f0f`  
		Last Modified: Thu, 05 Nov 2026 08:09:44 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:688084bd45c5eefd4f80c223bf160f24981dfc8193b0b1930f0d0b700da40292`  
		Last Modified: Thu, 05 Nov 2026 08:50:09 GMT  
		Size: 14.0 MB (13972660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48fbb6fc2b0ca5b22ae7398d1b93f6bd08015e539676f24922b59803dda4497c`  
		Last Modified: Thu, 05 Nov 2026 08:50:09 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c982146f49a0d0ba1201561e76e8032910cc08f396256bcc695d6696fa6713bf`  
		Last Modified: Thu, 05 Nov 2026 08:55:59 GMT  
		Size: 30.9 MB (30898984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93793360239842d2d9e61e54153b570a7ca4e4527b682fadcb17cb0dadf1ec56`  
		Last Modified: Thu, 05 Nov 2026 08:55:58 GMT  
		Size: 2.5 KB (2458 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1316b7c18f727727a31ad2e2ab1b607029f8652b068003754165015cf0bdac94`  
		Last Modified: Thu, 05 Nov 2026 08:55:58 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8148a18a32e5a73557325a72715abbc40220f5ecbe8c2d7332057ae1e8abb74`  
		Last Modified: Thu, 05 Nov 2026 08:55:58 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c0b432938c389ebd312d4b337d9bfdb1cd8f27332ad1ce9bd7492b480271203`  
		Last Modified: Thu, 05 Nov 2026 08:55:59 GMT  
		Size: 9.3 KB (9270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:593de48f4ea01ce802e0d13d3c3c84337fe02e87c58e2ec57b8cd6493bd1e441`  
		Last Modified: Thu, 05 Nov 2026 17:43:49 GMT  
		Size: 8.2 MB (8209969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9601bc80ea5a049f5f28f0c92e8c3f6097c5defc0ab9fcd7553bece735f9dde4`  
		Last Modified: Thu, 05 Nov 2026 17:43:49 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdc958bc3820ae15807a551cf794c9b7fe7d9d4c3bf081cb71ed4ac3fc869db1`  
		Last Modified: Tue, 10 Nov 2026 20:16:39 GMT  
		Size: 879.8 KB (879796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90cb3e6cb9890e1ca1b446df4ee27b32a74438095224512dc74adc4b2e6eb5d6`  
		Last Modified: Tue, 10 Nov 2026 20:16:38 GMT  
		Size: 116.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56c3058f9703228dc28de688a66e74ee49a1d391d72c243c95273c24b30713e8`  
		Last Modified: Tue, 10 Nov 2026 20:36:20 GMT  
		Size: 22.1 MB (22119004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:10-fpm-bookworm` - unknown; unknown

```console
$ docker pull drupal@sha256:22b9a2641bdf3d524b7747de253de56983c7ec02c7a000122e3f2c2b1df8361e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6633748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b79e01437a05fb5a7a43677593be865ca35fbb4a6e4ae7c52f8e4d74bef2fdf3`

```dockerfile
```

-	Layers:
	-	`sha256:8822a680b21128cbd1d1af58513713ad55cf8de6d8b1e97ce6376197443da6eb`  
		Last Modified: Tue, 10 Nov 2026 20:36:19 GMT  
		Size: 6.6 MB (6598406 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8046d5e6689502799e0a79e32191604306fd63fcd17c63fe2b05d4b6df517c9c`  
		Last Modified: Tue, 10 Nov 2026 20:36:19 GMT  
		Size: 35.3 KB (35342 bytes)  
		MIME: application/vnd.in-toto+json
