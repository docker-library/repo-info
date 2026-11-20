## `php:8-fpm-alpine3.23`

```console
$ docker pull php@sha256:6946228159bcf9a46795e4bca73b57fde3b350bcebd3e57c03715da2fbba516f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 16
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
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

### `php:8-fpm-alpine3.23` - linux; amd64

```console
$ docker pull php@sha256:28b274c4e035a35b287315023397641751772e1922396785db9c0992d34c2143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 MB (38272326 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:675e25ca5baf85ea05fd5b508402be5f7cb1f6dd6f58f3034eff6f55b2a1c76d`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 15:16:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 19 Nov 2026 15:16:36 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 19 Nov 2026 15:16:37 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 19 Nov 2026 15:16:37 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 15:16:37 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 15:16:37 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 15:16:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 15:16:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 15:16:37 GMT
ENV GPG_KEYS=D95C03BC702BE9515344AE3374E44BC9067701A5 016895DE9A475111D537A6E69134FF30BC5A99B5 5CFF17B64DC1C244F5D0EAC3E43535E2EB19010E
# Thu, 19 Nov 2026 15:16:37 GMT
ENV PHP_VERSION=8.6.0
# Thu, 19 Nov 2026 15:16:37 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.6.0.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.6.0.tar.xz.asc
# Thu, 19 Nov 2026 15:16:37 GMT
ENV PHP_SHA256=5f84beaa3d763aee1e4feed99bf54ec692c383b322e25626807b589238c3a087
# Thu, 19 Nov 2026 15:16:39 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 15:16:39 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:20:17 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		php --version # buildkit
# Thu, 19 Nov 2026 15:20:17 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:20:18 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 15:20:18 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:20:18 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:20:18 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 15:20:18 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 15:20:18 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 15:20:18 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec4d109665e5f81bd8dd6a280b6f24afc0ec5955a477bf6ff6a3f803737422d`  
		Last Modified: Thu, 19 Nov 2026 15:20:25 GMT  
		Size: 3.5 MB (3493817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0241eb9695129182e76a7f1633eaddd86e0ebace7ba2c2145a75b9ffaef52fef`  
		Last Modified: Thu, 19 Nov 2026 15:20:25 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:713fc592196a99ea6698f62553ae974ad0804fd23a73108ca8999d61c8a0c245`  
		Last Modified: Thu, 19 Nov 2026 15:20:25 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6ca1596965eef5a5b645304130da2df4fa1eba892d22ede14cfe52c99e1bc77`  
		Last Modified: Thu, 19 Nov 2026 15:20:26 GMT  
		Size: 15.2 MB (15171215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19ee6cab0c6eebef369792eabd95538de8f38d57117a7288b1c9cb2513c9b471`  
		Last Modified: Thu, 19 Nov 2026 15:20:26 GMT  
		Size: 483.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:707f54f8e782636b3cb620f114ecdd9e53f14fcc6f528db8ba906a9d0e03e9c0`  
		Last Modified: Thu, 19 Nov 2026 15:20:27 GMT  
		Size: 15.7 MB (15719335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9368749f1a4161c668ddf251ac034e97c67152b1d21ddac9bfbbbd09ce5bab57`  
		Last Modified: Thu, 19 Nov 2026 15:20:27 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c81f5fe8f07103899dc0de069a8b758a8604d88aec4402f46b36cddc5fa0c153`  
		Last Modified: Thu, 19 Nov 2026 15:20:28 GMT  
		Size: 22.0 KB (22038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5a20b1949a66f0ffcba7c0270651a71a13e902f7f2675a77a8ed31cc64398b6`  
		Last Modified: Thu, 19 Nov 2026 15:20:28 GMT  
		Size: 9.2 KB (9212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:12d39b9435cf6da6987dfd46f2dce818cd10bce115b4a0fdd14b380de2351eba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.6 KB (299650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6887bcfb7255d32df1bfb16788c2f8e1cdd6f92bbb63114c7e3caabbe79fbf46`

```dockerfile
```

-	Layers:
	-	`sha256:12dd7226fe6f856be8ed015221fa958dc07b003dab3c87c122d22f1cd55c232d`  
		Last Modified: Thu, 19 Nov 2026 15:20:25 GMT  
		Size: 251.9 KB (251934 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38520dcb28bb6a947b10928e5235625f9af973efa1fb49a6e1847901673644da`  
		Last Modified: Thu, 19 Nov 2026 15:20:25 GMT  
		Size: 47.7 KB (47716 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-fpm-alpine3.23` - linux; arm variant v6

```console
$ docker pull php@sha256:1849c2b36a7be3af7df576eb422932eab25988c9be11c51ff5a871f8db5372fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.4 MB (36381716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b20f1ee31c62047a6341d78edc705eccd535198fd3e21436a9af6a7fb3cf4215`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:21:52 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:21:52 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:21:53 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:21:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:21:53 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:21:53 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:21:53 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:21:53 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:21:53 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 05 Nov 2026 18:21:53 GMT
ENV PHP_VERSION=8.5.12
# Thu, 05 Nov 2026 18:21:53 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Thu, 05 Nov 2026 18:21:53 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Thu, 05 Nov 2026 18:25:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:25:05 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:28:18 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 18:28:18 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:28:18 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 18:28:18 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 18:28:18 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 18:28:18 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 05 Nov 2026 18:28:18 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 18:28:18 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 05 Nov 2026 18:28:18 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d247d1704d991f6edc0962ede07f8c7363baefa705d41717938237720af0477`  
		Last Modified: Thu, 05 Nov 2026 18:28:24 GMT  
		Size: 3.5 MB (3454534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b5eee13327eb9f4fc8981e806022de31341b92a45a1ece2eebe60b790a7541d`  
		Last Modified: Thu, 05 Nov 2026 18:28:24 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:436e5c85601ae8bae0fc31ce2345a2737a67bd4792b990b5420a0bc5d2eb666a`  
		Last Modified: Thu, 05 Nov 2026 18:28:24 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a94bc5414c0cce393da97b2f29b74dd1383f6a31e6ceb94e75d58c8050662256`  
		Last Modified: Thu, 05 Nov 2026 18:28:25 GMT  
		Size: 14.6 MB (14577856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa398c0f1ad37864de4d9232b58026f198bea74ee6ca11fc0050c28d9acfc44`  
		Last Modified: Thu, 05 Nov 2026 18:28:25 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fbf09de72d604475ff168f5f9de59b49580a20c0892bee6d4a27088ad60f0c9`  
		Last Modified: Thu, 05 Nov 2026 18:28:25 GMT  
		Size: 14.8 MB (14755620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c6389f43968d25300129e3e609412beaaf1c1b72ac3f9b0d241a6996ca0b6e4`  
		Last Modified: Thu, 05 Nov 2026 18:28:26 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ab011f3546d990706438a210b67841f2f9a14ce1e9cbc1d3c3e780b422efe7a`  
		Last Modified: Thu, 05 Nov 2026 18:28:26 GMT  
		Size: 22.1 KB (22065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f459263166b47ec6e960339b9799743e019b036baacf77f556990253ea3464cf`  
		Last Modified: Thu, 05 Nov 2026 18:28:26 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:89ba93213391ea371a526ec47fe0f3f981556a49ea051ab449a69d64d5470bb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 KB (48922 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a2dfbd7ca0de8ba56e328860b944ce4210a70f0b5e5bf2c3eecf95aee7517ed5`

```dockerfile
```

-	Layers:
	-	`sha256:8f0c1c0a97cf72885e27028b0b875ba2144184899a549e1338a147ecbc04ae9e`  
		Last Modified: Thu, 05 Nov 2026 18:28:24 GMT  
		Size: 48.9 KB (48922 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-fpm-alpine3.23` - linux; arm variant v7

```console
$ docker pull php@sha256:e87cf2e66906f6802d2ad8dd467374cc427c4db6b6871726f2e985b2e1bb1228
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **34.3 MB (34338448 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1208fe18ffdc24289d754acbfffd8581c27e4706b7fbacb63b82d85df15c2e6`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:17 GMT
ADD alpine-minirootfs-3.23.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:17 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 15:38:42 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 19 Nov 2026 15:38:42 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 19 Nov 2026 15:38:42 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 19 Nov 2026 15:38:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 15:38:42 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 15:38:42 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 15:38:42 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 15:38:42 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 15:38:42 GMT
ENV GPG_KEYS=D95C03BC702BE9515344AE3374E44BC9067701A5 016895DE9A475111D537A6E69134FF30BC5A99B5 5CFF17B64DC1C244F5D0EAC3E43535E2EB19010E
# Thu, 19 Nov 2026 15:38:42 GMT
ENV PHP_VERSION=8.6.0
# Thu, 19 Nov 2026 15:38:42 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.6.0.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.6.0.tar.xz.asc
# Thu, 19 Nov 2026 15:38:42 GMT
ENV PHP_SHA256=5f84beaa3d763aee1e4feed99bf54ec692c383b322e25626807b589238c3a087
# Thu, 19 Nov 2026 15:38:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 15:38:45 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:41:56 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		php --version # buildkit
# Thu, 19 Nov 2026 15:41:56 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:41:56 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 15:41:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:41:56 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:41:56 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 15:41:56 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 15:41:56 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 15:41:56 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:2715a345c82dd389382733a6d4282bdbb8950eed4bdb95c4a8e332b6b5d8adf5`  
		Last Modified: Thu, 05 Nov 2026 18:01:23 GMT  
		Size: 3.3 MB (3266828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e65e5bcb4e41ad65d509913bf4932e585fc93ca587dbc273fc1c62484f0ca33e`  
		Last Modified: Thu, 19 Nov 2026 15:42:03 GMT  
		Size: 3.3 MB (3262109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1015a15f9cbce86f409219bdb1143a352a906c252f0afb7f923fe5c1e12c5d7f`  
		Last Modified: Thu, 19 Nov 2026 15:42:03 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44d71b3506f8319634616a01a0259d9143f679793e688adf98a1004bfcb6945c`  
		Last Modified: Thu, 19 Nov 2026 15:42:03 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27d1dabdcd32152e9bf693788a772793c01bf04d7eb733d68211654a87bc620e`  
		Last Modified: Thu, 19 Nov 2026 15:42:03 GMT  
		Size: 15.2 MB (15171251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1ab097e29178865773c2e3bdae39e0f32fb4a416aaae5811c8c2792bd723ed4`  
		Last Modified: Thu, 19 Nov 2026 15:42:04 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7b89bc26128db33c8db6b79b2da3edbee4e3236cbdad11ca15a295219086d1f`  
		Last Modified: Thu, 19 Nov 2026 15:42:04 GMT  
		Size: 12.6 MB (12603100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5e185d30eae876dcd1377c38bd4d2b4069d21812c76f4968c218076da5a7c6b`  
		Last Modified: Thu, 19 Nov 2026 15:42:04 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb8bdfc4387fe890ef5d1e7c89cb6f1048282ce5307443e1e8a3bb236ae20afb`  
		Last Modified: Thu, 19 Nov 2026 15:42:05 GMT  
		Size: 21.8 KB (21833 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47d37576eeb42cf4d12888c426c64c22e41da1daaf42e4ae9d4bb40d4fe93a9e`  
		Last Modified: Thu, 19 Nov 2026 15:42:05 GMT  
		Size: 9.2 KB (9214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:a41657bb65e97d1a6d8051d0abfde744492932b09bde534ea682808f5fb0845b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.2 KB (296204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e79dfc2858b373814f8aa8f659585ed35a3d126fb09e4341a00aaf1edaf5edfc`

```dockerfile
```

-	Layers:
	-	`sha256:5f84fb084ef3ea7d5236730a5a8edfa30006c9e701f358911f41244a076573bb`  
		Last Modified: Thu, 19 Nov 2026 15:42:03 GMT  
		Size: 248.3 KB (248330 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac7b57b4248af8fea9112fc010e40eaa06c9044537c4c2f6e26786efab4ee0f1`  
		Last Modified: Thu, 19 Nov 2026 15:42:03 GMT  
		Size: 47.9 KB (47874 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-fpm-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull php@sha256:6f536ea220211c8d401cb26023ce31f9c7c1c3af2d73f6591533be762fc3f978
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.9 MB (37900393 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e04b59fc32ca3276c690d0b253d3581455411edccb83faab0ccbf290466f5dfe`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 15:17:24 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 19 Nov 2026 15:17:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 19 Nov 2026 15:17:24 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 19 Nov 2026 15:17:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 15:17:24 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 15:17:24 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 15:17:24 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 15:17:24 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 15:17:24 GMT
ENV GPG_KEYS=D95C03BC702BE9515344AE3374E44BC9067701A5 016895DE9A475111D537A6E69134FF30BC5A99B5 5CFF17B64DC1C244F5D0EAC3E43535E2EB19010E
# Thu, 19 Nov 2026 15:17:24 GMT
ENV PHP_VERSION=8.6.0
# Thu, 19 Nov 2026 15:17:24 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.6.0.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.6.0.tar.xz.asc
# Thu, 19 Nov 2026 15:17:24 GMT
ENV PHP_SHA256=5f84beaa3d763aee1e4feed99bf54ec692c383b322e25626807b589238c3a087
# Thu, 19 Nov 2026 15:17:27 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 15:17:27 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:20:42 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		php --version # buildkit
# Thu, 19 Nov 2026 15:20:42 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:20:43 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 15:20:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:20:43 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:20:43 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 15:20:43 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 15:20:43 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 15:20:43 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:092ec16161df3ecb4d1c939d46eb0b89aa3652ea8230a93a842a859f72a1b9a1`  
		Last Modified: Thu, 19 Nov 2026 15:20:50 GMT  
		Size: 3.5 MB (3506105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9510d3e882f006610df064d10b8bb1e9f68ed144fddbe3b2cd1a10b17b91a45`  
		Last Modified: Thu, 19 Nov 2026 15:20:47 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc6dd44cfa943cb75c646145a8862f2e2c03b17da70a8d582663dc05f9c3384a`  
		Last Modified: Thu, 19 Nov 2026 15:20:50 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:169ce88cfc0bb3cc839b7c36df2f300ff05d0194e02c7f5e7dc8f56e0b616786`  
		Last Modified: Thu, 19 Nov 2026 15:20:50 GMT  
		Size: 15.2 MB (15171262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06ed6e1788ac19cc75f501faa0867088fef5500c2332ee3d3a2d9fca2307cdf0`  
		Last Modified: Thu, 19 Nov 2026 15:20:50 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38fbf4280c9b72d4f3383fad1ab1ef1af44d9788f27441f18de81c5fdd9060dc`  
		Last Modified: Thu, 19 Nov 2026 15:20:51 GMT  
		Size: 15.0 MB (14997635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:123f706bf9b37847c0fbd41fee2084b0e428f2d385dd26457cf65b10ffeccba5`  
		Last Modified: Thu, 19 Nov 2026 15:20:51 GMT  
		Size: 2.4 KB (2442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffebc4d57d255a0f0a029acf8901bf7806750db4bdee956edcb50a927ad95599`  
		Last Modified: Thu, 19 Nov 2026 15:20:51 GMT  
		Size: 21.8 KB (21849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:399a4b9fda8d84c626b94b0630ca6bc74751ea7623f1f582c46ef6078a41c434`  
		Last Modified: Thu, 19 Nov 2026 15:20:52 GMT  
		Size: 9.2 KB (9212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:de59986f09c70f24ce69c893c84cde388b8bf29a192e7ec63f57b841fcba71af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.3 KB (296260 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:50570f7cedf67cd5c897d121965778f92d9ca7f325070791111bc8ea4f25be29`

```dockerfile
```

-	Layers:
	-	`sha256:0c15eabc8c94584cd1c4cf851f4fec3910f82e593843d22e56aeea3cc928f781`  
		Last Modified: Thu, 19 Nov 2026 15:20:50 GMT  
		Size: 248.3 KB (248350 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88b39ffda7f5f1f640f5cbd3dfc0ea60c5820a075d45460cf23649a77015f09b`  
		Last Modified: Thu, 19 Nov 2026 15:20:50 GMT  
		Size: 47.9 KB (47910 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-fpm-alpine3.23` - linux; 386

```console
$ docker pull php@sha256:fdb54b606adb915bdb8c0db2bb443917628cec19d51577634d44a18457b9aa1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.6 MB (38617911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:792d64b639b3f1c8e99e79a3bf3dde1f2df274d76c7dc37a09ed59edcaf118b8`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 14:42:56 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 19 Nov 2026 14:42:56 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 19 Nov 2026 14:42:56 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 19 Nov 2026 14:42:56 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:42:56 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:42:56 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:42:56 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:42:56 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:42:56 GMT
ENV GPG_KEYS=D95C03BC702BE9515344AE3374E44BC9067701A5 016895DE9A475111D537A6E69134FF30BC5A99B5 5CFF17B64DC1C244F5D0EAC3E43535E2EB19010E
# Thu, 19 Nov 2026 14:42:56 GMT
ENV PHP_VERSION=8.6.0
# Thu, 19 Nov 2026 14:42:56 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.6.0.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.6.0.tar.xz.asc
# Thu, 19 Nov 2026 14:42:56 GMT
ENV PHP_SHA256=5f84beaa3d763aee1e4feed99bf54ec692c383b322e25626807b589238c3a087
# Thu, 19 Nov 2026 15:17:06 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 15:17:06 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:21:55 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		php --version # buildkit
# Thu, 19 Nov 2026 15:21:55 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:21:55 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 15:21:55 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:21:55 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:21:55 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 15:21:55 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 15:21:55 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 15:21:55 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fba371bd23503238b2f48d149a9741931f4821dd6482e5261e74fb54978892e`  
		Last Modified: Thu, 19 Nov 2026 14:45:54 GMT  
		Size: 3.5 MB (3526870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99acac48e25138a6b3cef7f4398840b0a71b0da95668510febed67da507fb984`  
		Last Modified: Thu, 19 Nov 2026 14:45:54 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:042842ee028ed48469667a4d42315d355bcf623af329af1601168efc1f8b36db`  
		Last Modified: Thu, 19 Nov 2026 14:45:54 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83e1627b1469744a9f01418af3dd33ff2ba915a24a3e714b7c34a2663412bca0`  
		Last Modified: Thu, 19 Nov 2026 15:22:03 GMT  
		Size: 15.2 MB (15171236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cffbe9dd656a5ac62273fe8caeb43f9e906f322a07b479f3aeb8d81d8c11ef27`  
		Last Modified: Thu, 19 Nov 2026 15:22:02 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:374af45bf2d485d074d44f6712a7e200d107795ddd3f5f95fd1ca3015136bea6`  
		Last Modified: Thu, 19 Nov 2026 15:22:03 GMT  
		Size: 16.2 MB (16205880 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fe2d7da29835ff6351bc5e62d7ae488bfff1646103e8b3af903941608ce59ed`  
		Last Modified: Thu, 19 Nov 2026 15:22:02 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8311ad36b3e48d221a00e055b4876aad1b9252a009123f908bf20707a68eb520`  
		Last Modified: Thu, 19 Nov 2026 15:22:03 GMT  
		Size: 22.0 KB (22018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab35acda9cf8bc7f98f4a46c7fc30cb5d564a89ced736bf0abc1b9c6126124ac`  
		Last Modified: Thu, 19 Nov 2026 15:22:03 GMT  
		Size: 9.2 KB (9212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:052934469a68ceaa4c9d7c401f3ef62aecffedd07f76d6c00fd92b985f699890
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.6 KB (299581 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa064a571c1b2430c9e86f58ea6f9bf3692ab22f62c4280fd308582e6d0b164c`

```dockerfile
```

-	Layers:
	-	`sha256:916a1104ea1843e3a2c3e77698dd42aae1299bfa5632ec98a0a02d9581b02661`  
		Last Modified: Thu, 19 Nov 2026 15:22:02 GMT  
		Size: 251.9 KB (251909 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f21769554156a55f8c5978ad40647a69365dce0dd23d0c6c572cd7a096197f78`  
		Last Modified: Thu, 19 Nov 2026 15:22:02 GMT  
		Size: 47.7 KB (47672 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-fpm-alpine3.23` - linux; ppc64le

```console
$ docker pull php@sha256:1ebbdfd125d3057db4d622e3c4933288179f6969b244d65a46764db62b284e3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.3 MB (38276201 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e8a58fa779a04ac004540c7e33ae290f8d3ba4187681f4d895060e8130feebd5`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:47 GMT
ADD alpine-minirootfs-3.23.8-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:47 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:44:08 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 21:44:08 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 21:44:10 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 21:44:10 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 21:44:10 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 21:44:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 21:44:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 21:44:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 21:44:10 GMT
ENV GPG_KEYS=D95C03BC702BE9515344AE3374E44BC9067701A5 016895DE9A475111D537A6E69134FF30BC5A99B5 5CFF17B64DC1C244F5D0EAC3E43535E2EB19010E
# Thu, 05 Nov 2026 21:44:10 GMT
ENV PHP_VERSION=8.6.0
# Thu, 05 Nov 2026 21:44:10 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.6.0.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.6.0.tar.xz.asc
# Thu, 05 Nov 2026 21:44:10 GMT
ENV PHP_SHA256=5f84beaa3d763aee1e4feed99bf54ec692c383b322e25626807b589238c3a087
# Thu, 19 Nov 2026 17:26:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 17:26:42 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 17:32:54 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		php --version # buildkit
# Thu, 19 Nov 2026 17:32:55 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 17:32:56 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 17:32:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 17:32:57 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 17:32:57 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 17:32:57 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 17:32:57 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 17:32:57 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:6f9768cc5f6423f8942751565e49e2e8feab6597d57ab26efd88d8959ad0f0f5`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3819006 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1af1e2ce2d8537c5f1086c9f309b875a6c8da48e3fbb9506ea9f7625a14e172`  
		Last Modified: Thu, 05 Nov 2026 21:49:30 GMT  
		Size: 3.7 MB (3671859 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a142126428352fbcc113bc84fe73459202321fb58b139da9ef4f17632612f58`  
		Last Modified: Thu, 05 Nov 2026 21:49:30 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a73b08e75f2cf18162697c373f39d4e2142d8b6da4f5b8ad76c83e1f11467fe`  
		Last Modified: Thu, 05 Nov 2026 21:49:30 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bd85422f9e745269cca96876995d3920469a8839041c5819dde715cfffe99fb`  
		Last Modified: Thu, 19 Nov 2026 17:33:19 GMT  
		Size: 15.2 MB (15171277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8618bbb5c1c1eed34e90c4c2560593bf295660f5a4b652bce9005410699d9185`  
		Last Modified: Thu, 19 Nov 2026 17:33:17 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5cecaecb4b355b03500f2a8d30c3ed4a5a22a34528cd583ac617fa991fc869bc`  
		Last Modified: Thu, 19 Nov 2026 17:33:18 GMT  
		Size: 15.6 MB (15578846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5ee8d71df02bc4eff0ee010f34c99ca5299df64304fa7dcdd5fc9ba4b307b32`  
		Last Modified: Thu, 19 Nov 2026 17:33:17 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b9d73433222ad39a75625f8af2e3d2e1eb27c7565d7b379239e2ac16b2c9fe5`  
		Last Modified: Thu, 19 Nov 2026 17:33:18 GMT  
		Size: 21.9 KB (21872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83b9196c40f3693e2a5b154290bb899ce065d73ce4fd2626e5de97b7dca94feb`  
		Last Modified: Thu, 19 Nov 2026 17:33:19 GMT  
		Size: 9.2 KB (9214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:35098f0130b9cb1365a310983d2cfe00cdb4a014726416b0beb9381e4a6bc2b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.1 KB (295148 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f274aa6bc662cd0f800e087b31e2c554f0b5612bdfaa33279cc4ddf1e38fa473`

```dockerfile
```

-	Layers:
	-	`sha256:ccbc6fd0dd04a0519302d8c9c9c47bb6ed24e0118e696ed70db5b91277465b79`  
		Last Modified: Thu, 19 Nov 2026 17:33:17 GMT  
		Size: 248.3 KB (248327 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0cf36cbdbac3940c7ae1928c49f51b5afbf649cbb2cb8ef36ac9a5d44bae6339`  
		Last Modified: Thu, 19 Nov 2026 17:33:17 GMT  
		Size: 46.8 KB (46821 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-fpm-alpine3.23` - linux; riscv64

```console
$ docker pull php@sha256:a6bcb822ae4306149d8f2da8dbce3d96bf282058703bbf0f4f95f3fc33438336
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.5 MB (37488852 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b6e3f78d2358e593a6d4527d887b271f47d9afb36c79a25c199221491ae33dac`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Sun, 08 Nov 2026 12:36:05 GMT
ADD alpine-minirootfs-3.23.8-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:36:05 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 04:08:08 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 10 Nov 2026 04:08:08 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Tue, 10 Nov 2026 04:08:09 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 10 Nov 2026 04:08:09 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 10 Nov 2026 04:08:09 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 10 Nov 2026 04:08:09 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 10 Nov 2026 04:08:09 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 10 Nov 2026 04:08:09 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 10 Nov 2026 04:08:09 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 10 Nov 2026 04:08:09 GMT
ENV PHP_VERSION=8.5.12
# Tue, 10 Nov 2026 04:08:09 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Tue, 10 Nov 2026 04:08:09 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Tue, 10 Nov 2026 09:45:19 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Tue, 10 Nov 2026 09:45:19 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 11:58:09 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 10 Nov 2026 11:58:09 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 10 Nov 2026 11:58:14 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 10 Nov 2026 11:58:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 10 Nov 2026 11:58:14 GMT
WORKDIR /var/www/html
# Tue, 10 Nov 2026 11:58:14 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 10 Nov 2026 11:58:14 GMT
STOPSIGNAL SIGQUIT
# Tue, 10 Nov 2026 11:58:14 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 10 Nov 2026 11:58:14 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:40d8941112ffcb85e567141e79f094eb8ab795e6e171c6548ddc812cd9b19486`  
		Last Modified: Sun, 08 Nov 2026 12:36:40 GMT  
		Size: 3.6 MB (3580129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f71f3874ca1c271878bf7c9de496cfc8d8280c2c03335dc59496c2996738c87f`  
		Last Modified: Tue, 10 Nov 2026 05:12:02 GMT  
		Size: 3.6 MB (3634911 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6682e0dd2f43b4706a7e9b2d4aa30bbcc72bea04dcc64383fe8c8834d90129f`  
		Last Modified: Tue, 10 Nov 2026 05:12:01 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:461f02bd0f15db75b6a276d6a03ab6735c3e214d379b63a95ac7bd0ffc4302b3`  
		Last Modified: Tue, 10 Nov 2026 05:12:01 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c64474099c8910c4ead0e1d0a1c5c9eec4a44f288cd8d2c17c3f2aecd1ddb3ee`  
		Last Modified: Tue, 10 Nov 2026 10:51:10 GMT  
		Size: 14.6 MB (14577843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fc262568be9dcde0aed361f8f61100271ecffd4fad79ef14ebde7b041681a6f`  
		Last Modified: Tue, 10 Nov 2026 10:51:06 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26031d54c5c9a19754252cf9e786e9ecaf0135e6087a3f4ae239db34db1d7ef8`  
		Last Modified: Tue, 10 Nov 2026 11:59:24 GMT  
		Size: 15.7 MB (15660460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6e02d754e3066e43e21c9d43d058a7325981010d04cbb083cdbc0f1b7bf48b8`  
		Last Modified: Tue, 10 Nov 2026 11:59:21 GMT  
		Size: 2.5 KB (2456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57c6ac4e910ab571675945bdabceb211b2211c1184253962651993f213a59605`  
		Last Modified: Tue, 10 Nov 2026 11:59:21 GMT  
		Size: 22.1 KB (22116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8f9b50d8e6e5a8a6b1cfb6b643a5cad1554aa2d1243100b55479e97915d9361`  
		Last Modified: Tue, 10 Nov 2026 11:59:21 GMT  
		Size: 9.3 KB (9263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:ab45021da82d15d4c7d7215a59ef8e5c2a205e287110e5693e745c949e57313c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **305.2 KB (305237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2255d1f1beaf881881fc2ea20e9c8ddeffa1fbd2ee9580bc3246855bff89a95f`

```dockerfile
```

-	Layers:
	-	`sha256:753d91637fc95db0ac05356a2d2251282f0cf0517d7e60e6f1fe04b58bc207f1`  
		Last Modified: Tue, 10 Nov 2026 11:59:21 GMT  
		Size: 256.2 KB (256201 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:66656564ef1e4a3d90492895187f71faf5e7731abb3509ce4d2bd6d27b31e25c`  
		Last Modified: Tue, 10 Nov 2026 11:59:21 GMT  
		Size: 49.0 KB (49036 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-fpm-alpine3.23` - linux; s390x

```console
$ docker pull php@sha256:3636cc0805340da18c167621b7431b79c90bd43be434584a3b02deeabddd2126
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.3 MB (37347002 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4051b7c99f743b458122a617bd10ba42de868465bcf81fe6e93e3e1bd38679fa`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:40 GMT
ADD alpine-minirootfs-3.23.8-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:40 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:20:11 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:20:11 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:20:11 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:20:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:20:11 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:20:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:20:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:20:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:20:11 GMT
ENV GPG_KEYS=D95C03BC702BE9515344AE3374E44BC9067701A5 016895DE9A475111D537A6E69134FF30BC5A99B5 5CFF17B64DC1C244F5D0EAC3E43535E2EB19010E
# Thu, 05 Nov 2026 18:20:11 GMT
ENV PHP_VERSION=8.6.0
# Thu, 05 Nov 2026 18:20:11 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.6.0.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.6.0.tar.xz.asc
# Thu, 05 Nov 2026 18:20:11 GMT
ENV PHP_SHA256=5f84beaa3d763aee1e4feed99bf54ec692c383b322e25626807b589238c3a087
# Thu, 19 Nov 2026 15:13:38 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 15:13:38 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:17:59 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		php --version # buildkit
# Thu, 19 Nov 2026 15:17:59 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:18:00 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 15:18:00 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:18:00 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:18:00 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 15:18:00 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 15:18:00 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 15:18:00 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f31bb69faaf3a010059c4f255f2a9e2738683be277999f627a4cd72325be9271`  
		Last Modified: Thu, 05 Nov 2026 17:59:50 GMT  
		Size: 3.7 MB (3718347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fae5855a537729a8d995a0f9a9a3cd72dcdcfc4a66f719860a8c6ab56bb6b5c`  
		Last Modified: Thu, 05 Nov 2026 18:24:22 GMT  
		Size: 3.7 MB (3691043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4adc505f4637c412f27cfd947e220b4c8d78fc62591f4fb809ca952992232385`  
		Last Modified: Thu, 05 Nov 2026 18:24:22 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43b22878885b84660a986c0f25a10bfb6e425fd789d956405248d31394b5ac3b`  
		Last Modified: Thu, 05 Nov 2026 18:24:22 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c563d860218d6bd386df93b40b6cd2e8256bd3597878a996a6bee95aca46cdf0`  
		Last Modified: Thu, 19 Nov 2026 15:18:12 GMT  
		Size: 15.2 MB (15171253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea8106f381876aa15d794dfc9947fc8ad0ea7a6c6ee105c62a89f6907b689c9`  
		Last Modified: Thu, 19 Nov 2026 15:18:11 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eec023bc319ef3209d4ed57b41a0ca42ffc355da788cda1c0c6e47af18afeec1`  
		Last Modified: Thu, 19 Nov 2026 15:18:11 GMT  
		Size: 14.7 MB (14731170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24dfce88ea12c2368efd64766b108c7a3699e56674b8972b28b52a272f3743c9`  
		Last Modified: Thu, 19 Nov 2026 15:18:11 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54cf87dee246031ddfdf72cf0b1c18034d2d47bf46adadf24d6e5288e3d4491b`  
		Last Modified: Thu, 19 Nov 2026 15:18:12 GMT  
		Size: 21.9 KB (21858 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc9c75dfeab517b2175a36e053498b511c1ecbabb30236f9e515190d7d74ed20`  
		Last Modified: Thu, 19 Nov 2026 15:18:12 GMT  
		Size: 9.2 KB (9213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-fpm-alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:ed2573524561d0e5462a4bb275b46bc37756111fa27fed34f47901489253107f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.0 KB (296009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2720412a91b263d2eaecea6a30b9e257366eda02c8a0d588449f8a8addffeec8`

```dockerfile
```

-	Layers:
	-	`sha256:95c750d2e542b2ee6ced1c563de1ee36c2a63bd674fd5377e995ec075152e49a`  
		Last Modified: Thu, 19 Nov 2026 15:18:11 GMT  
		Size: 248.3 KB (248293 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98596f5773814f2470445a4bb2d3a527d5bf544f4e219f318a038c4e6b8a9d62`  
		Last Modified: Thu, 19 Nov 2026 15:18:11 GMT  
		Size: 47.7 KB (47716 bytes)  
		MIME: application/vnd.in-toto+json
