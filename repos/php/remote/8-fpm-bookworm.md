## `php:8-fpm-bookworm`

```console
$ docker pull php@sha256:a836c00ddc6d873275d40437eb74732bde56781ead316b9eff42fa46dc6d93db
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

### `php:8-fpm-bookworm` - linux; amd64

```console
$ docker pull php@sha256:83c1ed45046e24e31ee4616e9f0c69cafeb8cd798946156882cf1313df54ba7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **177.7 MB (177687169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1caba0cc3c5c06ed6dca338dae2d8416f15c75a5249b4c3ecb9c704217a82caa`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 14:34:30 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 19 Nov 2026 14:34:43 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 19 Nov 2026 14:34:43 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 19 Nov 2026 14:34:43 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:34:43 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:34:43 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:34:43 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:34:43 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:34:43 GMT
ENV GPG_KEYS=D95C03BC702BE9515344AE3374E44BC9067701A5 016895DE9A475111D537A6E69134FF30BC5A99B5 5CFF17B64DC1C244F5D0EAC3E43535E2EB19010E
# Thu, 19 Nov 2026 14:34:43 GMT
ENV PHP_VERSION=8.6.0
# Thu, 19 Nov 2026 14:34:43 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.6.0.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.6.0.tar.xz.asc
# Thu, 19 Nov 2026 14:34:43 GMT
ENV PHP_SHA256=5f84beaa3d763aee1e4feed99bf54ec692c383b322e25626807b589238c3a087
# Thu, 19 Nov 2026 15:16:32 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 19 Nov 2026 15:16:32 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:18:47 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		php --version # buildkit
# Thu, 19 Nov 2026 15:18:47 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:18:47 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 15:18:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:18:47 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:18:47 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 15:18:47 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 15:18:47 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 15:18:47 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:dd051e1b8c92ff101fa3071ab97ea4924885942f15644e01c3dc095764e863e3`  
		Last Modified: Thu, 05 Nov 2026 06:15:55 GMT  
		Size: 28.2 MB (28247982 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6768705df71e5f3d9837a9e4d094728885c85d1b6f0c395f02b049d4e965e41`  
		Last Modified: Thu, 19 Nov 2026 14:37:29 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:804d1411c7b31c43d3369c540f33d1fcd4eb7e71437539db37d46132d808d6ed`  
		Last Modified: Thu, 19 Nov 2026 14:37:32 GMT  
		Size: 104.2 MB (104155475 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0c62e611db1806e8e822def68dbba5d482ce3e529e69966dd867f5774742f71`  
		Last Modified: Thu, 19 Nov 2026 14:37:29 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e46be0d98737d6d9814ee67d62fd18f9b862ea017c1c56c5c1ece6bc9bb8c4a`  
		Last Modified: Thu, 19 Nov 2026 15:18:58 GMT  
		Size: 15.3 MB (15258260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0648e9a9aaf2240b6e0e76e72c83da14fc8098a7f1afd5490ccbdc1de6b69d9d`  
		Last Modified: Thu, 19 Nov 2026 15:18:58 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bbab9f02cc56b1b77aa27c66a54627f6b9ce64be9e86992d57d8e36a8a72e67`  
		Last Modified: Thu, 19 Nov 2026 15:18:59 GMT  
		Size: 30.0 MB (30012563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e101c34eaa6357f8ae1e27ae88bf260d78ec3cd20bae2580e96f94a3add1bade`  
		Last Modified: Thu, 19 Nov 2026 15:18:57 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a44e06ab58b814ec98897ea6125cb19518327bb8ec02e8239fe4e85cbc19c37`  
		Last Modified: Thu, 19 Nov 2026 15:18:59 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e02d03bf59843841be555e7207d1c73f9469756f3c12bf610131ef330e766aab`  
		Last Modified: Thu, 19 Nov 2026 15:18:59 GMT  
		Size: 9.2 KB (9220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-fpm-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:7da76348b85199dc194318974bf41018ad6d3f6f684859d024ada39c80970693
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6446300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63f9689769981fc788655aa979babbdfe0a203b84d95a7eac463d94ecacb59a5`

```dockerfile
```

-	Layers:
	-	`sha256:d09f7d2a89ffa55c16bf66b04c437b1bd9457b588ccaeea82411a9ce1938e17a`  
		Last Modified: Thu, 19 Nov 2026 15:18:58 GMT  
		Size: 6.4 MB (6395943 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d73143f1c4b035900dedce90fe4324ccf3c0672c7adbd071f7607a2101b7c3b9`  
		Last Modified: Thu, 19 Nov 2026 15:18:57 GMT  
		Size: 50.4 KB (50357 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-fpm-bookworm` - linux; arm variant v7

```console
$ docker pull php@sha256:7cc5025789ad14c5092810326c1847eca0e037080609c3e02aec7bf34f8a4bfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **141.7 MB (141666466 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa593653741305923d792475861ded023c638e5fc08aa45912f366cada4dd524`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'armhf' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 14:25:00 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 19 Nov 2026 14:25:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 19 Nov 2026 14:25:15 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 19 Nov 2026 14:25:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:25:15 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:25:15 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:25:15 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:25:15 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:25:15 GMT
ENV GPG_KEYS=D95C03BC702BE9515344AE3374E44BC9067701A5 016895DE9A475111D537A6E69134FF30BC5A99B5 5CFF17B64DC1C244F5D0EAC3E43535E2EB19010E
# Thu, 19 Nov 2026 14:25:15 GMT
ENV PHP_VERSION=8.6.0
# Thu, 19 Nov 2026 14:25:15 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.6.0.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.6.0.tar.xz.asc
# Thu, 19 Nov 2026 14:25:15 GMT
ENV PHP_SHA256=5f84beaa3d763aee1e4feed99bf54ec692c383b322e25626807b589238c3a087
# Thu, 19 Nov 2026 15:37:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 19 Nov 2026 15:37:54 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:40:23 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		php --version # buildkit
# Thu, 19 Nov 2026 15:40:23 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:40:24 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 15:40:24 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:40:24 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:40:24 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 15:40:24 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 15:40:24 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 15:40:24 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:b37c96781b87a85cb04abbf5abfe88c91253a506348403ce0022810d702aa72c`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 24.0 MB (23961356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:887c41877311b4da42f2d0cd1dadd06530effca6abc29376355f4a0aa3e80cc8`  
		Last Modified: Thu, 19 Nov 2026 14:28:24 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1163568f04e4c778a9924a372001ee647d08dec9b542a415f5932f2bef520139`  
		Last Modified: Thu, 19 Nov 2026 14:28:27 GMT  
		Size: 76.0 MB (75972633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8884a642cc9929149981ee182602fed823d82984c330571a3405ab5d57f7bf87`  
		Last Modified: Thu, 19 Nov 2026 14:28:24 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47e01acd1e8fb02706302bb80bbe89af9130499b094fce5f27b727cd24da7167`  
		Last Modified: Thu, 19 Nov 2026 15:40:35 GMT  
		Size: 15.3 MB (15256332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03f76c44f7d79be730274191ae99bb626cd427158a868411e4b9968cd0f97f71`  
		Last Modified: Thu, 19 Nov 2026 15:40:34 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d2a2c9c5db4305f0665e2b829518b11acc5ab312ef9ac6ada90615f5511bde1`  
		Last Modified: Thu, 19 Nov 2026 15:40:35 GMT  
		Size: 26.5 MB (26463266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41e43286f6b364c15cc2167dd73035124dbea5d7600cf8786d3efa9c2003ab4e`  
		Last Modified: Thu, 19 Nov 2026 15:40:34 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8eb449cda445c7228f270f862d90adba2a7404840e3f64a782f2a8982d1a7c0`  
		Last Modified: Thu, 19 Nov 2026 15:40:35 GMT  
		Size: 243.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cceada665188fad0f58cfd90c2426d0e25b393408ae329e3f7edc497980c7f2`  
		Last Modified: Thu, 19 Nov 2026 15:40:36 GMT  
		Size: 9.2 KB (9214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-fpm-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:ad0bd0279cf39a6ed5a77b5298376fc52e5769698c40724aad3dd9a2638a73eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.3 MB (6259716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8ccaa23599ea48e5a9017f05aaf4bb688a21cb94e96faec3fd2aead73025995`

```dockerfile
```

-	Layers:
	-	`sha256:1e0dd6426f82353856a072608af94f6c2ad0f66c2b09a01936e63027edc88dce`  
		Last Modified: Thu, 19 Nov 2026 15:40:35 GMT  
		Size: 6.2 MB (6209210 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1b117250162a261711e20bb595d35ad17d341b23aa55a23996f545ae8f98800`  
		Last Modified: Thu, 19 Nov 2026 15:40:34 GMT  
		Size: 50.5 KB (50506 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-fpm-bookworm` - linux; arm64 variant v8

```console
$ docker pull php@sha256:a08af9b7c5130e54d441d9aefa0df39f0efde56854be403a2fdff7ee1d745cee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **170.9 MB (170857541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae707cbc62fc096471b211972c1bf4bb2962c692967528b2257e55dce8e904ee`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 15:17:17 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 19 Nov 2026 15:17:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 19 Nov 2026 15:17:33 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 19 Nov 2026 15:17:33 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 15:17:33 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 15:17:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 15:17:33 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 15:17:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 15:17:33 GMT
ENV GPG_KEYS=D95C03BC702BE9515344AE3374E44BC9067701A5 016895DE9A475111D537A6E69134FF30BC5A99B5 5CFF17B64DC1C244F5D0EAC3E43535E2EB19010E
# Thu, 19 Nov 2026 15:17:33 GMT
ENV PHP_VERSION=8.6.0
# Thu, 19 Nov 2026 15:17:33 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.6.0.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.6.0.tar.xz.asc
# Thu, 19 Nov 2026 15:17:33 GMT
ENV PHP_SHA256=5f84beaa3d763aee1e4feed99bf54ec692c383b322e25626807b589238c3a087
# Thu, 19 Nov 2026 15:17:40 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 19 Nov 2026 15:17:40 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:20:24 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		php --version # buildkit
# Thu, 19 Nov 2026 15:20:24 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:20:25 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 15:20:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:20:25 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:20:25 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 15:20:25 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 15:20:25 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 15:20:25 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:2d66c782e4847b8495b17a4b86be1159aa13d140fe4fd17cb1d536953d5114c6`  
		Last Modified: Thu, 05 Nov 2026 06:15:39 GMT  
		Size: 28.1 MB (28144358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7eb21edabee36321d8d60f6986b6c4aad30d72571d71e532f477798613361537`  
		Last Modified: Thu, 19 Nov 2026 15:20:44 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5013e0d6d01ef38bb40e1ce8be57563b3d7d2c7fc8432c9a80d4b47b8270ddec`  
		Last Modified: Thu, 19 Nov 2026 15:20:47 GMT  
		Size: 98.0 MB (98006223 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d07677a61051d358fb9dda85647071bb6eba6cf6abfaf8abd626d866f640826`  
		Last Modified: Thu, 19 Nov 2026 15:20:44 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05b6a2508175190e355824022ba5778a690918dc61b74f95b6e5a4472627c047`  
		Last Modified: Thu, 19 Nov 2026 15:20:44 GMT  
		Size: 15.3 MB (15258035 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0538868ca765af9cf5ca345c9e3f85ce35024897d47d5f1bdfb5cd2650ea9fac`  
		Last Modified: Thu, 19 Nov 2026 15:20:45 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b2c527916359f66244a08852f7b3a084c3305cd6692d6b11aa6b1d23f3f861`  
		Last Modified: Thu, 19 Nov 2026 15:20:46 GMT  
		Size: 29.4 MB (29436032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7316080506fb6d123daa7424ee9edc9b87daf8b2ac2db230e4744f5f4f68fd0`  
		Last Modified: Thu, 19 Nov 2026 15:20:46 GMT  
		Size: 2.5 KB (2455 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0919ddbcf93786aece8cfb392553dc18a5aa4c6f8ae0e8a045759f5dcc9dc6b5`  
		Last Modified: Thu, 19 Nov 2026 15:20:46 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:545527e8d4bf34c203cc23bd1d8b3a81b6a7e9784e42df055b8c67e6744cd8f2`  
		Last Modified: Thu, 19 Nov 2026 15:20:47 GMT  
		Size: 9.2 KB (9217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-fpm-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:d00cb1238c991244090b409e1c185335fa4eb340c78fe6623f350eae54fffc40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.5 MB (6474875 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f0160d576c9f924f3d3c107d1a6e69e88890aa651bcbca58066b5f320b3bd83`

```dockerfile
```

-	Layers:
	-	`sha256:9a8689f89bb6caa651737440f284acf059ab4547b34e1026fbef9ec46e6be53f`  
		Last Modified: Thu, 19 Nov 2026 15:20:44 GMT  
		Size: 6.4 MB (6424333 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a9448113c7b49cc65c544de5a163fde18c03e4e268cb1655ff9b20b874d2072`  
		Last Modified: Thu, 19 Nov 2026 15:20:44 GMT  
		Size: 50.5 KB (50542 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-fpm-bookworm` - linux; 386

```console
$ docker pull php@sha256:6510a198022aa3eaf53252d62253bb302740340083a33ff3ba4eb219750f2e64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.7 MB (176695904 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fa8bcfac6791ea6950ad2ca763270f7513523ba8ca2d5178252abf2b84267521`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'i386' out/ 'bookworm' '@1793827419'
# Thu, 19 Nov 2026 14:25:08 GMT
RUN set -eux; 	{ 		echo 'Package: php*'; 		echo 'Pin: release *'; 		echo 'Pin-Priority: -1'; 	} > /etc/apt/preferences.d/no-debian-php # buildkit
# Thu, 19 Nov 2026 14:25:26 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev 		file 		g++ 		gcc 		libc-dev 		make 		pkg-config 		re2c
# Thu, 19 Nov 2026 14:25:26 GMT
RUN set -eux; 	apt-get update; 	apt-get install -y --no-install-recommends 		$PHPIZE_DEPS 		ca-certificates 		curl 		xz-utils 	; 	rm -rf /var/lib/apt/lists/* # buildkit
# Thu, 19 Nov 2026 14:25:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:25:26 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:25:26 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:25:26 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:25:26 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:25:26 GMT
ENV GPG_KEYS=D95C03BC702BE9515344AE3374E44BC9067701A5 016895DE9A475111D537A6E69134FF30BC5A99B5 5CFF17B64DC1C244F5D0EAC3E43535E2EB19010E
# Thu, 19 Nov 2026 14:25:26 GMT
ENV PHP_VERSION=8.6.0
# Thu, 19 Nov 2026 14:25:26 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.6.0.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.6.0.tar.xz.asc
# Thu, 19 Nov 2026 14:25:26 GMT
ENV PHP_SHA256=5f84beaa3d763aee1e4feed99bf54ec692c383b322e25626807b589238c3a087
# Thu, 19 Nov 2026 15:17:03 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 19 Nov 2026 15:17:03 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:19:54 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		php --version # buildkit
# Thu, 19 Nov 2026 15:19:54 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:19:55 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 15:19:55 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:19:55 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:19:55 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 15:19:55 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 15:19:55 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 15:19:55 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:cf916cd28bf8a94b890c149d6b2cdc665c8beb3378aa9c98a18b6ec1bfe54b0c`  
		Last Modified: Thu, 05 Nov 2026 06:15:50 GMT  
		Size: 29.2 MB (29239212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3ebd2418a05a7ffd3a2d71db7c454d374a2ee2c3c7da74e0bdd1ff0ac4664ae`  
		Last Modified: Thu, 19 Nov 2026 14:28:53 GMT  
		Size: 225.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:647ba18b4aa501499674effb0d016e84709c6e3f07e1ea15dd2d579b12ca8916`  
		Last Modified: Thu, 19 Nov 2026 14:28:57 GMT  
		Size: 101.4 MB (101354905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc2ff5459fb54ff037ec16538f5f92884e604aec51a4ab66ff8930315fd2f1bf`  
		Last Modified: Thu, 19 Nov 2026 14:28:53 GMT  
		Size: 226.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0126010ac81e4995ffa66f39383692d5109012992fce96097d63f50149d898f4`  
		Last Modified: Thu, 19 Nov 2026 15:20:06 GMT  
		Size: 15.3 MB (15257447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:170f80f9c8492d672bc8f7f199f8507c43547107bf3702ba675217649dbf38f1`  
		Last Modified: Thu, 19 Nov 2026 15:20:05 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3e3567bbf045703dc07e2801f6ca207e1950bd6ab5b9d414c3f92ff8ab74e58`  
		Last Modified: Thu, 19 Nov 2026 15:20:07 GMT  
		Size: 30.8 MB (30831445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dafba8a34b6849a1e44f172a3ea31c7a72a9710389505be7b7ad6c01966512e6`  
		Last Modified: Thu, 19 Nov 2026 15:20:06 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f530a8aa62f481951a86862ed12b6a125d8742d1874e17275b4783c0c2837c9c`  
		Last Modified: Thu, 19 Nov 2026 15:20:07 GMT  
		Size: 247.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c2be84c2630ee9a6a88a2a3b087b7fc011a1eca0de17212cef02572f109bcb6`  
		Last Modified: Thu, 19 Nov 2026 15:20:07 GMT  
		Size: 9.2 KB (9219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-fpm-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:569b9eb4a8d98bca1fcae88ac5740d7bb3fa0b4315de271aae6775e3fcb60a53
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6426050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec89eaa11738f428cc7adfa7fd7a47d6a427334d7e9f4f54e9ca5b7d107cd16c`

```dockerfile
```

-	Layers:
	-	`sha256:92fd32a820a89910c57c2c188d5c138eb38cc55a7ab95ab6b16b0166d54fdc7d`  
		Last Modified: Thu, 19 Nov 2026 15:20:06 GMT  
		Size: 6.4 MB (6375737 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6e35d617ad361ec828bafdb56782dd818cba638b73f9451b4e6d0fd92131b2e`  
		Last Modified: Thu, 19 Nov 2026 15:20:05 GMT  
		Size: 50.3 KB (50313 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-fpm-bookworm` - linux; ppc64le

```console
$ docker pull php@sha256:0b4941804fcbc1d0d1cac5d73ef00f096c3bd74f815bce4cf8e3bdb3fed78b3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.9 MB (180909328 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5dd513f2df0a44277a156764ef3d90752ba11a64d56e3bc408e25ab76f8109ec`
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
ENV GPG_KEYS=D95C03BC702BE9515344AE3374E44BC9067701A5 016895DE9A475111D537A6E69134FF30BC5A99B5 5CFF17B64DC1C244F5D0EAC3E43535E2EB19010E
# Thu, 05 Nov 2026 08:04:42 GMT
ENV PHP_VERSION=8.6.0
# Thu, 05 Nov 2026 08:04:42 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.6.0.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.6.0.tar.xz.asc
# Thu, 05 Nov 2026 08:04:42 GMT
ENV PHP_SHA256=5f84beaa3d763aee1e4feed99bf54ec692c383b322e25626807b589238c3a087
# Thu, 19 Nov 2026 17:08:31 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends gnupg; 	rm -rf /var/lib/apt/lists/*; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apt-mark auto '.*' > /dev/null; 	apt-mark manual $savedAptMark > /dev/null; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false # buildkit
# Thu, 19 Nov 2026 17:08:31 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 17:19:06 GMT
RUN set -eux; 		savedAptMark="$(apt-mark showmanual)"; 	apt-get update; 	apt-get install -y --no-install-recommends 		libargon2-dev 		libcurl4-openssl-dev 		libreadline-dev 		libsodium-dev 		libsqlite3-dev 		libssl-dev 		libxml2-dev 		zlib1g-dev 	; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	debMultiarch="$(dpkg-architecture --query DEB_BUILD_MULTIARCH)"; 	if [ ! -d /usr/include/curl ]; then 		ln -sT "/usr/include/$debMultiarch/curl" /usr/local/include/curl; 	fi; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-libdir="lib/$debMultiarch" 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		apt-mark auto '.*' > /dev/null; 	[ -z "$savedAptMark" ] || apt-mark manual $savedAptMark; 	find /usr/local -type f -executable -exec ldd '{}' ';' 		| awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); printf "*%s\n", so }' 		| sort -u 		| xargs -rt dpkg-query --search 		| awk 'sub(":$", "", $1) { print $1 }' 		| sort -u 		| xargs -r apt-mark manual 	; 	apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false; 	rm -rf /var/lib/apt/lists/*; 		php --version # buildkit
# Thu, 19 Nov 2026 17:19:07 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 17:19:08 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 17:19:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 17:19:11 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 17:19:12 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 17:19:12 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 17:19:12 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 17:19:12 GMT
CMD ["php-fpm"]
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
	-	`sha256:17236a97c3711e026c0aeeb361b07404312241dd992ea3dfa5ceea2609aa6c83`  
		Last Modified: Thu, 19 Nov 2026 17:13:36 GMT  
		Size: 15.3 MB (15257681 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18cef798b573cc50195aba3fcef89cc925d1140f3945942b31f6cda7252441c6`  
		Last Modified: Thu, 19 Nov 2026 17:13:36 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2211f2a330c9ef84d17bbb417092a592c3581d53695df31dfad3c85a7a5c1b76`  
		Last Modified: Thu, 19 Nov 2026 17:19:40 GMT  
		Size: 30.4 MB (30390226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea024a6ffcceac7cd5f7ad937f0e699cc9b0d08db13241504b3d4c4154d99d37`  
		Last Modified: Thu, 19 Nov 2026 17:19:39 GMT  
		Size: 2.5 KB (2457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a409716f5c91c5fc401b951b55479eac8f6411a429fdbec41d750f6cc71daaee`  
		Last Modified: Thu, 19 Nov 2026 17:19:39 GMT  
		Size: 246.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e6073de4feb4437fa5370168406837521432a8424a94d0781d706d8ec02cda8`  
		Last Modified: Thu, 19 Nov 2026 17:19:39 GMT  
		Size: 9.2 KB (9220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-fpm-bookworm` - unknown; unknown

```console
$ docker pull php@sha256:01cb4cfd842ef8409a41f2d76bd8c6d3c1cd972651ce876c6b4ec65eab304b6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.4 MB (6423017 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5f80d489fb79c4ff41cfd958ba524306a19318551343506db4670f8e53089fc`

```dockerfile
```

-	Layers:
	-	`sha256:2e74350a24bc02f6fbddfd0af8f953ccad714f00754c8af93f83be353d5c8c5f`  
		Last Modified: Thu, 19 Nov 2026 17:19:39 GMT  
		Size: 6.4 MB (6372604 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:69c3d124d40cb69fe9021aafb01f65b73f8e9c91982f5f2d986918765c520597`  
		Last Modified: Thu, 19 Nov 2026 17:19:39 GMT  
		Size: 50.4 KB (50413 bytes)  
		MIME: application/vnd.in-toto+json
