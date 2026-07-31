## `wordpress:cli-php8.4`

```console
$ docker pull wordpress@sha256:d36ad6f934b3d073901a229e98199370cdf719576c9fab340ba7ab305293dbd2
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

### `wordpress:cli-php8.4` - linux; amd64

```console
$ docker pull wordpress@sha256:59e6bf2b2b353c11ad7697dc2ed1f4418a3ee1e1512c25b4ad1e56542d86102b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (73038229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6802b6ddf1098cf4902f7793b2454dd41515176d60fcbfa441839b44e5bb10c1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 22:46:03 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 30 Jul 2026 22:46:03 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 30 Jul 2026 22:46:03 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 30 Jul 2026 22:46:03 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:46:03 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:46:03 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:46:03 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:46:03 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:46:03 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 30 Jul 2026 22:46:03 GMT
ENV PHP_VERSION=8.4.24
# Thu, 30 Jul 2026 22:46:03 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Thu, 30 Jul 2026 22:46:03 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Thu, 30 Jul 2026 22:46:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 22:46:05 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:49:01 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:49:01 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:49:02 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 22:49:02 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:49:02 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:49:02 GMT
CMD ["php" "-a"]
# Thu, 30 Jul 2026 23:16:50 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Thu, 30 Jul 2026 23:16:50 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Thu, 30 Jul 2026 23:16:50 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 23:17:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 30 Jul 2026 23:17:34 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 30 Jul 2026 23:17:35 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 30 Jul 2026 23:17:35 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Thu, 30 Jul 2026 23:17:35 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Thu, 30 Jul 2026 23:17:35 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Thu, 30 Jul 2026 23:17:35 GMT
VOLUME [/var/www/html]
# Thu, 30 Jul 2026 23:17:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:17:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 23:17:35 GMT
USER www-data
# Thu, 30 Jul 2026 23:17:35 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a18a150bee240313fa6dcc34d7e7b1b3df49506c51cb06d71f024f0ffb39091`  
		Last Modified: Thu, 30 Jul 2026 22:49:10 GMT  
		Size: 3.5 MB (3476117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d2dcf61e6fc61ae09af3ec141f78cb7f5fd23ddd3f7145fa40f4f39e796178f`  
		Last Modified: Thu, 30 Jul 2026 22:49:09 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdbec27a13c0ddd3dec66dd964050a6f644d5b547cf98e97f8b128675709d4c8`  
		Last Modified: Thu, 30 Jul 2026 22:49:09 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44dd5065ed4868f60de177b62ca8dade00ff1be960fb8b64e5be2df4575b10eb`  
		Last Modified: Thu, 30 Jul 2026 22:49:10 GMT  
		Size: 13.8 MB (13775190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42b944fad884e49d420a90cac660f308b763dca2ceb5494f19866a1601f8646f`  
		Last Modified: Thu, 30 Jul 2026 22:49:11 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30d32a3eb4a4a5cf61e6db1a8639341a974fde846e1235f12b69bc040311021d`  
		Last Modified: Thu, 30 Jul 2026 22:49:11 GMT  
		Size: 20.4 MB (20424605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d088f9999d8ca23833ff64314d9d72dbc91efebda93da03ef960dd622416dcc`  
		Last Modified: Thu, 30 Jul 2026 22:49:11 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b89d93f7ddccb3bd1e414505c894a00bca24290b1249e9729362d5dc46ccb16`  
		Last Modified: Thu, 30 Jul 2026 22:49:11 GMT  
		Size: 22.3 KB (22335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:441d62c46cddf5de8df061a0055ee95800666300c286c74b622d4d8c04d64f83`  
		Last Modified: Thu, 30 Jul 2026 22:49:12 GMT  
		Size: 22.3 KB (22341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4777d44cd4d7f5e851d1f27399f1738010b0e662eb94ac744c2c457f86747e9`  
		Last Modified: Thu, 30 Jul 2026 23:17:44 GMT  
		Size: 11.7 MB (11705538 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e305b44066e3ada612b1e49b87f25d42f2f974790cb0d16d10efa2716d996939`  
		Last Modified: Thu, 30 Jul 2026 23:17:44 GMT  
		Size: 18.2 MB (18226204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:116cb056574d3b8502ee2aba0154402f39983bc0f5ad1ae4d329af3e63ed842f`  
		Last Modified: Thu, 30 Jul 2026 23:17:43 GMT  
		Size: 384.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60efa64b4c17a0afff28863de34337bcb482d9daa911db7706e44818c5dd8d19`  
		Last Modified: Thu, 30 Jul 2026 23:17:43 GMT  
		Size: 1.5 MB (1534568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f30bc3e6bc550539149f63706a37497b095eeceb36a762e6080ed4158edf4f52`  
		Last Modified: Thu, 30 Jul 2026 23:17:44 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-php8.4` - unknown; unknown

```console
$ docker pull wordpress@sha256:38aedcf28f0daba20aee10b820c3b333f8b17eed0af5a2b40e7021d41f4eeb59
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **664.4 KB (664426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55b5b61688b35f37c19c692eb3bd2d7bd9cb06c8b59c6730cec578f44c6cd047`

```dockerfile
```

-	Layers:
	-	`sha256:935cd60c818026e4fd7d3b6445abf3615d258189073bdb9647c80cf49546f6ef`  
		Last Modified: Thu, 30 Jul 2026 23:17:43 GMT  
		Size: 622.3 KB (622327 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d32ddac7ced15094ce72a537f83ee96fd71e3746435925df10ef94edd9d51caa`  
		Last Modified: Thu, 30 Jul 2026 23:17:43 GMT  
		Size: 42.1 KB (42099 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-php8.4` - linux; arm variant v6

```console
$ docker pull wordpress@sha256:d4e3f213553bed3ef55ed7083b59d412221cf446a57d15e3ebe154e3d068bc51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.0 MB (67025846 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8dccd2e2e7bac8f2084c83346cbf808a4a9b3f50f173629e0f250c14792bbae6`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 22:34:56 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 30 Jul 2026 22:34:56 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 30 Jul 2026 22:34:57 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 30 Jul 2026 22:34:57 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:34:57 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:34:57 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:34:57 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:34:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:34:57 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 30 Jul 2026 22:34:57 GMT
ENV PHP_VERSION=8.4.24
# Thu, 30 Jul 2026 22:34:57 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Thu, 30 Jul 2026 22:34:57 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Thu, 30 Jul 2026 22:41:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 22:41:56 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:44:56 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:44:56 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:44:57 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 22:44:57 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:44:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:44:57 GMT
CMD ["php" "-a"]
# Thu, 30 Jul 2026 23:35:40 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Thu, 30 Jul 2026 23:35:40 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Thu, 30 Jul 2026 23:35:40 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 23:36:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 30 Jul 2026 23:36:59 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 30 Jul 2026 23:37:01 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 30 Jul 2026 23:37:01 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Thu, 30 Jul 2026 23:37:01 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Thu, 30 Jul 2026 23:37:01 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Thu, 30 Jul 2026 23:37:01 GMT
VOLUME [/var/www/html]
# Thu, 30 Jul 2026 23:37:01 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:37:01 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 23:37:01 GMT
USER www-data
# Thu, 30 Jul 2026 23:37:01 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ea7c3b971f38b1b2d1aecc2af79f1e9253448e8d96c69c3eb5acc3d1214cf39`  
		Last Modified: Thu, 30 Jul 2026 22:38:16 GMT  
		Size: 3.4 MB (3433047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:446de1bc2ae117d9ce75f87848580c147ab8e4413cd701aefd0168bc8a9196de`  
		Last Modified: Thu, 30 Jul 2026 22:38:15 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fdccecec4123de08c4cd7510ca2d461052c551c76287cc9c52567fc45b49489`  
		Last Modified: Thu, 30 Jul 2026 22:38:15 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9acf2c783ee16eeda35a79e1d27293aabf634d10390e7d34abc350d827b7745d`  
		Last Modified: Thu, 30 Jul 2026 22:45:04 GMT  
		Size: 13.8 MB (13775197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:615e0ca58f9e09683b19dc0591d2f8e27cedce0f6442282248e17b20b431fa2c`  
		Last Modified: Thu, 30 Jul 2026 22:45:03 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3f192f5bf8bd8f47e0c554798e87fe6ec31fcb36a05a6d908e900c65ca105d5`  
		Last Modified: Thu, 30 Jul 2026 22:45:04 GMT  
		Size: 18.4 MB (18447028 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7429833f6826c013608c7e332794fb7ea3069ee279b580c0eedc824289abf27`  
		Last Modified: Thu, 30 Jul 2026 22:45:03 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c8869252749dfd3a9b864164c5c9dbf40da521367b9541223b628db9dcaad9d`  
		Last Modified: Thu, 30 Jul 2026 22:45:04 GMT  
		Size: 22.1 KB (22120 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b259720459cad62167febe0e0ddd8b67068605a54577222586f679891c317fb`  
		Last Modified: Thu, 30 Jul 2026 22:45:04 GMT  
		Size: 22.1 KB (22128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88b45cf7ee9d1d63882e3eae4f88237147b8475ab93ed88a6733ace48d0a55e3`  
		Last Modified: Thu, 30 Jul 2026 23:37:06 GMT  
		Size: 11.3 MB (11340732 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5af5de14c26f149975d5e48d54c9996575001cce7a191efd3901c47afe3a7a07`  
		Last Modified: Thu, 30 Jul 2026 23:37:07 GMT  
		Size: 14.9 MB (14892627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:021c5b70be16f5f560d7431b6543c537e6d66448ffd1fd3ad80eecb3b838af86`  
		Last Modified: Thu, 30 Jul 2026 23:37:06 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:258e2bd52f3d3a78b7099b9c1ce922f38e5d6ce97651ccecc27d04e757c59e16`  
		Last Modified: Thu, 30 Jul 2026 23:37:06 GMT  
		Size: 1.5 MB (1534567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd5ccc53a8f333bac832742dbd9cab6dc1151bcc05a6e48247ff72c43f6d69c1`  
		Last Modified: Thu, 30 Jul 2026 23:37:07 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-php8.4` - unknown; unknown

```console
$ docker pull wordpress@sha256:dec75a753b25f6aae768e917d8c239efd89b71140a2e444d25a00e24de0fb05f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.0 KB (42019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5a5c8dca556ff8e020b23a46e053ca0003b3cfe28a4085ad80e8a72ac96ba5c4`

```dockerfile
```

-	Layers:
	-	`sha256:ae891ffe59d7f8620f71b0705397e6a7094d4f32408df2c34a58793074b243fb`  
		Last Modified: Thu, 30 Jul 2026 23:37:06 GMT  
		Size: 42.0 KB (42019 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-php8.4` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:7f326740f3fe26679ba16a16b6cd26a9250e4d572eaca5bd8a52d6c44dc74957
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.6 MB (65588645 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6dac62b4881e6d1520396796e4fda5f895bf27d1c5fd2e6ca38367d0695d8464`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 22:43:22 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 30 Jul 2026 22:43:22 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 30 Jul 2026 22:43:22 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 30 Jul 2026 22:43:22 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:43:23 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:43:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:43:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:43:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:43:23 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 30 Jul 2026 22:43:23 GMT
ENV PHP_VERSION=8.4.24
# Thu, 30 Jul 2026 22:43:23 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Thu, 30 Jul 2026 22:43:23 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Thu, 30 Jul 2026 23:18:32 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 23:18:32 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:21:39 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 23:21:39 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:21:41 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 23:21:42 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 23:21:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 23:21:42 GMT
CMD ["php" "-a"]
# Fri, 31 Jul 2026 00:16:23 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Fri, 31 Jul 2026 00:16:23 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Fri, 31 Jul 2026 00:16:23 GMT
WORKDIR /var/www/html
# Fri, 31 Jul 2026 00:17:44 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Fri, 31 Jul 2026 00:17:44 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Fri, 31 Jul 2026 00:17:46 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Fri, 31 Jul 2026 00:17:46 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Fri, 31 Jul 2026 00:17:46 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Fri, 31 Jul 2026 00:17:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Fri, 31 Jul 2026 00:17:46 GMT
VOLUME [/var/www/html]
# Fri, 31 Jul 2026 00:17:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:17:46 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 00:17:46 GMT
USER www-data
# Fri, 31 Jul 2026 00:17:46 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05de54487e219baaebe2b985c47147e07198a82b46364db5246648e71b6f19a0`  
		Last Modified: Thu, 30 Jul 2026 22:46:40 GMT  
		Size: 3.2 MB (3247174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ccb18f07dfdffaa5f06488ad5e5da71f401f1d2273480da7509904b1f6589696`  
		Last Modified: Thu, 30 Jul 2026 22:46:39 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f8cc6687a57498237dc1732d0d93b1b2e45884be5562d7dcc3c1b2019a5f8b`  
		Last Modified: Thu, 30 Jul 2026 22:46:39 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d39c53e4cf818a2b1277d31145940e19470d5af010e1e150903f6c9f0f1c1c1`  
		Last Modified: Thu, 30 Jul 2026 23:21:49 GMT  
		Size: 13.8 MB (13775214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ff37ca8f294da003287990cd2fe8bdf7a63af7692b920ac57ec2489c83d989a`  
		Last Modified: Thu, 30 Jul 2026 23:21:49 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f9e0d2dc4ddcc373ca8fbeda7efbb11ac7488f88d85ade9e5c06368b0272c25`  
		Last Modified: Thu, 30 Jul 2026 23:21:49 GMT  
		Size: 17.4 MB (17385231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec06e06f2a7288a20a9fd593e046bf50a09263e0c048c8fc38653862526e585a`  
		Last Modified: Thu, 30 Jul 2026 23:21:49 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebf668bb6d228657b863ffb7bc0d5d962d9ad7b4a9d833ffb7f4da1eb966800e`  
		Last Modified: Thu, 30 Jul 2026 23:21:50 GMT  
		Size: 22.1 KB (22140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a002856df4161554f6cf562856081d93a87813da181d652467c5c21be6a391ed`  
		Last Modified: Thu, 30 Jul 2026 23:21:50 GMT  
		Size: 22.2 KB (22161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbb168dba556761ccc6d6d18c4d44ff114a36ab1aa00ec819e88ec4aa7d54982`  
		Last Modified: Fri, 31 Jul 2026 00:17:55 GMT  
		Size: 11.0 MB (10976169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3463f0589387afa359da10d87806ec64a9e693df5df66f4319d5966a551e45d4`  
		Last Modified: Fri, 31 Jul 2026 00:17:55 GMT  
		Size: 15.4 MB (15360398 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c161d2a450aec8925ab3950380fd4e5ae86ea85b62af492af9be8a18f99693ad`  
		Last Modified: Fri, 31 Jul 2026 00:17:54 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f8dceef1ec90affa37ab15a46e2c5fe8f87770f2d88f0b3efc8ff5e4056357`  
		Last Modified: Fri, 31 Jul 2026 00:17:54 GMT  
		Size: 1.5 MB (1534591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ee72d1503378034504bafd5c97a2b697f62a676bed543ab7699e5d60cff400f`  
		Last Modified: Fri, 31 Jul 2026 00:17:55 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-php8.4` - unknown; unknown

```console
$ docker pull wordpress@sha256:ebe4b889e8f10b4b0546d990dd776968ccab942cbe56003761bd053cfd12a14e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **662.7 KB (662703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d0f270e511e75623276c8f956cef427092f195bc1b365c1fdafdda0eb047590`

```dockerfile
```

-	Layers:
	-	`sha256:d8a34b1c3bb8fd8b8640c99631bba881dd7c19d97109fd930dc894ab8aeec21b`  
		Last Modified: Fri, 31 Jul 2026 00:17:54 GMT  
		Size: 620.5 KB (620469 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5283f32f3e72758e487b7b14f104c77245ad6d3cecbd017a0ac0805cdc08525b`  
		Last Modified: Fri, 31 Jul 2026 00:17:54 GMT  
		Size: 42.2 KB (42234 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-php8.4` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:f00426989c778267fd7762a1690d34b5bb73eab7386834975bde4bc55ec9ab9f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.8 MB (71763390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b59ef6d02f3652fe26abf304e49c287f20bd30cc9731926c30f73d2768bfc252`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 22:42:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 30 Jul 2026 22:42:36 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 30 Jul 2026 22:42:36 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 30 Jul 2026 22:42:36 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:42:36 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:42:36 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:42:36 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:42:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:42:36 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 30 Jul 2026 22:42:36 GMT
ENV PHP_VERSION=8.4.24
# Thu, 30 Jul 2026 22:42:36 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Thu, 30 Jul 2026 22:42:36 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Thu, 30 Jul 2026 22:46:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 22:46:29 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:49:51 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:49:51 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:49:51 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 22:49:52 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:49:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:49:52 GMT
CMD ["php" "-a"]
# Thu, 30 Jul 2026 23:18:55 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Thu, 30 Jul 2026 23:18:55 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Thu, 30 Jul 2026 23:18:55 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 23:19:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 30 Jul 2026 23:19:49 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 30 Jul 2026 23:19:51 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 30 Jul 2026 23:19:51 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Thu, 30 Jul 2026 23:19:51 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Thu, 30 Jul 2026 23:19:51 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Thu, 30 Jul 2026 23:19:51 GMT
VOLUME [/var/www/html]
# Thu, 30 Jul 2026 23:19:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:19:51 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 23:19:51 GMT
USER www-data
# Thu, 30 Jul 2026 23:19:51 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b13b5c2bf01f18c32725f4727f909e7158f01f59e1f76b77ed6e86468e10be32`  
		Last Modified: Thu, 30 Jul 2026 22:46:19 GMT  
		Size: 3.5 MB (3486008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09e65a453eadf3c16e733b2a120dd31ee053355230c025d89a422e7a5ed6270b`  
		Last Modified: Thu, 30 Jul 2026 22:46:19 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba15fd80750899114b35bad0d1da0c1fed6a0a24e786ed16edf17367d3b862e7`  
		Last Modified: Thu, 30 Jul 2026 22:46:19 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb0ea48b5ae5d5be02b6e33ec83021183e96c0a90dad4e9fd8055702860f3cfe`  
		Last Modified: Thu, 30 Jul 2026 22:49:59 GMT  
		Size: 13.8 MB (13775190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d24133a325043fbedf87565fc7ddbdbdbb4cdbd2b81eae366e8b8b2747d8c47c`  
		Last Modified: Thu, 30 Jul 2026 22:49:59 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bca56ad232d4f31866bb651b3795b5be1f04dba45da3d7319a4f91dbda4519c`  
		Last Modified: Thu, 30 Jul 2026 22:50:00 GMT  
		Size: 19.8 MB (19792131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:387912e19c4f979ea4fc41b4606fc68a1e45891aaa0302891b4ece633270d1ae`  
		Last Modified: Thu, 30 Jul 2026 22:49:59 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cfce9610076ed65bbc625facd1b941b196e80fff2f87a9ad212aaf9aeb3e9f7`  
		Last Modified: Thu, 30 Jul 2026 22:50:00 GMT  
		Size: 22.2 KB (22156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6997a2cb7b348d6fd7fac73d9048122cfc91afb1d9501f0bce2894f4ab414fce`  
		Last Modified: Thu, 30 Jul 2026 22:50:00 GMT  
		Size: 22.2 KB (22171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5f000f9f6168a89c4756ea8749b8edb1f8d46b7941493fca856fc7556357961`  
		Last Modified: Thu, 30 Jul 2026 23:20:00 GMT  
		Size: 11.6 MB (11640555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:427505cf3d24e25c28d4665117fa91b95f0cc4b682479ddd009cb099799a2c82`  
		Last Modified: Thu, 30 Jul 2026 23:20:00 GMT  
		Size: 17.3 MB (17302657 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5150dc43c1ea5097f34287f8816496ab40a03d8d314c5cd8345f0c5df4b82091`  
		Last Modified: Thu, 30 Jul 2026 23:20:00 GMT  
		Size: 385.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20bb1d66a08396427188f676740d121d84645e989b447a469972605c465cf9d2`  
		Last Modified: Thu, 30 Jul 2026 23:20:00 GMT  
		Size: 1.5 MB (1534547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d268ca5dfa3c822bcc49a7634b37a5e28195bf7a8fafe6a76b00d4dc9abe5647`  
		Last Modified: Thu, 30 Jul 2026 23:20:01 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-php8.4` - unknown; unknown

```console
$ docker pull wordpress@sha256:8f354960d828bc2fce1118a805fd01604804ab358b066cf9e8d5816644d08831
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **662.8 KB (662755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c745e91313b95411341884fc2658f1667f94693719ac1d587c7426d1cff3e95`

```dockerfile
```

-	Layers:
	-	`sha256:bcb50f7f510122b810948f6557c30c2626c023469e10096bfb17c376e7584306`  
		Last Modified: Thu, 30 Jul 2026 23:19:59 GMT  
		Size: 620.5 KB (620489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c4f3699cd639a6f5e5d7f1794d640b25d9c87e47e388e510ead373d781dde47`  
		Last Modified: Thu, 30 Jul 2026 23:19:59 GMT  
		Size: 42.3 KB (42266 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-php8.4` - linux; 386

```console
$ docker pull wordpress@sha256:c39959500c63ead1dfd8d5128da0ab62d2198d4d06d71afb84eb78c459eff02e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.5 MB (72524141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:328094687bf7d348d158f3c00c27c6d8671fa37dbeb7465c309dbd35cc664842`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 22:46:43 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 30 Jul 2026 22:46:43 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 30 Jul 2026 22:46:44 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 30 Jul 2026 22:46:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:46:44 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:46:44 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:46:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:46:44 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:46:44 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 30 Jul 2026 22:46:44 GMT
ENV PHP_VERSION=8.4.24
# Thu, 30 Jul 2026 22:46:44 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Thu, 30 Jul 2026 22:46:44 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Thu, 30 Jul 2026 22:46:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 22:46:47 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:50:13 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:50:13 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:50:14 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 22:50:14 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:50:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:50:14 GMT
CMD ["php" "-a"]
# Thu, 30 Jul 2026 23:16:56 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Thu, 30 Jul 2026 23:16:57 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Thu, 30 Jul 2026 23:16:57 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 23:17:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 30 Jul 2026 23:17:47 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 30 Jul 2026 23:17:48 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 30 Jul 2026 23:17:48 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Thu, 30 Jul 2026 23:17:48 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Thu, 30 Jul 2026 23:17:48 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Thu, 30 Jul 2026 23:17:48 GMT
VOLUME [/var/www/html]
# Thu, 30 Jul 2026 23:17:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:17:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 30 Jul 2026 23:17:48 GMT
USER www-data
# Thu, 30 Jul 2026 23:17:48 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f23e6450cd8de0d6c10881ca803ddfea256d9f9b456338b2fcfc838c443e906a`  
		Last Modified: Thu, 30 Jul 2026 22:50:22 GMT  
		Size: 3.5 MB (3507257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1c56ca2e0aa96e4f48867486ff668183bbbe1f4d4d20bb30ba387ab39fadd75`  
		Last Modified: Thu, 30 Jul 2026 22:50:21 GMT  
		Size: 935.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:833e7988b81a6c26cf9f9baae0c6f393395d147424aeede92b38d3a0fec288f8`  
		Last Modified: Thu, 30 Jul 2026 22:50:21 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e9b8876f0bb783ccd3ad3d8341ff6bdf939d51b924feb3135b5014204ec8236`  
		Last Modified: Thu, 30 Jul 2026 22:50:22 GMT  
		Size: 13.8 MB (13775182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:166a5476f1d45a7a159a89f2234b92b3f40034e76c25c805549df9aa4f2f9ec5`  
		Last Modified: Thu, 30 Jul 2026 22:50:22 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:798495fef5120a64010cbe7e4867246001c5fa3e7abc16d1f50a41ab996b31c4`  
		Last Modified: Thu, 30 Jul 2026 22:50:23 GMT  
		Size: 20.8 MB (20840945 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ed8060ba1850fcd6d49a1127a06936bc80479266f5c1cd1ec2b26e70bb0cb69`  
		Last Modified: Thu, 30 Jul 2026 22:50:23 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c3112926d6c0d504cfbbbf6ccfce17db34736c67e931f612dc8dca884d9f4b4`  
		Last Modified: Thu, 30 Jul 2026 22:50:23 GMT  
		Size: 22.4 KB (22355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fb33e2d99a236123b6bb3d6a2e318c4a3add967235912a0068b464af4147a7e`  
		Last Modified: Thu, 30 Jul 2026 22:50:24 GMT  
		Size: 22.4 KB (22367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38dadda0f99cb90e2046c662c5aba173dc9a2cb391175ff806a8f36e7ab2f2d5`  
		Last Modified: Thu, 30 Jul 2026 23:17:57 GMT  
		Size: 11.8 MB (11841864 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88e46acbb1bf58c4b16b1be7f6d298464389e58cbbdbef220ad266034eeaa39e`  
		Last Modified: Thu, 30 Jul 2026 23:17:57 GMT  
		Size: 17.3 MB (17304557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:610634cc02f815866e8d19e86a31508dabfa0bedf2fe4e9b6377d85926665557`  
		Last Modified: Thu, 30 Jul 2026 23:17:57 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18b85f6edc6e540c51b787d6e28bea67ce7c2a996f86c54313c537a61521857b`  
		Last Modified: Thu, 30 Jul 2026 23:17:57 GMT  
		Size: 1.5 MB (1534524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a979f09180c68c8c513a8f8014f3aa92212c2747d159d41174048f9617ce9f7f`  
		Last Modified: Thu, 30 Jul 2026 23:17:58 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-php8.4` - unknown; unknown

```console
$ docker pull wordpress@sha256:ff40efafca664e64089c2927f8aa5a84747395f2be2c256478293af4f37eec96
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **664.4 KB (664364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a3d1c82ca01fc684c270fea4f256cae1d63042d41eebb5abef9205810cbb330`

```dockerfile
```

-	Layers:
	-	`sha256:a8e8e83e1943ddc9522fb9468a24ed56777a87008856c21df87c8c7dc4b0971a`  
		Last Modified: Thu, 30 Jul 2026 23:17:56 GMT  
		Size: 622.3 KB (622302 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0814144e7115f8125c5d6ec736050148a0d7febdee885214cf1faf9104a41178`  
		Last Modified: Thu, 30 Jul 2026 23:17:56 GMT  
		Size: 42.1 KB (42062 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-php8.4` - linux; ppc64le

```console
$ docker pull wordpress@sha256:723fef7a8c38be57c0818e09e171f253dd5737de437f0acb6af474ce12a4ff4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.9 MB (74872480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba5401ae11f3a39dbb5ff7c9e097aa1ca953b9d0b7e57c3d55092f0d0dc9619c`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Thu, 02 Jul 2026 20:57:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 02 Jul 2026 20:57:29 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 02 Jul 2026 20:57:30 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 02 Jul 2026 20:57:30 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:57:30 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:57:30 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:57:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:57:30 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:57:30 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 02 Jul 2026 20:57:30 GMT
ENV PHP_VERSION=8.4.24
# Thu, 02 Jul 2026 20:57:30 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Thu, 02 Jul 2026 20:57:30 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Fri, 31 Jul 2026 00:22:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Fri, 31 Jul 2026 00:22:55 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:27:30 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 31 Jul 2026 00:27:31 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:27:32 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 31 Jul 2026 00:27:33 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 31 Jul 2026 00:27:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 31 Jul 2026 00:27:33 GMT
CMD ["php" "-a"]
# Fri, 31 Jul 2026 02:00:13 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Fri, 31 Jul 2026 02:00:13 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Fri, 31 Jul 2026 02:00:14 GMT
WORKDIR /var/www/html
# Fri, 31 Jul 2026 02:01:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Fri, 31 Jul 2026 02:01:53 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Fri, 31 Jul 2026 02:01:56 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Fri, 31 Jul 2026 02:01:56 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Fri, 31 Jul 2026 02:01:56 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Fri, 31 Jul 2026 02:01:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Fri, 31 Jul 2026 02:01:56 GMT
VOLUME [/var/www/html]
# Fri, 31 Jul 2026 02:01:56 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 02:01:56 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 02:01:56 GMT
USER www-data
# Fri, 31 Jul 2026 02:01:56 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c21e4c935439302c2613da21e00f33b1b7ba6044d334f32deb82f09c5a5952ab`  
		Last Modified: Thu, 02 Jul 2026 21:03:42 GMT  
		Size: 3.6 MB (3647350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57b549e7f4463ca7f92da7527719118c35266fbf75ac1eefbc3fd312809d1dd6`  
		Last Modified: Thu, 02 Jul 2026 21:03:41 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32645532feb9a012c3d8e233656d0b9135c712a35d8af82155617d9f1088ab94`  
		Last Modified: Thu, 02 Jul 2026 21:03:41 GMT  
		Size: 219.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2c7b089b0f336ff2d1b5c725e46ba0ac6ef7702950d5420f2c05f5b2e47cc81`  
		Last Modified: Fri, 31 Jul 2026 00:27:47 GMT  
		Size: 13.8 MB (13775215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe377fe0947caf068edcd996de5dcca8f22e5e9ed068dffbd6996e03ac949a5`  
		Last Modified: Fri, 31 Jul 2026 00:27:46 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:142f4eb61d2102c2659768604c96db6376260e5c3d2164ef57594a5dd76c5032`  
		Last Modified: Fri, 31 Jul 2026 00:27:47 GMT  
		Size: 21.6 MB (21569057 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f24a37a25870118eba2f7ddbf53c242899dccaefd44bbfc72203e8d9ad7c4b39`  
		Last Modified: Fri, 31 Jul 2026 00:27:46 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64a58b09ea3786674e5801c5ceff02874079a5b8b519c86670f5cfb1dd37120b`  
		Last Modified: Fri, 31 Jul 2026 00:27:47 GMT  
		Size: 22.2 KB (22200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bf763f76c60f73818b854983a01bd45aeb3306913c1418f51e1875190922547`  
		Last Modified: Fri, 31 Jul 2026 00:27:47 GMT  
		Size: 22.2 KB (22221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5a78e5fa99794aa101993813c8591018f5bd4b3438413f48bd1d2c6d84786f3`  
		Last Modified: Fri, 31 Jul 2026 02:02:12 GMT  
		Size: 12.4 MB (12378550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72264e8af871b5d970c57431bd0d95837dede3e3fd87700743457006b1ec390f`  
		Last Modified: Fri, 31 Jul 2026 02:02:12 GMT  
		Size: 18.1 MB (18104943 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ec9b0dcbb76c243bc9e3cdd98c735555bb215b7fcb26cb984cf9ff71b1a862b`  
		Last Modified: Fri, 31 Jul 2026 02:02:12 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32c0d4ab606bc2f77c3c627d6d881e83c24802cfc888e3ac0c7b07164424cc28`  
		Last Modified: Fri, 31 Jul 2026 02:02:12 GMT  
		Size: 1.5 MB (1534591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb63c007d6127fbd5276e6dd54bcda534b6412e88b6e2a2523f36efd32f6901f`  
		Last Modified: Fri, 31 Jul 2026 02:02:13 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-php8.4` - unknown; unknown

```console
$ docker pull wordpress@sha256:34b98515c34b586f29b216c2540b185868fd22cca2e7192e9c0a4be5369b75dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **662.6 KB (662620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6852b7db45bc87d4af1ad902fcd8dfa74d7accb0d0ae626a785f665bf3c1f116`

```dockerfile
```

-	Layers:
	-	`sha256:976e273a71c0369ac1407bbba7722e1755e3581ce2137c34ed1fba96d369d30c`  
		Last Modified: Fri, 31 Jul 2026 02:02:12 GMT  
		Size: 620.5 KB (620466 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:164963f9e137a01c9ca6fb97337b86b812d39f721fe951f10cee8f8dc386c571`  
		Last Modified: Fri, 31 Jul 2026 02:02:11 GMT  
		Size: 42.2 KB (42154 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-php8.4` - linux; riscv64

```console
$ docker pull wordpress@sha256:558cf4e7a4468d023ea45cfbf71e4faf3ce7ab68954927c7a1e6397b7d6fc011
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.3 MB (70272569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:946d0f0bacf31b31bab1b732291395b2f41e051aea95aa38333e0ea4a2e88422`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 16 Jun 2026 05:59:15 GMT
ADD alpine-minirootfs-3.24.1-riscv64.tar.gz / # buildkit
# Tue, 16 Jun 2026 05:59:15 GMT
CMD ["/bin/sh"]
# Wed, 17 Jun 2026 10:08:26 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 17 Jun 2026 10:08:26 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 17 Jun 2026 10:08:27 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 17 Jun 2026 10:08:27 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 17 Jun 2026 10:08:27 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_VERSION=8.4.23
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.23.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.23.tar.xz.asc
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_SHA256=1ab9f52008414e43bb2427ffa288eff2a4de39e1a830f957e800ba368d887a72
# Fri, 03 Jul 2026 10:08:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Fri, 03 Jul 2026 10:08:07 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 03 Jul 2026 11:06:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 03 Jul 2026 11:06:15 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 03 Jul 2026 11:06:21 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 03 Jul 2026 11:06:26 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 03 Jul 2026 11:06:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 03 Jul 2026 11:06:26 GMT
CMD ["php" "-a"]
# Sat, 04 Jul 2026 11:40:42 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Sat, 04 Jul 2026 11:40:42 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Sat, 04 Jul 2026 11:40:42 GMT
WORKDIR /var/www/html
# Sat, 04 Jul 2026 11:56:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Sat, 04 Jul 2026 11:56:43 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Sat, 04 Jul 2026 11:56:52 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Sat, 04 Jul 2026 11:56:52 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Sat, 04 Jul 2026 11:56:52 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Sat, 04 Jul 2026 11:56:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Sat, 04 Jul 2026 11:56:52 GMT
VOLUME [/var/www/html]
# Sat, 04 Jul 2026 11:56:52 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sat, 04 Jul 2026 11:56:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sat, 04 Jul 2026 11:56:52 GMT
USER www-data
# Sat, 04 Jul 2026 11:56:52 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:c34e5222b29b86391cdae95b0473ef789493ff1a0068a3a30b5d66f544bd7cf6`  
		Last Modified: Sun, 14 Jun 2026 06:47:00 GMT  
		Size: 3.6 MB (3574358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdc09af4ff1d594ba4ff939387160eac2fe7e3118ca810f61819eb5d92f7b520`  
		Last Modified: Wed, 17 Jun 2026 12:01:56 GMT  
		Size: 3.6 MB (3604699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01600916adca5933ee02bb7a5a25279f28df2779de050e87ee103675d313f666`  
		Last Modified: Wed, 17 Jun 2026 12:01:55 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a891144274182ffd9c264ebaada55f1b357da87b9d652cda214fc6307d6f939`  
		Last Modified: Wed, 17 Jun 2026 12:01:55 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:027a757d9a915e76bf4ffc8f0bd2076be2a1be142d2d6b19354e782cdd00051d`  
		Last Modified: Fri, 03 Jul 2026 11:07:30 GMT  
		Size: 13.8 MB (13763907 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af86634a3b4166c9691c3d2120ae9234eb2a6a1bfe8ad8fc45b845273d5aa57a`  
		Last Modified: Fri, 03 Jul 2026 11:07:25 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9aef2db61bd424c076fb987c82366395129ea8cc4b3dbf1811519b97bf94b4c`  
		Last Modified: Fri, 03 Jul 2026 11:07:31 GMT  
		Size: 20.2 MB (20171140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb361f2eb6a5161f56b4f1b7d513660316bfd1623cf231c71305f913a248afba`  
		Last Modified: Fri, 03 Jul 2026 11:07:25 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b210b33ff2e865ef6182fefd68e16fa87af03f195bd0704d5a13ad2349d292a0`  
		Last Modified: Fri, 03 Jul 2026 11:07:27 GMT  
		Size: 22.2 KB (22194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e592ada6cee871e48ac9bd9c91905d0816f960ec0dfd36a76b349b04686871e1`  
		Last Modified: Fri, 03 Jul 2026 11:07:27 GMT  
		Size: 22.2 KB (22211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bccadfbdd3b6ce178ae97c2b6c71de5cfbc2bb4c94f0b5acbc0495c8b53c3bd`  
		Last Modified: Sat, 04 Jul 2026 11:58:22 GMT  
		Size: 12.1 MB (12135166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19e5aa600d072bc6cb8808ddde005f2934d5f4465d496c354e862acb807c6173`  
		Last Modified: Sat, 04 Jul 2026 11:58:22 GMT  
		Size: 15.4 MB (15439332 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:534affae9effccd63c0003d7c2c0540490d80f07ca8439fc56680c0fc822d8b3`  
		Last Modified: Sat, 04 Jul 2026 11:58:18 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4de82453cb3d436437204807876703aa87bd48ed280ca1a361fddba7b88f940f`  
		Last Modified: Sat, 04 Jul 2026 11:58:19 GMT  
		Size: 1.5 MB (1534602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85b0377447a9fee9c0e0a243f09c288e1b6f8f7eda876976cd86f3a329940fc3`  
		Last Modified: Sat, 04 Jul 2026 11:58:20 GMT  
		Size: 409.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-php8.4` - unknown; unknown

```console
$ docker pull wordpress@sha256:89e2cbd639014c173019f046a548bf0f742e4be4edcf3f67e197c38d80e8797d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **662.6 KB (662614 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:18c400fefba7b1589301cde544173237293a07e0ac7122671d777dacb2501410`

```dockerfile
```

-	Layers:
	-	`sha256:414d31b9e6c0a5fb43b9307e779243779d19c39dd3e2c2858441861d5bb730e5`  
		Last Modified: Sat, 04 Jul 2026 11:58:18 GMT  
		Size: 620.5 KB (620462 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5464ab065745202fbb6ee3b6e5554f74466ef517eef64b4feb16a1f6c2ce9e12`  
		Last Modified: Sat, 04 Jul 2026 11:58:18 GMT  
		Size: 42.2 KB (42152 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-php8.4` - linux; s390x

```console
$ docker pull wordpress@sha256:a1b284bc6d5c21cb69aeffa888d44bb4a4244a38ce84d064cec5afebc7d3aa50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.6 MB (73570937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a00fe44a4a378e5fa354b6d28c5b02f3024d7bf41da2c7503cf5b549f130b0db`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 22:43:28 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 30 Jul 2026 22:43:28 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 30 Jul 2026 22:43:28 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 30 Jul 2026 22:43:28 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:43:29 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:43:29 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:43:29 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:43:29 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:43:29 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 30 Jul 2026 22:43:29 GMT
ENV PHP_VERSION=8.4.24
# Thu, 30 Jul 2026 22:43:29 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Thu, 30 Jul 2026 22:43:29 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Thu, 30 Jul 2026 23:19:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 23:19:13 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:23:36 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 23:23:37 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:23:37 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 23:23:38 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 23:23:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 23:23:38 GMT
CMD ["php" "-a"]
# Fri, 31 Jul 2026 00:18:20 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Fri, 31 Jul 2026 00:18:20 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Fri, 31 Jul 2026 00:18:21 GMT
WORKDIR /var/www/html
# Fri, 31 Jul 2026 00:19:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Fri, 31 Jul 2026 00:19:32 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Fri, 31 Jul 2026 00:19:35 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Fri, 31 Jul 2026 00:19:35 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Fri, 31 Jul 2026 00:19:35 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Fri, 31 Jul 2026 00:19:35 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Fri, 31 Jul 2026 00:19:35 GMT
VOLUME [/var/www/html]
# Fri, 31 Jul 2026 00:19:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:19:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 00:19:35 GMT
USER www-data
# Fri, 31 Jul 2026 00:19:35 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d5e44288c6a1afad23bd054b0111d8827fd26d8061721a7bea924dd9b48445b`  
		Last Modified: Thu, 30 Jul 2026 22:49:33 GMT  
		Size: 3.7 MB (3666337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c6677e65fb2898a008bae096ad35d16f36adb3c368e86734a557ac5c1299b52`  
		Last Modified: Thu, 30 Jul 2026 22:49:33 GMT  
		Size: 935.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da30f4bdf45f853bcac9ba8471ffb31efd611e4272a12481b46605ffbd7c0619`  
		Last Modified: Thu, 30 Jul 2026 22:49:33 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73d87be8fcbf1c06cd96b0c521f50b6548de0431ce926cb160e67e6b8dc82240`  
		Last Modified: Thu, 30 Jul 2026 23:23:50 GMT  
		Size: 13.8 MB (13775185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:883bae79c45ab750aa8e8fedb91b57469a5cd200cb94f89cc9ce3b646e297720`  
		Last Modified: Thu, 30 Jul 2026 23:23:50 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2e1c6faf5ee7c92df3b3618ea8774aad5cf66c0edf36d89dc4e9004adb4078e`  
		Last Modified: Thu, 30 Jul 2026 23:23:50 GMT  
		Size: 20.3 MB (20262330 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e110ff5c5493f63aafc612ec4212b31629a2e977098371ab61870714ad1ee14e`  
		Last Modified: Thu, 30 Jul 2026 23:23:50 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15340026fa087372fae02bfe71837ba66649b2e36b060b5aef5f7fd0a35f1faf`  
		Last Modified: Thu, 30 Jul 2026 23:23:51 GMT  
		Size: 22.1 KB (22139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8839135549cb35dae2997c92b82d20c227a2ec02a943b509ae1fa5e70383384b`  
		Last Modified: Thu, 30 Jul 2026 23:23:51 GMT  
		Size: 22.2 KB (22166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb055082fd9a9dd4fd440c9fb4f7293536134bfb1a8843ce42ef332792daf524`  
		Last Modified: Fri, 31 Jul 2026 00:19:51 GMT  
		Size: 13.1 MB (13127264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:112769f03a15f6e0b94109c9cbdf5ec50c8567cdccb5b3435641c30c9f970023`  
		Last Modified: Fri, 31 Jul 2026 00:19:51 GMT  
		Size: 17.4 MB (17446650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71b9da0b12d3de86178463764c42dd658a6d7f4980bddb782ac83cb0b1c84328`  
		Last Modified: Fri, 31 Jul 2026 00:19:51 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:569ca1d77ad6aad90e782130e1a584cffa3410b18aec7e248516fae6ca0bd9c5`  
		Last Modified: Fri, 31 Jul 2026 00:19:51 GMT  
		Size: 1.5 MB (1534594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cfa0260e160ac2f2a1ba51b7269b187996c3b108fa5739962e97d0f37e1925a`  
		Last Modified: Fri, 31 Jul 2026 00:19:52 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-php8.4` - unknown; unknown

```console
$ docker pull wordpress@sha256:215df7f3c1705212e51d2be3f711079ace0e50c5e8d37bb20f8a14cae94490c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **662.5 KB (662534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f61ec5aac71bcfc22e78c2e3ab42bbfb24541319bd40a48f309c3c4e569bf055`

```dockerfile
```

-	Layers:
	-	`sha256:3a534a9938dccea941370f51574d29c15ec714ba960d22a0ed193341d64582ce`  
		Last Modified: Fri, 31 Jul 2026 00:19:51 GMT  
		Size: 620.4 KB (620432 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bb0bc904078edb14038ee7794295deab131ca58d594ef1a72d66f790a990650f`  
		Last Modified: Fri, 31 Jul 2026 00:19:50 GMT  
		Size: 42.1 KB (42102 bytes)  
		MIME: application/vnd.in-toto+json
