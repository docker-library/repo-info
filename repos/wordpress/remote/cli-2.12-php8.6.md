## `wordpress:cli-2.12-php8.6`

```console
$ docker pull wordpress@sha256:a5f25dcaaf20e7f009b40349d29712c2506043c3954660c72e6e10c4c0c4b7e4
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

### `wordpress:cli-2.12-php8.6` - linux; amd64

```console
$ docker pull wordpress@sha256:2e63ccad1f51cbd902fd26af98b14dc53444e4c0003e04f805af85a174b400cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.2 MB (76240378 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2542237fd096dba1451ffc73039a84fa4ed47997cae160c5815d780569ffc0c5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 15:16:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 19 Nov 2026 15:16:29 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 19 Nov 2026 15:16:29 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 19 Nov 2026 15:16:29 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 15:16:29 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 15:16:29 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 15:16:29 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 15:16:29 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 15:16:29 GMT
ENV GPG_KEYS=D95C03BC702BE9515344AE3374E44BC9067701A5 016895DE9A475111D537A6E69134FF30BC5A99B5 5CFF17B64DC1C244F5D0EAC3E43535E2EB19010E
# Thu, 19 Nov 2026 15:16:29 GMT
ENV PHP_VERSION=8.6.0
# Thu, 19 Nov 2026 15:16:29 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.6.0.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.6.0.tar.xz.asc
# Thu, 19 Nov 2026 15:16:29 GMT
ENV PHP_SHA256=5f84beaa3d763aee1e4feed99bf54ec692c383b322e25626807b589238c3a087
# Thu, 19 Nov 2026 15:16:32 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 15:16:32 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:20:37 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 						--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		php --version # buildkit
# Thu, 19 Nov 2026 15:20:37 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:20:37 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 15:20:37 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:20:37 GMT
CMD ["php" "-a"]
# Mon, 23 Nov 2026 23:42:00 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Mon, 23 Nov 2026 23:42:00 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Mon, 23 Nov 2026 23:42:00 GMT
WORKDIR /var/www/html
# Mon, 23 Nov 2026 23:42:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		oniguruma-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 		mbstring 	; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Mon, 23 Nov 2026 23:42:56 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Mon, 23 Nov 2026 23:42:58 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Mon, 23 Nov 2026 23:42:58 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Mon, 23 Nov 2026 23:42:58 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Mon, 23 Nov 2026 23:42:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Mon, 23 Nov 2026 23:42:58 GMT
VOLUME [/var/www/html]
# Mon, 23 Nov 2026 23:42:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:42:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:42:58 GMT
USER www-data
# Mon, 23 Nov 2026 23:42:58 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c939b9db3a6458797b21f1d849cc462a556858d7e602cd5e0b9dfe5e52a8c7ed`  
		Last Modified: Thu, 19 Nov 2026 15:20:46 GMT  
		Size: 6.0 MB (5974109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:395f6509e3044aabc522df2230d5a30a4f00094edf07740177789dd8363e4295`  
		Last Modified: Thu, 19 Nov 2026 15:20:46 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c932ac8aa6b0ba519b7790375823013f119529f606d134df526197eabf16c4a1`  
		Last Modified: Thu, 19 Nov 2026 15:20:46 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:871a009647c48415a267dfc94a409c90da819430c5bc009e18379566e30ace42`  
		Last Modified: Thu, 19 Nov 2026 15:20:46 GMT  
		Size: 15.2 MB (15171273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1689a373ba1f3084a3f63bffea3bbe8cfcab15e784eaf8e20fb1e81a1f17de0`  
		Last Modified: Thu, 19 Nov 2026 15:20:47 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36c543e9a314b211566d06dd314831461677d16b84c133fd031347319f72f284`  
		Last Modified: Thu, 19 Nov 2026 15:20:48 GMT  
		Size: 27.1 MB (27097087 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddb7145195bbe4f7715cf75208a64a321ac01489793295d121bc350dfaaf4471`  
		Last Modified: Thu, 19 Nov 2026 15:20:47 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae2fcf5a94891b9615ec36e247f5953d1257e82134651f025e7ac3cf81cebcda`  
		Last Modified: Thu, 19 Nov 2026 15:20:48 GMT  
		Size: 22.1 KB (22142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1223d43be590d5fb35c89170d038577b12281a52c6d77882323ed188b9c6b4cb`  
		Last Modified: Mon, 23 Nov 2026 23:43:06 GMT  
		Size: 11.8 MB (11784404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8576ce00fd7e83f950546dfdb416d01f698d4c1682eebddad1b46c1f9545376`  
		Last Modified: Mon, 23 Nov 2026 23:43:06 GMT  
		Size: 10.8 MB (10813130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d957090dd234431385f33153625c5c761ccf9790ac65126c5feca14967cb06be`  
		Last Modified: Mon, 23 Nov 2026 23:43:06 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a59a8133971d1d41852c207840324a592c9dc0665d32da5dd25893d577404d89`  
		Last Modified: Mon, 23 Nov 2026 23:43:06 GMT  
		Size: 1.5 MB (1519610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13620e9c9d213b657f1fc653a756be0e8bd9a0d064797e10135feeea486f226a`  
		Last Modified: Mon, 23 Nov 2026 23:43:07 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2.12-php8.6` - unknown; unknown

```console
$ docker pull wordpress@sha256:8ff7da574503b499f9dd4786d175ffe415878b04e8144357ef875c4db97ee5f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **422.7 KB (422723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3d80084b52c211b7e053b9bab686e021627c2a3f4efdee00e438bff4fb3e297`

```dockerfile
```

-	Layers:
	-	`sha256:74625d46427ed07464ef629366b462a3ea3dc46745b848b1531a930118469249`  
		Last Modified: Mon, 23 Nov 2026 23:43:06 GMT  
		Size: 382.4 KB (382427 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40b1b8c2b1316e854d7258ce39874036050eb31db11527ce17b9a89911f911ec`  
		Last Modified: Mon, 23 Nov 2026 23:43:06 GMT  
		Size: 40.3 KB (40296 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2.12-php8.6` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:6a4d6d61c25bc045357ac56d844693963c50477b04851323d74dc774c5a62c99
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.5 MB (66540110 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b51a8c57685026931951c89cd913786f0f3e973e261377ac97006aa5cd444d3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 14:29:26 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 19 Nov 2026 14:29:26 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 19 Nov 2026 14:29:26 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 19 Nov 2026 14:29:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:29:26 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:29:26 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:29:26 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:29:26 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:29:26 GMT
ENV GPG_KEYS=D95C03BC702BE9515344AE3374E44BC9067701A5 016895DE9A475111D537A6E69134FF30BC5A99B5 5CFF17B64DC1C244F5D0EAC3E43535E2EB19010E
# Thu, 19 Nov 2026 14:29:26 GMT
ENV PHP_VERSION=8.6.0
# Thu, 19 Nov 2026 14:29:26 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.6.0.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.6.0.tar.xz.asc
# Thu, 19 Nov 2026 14:29:26 GMT
ENV PHP_SHA256=5f84beaa3d763aee1e4feed99bf54ec692c383b322e25626807b589238c3a087
# Thu, 19 Nov 2026 15:37:57 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 15:37:57 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:41:01 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 						--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		php --version # buildkit
# Thu, 19 Nov 2026 15:41:01 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:41:01 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 15:41:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:41:01 GMT
CMD ["php" "-a"]
# Mon, 23 Nov 2026 23:41:54 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Mon, 23 Nov 2026 23:41:54 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Mon, 23 Nov 2026 23:41:54 GMT
WORKDIR /var/www/html
# Mon, 23 Nov 2026 23:43:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		oniguruma-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 		mbstring 	; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Mon, 23 Nov 2026 23:43:42 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Mon, 23 Nov 2026 23:43:44 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Mon, 23 Nov 2026 23:43:44 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Mon, 23 Nov 2026 23:43:44 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Mon, 23 Nov 2026 23:43:44 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Mon, 23 Nov 2026 23:43:44 GMT
VOLUME [/var/www/html]
# Mon, 23 Nov 2026 23:43:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:43:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:43:44 GMT
USER www-data
# Mon, 23 Nov 2026 23:43:44 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e551a6cfdc4cc861dbf32c1af89a7125ac5a0f330f25257d3761e822678e12a2`  
		Last Modified: Thu, 19 Nov 2026 14:32:48 GMT  
		Size: 5.2 MB (5211722 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74cd3d561c1cd0282e98d88f4833a8836dca2fe2dff369b7ea1aed29bb5d0847`  
		Last Modified: Thu, 19 Nov 2026 14:32:47 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf0d08db12532d3262249b087db740f77ba16413905a93402c44b91426851552`  
		Last Modified: Thu, 19 Nov 2026 14:32:47 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d17935a19b5ce0855f6885044dbe25b002512ce9079700ab91b77be7623529ac`  
		Last Modified: Thu, 19 Nov 2026 15:41:09 GMT  
		Size: 15.2 MB (15171298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e1415dfdfa212652e6859ec6b7c7a8007e6cd1fef693eba9b395fb988c797bd`  
		Last Modified: Thu, 19 Nov 2026 15:41:09 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb1a5cb42ba446d6dac816e474245e8ee82ae122e683e82ed9b91a345b3e2265`  
		Last Modified: Thu, 19 Nov 2026 15:41:09 GMT  
		Size: 21.2 MB (21249146 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:702429d4195c2ab281eed3a517a585bade17840db596ea2238d137c12493547c`  
		Last Modified: Thu, 19 Nov 2026 15:41:09 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56466689f6b76c8d21c95dbe6c03647375b15e2b560fe2307fde814e6f02a6e6`  
		Last Modified: Thu, 19 Nov 2026 15:41:10 GMT  
		Size: 21.9 KB (21925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc788cf56faee26b1b96578925e540e274311138bd67e393485793ab579bbf8`  
		Last Modified: Mon, 23 Nov 2026 23:43:52 GMT  
		Size: 11.0 MB (11036275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b2ec3cd3cb985dffdc54238385102cf4cbb5d9b8ab38024988cd29716394420`  
		Last Modified: Mon, 23 Nov 2026 23:43:52 GMT  
		Size: 9.1 MB (9057410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:245bd9d7a19ef1787a379554e9b2f7d1536d615f99d26e74c35e7dc3dcb29623`  
		Last Modified: Mon, 23 Nov 2026 23:43:51 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a70a5cbeedb21a16fff05ccd066ba99029c41dd8469699a1738fb0a568bc8f97`  
		Last Modified: Mon, 23 Nov 2026 23:43:52 GMT  
		Size: 1.5 MB (1519639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06104544b00c5b22abd57be05a6deb428ecbe3a6b2e3db3c81c08cb9bb8dd58a`  
		Last Modified: Mon, 23 Nov 2026 23:43:53 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2.12-php8.6` - unknown; unknown

```console
$ docker pull wordpress@sha256:acbb3b76db3711ea805609100006e0defd85dc1f20b841c5148ccbe90e133af3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **421.0 KB (420998 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0df75647d1f8b0a8982b8347542534753aa181e38020c9d1757cca822992d8dd`

```dockerfile
```

-	Layers:
	-	`sha256:3f5e756e6a8a5143f0e75ccb9e7ea0ce94bb6e3eebc6d7d883e86941204a42f0`  
		Last Modified: Mon, 23 Nov 2026 23:43:51 GMT  
		Size: 380.6 KB (380575 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:211db2296d7c8e914172f2f36f00a04b4a086515cd05fb4278f78627cac9bcea`  
		Last Modified: Mon, 23 Nov 2026 23:43:51 GMT  
		Size: 40.4 KB (40423 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2.12-php8.6` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:5d871a606b333729218171230fb55123e7df53063b505b815f3e76bcb2743ce3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.2 MB (75198385 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb55c679d08df57c99d8c763bab6eca55c8e982680a643e66fd7e04cf12936f7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 14:35:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 19 Nov 2026 14:35:39 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 19 Nov 2026 14:35:39 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 19 Nov 2026 14:35:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:35:39 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:35:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:35:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:35:39 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:35:39 GMT
ENV GPG_KEYS=D95C03BC702BE9515344AE3374E44BC9067701A5 016895DE9A475111D537A6E69134FF30BC5A99B5 5CFF17B64DC1C244F5D0EAC3E43535E2EB19010E
# Thu, 19 Nov 2026 14:35:39 GMT
ENV PHP_VERSION=8.6.0
# Thu, 19 Nov 2026 14:35:39 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.6.0.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.6.0.tar.xz.asc
# Thu, 19 Nov 2026 14:35:39 GMT
ENV PHP_SHA256=5f84beaa3d763aee1e4feed99bf54ec692c383b322e25626807b589238c3a087
# Thu, 19 Nov 2026 15:17:20 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 15:17:20 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:20:34 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 						--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		php --version # buildkit
# Thu, 19 Nov 2026 15:20:34 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:20:35 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 15:20:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:20:35 GMT
CMD ["php" "-a"]
# Mon, 23 Nov 2026 23:41:50 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Mon, 23 Nov 2026 23:41:50 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Mon, 23 Nov 2026 23:41:50 GMT
WORKDIR /var/www/html
# Mon, 23 Nov 2026 23:42:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		oniguruma-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 		mbstring 	; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Mon, 23 Nov 2026 23:42:59 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Mon, 23 Nov 2026 23:43:01 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Mon, 23 Nov 2026 23:43:01 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Mon, 23 Nov 2026 23:43:01 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Mon, 23 Nov 2026 23:43:01 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Mon, 23 Nov 2026 23:43:01 GMT
VOLUME [/var/www/html]
# Mon, 23 Nov 2026 23:43:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:43:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:43:01 GMT
USER www-data
# Mon, 23 Nov 2026 23:43:01 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8340026f42bdb9fdfb653427341268b8ad0667d09f19d69e9d57d674ca9bc708`  
		Last Modified: Thu, 19 Nov 2026 14:39:06 GMT  
		Size: 6.3 MB (6288554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d4e559cd456e861543b8d94c7d1077097949090faad3b338c5db5cafbd5f5b9`  
		Last Modified: Thu, 19 Nov 2026 14:39:06 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:448b770cac8d5e0e92ed244abff8516e97a8a48d3b2deabc58c6d671f25abc61`  
		Last Modified: Thu, 19 Nov 2026 14:39:06 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aea885f6b947dc3b2a1ba6313dd8542a26a75aa16b677a18b9f9dfb7764f2e62`  
		Last Modified: Thu, 19 Nov 2026 15:20:43 GMT  
		Size: 15.2 MB (15171266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:377428e8b6c12326bf88242cf7442a8207347f5c00d874e81afdaeed4b98f4f2`  
		Last Modified: Thu, 19 Nov 2026 15:20:42 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8010679a41d28a2a8329c6a5d5b8edc7ffc17caaff99b5c71a1549869b693e0`  
		Last Modified: Thu, 19 Nov 2026 15:20:43 GMT  
		Size: 25.7 MB (25709563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0176b5afdbda1e2eae202e7146e26570bbb03180ba1aad81b1f6803aaeeb9267`  
		Last Modified: Thu, 19 Nov 2026 15:20:42 GMT  
		Size: 2.4 KB (2444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0535ead34b6a8dadb5626c168991ae7535867c915d6a1332330a0880bf7e36f`  
		Last Modified: Thu, 19 Nov 2026 15:20:44 GMT  
		Size: 21.9 KB (21926 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f11c78f8cabeaa7da2e58a2df2ff8ec29dc6f95867a089961d3e917fb618dc0b`  
		Last Modified: Mon, 23 Nov 2026 23:43:10 GMT  
		Size: 11.7 MB (11711593 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1312b66b4a65c440d8d8275d695cdc8dfc934dec00b84f0b0afe5e4af97527d`  
		Last Modified: Mon, 23 Nov 2026 23:43:10 GMT  
		Size: 10.6 MB (10580343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0daf41c55880b901ba6ee18d9ad9372f2a44e4567737501e95330e4bd020073`  
		Last Modified: Mon, 23 Nov 2026 23:43:10 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86c191923fe090cb32dfc6d1113a82ef75b221ac4fc13b25d8a90b0028cbf606`  
		Last Modified: Mon, 23 Nov 2026 23:43:10 GMT  
		Size: 1.5 MB (1519594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64d9ec598e3f82e41a4cbb95d1aa80a09e18b40556bed0de2d0931d02ec3aa44`  
		Last Modified: Mon, 23 Nov 2026 23:43:11 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2.12-php8.6` - unknown; unknown

```console
$ docker pull wordpress@sha256:3c024a08f9a1ae27453991a525a6e275d798f4d6cfd8c56ce942307796645657
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **421.1 KB (421055 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ab7b49ea31e92eab71a4256a5f7e7f1a8a3b593e1a22848c1d3e7967129a278`

```dockerfile
```

-	Layers:
	-	`sha256:c6fe32591a5856a0ecf60d84ae9c201e4efd72fb77af276374b78607304b2cda`  
		Last Modified: Mon, 23 Nov 2026 23:43:09 GMT  
		Size: 380.6 KB (380595 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0a1c375dc07a817b81ca37a63e1bba3617789f9edb17da8c5faf6944c1f468c`  
		Last Modified: Mon, 23 Nov 2026 23:43:09 GMT  
		Size: 40.5 KB (40460 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2.12-php8.6` - linux; 386

```console
$ docker pull wordpress@sha256:59ec0fd0ea737eac9943c4a80484b1e4e323230646950e7bcc9d9319b8859dc0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.9 MB (75856565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b3d0343c102ae5eb7cb0178a69fd1a2f1076022c861f337eabb3bb16ef0855b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 15:17:01 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 19 Nov 2026 15:17:01 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 19 Nov 2026 15:17:01 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 19 Nov 2026 15:17:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 15:17:01 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 15:17:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 15:17:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 15:17:01 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 15:17:01 GMT
ENV GPG_KEYS=D95C03BC702BE9515344AE3374E44BC9067701A5 016895DE9A475111D537A6E69134FF30BC5A99B5 5CFF17B64DC1C244F5D0EAC3E43535E2EB19010E
# Thu, 19 Nov 2026 15:17:01 GMT
ENV PHP_VERSION=8.6.0
# Thu, 19 Nov 2026 15:17:01 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.6.0.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.6.0.tar.xz.asc
# Thu, 19 Nov 2026 15:17:01 GMT
ENV PHP_SHA256=5f84beaa3d763aee1e4feed99bf54ec692c383b322e25626807b589238c3a087
# Thu, 19 Nov 2026 15:17:04 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 15:17:04 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:21:42 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 						--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		php --version # buildkit
# Thu, 19 Nov 2026 15:21:42 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:21:43 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 15:21:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:21:43 GMT
CMD ["php" "-a"]
# Mon, 23 Nov 2026 23:40:15 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Mon, 23 Nov 2026 23:40:15 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Mon, 23 Nov 2026 23:40:15 GMT
WORKDIR /var/www/html
# Mon, 23 Nov 2026 23:41:18 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		oniguruma-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 		mbstring 	; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Mon, 23 Nov 2026 23:41:18 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Mon, 23 Nov 2026 23:41:20 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Mon, 23 Nov 2026 23:41:20 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Mon, 23 Nov 2026 23:41:20 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Mon, 23 Nov 2026 23:41:20 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Mon, 23 Nov 2026 23:41:20 GMT
VOLUME [/var/www/html]
# Mon, 23 Nov 2026 23:41:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:41:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:41:20 GMT
USER www-data
# Mon, 23 Nov 2026 23:41:20 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64fee559a73ea80c7bc7e887f3cc091e492ee2b163847449355ad559ec106f3a`  
		Last Modified: Thu, 19 Nov 2026 15:21:51 GMT  
		Size: 5.8 MB (5820627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:938850a9e8fdb149f711c1bbec1efe62a57982d16db4e9a7c3b703c1d21d0d02`  
		Last Modified: Thu, 19 Nov 2026 15:21:50 GMT  
		Size: 929.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e905d0546abf21e4a1e2bf42985b7e445af0df61a18a09fb0437416b4b036fa`  
		Last Modified: Thu, 19 Nov 2026 15:21:50 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6002fe0d9870b0366777f4b28ad3a81fa173098ba1fed3ceee340dae0dbb436b`  
		Last Modified: Thu, 19 Nov 2026 15:21:51 GMT  
		Size: 15.2 MB (15171252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71f869f497bc1360599c795f25b673d9420c1f69123bc73f4b1cd9b3679183a9`  
		Last Modified: Thu, 19 Nov 2026 15:21:51 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cf2750ed4a31d2221c4096cf974240e39d7a120dcf83d5b7e9df2dcd9faf115`  
		Last Modified: Thu, 19 Nov 2026 15:21:52 GMT  
		Size: 27.9 MB (27922002 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3400a553c8cfb86376f8ac03044b23f309520916eb86309c878db5649864922`  
		Last Modified: Thu, 19 Nov 2026 15:21:52 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4855c5c40eda4fe45a186dfe92c8270f726ec66346e1c08338b757feca753151`  
		Last Modified: Thu, 19 Nov 2026 15:21:52 GMT  
		Size: 22.1 KB (22098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e27ba0c8ef16d8a046285a6766e3fbdb7ea438ce79efa1e89e11777fa678a7db`  
		Last Modified: Mon, 23 Nov 2026 23:41:29 GMT  
		Size: 11.9 MB (11929186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf92aeac2b32aa128cfa1cbebdc0bcc20c429fbdedf719381984fd3f6167106b`  
		Last Modified: Mon, 23 Nov 2026 23:41:29 GMT  
		Size: 9.8 MB (9786489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dde687f03d818016178d29ca10d0eca5f1692f330c879776ae6d206b6627f51`  
		Last Modified: Mon, 23 Nov 2026 23:41:28 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bf9e241fde448072d6a9b7132c2c226b85bbede5c9a39ce95d077ac4590ae4d`  
		Last Modified: Mon, 23 Nov 2026 23:41:28 GMT  
		Size: 1.5 MB (1519604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18a67eb293b227de7ddce69842b69ae622b258482bec044f581da87ccc56e67c`  
		Last Modified: Mon, 23 Nov 2026 23:41:30 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2.12-php8.6` - unknown; unknown

```console
$ docker pull wordpress@sha256:ee3d759124432a65b1186610b42ef844d24cadbc356ee570004432b2458115ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **422.7 KB (422654 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b2b2fe2fae669989f28da97b4e2f8877201d87fafca8db2d80fdce252717cb90`

```dockerfile
```

-	Layers:
	-	`sha256:d2e527ab9f2326d193ce36091059155ee02471e98c25c4b513f3ba5d1f32cdd2`  
		Last Modified: Mon, 23 Nov 2026 23:41:28 GMT  
		Size: 382.4 KB (382402 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:275fa7413b345c77f63b07423d5b5e7133a59353c2e914ab977a7e8dcded0427`  
		Last Modified: Mon, 23 Nov 2026 23:41:28 GMT  
		Size: 40.3 KB (40252 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2.12-php8.6` - linux; ppc64le

```console
$ docker pull wordpress@sha256:311d2f5e7882cda36915d3f710adabf7b59b5506ee97cd7c8b1e90a0c3804128
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.7 MB (76688794 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3caf3d511f9d180baef1475891a59ebdb770440dae15a596f166557622ae93c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:37:41 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 21:37:41 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 21:37:43 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 21:37:43 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 21:37:46 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 21:37:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 21:37:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 21:37:46 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 21:37:46 GMT
ENV GPG_KEYS=D95C03BC702BE9515344AE3374E44BC9067701A5 016895DE9A475111D537A6E69134FF30BC5A99B5 5CFF17B64DC1C244F5D0EAC3E43535E2EB19010E
# Thu, 05 Nov 2026 21:37:46 GMT
ENV PHP_VERSION=8.6.0
# Thu, 05 Nov 2026 21:37:46 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.6.0.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.6.0.tar.xz.asc
# Thu, 05 Nov 2026 21:37:46 GMT
ENV PHP_SHA256=5f84beaa3d763aee1e4feed99bf54ec692c383b322e25626807b589238c3a087
# Thu, 19 Nov 2026 17:19:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 17:19:45 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 17:25:59 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 						--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		php --version # buildkit
# Thu, 19 Nov 2026 17:26:00 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 17:26:01 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 17:26:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 17:26:01 GMT
CMD ["php" "-a"]
# Mon, 23 Nov 2026 23:42:38 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Mon, 23 Nov 2026 23:42:39 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Mon, 23 Nov 2026 23:42:39 GMT
WORKDIR /var/www/html
# Mon, 23 Nov 2026 23:45:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		oniguruma-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 		mbstring 	; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Mon, 23 Nov 2026 23:45:09 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Mon, 23 Nov 2026 23:45:13 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Mon, 23 Nov 2026 23:45:13 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Mon, 23 Nov 2026 23:45:13 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Mon, 23 Nov 2026 23:45:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Mon, 23 Nov 2026 23:45:13 GMT
VOLUME [/var/www/html]
# Mon, 23 Nov 2026 23:45:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:45:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:45:13 GMT
USER www-data
# Mon, 23 Nov 2026 23:45:13 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46d45d42befed46bba518e63b124c822b4f3e5e56556cd342469e05eef60e1e4`  
		Last Modified: Thu, 05 Nov 2026 21:43:48 GMT  
		Size: 3.7 MB (3672704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b27df544a7e4deac06d4c069baa6d3874e5a90dfd80a8e6b929669a250180798`  
		Last Modified: Thu, 05 Nov 2026 21:43:48 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a7207e849983464015f2e0550d571425c965d393be98f77abbba0af805774bf`  
		Last Modified: Thu, 05 Nov 2026 21:43:48 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08ccb63ce46f3c71de90ab57c9616dbda4e5bb5440fb9bfd84ac4a742aa294e2`  
		Last Modified: Thu, 19 Nov 2026 17:26:22 GMT  
		Size: 15.2 MB (15171255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c631cb9917e01e777201b501347ecbaec430221cacca718650dfda501bf286b`  
		Last Modified: Thu, 19 Nov 2026 17:26:21 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e950277873392e39b068470546358e631e3571e69dd6445de13a9f2f5d64722b`  
		Last Modified: Thu, 19 Nov 2026 17:26:22 GMT  
		Size: 29.5 MB (29479257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5f8bb197cf70e0bdbb619c34e2390f24a1f5da02973be83b1e95580261aabcf`  
		Last Modified: Thu, 19 Nov 2026 17:26:21 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f1a44b996288677cdb2e83590d726710d8e30c7fdf768646cbb87538398ac3d`  
		Last Modified: Thu, 19 Nov 2026 17:26:22 GMT  
		Size: 22.0 KB (21971 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae80d35ad76071c027100e36351291d5e8fa36bb6099989833ac2a28a5f3a19d`  
		Last Modified: Mon, 23 Nov 2026 23:45:37 GMT  
		Size: 12.4 MB (12447310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13abbedfd7cbc0327a93778b0e325c336f6ac97de6625eecbe3d9f7d3af5b16b`  
		Last Modified: Mon, 23 Nov 2026 23:45:37 GMT  
		Size: 10.5 MB (10549735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b1f0f749264014dcec3262066853d590306414fe27755996e29dd4a2b014094`  
		Last Modified: Mon, 23 Nov 2026 23:45:37 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf866aae0e0b49d93e68e115234e7361b472d3d30a0333dbecaece2a47fb3acc`  
		Last Modified: Mon, 23 Nov 2026 23:45:37 GMT  
		Size: 1.5 MB (1519675 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:367977f6005b47b8035c263de147235e1d162708bd1a419e5ab029dc76959e65`  
		Last Modified: Mon, 23 Nov 2026 23:45:38 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2.12-php8.6` - unknown; unknown

```console
$ docker pull wordpress@sha256:90d6fa63ae39ee8e151ab149e69f5dcdce390cb49c1185a739df1d2e35a3930b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.9 KB (420920 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:82e59950838819fee2061894d451c44d7e57dc9f883a751ddecd2d7a5f6e6afb`

```dockerfile
```

-	Layers:
	-	`sha256:ca3c3f627ee4e95646fc41189fee2563d8e5f413a7ff6c1b2c703c5e7b0c93ce`  
		Last Modified: Mon, 23 Nov 2026 23:45:37 GMT  
		Size: 380.6 KB (380572 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:11b8a5d427b2a4bf6099419ae101aeafd67be757c65aa80599a39e060cdb476c`  
		Last Modified: Mon, 23 Nov 2026 23:45:37 GMT  
		Size: 40.3 KB (40348 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2.12-php8.6` - linux; s390x

```console
$ docker pull wordpress@sha256:58609244fe93629d7f38863b574fac4c393b1f76234e3ddf0db981ac659bc85b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.3 MB (75274398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9993a300c2a263591dd10b8f79f89656269189cf277115844635de80ecaacdff`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:18:58 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:18:58 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:18:58 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:18:58 GMT
ENV GPG_KEYS=D95C03BC702BE9515344AE3374E44BC9067701A5 016895DE9A475111D537A6E69134FF30BC5A99B5 5CFF17B64DC1C244F5D0EAC3E43535E2EB19010E
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHP_VERSION=8.6.0
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.6.0.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.6.0.tar.xz.asc
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHP_SHA256=5f84beaa3d763aee1e4feed99bf54ec692c383b322e25626807b589238c3a087
# Thu, 19 Nov 2026 15:08:55 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 15:08:55 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:13:13 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 						--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		php --version # buildkit
# Thu, 19 Nov 2026 15:13:13 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:13:14 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 15:13:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:13:14 GMT
CMD ["php" "-a"]
# Mon, 23 Nov 2026 23:38:23 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Mon, 23 Nov 2026 23:38:23 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Mon, 23 Nov 2026 23:38:24 GMT
WORKDIR /var/www/html
# Mon, 23 Nov 2026 23:39:30 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		oniguruma-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 		mbstring 	; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Mon, 23 Nov 2026 23:39:30 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Mon, 23 Nov 2026 23:39:32 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Mon, 23 Nov 2026 23:39:32 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Mon, 23 Nov 2026 23:39:32 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Mon, 23 Nov 2026 23:39:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Mon, 23 Nov 2026 23:39:32 GMT
VOLUME [/var/www/html]
# Mon, 23 Nov 2026 23:39:32 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 23 Nov 2026 23:39:32 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 23 Nov 2026 23:39:32 GMT
USER www-data
# Mon, 23 Nov 2026 23:39:32 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9722c0427342697b5cdc3ada96c16379515126b96d9784dc533dd21780acaa3d`  
		Last Modified: Thu, 05 Nov 2026 18:24:02 GMT  
		Size: 3.7 MB (3690989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6cce96afb7d29f5567987a267924cefd3043f5bf382a8f086e4ca582accbaf8`  
		Last Modified: Thu, 05 Nov 2026 18:24:02 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8531dc7abbb6c03e22a51e331a5b8ec6512eb261a07cb4b271b34d6fdd2c2253`  
		Last Modified: Thu, 05 Nov 2026 18:24:02 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d3d578ea97e4c4dc6d3dc486140f7aa1e21ef9dbf05a3156cf95b556822367`  
		Last Modified: Thu, 19 Nov 2026 15:13:28 GMT  
		Size: 15.2 MB (15171247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e64228259ec096d8050e074e0bd2cbe43066b24b05c0704696c6661e91f1faae`  
		Last Modified: Thu, 19 Nov 2026 15:13:27 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7a4caaa4493515ba5a7b9bda1fee6b557d9fdcd8ad83c55deb79ba79016cc38`  
		Last Modified: Thu, 19 Nov 2026 15:13:28 GMT  
		Size: 27.8 MB (27837000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96e6783629449c104aa2548118d99a34815ba4477ebbf23e2c5526f9943849db`  
		Last Modified: Thu, 19 Nov 2026 15:13:27 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bd11242b6d7226befa73a1455e23485c4c99c2924b04d7fc7231b55a4227fb7`  
		Last Modified: Thu, 19 Nov 2026 15:13:28 GMT  
		Size: 21.9 KB (21934 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cf44b6ea76655dd0684610c9ca1828d04e865470ff97d80183333a2369131b7`  
		Last Modified: Mon, 23 Nov 2026 23:39:47 GMT  
		Size: 13.2 MB (13202463 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85631713dc88b282d314840155018411a765b7e3deb66d12d630f66af34669bc`  
		Last Modified: Mon, 23 Nov 2026 23:39:47 GMT  
		Size: 10.1 MB (10105500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72479dd8e4abde23f7178040b3976f21246f9aaf62982c2e1db4a94748ccf574`  
		Last Modified: Mon, 23 Nov 2026 23:39:46 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:868954ad40605e516953e4ae6e3ae45c889ecab5edfdb42a67497d1ca53a9fc4`  
		Last Modified: Mon, 23 Nov 2026 23:39:47 GMT  
		Size: 1.5 MB (1519633 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c92f52499010c774c86690cdc6b6da4a213db116f2e06f73f727d230e757c95`  
		Last Modified: Mon, 23 Nov 2026 23:39:47 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2.12-php8.6` - unknown; unknown

```console
$ docker pull wordpress@sha256:effd2c86e068fc9fd53bf78649969679287121bd4427f0a535cb761f59abae41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **420.8 KB (420834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a22720f648d94ec36e35e4ea2251bcd33d15c6cc86aef6691273789f9b78548`

```dockerfile
```

-	Layers:
	-	`sha256:b181def5f49b1f9d9e5418158fe1a6a6e18047a9e8b8e16700d34c20518a3953`  
		Last Modified: Mon, 23 Nov 2026 23:39:46 GMT  
		Size: 380.5 KB (380538 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:01015b444f2325c1d0986e5d68171d3009ece2ce109ea0b706cc6151073f5220`  
		Last Modified: Mon, 23 Nov 2026 23:39:46 GMT  
		Size: 40.3 KB (40296 bytes)  
		MIME: application/vnd.in-toto+json
