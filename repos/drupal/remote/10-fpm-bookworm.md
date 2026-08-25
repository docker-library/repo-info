## `drupal:10-fpm-bookworm`

```console
$ docker pull drupal@sha256:a7e19a017341c5eb0682725ebe29d5b4b3e0ae8cb73d4c8f655ed9abb6bfd730
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
$ docker pull drupal@sha256:bd064df2bcf1026c7817503f5088557064f49a3f30a311d77e964d8c67e4d38c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **208.8 MB (208795301 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee7d6d7c7489f4c97d0143f827fea71ed7ad3a9216bfd2e4a8e47c35ead3656d`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:23:55 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 25 Aug 2026 00:24:10 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Aug 2026 00:24:10 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:24:10 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Aug 2026 00:24:10 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 25 Aug 2026 00:24:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:24:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:24:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 00:24:10 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Tue, 25 Aug 2026 00:24:10 GMT
ENV PHP_VERSION=8.4.24
# Tue, 25 Aug 2026 00:24:10 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Tue, 25 Aug 2026 00:24:10 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Tue, 25 Aug 2026 00:34:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 25 Aug 2026 00:34:18 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:36:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 25 Aug 2026 00:36:55 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:36:55 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 25 Aug 2026 00:36:55 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 25 Aug 2026 00:36:55 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 25 Aug 2026 00:36:55 GMT
WORKDIR /var/www/html
# Tue, 25 Aug 2026 00:36:55 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 25 Aug 2026 00:36:55 GMT
STOPSIGNAL SIGQUIT
# Tue, 25 Aug 2026 00:36:55 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 25 Aug 2026 00:36:55 GMT
CMD ["php-fpm"]
# Tue, 25 Aug 2026 01:40:39 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:40:39 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Tue, 25 Aug 2026 01:40:39 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 01:40:39 GMT
ENV DRUPAL_VERSION=10.6.15
# Tue, 25 Aug 2026 01:40:39 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 25 Aug 2026 01:40:39 GMT
WORKDIR /opt/drupal
# Tue, 25 Aug 2026 01:40:45 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 25 Aug 2026 01:40:45 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:a8ac7f6c67abc236e4c745052c404112b8fab6fe8ac3a329d1ef3b867ad67c71`  
		Last Modified: Mon, 24 Aug 2026 23:20:26 GMT  
		Size: 28.2 MB (28232655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d71fa45385fc62efa5716f48ad229706a0377f4321b71983283897059b974c4d`  
		Last Modified: Tue, 25 Aug 2026 00:27:21 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d563d4ad6c0a669722a386c16b0c62b173bfd18b5a211e933ea0b594dd896b69`  
		Last Modified: Tue, 25 Aug 2026 00:27:24 GMT  
		Size: 104.4 MB (104352991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f86a5d56e26b6dc34406185a5554945c5f0627af2bc8bbe543df1270e41d3f68`  
		Last Modified: Tue, 25 Aug 2026 00:27:21 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b7f725b97a18f2f855f03c3c20fb803e43acde8f9c6f54b25c132dc6d8ee226`  
		Last Modified: Tue, 25 Aug 2026 00:37:07 GMT  
		Size: 13.9 MB (13862478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13caf5c70c86b277c60888a9ac95b772501e8606bf89e08724793cfd495cf5dc`  
		Last Modified: Tue, 25 Aug 2026 00:37:06 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5764373eeca9da8a8db26d5266c7782de2cee861693e7f61d487da632cddb8d`  
		Last Modified: Tue, 25 Aug 2026 00:37:07 GMT  
		Size: 29.8 MB (29772594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9ba6255c5248547c90af0d9d12bdcbebe97fc08101913d0be8926442ac807ab`  
		Last Modified: Tue, 25 Aug 2026 00:37:06 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0acfc7f09095bdf11bfa90f9a34c45d88a19af0d7a214eb81dc00432e357925c`  
		Last Modified: Tue, 25 Aug 2026 00:37:07 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:613e3ab1372dac2696ebf0f4eec17cfc25394f33c32991337de682d59ccd0ada`  
		Last Modified: Tue, 25 Aug 2026 00:37:07 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c7c7b137789d01b63b2f7ceb1b76a605ab92bbea283adc72a931c57c3a316b5`  
		Last Modified: Tue, 25 Aug 2026 00:37:08 GMT  
		Size: 9.3 KB (9269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5096b4d53a94f8b7f3771f2e3cf9f8a5d8ef47606020cb19bdeb9a9c796259`  
		Last Modified: Tue, 25 Aug 2026 01:41:04 GMT  
		Size: 9.7 MB (9692009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44451dae0fff7f5ad3b79bfee7077d5ea32d8d239726234a0f44bfaed94a2302`  
		Last Modified: Tue, 25 Aug 2026 01:41:04 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc32a48f095ecd5a55dcf98e27c28924df871199002ada4e17e7bef4acf78c40`  
		Last Modified: Tue, 25 Aug 2026 01:41:04 GMT  
		Size: 832.3 KB (832289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa05dd8514a5e076944f7c799a9b064451991efbb0cd3380bf0a2f9c1e05d23c`  
		Last Modified: Tue, 25 Aug 2026 01:41:04 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbca78df64ab21ccecdd3c6a3fa9030d2a000ef0583166a93609dfc87f54098b`  
		Last Modified: Tue, 25 Aug 2026 01:41:06 GMT  
		Size: 22.0 MB (22036669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:10-fpm-bookworm` - unknown; unknown

```console
$ docker pull drupal@sha256:cb623fb252156241f467e039110288577665367de0e7eb8f5b5f9fa334cb5b20
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6657704 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d05bf5449915ae4e176aae19f52ddc480af8db7c0422c2e1a3387d253238c5f8`

```dockerfile
```

-	Layers:
	-	`sha256:5e39da7848dc8236f1d3dfdc8723348d0713821c60094fbcae61f4a9f76376c9`  
		Last Modified: Tue, 25 Aug 2026 01:41:04 GMT  
		Size: 6.6 MB (6622432 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:914ba6f70988da25bf9714c878128c7f5ee80d985d25e9261fde94d8a665209c`  
		Last Modified: Tue, 25 Aug 2026 01:41:04 GMT  
		Size: 35.3 KB (35272 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:10-fpm-bookworm` - linux; arm variant v7

```console
$ docker pull drupal@sha256:809ed34cfbe7a5f8fec5c4ddc7d56a5e67f0bc3a9d18b0a29b7b0145d375fc81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.1 MB (170139911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80f4c75ee828f00d821ba062b95be1b77856aa33ed431801774b9d93efea9198`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:44:53 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 05 Aug 2026 00:45:09 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 05 Aug 2026 00:45:09 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:45:09 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Aug 2026 00:45:09 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 05 Aug 2026 00:45:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 05 Aug 2026 00:45:09 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 05 Aug 2026 00:45:09 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 05 Aug 2026 00:45:09 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 05 Aug 2026 00:45:09 GMT
ENV PHP_VERSION=8.4.24
# Wed, 05 Aug 2026 00:45:09 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Wed, 05 Aug 2026 00:45:09 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Wed, 05 Aug 2026 00:52:26 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 05 Aug 2026 00:52:26 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:55:01 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 05 Aug 2026 00:55:01 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:55:01 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 05 Aug 2026 00:55:01 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 05 Aug 2026 00:55:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 05 Aug 2026 00:55:02 GMT
WORKDIR /var/www/html
# Wed, 05 Aug 2026 00:55:02 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Wed, 05 Aug 2026 00:55:02 GMT
STOPSIGNAL SIGQUIT
# Wed, 05 Aug 2026 00:55:02 GMT
EXPOSE map[9000/tcp:{}]
# Wed, 05 Aug 2026 00:55:02 GMT
CMD ["php-fpm"]
# Mon, 10 Aug 2026 23:26:05 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:26:05 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Mon, 10 Aug 2026 23:26:05 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:26:05 GMT
ENV DRUPAL_VERSION=10.6.15
# Mon, 10 Aug 2026 23:26:05 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 10 Aug 2026 23:26:05 GMT
WORKDIR /opt/drupal
# Mon, 10 Aug 2026 23:26:12 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Mon, 10 Aug 2026 23:26:12 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:f7d1f71e8e38549d0cf2e1bd518bd9310928f6b09f204db9ed808390cce9a49e`  
		Last Modified: Tue, 04 Aug 2026 23:51:57 GMT  
		Size: 23.9 MB (23939749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9a8bc5a584fc16b0b86da51205b2ee91dfbd8f9d9d6d683b68994a8e9934ba0`  
		Last Modified: Wed, 05 Aug 2026 00:48:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26c633a4c4c67e883e2f59685da12425b26da2072d2538cf338d67ee9875a0e0`  
		Last Modified: Wed, 05 Aug 2026 00:48:24 GMT  
		Size: 76.2 MB (76154254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d905bda119239ee7129191a59c278a3a029704f8f5a806fd2df846ff40d2589`  
		Last Modified: Wed, 05 Aug 2026 00:48:22 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f906fabbc7da613cbcb0f01b0b434a49d922cd964dbcb217916fab90c90be885`  
		Last Modified: Wed, 05 Aug 2026 00:55:13 GMT  
		Size: 13.9 MB (13860631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e895e20ca413ec53f96675498b27511fc7bd5d75ca7f1a1ceb0762dea1a4daf9`  
		Last Modified: Wed, 05 Aug 2026 00:55:12 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8385a353ba77d6d2e205ac46067f4b0901394769346921ec469a13b5956c6018`  
		Last Modified: Wed, 05 Aug 2026 00:55:13 GMT  
		Size: 27.0 MB (26992631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79733d05d0c9be9de49ab44c41f40b8639503a1aad58b117ef3ea0a145b577b5`  
		Last Modified: Wed, 05 Aug 2026 00:55:12 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aafbd8b0e1f55c1bced2681cab690adb94e8de326925504121883c76cb879da0`  
		Last Modified: Wed, 05 Aug 2026 00:55:13 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20d26791f2eb02e93199e58e8ff1d7d70f803498a4459c2bbc4d68bc1d64c601`  
		Last Modified: Wed, 05 Aug 2026 00:55:14 GMT  
		Size: 244.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52c92c1b56ba4c31bbe1e83802a734640518fa900e470920f24d277fbfadcba7`  
		Last Modified: Wed, 05 Aug 2026 00:55:14 GMT  
		Size: 9.3 KB (9267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ce90b590e142fee00987b464329394f3a0e6dd91c7a86e8b86a5663ea4cfebb`  
		Last Modified: Mon, 10 Aug 2026 23:26:29 GMT  
		Size: 6.3 MB (6310181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:581ca10824a1b05a51edad602016e5072a3f88903b1897222c094c482a533ad7`  
		Last Modified: Mon, 10 Aug 2026 23:26:29 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96dbbb9b60553fc592851c09d1873af7d7ef7206bf4e051ca0c15cd02362c74`  
		Last Modified: Mon, 10 Aug 2026 23:26:29 GMT  
		Size: 832.3 KB (832291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7577fa6f7f5caf5ffd04dc19b1534d4789fcbee10a650accc02d1ec7ee543d8`  
		Last Modified: Mon, 10 Aug 2026 23:26:29 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90eb1a403c46974f4cbb99cc04d60dbdb7c95c8ba0a3535498fb0e615e41ddde`  
		Last Modified: Mon, 10 Aug 2026 23:26:31 GMT  
		Size: 22.0 MB (22036564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:10-fpm-bookworm` - unknown; unknown

```console
$ docker pull drupal@sha256:8129ceaf16845df6cc92fa77c96d05d712842dd69fe24527961121746dc9d058
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6466156 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e1e146ae2a0b0a579d3bccb1cfa691b4e43383ab87453c0883f64aa8a5bd099`

```dockerfile
```

-	Layers:
	-	`sha256:46d6cb00317ecd1fffe88270add880d1ebb7756147cbe2bdbc48343d44642a6f`  
		Last Modified: Mon, 10 Aug 2026 23:26:29 GMT  
		Size: 6.4 MB (6430746 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64f772db302b1e7afbb9d3fc194da28de2c77bf8d889c658acd74dc4a4fa9d0e`  
		Last Modified: Mon, 10 Aug 2026 23:26:29 GMT  
		Size: 35.4 KB (35410 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:10-fpm-bookworm` - linux; arm64 variant v8

```console
$ docker pull drupal@sha256:13005a2afa0296d48df3f26043e3ea3c527048eb0d279ca95e002bfa315627b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **200.0 MB (200034287 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c923f946a5376a626d75992e3c0bac0817a90a01a58afb25a074bffac7aba5d3`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 00:23:33 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 25 Aug 2026 00:23:47 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 25 Aug 2026 00:23:47 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 00:23:47 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 25 Aug 2026 00:23:47 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 25 Aug 2026 00:23:47 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:23:47 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 25 Aug 2026 00:23:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 25 Aug 2026 00:23:47 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Tue, 25 Aug 2026 00:23:47 GMT
ENV PHP_VERSION=8.4.24
# Tue, 25 Aug 2026 00:23:47 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Tue, 25 Aug 2026 00:23:47 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Tue, 25 Aug 2026 00:35:13 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Tue, 25 Aug 2026 00:35:13 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:38:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 25 Aug 2026 00:38:13 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 00:38:13 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 25 Aug 2026 00:38:13 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 25 Aug 2026 00:38:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 25 Aug 2026 00:38:13 GMT
WORKDIR /var/www/html
# Tue, 25 Aug 2026 00:38:13 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 25 Aug 2026 00:38:13 GMT
STOPSIGNAL SIGQUIT
# Tue, 25 Aug 2026 00:38:13 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 25 Aug 2026 00:38:13 GMT
CMD ["php-fpm"]
# Tue, 25 Aug 2026 01:46:12 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 25 Aug 2026 01:46:12 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Tue, 25 Aug 2026 01:46:12 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 25 Aug 2026 01:46:12 GMT
ENV DRUPAL_VERSION=10.6.15
# Tue, 25 Aug 2026 01:46:12 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 25 Aug 2026 01:46:12 GMT
WORKDIR /opt/drupal
# Tue, 25 Aug 2026 01:46:18 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 25 Aug 2026 01:46:18 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:75782e20ea1f4a9d9259bc20a5ecbbea8d5943bf5370bf0f5727900728f1cc9a`  
		Last Modified: Mon, 24 Aug 2026 23:20:16 GMT  
		Size: 28.1 MB (28117289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b0cc8c9fb1d18d1760b44c6c2c347858481f54461a9c544998991a77a1b5039`  
		Last Modified: Tue, 25 Aug 2026 00:27:03 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0910c1603fb6c28a51b75f2e91168b13912d2bcf1813b8d33c286c8bb32891f4`  
		Last Modified: Tue, 25 Aug 2026 00:27:08 GMT  
		Size: 98.2 MB (98201300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a867b4cf8b2f27a921926cc4fe51ffee1ac97b9d113a22b44cf76d549c4a3b06`  
		Last Modified: Tue, 25 Aug 2026 00:27:03 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a30461aa59153e19fb4d62be0726b983fd7f279b63c5a8e864636889353ffc30`  
		Last Modified: Tue, 25 Aug 2026 00:38:25 GMT  
		Size: 13.9 MB (13862330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53e93743912492f630f0c401146bf388e3f4c61b444d6d2e0d29b39333db5478`  
		Last Modified: Tue, 25 Aug 2026 00:38:24 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9bc35303f627a39a26b3c7a3a481e28d18aae9417b97143fe5a08424260c550`  
		Last Modified: Tue, 25 Aug 2026 00:38:25 GMT  
		Size: 29.4 MB (29385049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44a2d878c5adab84f76f321b4604bbc6ee8ea176c6a5403667d7261f5f64194a`  
		Last Modified: Tue, 25 Aug 2026 00:38:24 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dad72da39674dcf81ecb900812e00576920ac5572aba952e53015ba1075bd3f0`  
		Last Modified: Tue, 25 Aug 2026 00:38:25 GMT  
		Size: 251.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e28c7862ae613464a74dedc8f934efbd0dc13493c21c231943488c03fcb8f2d`  
		Last Modified: Tue, 25 Aug 2026 00:38:26 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5133123abac1499a7e63642be18f1b3656af7dbf826220e055ae285eafa90c9`  
		Last Modified: Tue, 25 Aug 2026 00:38:27 GMT  
		Size: 9.3 KB (9268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d92b1d4f33b11cec84df9d6bbaf2aa1f6808b5c31252f3b16b3e7d8e7a2dc3b`  
		Last Modified: Tue, 25 Aug 2026 01:46:37 GMT  
		Size: 7.6 MB (7585520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bb0a8a1164c44c79f6a0a6a9e5911c212c959eb0ddd13ad583a82050aad047e`  
		Last Modified: Tue, 25 Aug 2026 01:46:36 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f3d201b7c2a4b6075f83dde419434e60c4cf5c1b91139af09a6fb8a5eaa29e9`  
		Last Modified: Tue, 25 Aug 2026 01:46:36 GMT  
		Size: 832.3 KB (832289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f869e89cd91c693815975e321126606c8d4d5b6e1d0aa6c3e05749d6de5bf921`  
		Last Modified: Tue, 25 Aug 2026 01:46:37 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:655fc13247721f4bd0f5438d23ec69c5ba0285f0ad8244626a68841a9ec39c59`  
		Last Modified: Tue, 25 Aug 2026 01:46:38 GMT  
		Size: 22.0 MB (22036891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:10-fpm-bookworm` - unknown; unknown

```console
$ docker pull drupal@sha256:c90c7d742ea0e9407825fbc00b6978030cb6f5a610cd41b41a162f4353fffea1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6686374 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab7e734a106eae467e37fdd1ee7de336c55ebbc7446a87ec938b8329d840527b`

```dockerfile
```

-	Layers:
	-	`sha256:e778f0e105b0ea71ac9024b039bd8e6597300cb46b4be01511e16450f0f043b2`  
		Last Modified: Tue, 25 Aug 2026 01:46:36 GMT  
		Size: 6.7 MB (6650924 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:929d934731214de713306d3a3a671edf7fd98fcd149600bbaab20b3d7e9c0621`  
		Last Modified: Tue, 25 Aug 2026 01:46:36 GMT  
		Size: 35.5 KB (35450 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:10-fpm-bookworm` - linux; 386

```console
$ docker pull drupal@sha256:c5cad4480953843ad5ab0354841ccf3a5cd96b5c211a3cae0fa8641a8b975353
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **204.4 MB (204392920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a503c262cd70080fc0e9406f8b5a0b4f9d821dec0530a003f4c86fd382951aa`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1785715200'
# Wed, 05 Aug 2026 00:18:51 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Wed, 05 Aug 2026 00:19:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Wed, 05 Aug 2026 00:19:06 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 00:19:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 05 Aug 2026 00:19:06 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 05 Aug 2026 00:19:06 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 05 Aug 2026 00:19:06 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 05 Aug 2026 00:19:06 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 05 Aug 2026 00:19:06 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 05 Aug 2026 00:19:06 GMT
ENV PHP_VERSION=8.4.24
# Wed, 05 Aug 2026 00:19:06 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Wed, 05 Aug 2026 00:19:06 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Wed, 05 Aug 2026 00:26:11 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 05 Aug 2026 00:26:11 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:28:38 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 05 Aug 2026 00:28:38 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:28:38 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 05 Aug 2026 00:28:38 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 05 Aug 2026 00:28:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 05 Aug 2026 00:28:38 GMT
WORKDIR /var/www/html
# Wed, 05 Aug 2026 00:28:38 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Wed, 05 Aug 2026 00:28:38 GMT
STOPSIGNAL SIGQUIT
# Wed, 05 Aug 2026 00:28:38 GMT
EXPOSE map[9000/tcp:{}]
# Wed, 05 Aug 2026 00:28:38 GMT
CMD ["php-fpm"]
# Mon, 10 Aug 2026 23:25:19 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 10 Aug 2026 23:25:19 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Mon, 10 Aug 2026 23:25:19 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Mon, 10 Aug 2026 23:25:19 GMT
ENV DRUPAL_VERSION=10.6.15
# Mon, 10 Aug 2026 23:25:19 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 10 Aug 2026 23:25:19 GMT
WORKDIR /opt/drupal
# Mon, 10 Aug 2026 23:25:28 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Mon, 10 Aug 2026 23:25:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:7021908aee9737ca8e0c53bb69f8888ce8a7414c42952bd06a068463709d229f`  
		Last Modified: Tue, 04 Aug 2026 23:51:52 GMT  
		Size: 29.2 MB (29220978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a0c6f1742cc506c97bd05a98cbc237d7d87ab690b1dcde55fd1c5cf34add1d9`  
		Last Modified: Wed, 05 Aug 2026 00:22:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf7007b9a4b4e130aa43dc6d06b40088d84aec10cd6fea1523ca445d7011b2dc`  
		Last Modified: Wed, 05 Aug 2026 00:22:09 GMT  
		Size: 101.5 MB (101538543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f75d84e5c7c91dbb9259302481b27799e2f19119f927175616e73801520dc42b`  
		Last Modified: Wed, 05 Aug 2026 00:22:06 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9112a501aef4b3fca57a63982fd1d5d8bdc84c2b3d60d05e3942328decc4b444`  
		Last Modified: Wed, 05 Aug 2026 00:28:49 GMT  
		Size: 13.9 MB (13861784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16f5ca5f926138bdb9956ffb98963002ea2858e62adc3ae6296fec704e4a5b74`  
		Last Modified: Wed, 05 Aug 2026 00:28:49 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92944c53d610038b100bf6c32551b0ccb2176cf6387209573289e0c05b2aa644`  
		Last Modified: Wed, 05 Aug 2026 00:28:50 GMT  
		Size: 30.4 MB (30352109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c07b4f38ec1d7a8826b745c19e22614e9396bc7d60d7a6d84e222454683d1e66`  
		Last Modified: Wed, 05 Aug 2026 00:28:49 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb29451bba4f4ca94ae73e3f42460f926ed96cf4ec1139b0c7841d6a59dcca36`  
		Last Modified: Wed, 05 Aug 2026 00:28:50 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af19c1f663fcb1b3df77a0dd626fe44285a3a7bdb4efdcc7c398773e937c26c`  
		Last Modified: Wed, 05 Aug 2026 00:28:50 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e026f42e0d35cbc6098d807a402ac2320d6a54222b24d4e7caea826f443e7d5`  
		Last Modified: Wed, 05 Aug 2026 00:28:51 GMT  
		Size: 9.3 KB (9268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78d235922d03f59c5037068cb67a6c96c676e39421e305dddb75adcb5514f74b`  
		Last Modified: Mon, 10 Aug 2026 23:25:44 GMT  
		Size: 6.5 MB (6536660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d04877fc548d86cda027fde375dfb02a05af934eb49b340651feccd45b0a35`  
		Last Modified: Mon, 10 Aug 2026 23:25:43 GMT  
		Size: 316.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4402297bde877184e50ea2462c0f2660ff28dec8037a24d5d84e7546f0231ea`  
		Last Modified: Mon, 10 Aug 2026 23:25:43 GMT  
		Size: 832.3 KB (832291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c45f6508c3453fdf0f91715d3bd5535467fb0ca9be9afd749dbb5dc58c82547`  
		Last Modified: Mon, 10 Aug 2026 23:25:39 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15a0e8ed2a1894be968e12e0e9d083fc3251e14c9dfbbb7afec084aee4b33d55`  
		Last Modified: Mon, 10 Aug 2026 23:25:45 GMT  
		Size: 22.0 MB (22036945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:10-fpm-bookworm` - unknown; unknown

```console
$ docker pull drupal@sha256:a7b298fd8209e2f526f09c70ef9d4e21fc6775791d7ee0c648a0d214fd08e37e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6625486 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8c8ebefe47a40e761a30cf29120c02a3dfea841a63df8a47f1bb2666bde7af1`

```dockerfile
```

-	Layers:
	-	`sha256:eddecd44d0b108b74144cd216b0be2c58b48ebd03e560c6cd1ce15084a1ab8db`  
		Last Modified: Mon, 10 Aug 2026 23:25:43 GMT  
		Size: 6.6 MB (6590267 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:201524899362e913a6aba7e94006fec0065817e95e4cd1e9d676da3d8971ebca`  
		Last Modified: Mon, 10 Aug 2026 23:25:43 GMT  
		Size: 35.2 KB (35219 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:10-fpm-bookworm` - linux; ppc64le

```console
$ docker pull drupal@sha256:ea18831cfb7f740601546cf7fdc2b7c67899fdf3ebdb69e6f86805d363371e32
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.2 MB (211201723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7bbd7ef6977a50a7ed35035b0293abeff97ca95ee0568f35792e3ae79de3c8c`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1785715200'
# Tue, 04 Aug 2026 23:56:02 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Tue, 04 Aug 2026 23:56:30 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Tue, 04 Aug 2026 23:56:30 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Tue, 04 Aug 2026 23:56:30 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 04 Aug 2026 23:56:30 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 04 Aug 2026 23:56:30 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 04 Aug 2026 23:56:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 04 Aug 2026 23:56:30 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 04 Aug 2026 23:56:30 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Tue, 04 Aug 2026 23:56:30 GMT
ENV PHP_VERSION=8.4.24
# Tue, 04 Aug 2026 23:56:30 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Tue, 04 Aug 2026 23:56:30 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Wed, 05 Aug 2026 00:19:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Wed, 05 Aug 2026 00:19:32 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:29:22 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 05 Aug 2026 00:29:22 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 00:29:22 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 05 Aug 2026 00:29:22 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 05 Aug 2026 00:29:22 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 05 Aug 2026 00:29:23 GMT
WORKDIR /var/www/html
# Wed, 05 Aug 2026 00:29:23 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Wed, 05 Aug 2026 00:29:23 GMT
STOPSIGNAL SIGQUIT
# Wed, 05 Aug 2026 00:29:23 GMT
EXPOSE map[9000/tcp:{}]
# Wed, 05 Aug 2026 00:29:23 GMT
CMD ["php-fpm"]
# Wed, 05 Aug 2026 05:29:17 GMT
RUN set -eux; 		if command -v a2enmod; then 		a2enmod expires rewrite; 	fi; 		savedAptMark="$(apt-mark showmanual)"; 		apt-get update; 	apt-get install -y --no-install-recommends 		libavif-dev 		libfreetype6-dev 		libjpeg-dev 		libpng-dev 		libpq-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark; 	ldd "$(php -r 'echo ini_get("extension_dir");')"/*.so 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -r dpkg-query -S 		| cut -d: -f1 		| sort -u 		| xargs -rt apt-mark manual; 		apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/* # buildkit
# Wed, 05 Aug 2026 05:29:18 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Wed, 05 Aug 2026 05:29:19 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Wed, 05 Aug 2026 05:29:19 GMT
ENV DRUPAL_VERSION=10.6.15
# Wed, 05 Aug 2026 05:29:19 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Wed, 05 Aug 2026 05:29:19 GMT
WORKDIR /opt/drupal
# Mon, 10 Aug 2026 23:29:29 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Mon, 10 Aug 2026 23:29:29 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:b6fe9465bb56c5ee0b339163090868949baf79f3712bdaf93416fb87b05b7d0a`  
		Last Modified: Tue, 04 Aug 2026 23:50:26 GMT  
		Size: 32.1 MB (32076323 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a2ba49ef82e670eb17e61a67de2228eeef269cf92bedcb054eee13730cbe03c`  
		Last Modified: Wed, 05 Aug 2026 00:01:49 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fabff38d34898b926a2d50a3179fa8db4f7c218fa83245a94fdd0949e43feca5`  
		Last Modified: Wed, 05 Aug 2026 00:01:53 GMT  
		Size: 103.3 MB (103334981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c9798a3fd32436467df3742d29513eaa3a7e1e2fa0aea0087c588c4d385d2d1`  
		Last Modified: Wed, 05 Aug 2026 00:01:49 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc01e50f784bde2f13d0d047a17369e49eae3133c6c9b5fe368079a6928de21d`  
		Last Modified: Wed, 05 Aug 2026 00:24:42 GMT  
		Size: 13.9 MB (13862046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d7f825813d664e2b65828169dc8fca668e26e891127e264594655dbef03ded7`  
		Last Modified: Wed, 05 Aug 2026 00:24:41 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38505c08ac7d0b0d8a57c0e7498db782f71e1b39ecf44bd260ea8c069190bb39`  
		Last Modified: Wed, 05 Aug 2026 00:29:49 GMT  
		Size: 30.8 MB (30839902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7805829cbaaeeda354990a885577d5e784e890d0bb3b8356de9e6363863bd09`  
		Last Modified: Wed, 05 Aug 2026 00:29:48 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfd888b0febd35deb183de078295b5a6ba06c3112941ab20bec2c442515e1679`  
		Last Modified: Wed, 05 Aug 2026 00:29:48 GMT  
		Size: 250.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:203367987163403df1eb650c1304212386e3be7cd9dcd1f9555e58a66341c2f5`  
		Last Modified: Wed, 05 Aug 2026 00:29:48 GMT  
		Size: 245.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1bd137282effa9b95ee61e2866d188c7593c696d4466a5bcb9366eb87781ec2`  
		Last Modified: Wed, 05 Aug 2026 00:29:49 GMT  
		Size: 9.3 KB (9266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0e51652045bf26a7cf6c618081b407691abbc4072e2e70ef976e298ef33c38d`  
		Last Modified: Wed, 05 Aug 2026 05:30:07 GMT  
		Size: 8.2 MB (8206586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fd40d794d099cd9839b0588530999af32dd197482452690f4294d2318a921d2`  
		Last Modified: Wed, 05 Aug 2026 05:30:07 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa32af2ac5d3341a08ed9c9f823969ead404942af9c741ebfcf88a940b3e9243`  
		Last Modified: Wed, 05 Aug 2026 05:30:07 GMT  
		Size: 832.3 KB (832285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92cb0e2a3359f169669b771e2d91f32997a0cc115e549581d207cb580bf9a1a1`  
		Last Modified: Wed, 05 Aug 2026 05:30:07 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:567c4a123ad28f68358eb7c507f148090456352b0d21cb1137671f5dbc1cf2c0`  
		Last Modified: Mon, 10 Aug 2026 23:30:14 GMT  
		Size: 22.0 MB (22035993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:10-fpm-bookworm` - unknown; unknown

```console
$ docker pull drupal@sha256:0c4fd1254635c0d6d23dd1bdf908cbd5326dafc10e63553739a93e6e8c54cf7f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6629694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bd588db48e73b3b331228a466e9f4e3717180fd30b4f836aae566e8b3429dbe2`

```dockerfile
```

-	Layers:
	-	`sha256:086280893be67a453cb3693dfd50f563da4256b9dddec5d006f2a47fa941572d`  
		Last Modified: Mon, 10 Aug 2026 23:30:13 GMT  
		Size: 6.6 MB (6594352 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e1d20cd94dbab0ba9c674282a92df9ab0baaa0fec3bebf7734070dec584f3714`  
		Last Modified: Mon, 10 Aug 2026 23:30:13 GMT  
		Size: 35.3 KB (35342 bytes)  
		MIME: application/vnd.in-toto+json
