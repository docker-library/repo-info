## `php:fpm-bookworm`

```console
$ docker pull php@sha256:d68c995fab89d4f14df813e72f65f3b9abae6e6f88e91beb39e37dd6414e24fa
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
	-	linux; mips64le
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `php:fpm-bookworm` - linux; amd64

```console
$ docker pull php@sha256:190fe301500c1011e373eb12debea1dccaf8ecfebe15724a910b183ed726fb60
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.3 MB (178324712 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6430369d29eb6b622d6952a09d19947733b9642cb50e6fc3fb45825ed5dc0fd`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1782172800'
# Mon, 06 Jul 2026 16:47:58 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Mon, 06 Jul 2026 16:48:12 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 06 Jul 2026 16:48:12 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 16:48:12 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 06 Jul 2026 16:48:12 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 06 Jul 2026 16:48:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:48:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:48:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 06 Jul 2026 16:48:12 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 06 Jul 2026 16:48:12 GMT
ENV PHP_VERSION=8.5.8
# Mon, 06 Jul 2026 16:48:12 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Mon, 06 Jul 2026 16:48:12 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:48:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 06 Jul 2026 16:48:18 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:50:55 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 16:50:55 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:50:55 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 16:50:55 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 16:50:55 GMT
WORKDIR /var/www/html
# Mon, 06 Jul 2026 16:50:55 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Mon, 06 Jul 2026 16:50:55 GMT
STOPSIGNAL SIGQUIT
# Mon, 06 Jul 2026 16:50:55 GMT
EXPOSE map[9000/tcp:{}]
# Mon, 06 Jul 2026 16:50:55 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:68629629b516c3cd6f5e71ffbe18e32afb1ae5b4926c92d058c0f11ef1fd58a3`  
		Last Modified: Wed, 24 Jun 2026 00:27:52 GMT  
		Size: 28.2 MB (28237639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62f4cc019cb672382c752f9a754ef8c75aa00c3598cadba3c171673f7d9f39df`  
		Last Modified: Mon, 06 Jul 2026 16:51:16 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3995fb3164442069ece227a4521d759f9fa9b6623470ce20ef4ccc8b7f4eab1c`  
		Last Modified: Mon, 06 Jul 2026 16:51:19 GMT  
		Size: 104.3 MB (104345862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a05a2230f43dfadb59af3cd9b554731095ea2a3a20c175d8518ed2bbefc7f0c`  
		Last Modified: Mon, 06 Jul 2026 16:51:16 GMT  
		Size: 224.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:310417641d9ef97ca41dd6989b00cd053feed2e3e0b299212ee42ca73d693591`  
		Last Modified: Mon, 06 Jul 2026 16:51:17 GMT  
		Size: 14.5 MB (14520619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18c18e344c4cb79bba948fd6616a7f01245ad652d07e6e7abfab6d0ba66c0251`  
		Last Modified: Mon, 06 Jul 2026 16:51:17 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca46b06266e0d3ca6f4361ddad545955e5f31aeade70f49faf7ff12e374477c`  
		Last Modified: Mon, 06 Jul 2026 16:51:18 GMT  
		Size: 31.2 MB (31207646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a1d68040f184805020bf7d8e9e5df7d17e5b7561aed7e7f3341d05c8c6ecf50`  
		Last Modified: Mon, 06 Jul 2026 16:51:18 GMT  
		Size: 2.5 KB (2456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d94919a237e19268aba32b7a866a27d358c96496f030df5c9d9360dce51798df`  
		Last Modified: Mon, 06 Jul 2026 16:51:19 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82f76b994c2b6e201b67ae73252efcb2d3bec5d1fb19fea8a09b1317ce0a5fd3`  
		Last Modified: Mon, 06 Jul 2026 16:51:20 GMT  
		Size: 9.3 KB (9267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:fpm-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:debf1fc1f1c2f06455fd83eaf59739459a6bf0a60ca58bfc30ba0034b46e24ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6454220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0aaee21cbec785bffc97f4c6e8616d7b8ca2b6e0e90060081161e4917df4bfaa`

```dockerfile
```

-	Layers:
	-	`sha256:bcdcceeccdc575d457df87973d2f9fb214701b58128276177ee56c0a6529eaf8`  
		Last Modified: Mon, 06 Jul 2026 16:51:16 GMT  
		Size: 6.4 MB (6403808 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e120f299c59fd2fb7ba3d889e526f4b0d10f405929eb999da7534302d138e50`  
		Last Modified: Mon, 06 Jul 2026 16:51:16 GMT  
		Size: 50.4 KB (50412 bytes)  
		MIME: application/vnd.in-toto+json

### `php:fpm-bookworm` - linux; arm variant v5

```console
$ docker pull php@sha256:230e773d667d4378bdaa7b8b115df7cc0c644013a006ba9f4e2b34cdac33d21d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.1 MB (151147770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:126856f109badb045b7aef077083ca1f6fa0bbf292d4171d79fbfd993257ab00`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armel' out/ 'bookworm' '@1782172800'
# Mon, 06 Jul 2026 16:52:06 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Mon, 06 Jul 2026 16:52:22 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 06 Jul 2026 16:52:22 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 16:52:22 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 06 Jul 2026 16:52:22 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 06 Jul 2026 16:52:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:52:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:52:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 06 Jul 2026 16:52:22 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 06 Jul 2026 16:52:22 GMT
ENV PHP_VERSION=8.5.8
# Mon, 06 Jul 2026 16:52:22 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Mon, 06 Jul 2026 16:52:22 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:52:35 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 06 Jul 2026 16:52:35 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:55:18 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 16:55:18 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:55:18 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 16:55:18 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 16:55:18 GMT
WORKDIR /var/www/html
# Mon, 06 Jul 2026 16:55:18 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Mon, 06 Jul 2026 16:55:18 GMT
STOPSIGNAL SIGQUIT
# Mon, 06 Jul 2026 16:55:18 GMT
EXPOSE map[9000/tcp:{}]
# Mon, 06 Jul 2026 16:55:18 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:56a07f407b343196efb8a614d5b61dad4cbe8fd8c8e97a11342cd7a61eadc02c`  
		Last Modified: Wed, 24 Jun 2026 00:27:42 GMT  
		Size: 25.8 MB (25773229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:baab77d239dbac81a602cbb44344b5a6cb96830822ccb798aec0950fab6b8afd`  
		Last Modified: Mon, 06 Jul 2026 16:55:35 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b06779e8a3c5b70aa867b65288d4337597cc2b6a9ad8a1a4764403ffe209bd7`  
		Last Modified: Mon, 06 Jul 2026 16:55:38 GMT  
		Size: 82.0 MB (81984745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fce5f2e18c135ba6d097ee19d936e1dd0487904fdbd6cad7b1b91d6cd3ddff1`  
		Last Modified: Mon, 06 Jul 2026 16:55:35 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e85ef20933e8872d9748f2c3e90477140014ba1e3d38af73527dda6e0bcac04`  
		Last Modified: Mon, 06 Jul 2026 16:55:36 GMT  
		Size: 14.5 MB (14518756 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d20c0516422808e7ba0ba04223a773dd16b3bc33cc4ccd224032e181f3308c9`  
		Last Modified: Mon, 06 Jul 2026 16:55:37 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70a813a173fabf76af78846d60c36723816b847ca21727faf3a5a895ac9299c4`  
		Last Modified: Mon, 06 Jul 2026 16:55:37 GMT  
		Size: 28.9 MB (28858098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3902a4c16d3c3501ee889b8c70a8f03abaee1f5d27317c643c7770c21eeedb67`  
		Last Modified: Mon, 06 Jul 2026 16:55:38 GMT  
		Size: 2.5 KB (2455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a3a126734b6f2c396bfbac28364b60a622c86f99313f5158606d841d8811fe4`  
		Last Modified: Mon, 06 Jul 2026 16:55:38 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:571ccf2c374dc93ada8f9711a24f70e78d0cb4b34036c083d55abb5b810c28a3`  
		Last Modified: Mon, 06 Jul 2026 16:55:39 GMT  
		Size: 9.3 KB (9264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:fpm-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:9f79df9e0d3729245b945f6f32eb5bc0e5d0b360b6906d57568db269be72d05e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6263695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6b9ae570bd5e3d604a7637c93807ddb5ea743be123c431cdd7a94dc1a3b8b3b4`

```dockerfile
```

-	Layers:
	-	`sha256:973fe6cc5444e3b11b42b26a31e761c130ff76613f541c5817229b6352f738b5`  
		Last Modified: Mon, 06 Jul 2026 16:55:36 GMT  
		Size: 6.2 MB (6213134 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e286d7744a20a49ab2a9b4ddf55a5f7f074f18fcdd3eb2f6261270023ed4de43`  
		Last Modified: Mon, 06 Jul 2026 16:55:35 GMT  
		Size: 50.6 KB (50561 bytes)  
		MIME: application/vnd.in-toto+json

### `php:fpm-bookworm` - linux; arm variant v7

```console
$ docker pull php@sha256:431b79a9f04c8e9586e44840946f5782b1adaeaa8be71d2258b18ae85f7350bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **142.5 MB (142493858 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb7a632f1ecdf6f40cc59011502b696d009eacea5d8da08c9b1e7f48c46cf155`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1782172800'
# Mon, 06 Jul 2026 16:52:15 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Mon, 06 Jul 2026 16:52:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 06 Jul 2026 16:52:44 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 16:52:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 06 Jul 2026 16:52:44 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 06 Jul 2026 16:52:44 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:52:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:52:44 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 06 Jul 2026 16:52:44 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 06 Jul 2026 16:52:44 GMT
ENV PHP_VERSION=8.5.8
# Mon, 06 Jul 2026 16:52:44 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Mon, 06 Jul 2026 16:52:44 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:52:53 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 06 Jul 2026 16:52:53 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:55:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 16:55:33 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:55:33 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 16:55:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 16:55:33 GMT
WORKDIR /var/www/html
# Mon, 06 Jul 2026 16:55:33 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Mon, 06 Jul 2026 16:55:33 GMT
STOPSIGNAL SIGQUIT
# Mon, 06 Jul 2026 16:55:33 GMT
EXPOSE map[9000/tcp:{}]
# Mon, 06 Jul 2026 16:55:33 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:0ead8fe4feab98996b3feb5f196406b6d02e126a6955d96078d2f12294dacb62`  
		Last Modified: Wed, 24 Jun 2026 00:27:49 GMT  
		Size: 23.9 MB (23944532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d852c9291e551a51a8517565742f8e2caa0968469c6f108a09f8299ff5c7db8`  
		Last Modified: Mon, 06 Jul 2026 16:55:49 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b460b84da1cb36a4a215472e46fb1e5441df3a5d128ee4be89e38250835b408`  
		Last Modified: Mon, 06 Jul 2026 16:55:52 GMT  
		Size: 76.2 MB (76154372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae77c97c83eb371e887ec2eeaa5271f3c4c9cebc3937a1eb455818a855f183f4`  
		Last Modified: Mon, 06 Jul 2026 16:55:48 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:926b441530eea785f64260b5b06d64ed9765d057099d93cd0e3684c2fe5bddb4`  
		Last Modified: Mon, 06 Jul 2026 16:55:49 GMT  
		Size: 14.5 MB (14518745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79dff228b162be965a64c9c6b2f088646f857d8f4f7f3524fdf910d01da12a16`  
		Last Modified: Mon, 06 Jul 2026 16:55:50 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc11c44f9199e727ced6901d4053c0f6ebff12f259e29fae754457fa81b0a4d0`  
		Last Modified: Mon, 06 Jul 2026 16:55:51 GMT  
		Size: 27.9 MB (27863263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22b6eff59f52253243ad1da6f96a55ec3f3b961e55572e3fae13463f04063f4b`  
		Last Modified: Mon, 06 Jul 2026 16:55:51 GMT  
		Size: 2.5 KB (2455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfd0c39ade53961a6c167a0a951122c15b550a02451511348d33655c9f0be9f1`  
		Last Modified: Mon, 06 Jul 2026 16:55:51 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dcea35d4a3040e83da53898d0e1cd373b51dd4e23bac91d12ccba37a5d536eb`  
		Last Modified: Mon, 06 Jul 2026 16:55:52 GMT  
		Size: 9.3 KB (9268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:fpm-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:06444b0a6dad542ea9cece885c2fb1eae0e6cb07933f8f96eabbfdc45e593d70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6267639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de77a02a1f2be3cb608d990911843ccd1974d52255242e23d35cf776eadb8875`

```dockerfile
```

-	Layers:
	-	`sha256:7a029837c4f2506280d4700e6b1e6d08ef2a3251a22efaa23c0b767294db0803`  
		Last Modified: Mon, 06 Jul 2026 16:55:49 GMT  
		Size: 6.2 MB (6217078 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a9ca2a0a7834aeed870fda08611813ae225570d42f9ecbff56bef9eb27075ed`  
		Last Modified: Mon, 06 Jul 2026 16:55:49 GMT  
		Size: 50.6 KB (50561 bytes)  
		MIME: application/vnd.in-toto+json

### `php:fpm-bookworm` - linux; arm64 variant v8

```console
$ docker pull php@sha256:c5b3f42da9d1cb21f3ac6717fd9041b370c7aa5e416439b369bb7618b9eec648
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **171.6 MB (171563297 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b934862a267b8da1dcbead7c2bf12648202a9cb6e657a0f5f6609f4f4c995f2`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1782172800'
# Mon, 06 Jul 2026 16:47:48 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Mon, 06 Jul 2026 16:48:01 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 06 Jul 2026 16:48:01 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 16:48:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 06 Jul 2026 16:48:01 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 06 Jul 2026 16:48:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:48:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:48:01 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 06 Jul 2026 16:48:01 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 06 Jul 2026 16:48:01 GMT
ENV PHP_VERSION=8.5.8
# Mon, 06 Jul 2026 16:48:01 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Mon, 06 Jul 2026 16:48:01 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:48:08 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 06 Jul 2026 16:48:08 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:51:07 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 16:51:07 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:51:07 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 16:51:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 16:51:07 GMT
WORKDIR /var/www/html
# Mon, 06 Jul 2026 16:51:07 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Mon, 06 Jul 2026 16:51:07 GMT
STOPSIGNAL SIGQUIT
# Mon, 06 Jul 2026 16:51:07 GMT
EXPOSE map[9000/tcp:{}]
# Mon, 06 Jul 2026 16:51:07 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:74f1dcfcc9c80045f6f6394ffcfc261cb19d0c71b97e964aec3d4abf4e0f7009`  
		Last Modified: Wed, 24 Jun 2026 00:27:48 GMT  
		Size: 28.1 MB (28122418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9338eef2966f9deabd1a6cc8d70c22f45cdd267dafc9b58ea766078ddee6f08d`  
		Last Modified: Mon, 06 Jul 2026 16:51:26 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96c426236db5210aca97db24fcc0e9e1a652b611e21259232c5ef0c09732d3fb`  
		Last Modified: Mon, 06 Jul 2026 16:51:29 GMT  
		Size: 98.2 MB (98178274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89612a6e84866577572b6b6b23849d03f093d6d20409f2b65d2dac9e69cc6c21`  
		Last Modified: Mon, 06 Jul 2026 16:51:26 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46b95d173c575c1f081fb0372d1314c3b7b931a5084df951ce36e9444407badb`  
		Last Modified: Mon, 06 Jul 2026 16:51:27 GMT  
		Size: 14.5 MB (14520440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f62606dd03cc29760f3f3654e485f33c6d425523b8f98405e7175d1aa34722e`  
		Last Modified: Mon, 06 Jul 2026 16:51:27 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:daa40aa058628d692fa5280bb3e213657de0623414c585e960b4ec2d8e4edcf3`  
		Last Modified: Mon, 06 Jul 2026 16:51:29 GMT  
		Size: 30.7 MB (30729225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029991a64111dcc28b7e2a135482ff66fb0376c9718a1255451c70b4f9271ee2`  
		Last Modified: Mon, 06 Jul 2026 16:51:29 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e45de42c1971a7323da1a99ff59a27e055096e387ea2b0f423362f5afc3dc2`  
		Last Modified: Mon, 06 Jul 2026 16:51:29 GMT  
		Size: 248.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98f1c49638e23a1144b35aa78452769f9f7f4a9ae9475c8845ae0cac5e1f177b`  
		Last Modified: Mon, 06 Jul 2026 16:51:30 GMT  
		Size: 9.3 KB (9263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:fpm-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:a29e1fd2cba399466084547e6d12307eedc78c64d0db3ed9a95013bb26a549f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6482796 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1165ae72b232686c11eb206dce715ec31bbea31d28997f419a36414784e3dc7`

```dockerfile
```

-	Layers:
	-	`sha256:9d37a73317f1ebbabe2ab893fa11b78f94921ed0c8352dafb0ea43c0d8c304af`  
		Last Modified: Mon, 06 Jul 2026 16:51:26 GMT  
		Size: 6.4 MB (6432199 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:915791a2a9e4975517a712135f8af8ad0fc5b5b65c1ac92798b0e13705092126`  
		Last Modified: Mon, 06 Jul 2026 16:51:26 GMT  
		Size: 50.6 KB (50597 bytes)  
		MIME: application/vnd.in-toto+json

### `php:fpm-bookworm` - linux; 386

```console
$ docker pull php@sha256:2af75b4575ca2bb7c3825755521240d62e38ec4ba6867a595e0c1e0671711e7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.1 MB (177112424 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:324dd529573171fcf18481be3fdc83c8e33ca3eb927137cd60a4137abfc2b4dc`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1782172800'
# Mon, 06 Jul 2026 16:48:07 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Mon, 06 Jul 2026 16:48:24 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Mon, 06 Jul 2026 16:48:24 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Mon, 06 Jul 2026 16:48:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 06 Jul 2026 16:48:24 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 06 Jul 2026 16:48:24 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:48:24 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:48:24 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 06 Jul 2026 16:48:24 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 06 Jul 2026 16:48:24 GMT
ENV PHP_VERSION=8.5.8
# Mon, 06 Jul 2026 16:48:24 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Mon, 06 Jul 2026 16:48:24 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:48:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 06 Jul 2026 16:48:32 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:51:33 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 16:51:33 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:51:33 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 16:51:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 16:51:33 GMT
WORKDIR /var/www/html
# Mon, 06 Jul 2026 16:51:33 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Mon, 06 Jul 2026 16:51:33 GMT
STOPSIGNAL SIGQUIT
# Mon, 06 Jul 2026 16:51:33 GMT
EXPOSE map[9000/tcp:{}]
# Mon, 06 Jul 2026 16:51:33 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:df519b11ac99d8e2d452cbd55f824e658d0b86f649745abaaf8cbe33e2736a30`  
		Last Modified: Wed, 24 Jun 2026 00:28:03 GMT  
		Size: 29.2 MB (29225809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c86340f780b3d99f3ce2a256855efef2508095da99bd33082b85e4a3b70089b7`  
		Last Modified: Mon, 06 Jul 2026 16:51:54 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f341a5346382817fa18102bb24d63df03d7e47491573a4358c584ebafabe10a9`  
		Last Modified: Mon, 06 Jul 2026 16:51:58 GMT  
		Size: 101.5 MB (101536795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a692d7f1ae61b335366439aa5cb29485d205cee9fd26769655727024b27d60c`  
		Last Modified: Mon, 06 Jul 2026 16:51:54 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03101751c619f3a1224a0a88f68a6d35ec392cb1b657a83ade16476361079caa`  
		Last Modified: Mon, 06 Jul 2026 16:51:55 GMT  
		Size: 14.5 MB (14519774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7827e7ae307a8bd2c25612be97cbbf54af1e754c38f18360facd578760aac21e`  
		Last Modified: Mon, 06 Jul 2026 16:51:55 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:750cc25ed97fc091bde7a673f7f58c70c670acfef389ba46adda7133233f2fea`  
		Last Modified: Mon, 06 Jul 2026 16:51:57 GMT  
		Size: 31.8 MB (31817105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:039c1e29358a90165241fd547e6089081e9d71cc3c25f0c403f21cde38343dd4`  
		Last Modified: Mon, 06 Jul 2026 16:51:56 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70714ee387f1cb060a94b43bc351cb81361d7bc100dd75f7a2923acc1ac110c6`  
		Last Modified: Mon, 06 Jul 2026 16:51:57 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9355eb0d5244c00cd50a6130b8c4a448c56fbe23de7c7d092174c74a4cfdc8f9`  
		Last Modified: Mon, 06 Jul 2026 16:51:58 GMT  
		Size: 9.3 KB (9263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:fpm-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:03f4b4bb2d03411a61ad5d355a4ec4976514580f4b5857691382f2b80795e87f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6433966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:29de982364cc2c50786904d1f518788a83e3f77ebf52f5f255a8572fcb36856f`

```dockerfile
```

-	Layers:
	-	`sha256:2ea9b5c65d3517515a515b2202d78457d28fdedee0a22cf7623032f06b7b6138`  
		Last Modified: Mon, 06 Jul 2026 16:51:54 GMT  
		Size: 6.4 MB (6383600 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46ac4a871b65f4c401710221a15ab01cd10c61a5eaacbc6762ce4eff931b9193`  
		Last Modified: Mon, 06 Jul 2026 16:51:54 GMT  
		Size: 50.4 KB (50366 bytes)  
		MIME: application/vnd.in-toto+json

### `php:fpm-bookworm` - linux; mips64le

```console
$ docker pull php@sha256:5322af708c1f2c2ff6847567a282b46f5e8a8997257154d1f59ad99f41e95eb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.3 MB (153300105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd43502f87a7acd08ba1946da132bb2ee81f70c96181c2b8acb6d99bb470bdad`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'mips64el' out/ 'bookworm' '@1782172800'
# Thu, 25 Jun 2026 02:52:23 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 25 Jun 2026 02:53:51 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 25 Jun 2026 02:53:51 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 25 Jun 2026 02:53:51 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 25 Jun 2026 02:53:52 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 25 Jun 2026 02:53:52 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 25 Jun 2026 02:53:52 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 25 Jun 2026 02:53:52 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 25 Jun 2026 02:53:52 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 25 Jun 2026 02:53:52 GMT
ENV PHP_VERSION=8.5.8
# Thu, 25 Jun 2026 02:53:52 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Thu, 25 Jun 2026 02:53:52 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:47:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 06 Jul 2026 16:47:14 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 17:46:34 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 17:46:35 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 17:46:37 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 17:46:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 17:46:38 GMT
WORKDIR /var/www/html
# Mon, 06 Jul 2026 17:46:40 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Mon, 06 Jul 2026 17:46:40 GMT
STOPSIGNAL SIGQUIT
# Mon, 06 Jul 2026 17:46:40 GMT
EXPOSE map[9000/tcp:{}]
# Mon, 06 Jul 2026 17:46:40 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:e3e59e5d9fba86ba9cccde17de0c09e1a6250f5fd1ae881c8b925031848b7a5d`  
		Last Modified: Wed, 24 Jun 2026 00:27:28 GMT  
		Size: 28.5 MB (28528885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab361fdad40d83a684ce83a8ff865a1ef1cc52f529b5298949e48593b7f28dbc`  
		Last Modified: Thu, 25 Jun 2026 03:14:43 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e671a811aaf7f1c0bc65902417f28f0032beeb19b87e2d7b710b6d158e78c9b`  
		Last Modified: Thu, 25 Jun 2026 03:14:56 GMT  
		Size: 80.7 MB (80674015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92630be04edfceeccaa362a9d795c248827e4bd110589d880c498f67d03d5bff`  
		Last Modified: Thu, 25 Jun 2026 03:14:42 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e18a8ddc32778b59b5e9f851edcb777f5b5221fe7bcdfb102ca73e8a4f0e7f7`  
		Last Modified: Mon, 06 Jul 2026 17:06:33 GMT  
		Size: 14.5 MB (14518423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bfc95b59a456f3735352d707205f84ec1d5be71270631a5b09d49b479c014a1`  
		Last Modified: Mon, 06 Jul 2026 17:06:30 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0da4b1e1dec7cec4c1563ca8541f1580246623fc551d415c1cb5c9fb1adff76`  
		Last Modified: Mon, 06 Jul 2026 17:47:35 GMT  
		Size: 29.6 MB (29565838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf4cffc26de7d244baa4d4947d48aadb28e4d5886da869f6c9a7703480755ddd`  
		Last Modified: Mon, 06 Jul 2026 17:47:32 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba71a65d38892230b460efdeda9dcde3590710d237c14341ae3e5b66f47b4312`  
		Last Modified: Mon, 06 Jul 2026 17:47:32 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eb26d41fc9e7df5964dd43296678398222aa7dd8ae9b4752ca1a51a29b2f21b`  
		Last Modified: Mon, 06 Jul 2026 17:47:32 GMT  
		Size: 9.3 KB (9271 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:fpm-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:84bb6727861b818039a137e349e551964db5b952bdf6c7539804774ec155cd78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.3 KB (50271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae8496cc64ed3b06a1f07433f786b4c52ba413be7a4a1a481c0ce223b531038a`

```dockerfile
```

-	Layers:
	-	`sha256:ec3241163612ff071162388c2e37fea0c58ac44b493eea056b18edfbdd631b8f`  
		Last Modified: Mon, 06 Jul 2026 17:47:31 GMT  
		Size: 50.3 KB (50271 bytes)  
		MIME: application/vnd.in-toto+json

### `php:fpm-bookworm` - linux; ppc64le

```console
$ docker pull php@sha256:53afbc8948230c3339dd54086bb66bb1d399aa24ff2d8eda242997c271ac7cde
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.8 MB (181811554 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:905ab557407c67160da2863448b7bdb5bac37ff940c3a688984ed549aa2eed2c`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 20:44:21 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 02 Jul 2026 20:45:03 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 02 Jul 2026 20:45:03 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 20:45:03 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:45:03 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:45:03 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:45:03 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:45:03 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:45:03 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 02 Jul 2026 20:45:03 GMT
ENV PHP_VERSION=8.5.8
# Thu, 02 Jul 2026 20:45:03 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Thu, 02 Jul 2026 20:45:03 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:57:28 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 06 Jul 2026 16:57:29 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 17:07:20 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 17:07:20 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 17:07:21 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 17:07:21 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 17:07:21 GMT
WORKDIR /var/www/html
# Mon, 06 Jul 2026 17:07:21 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Mon, 06 Jul 2026 17:07:21 GMT
STOPSIGNAL SIGQUIT
# Mon, 06 Jul 2026 17:07:21 GMT
EXPOSE map[9000/tcp:{}]
# Mon, 06 Jul 2026 17:07:21 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:aca68162e30a6a797424ddae2250996b638d7dd3b09085b7da2b627f63083af5`  
		Last Modified: Wed, 24 Jun 2026 00:27:33 GMT  
		Size: 32.1 MB (32081978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50ff8acb19fd4d754b286c7024c086504eae24a524d72eab91775cf87ec3087b`  
		Last Modified: Thu, 02 Jul 2026 20:48:26 GMT  
		Size: 227.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed4a154fdfaefe3e88d057b864dd4834bb4c402cc0ea666b94100160e30b6d1a`  
		Last Modified: Thu, 02 Jul 2026 20:51:15 GMT  
		Size: 103.3 MB (103334550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2259d2742cdfc24f936f1a22d1205a086497a9b8673c6f602e168af10d9e4e2`  
		Last Modified: Thu, 02 Jul 2026 20:51:10 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9543d855f4f077b8595a2baf1da2ee64c9c39ae94d038afcb8f135b16f9254c`  
		Last Modified: Mon, 06 Jul 2026 17:02:42 GMT  
		Size: 14.5 MB (14520020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9d06e12ffd816ef31e29fc7e254eec4db4174f18702a9d3a705f2dbda4f2a51`  
		Last Modified: Mon, 06 Jul 2026 17:02:41 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae3a53858a238b03ec1faa22b8520127ac6d29e33e36b855f27bf7a4d99c3e04`  
		Last Modified: Mon, 06 Jul 2026 17:07:46 GMT  
		Size: 31.9 MB (31862064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04db51673a6d3b4562ac77adacd41fb4dfb7a7b7dda4df5e43935245ba526626`  
		Last Modified: Mon, 06 Jul 2026 17:07:45 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada5da991674ee6caf59dfb74d6f266d8dc42d629866f81d7aad43ed0684c3e6`  
		Last Modified: Mon, 06 Jul 2026 17:07:45 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7842e3d16daf17f6b15da63169e513d277607edd14f87ac0ddc29daab4f3b2bf`  
		Last Modified: Mon, 06 Jul 2026 17:07:45 GMT  
		Size: 9.3 KB (9266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:fpm-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:cab9a0934bdcea5b45ea3fbd434fe5e20a09e9d12173374112490e717bc2903a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6430946 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:130911232efa26668311c1ff490a88581dc514273e4169f07b6066994bd94b30`

```dockerfile
```

-	Layers:
	-	`sha256:9d1ab4a1434f0fef8bab5249528cde67d576e870db30799442b3200eab152a60`  
		Last Modified: Mon, 06 Jul 2026 17:07:45 GMT  
		Size: 6.4 MB (6380478 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2e60563d5f126ea0d21fbca4528491b8f32ce9ae4ae258c1bd30c8c24fd0a754`  
		Last Modified: Mon, 06 Jul 2026 17:07:44 GMT  
		Size: 50.5 KB (50468 bytes)  
		MIME: application/vnd.in-toto+json

### `php:fpm-bookworm` - linux; s390x

```console
$ docker pull php@sha256:e485e03f95780406ae00cb649e06563db1eaaf6f12b28b186e856467725bc9e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.9 MB (151883527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aad2d9841b1822bd4d4fc7d910d0163cc5362d5b3bb44575abbaeef78c616bbf`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1782172800'
# Thu, 02 Jul 2026 20:36:40 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 02 Jul 2026 20:36:52 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 02 Jul 2026 20:36:52 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 02 Jul 2026 20:36:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:36:52 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:36:52 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:36:52 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:36:52 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:36:52 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 02 Jul 2026 20:36:52 GMT
ENV PHP_VERSION=8.5.8
# Thu, 02 Jul 2026 20:36:52 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Thu, 02 Jul 2026 20:36:52 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 17:09:12 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Mon, 06 Jul 2026 17:09:15 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 17:22:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libonig-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 17:22:34 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 17:22:36 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 17:22:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 17:22:39 GMT
WORKDIR /var/www/html
# Mon, 06 Jul 2026 17:22:41 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Mon, 06 Jul 2026 17:22:41 GMT
STOPSIGNAL SIGQUIT
# Mon, 06 Jul 2026 17:22:41 GMT
EXPOSE map[9000/tcp:{}]
# Mon, 06 Jul 2026 17:22:41 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:e9aeeda7513dde59469463716e9e14f36210d6570c3cad5e5440b32d941733cd`  
		Last Modified: Wed, 24 Jun 2026 00:27:21 GMT  
		Size: 26.9 MB (26893585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32472ae666cfc89cf1bd803335093880c18630bb8419396196ac9097eef11c4c`  
		Last Modified: Thu, 02 Jul 2026 20:41:11 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13fbbf3c4e7539833c6dda2cec86707d5c6cc4757cfbcef59820d54e693bf667`  
		Last Modified: Thu, 02 Jul 2026 20:41:13 GMT  
		Size: 80.8 MB (80829698 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d5737552378c6dbd6f51918a6cd61780032330154756c2a22a25b6369a98299`  
		Last Modified: Thu, 02 Jul 2026 20:41:11 GMT  
		Size: 228.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9720d2defc8f31b5c575267b8a15be02e603b58f9416169eaf6f42afd9c2e1d`  
		Last Modified: Mon, 06 Jul 2026 17:24:25 GMT  
		Size: 14.5 MB (14519469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f991d079b179254ec2d8d26696becf296c975b872afdd790872a80f17a7194f4`  
		Last Modified: Mon, 06 Jul 2026 17:24:21 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab93377757f8305896482a681589fe706a279fe10d1e0687e4f03d064a3ee6f8`  
		Last Modified: Mon, 06 Jul 2026 17:24:27 GMT  
		Size: 29.6 MB (29627827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcb7440c2b62f1f5c0c7118919eae02f6ca38af97bd260456fc18283ace96541`  
		Last Modified: Mon, 06 Jul 2026 17:24:20 GMT  
		Size: 2.5 KB (2456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44b18757937bdc8d0b2fb1c0cd59c111ddc3d83f9eef1ff5f32e9fbde192e713`  
		Last Modified: Mon, 06 Jul 2026 17:24:25 GMT  
		Size: 249.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c99d74ecd5cf9212d6d1ffc4f38e3375b43fe0e5716c97905f7ca38ebbcf96f`  
		Last Modified: Mon, 06 Jul 2026 17:24:26 GMT  
		Size: 9.3 KB (9268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:fpm-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:6b630dfc9458b967273fc84bf81f1a70a29364bc33277e50e0bf1b7efc481ef3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6291435 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e462e5b4baa9686eb72483c1eea318b208a45b5e15bdbd7cb5d1e4eb52d4cd3`

```dockerfile
```

-	Layers:
	-	`sha256:c912f624fe7ab0563fd31df5d3ff9fd6726d60616e22846e4994193306a70adb`  
		Last Modified: Mon, 06 Jul 2026 17:24:23 GMT  
		Size: 6.2 MB (6241032 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ef0636143836687f29d691e35f747b4a3c504140f81a857751702834620a1be9`  
		Last Modified: Mon, 06 Jul 2026 17:24:21 GMT  
		Size: 50.4 KB (50403 bytes)  
		MIME: application/vnd.in-toto+json
