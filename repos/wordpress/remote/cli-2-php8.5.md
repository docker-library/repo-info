## `wordpress:cli-2-php8.5`

```console
$ docker pull wordpress@sha256:beb38094f40b0b3016b62ddc34e5b145db8d2b1fbeeaff4a8f74e7ad6003d577
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

### `wordpress:cli-2-php8.5` - linux; amd64

```console
$ docker pull wordpress@sha256:726dbc080a0e0307b5c1222b23dff578fbb79db36764a95b16d1d1534a5221e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.6 MB (78612642 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6ae2ba49672930ef5663d0a0f91990219bfa5eec6f6243ce759c79d689711e0`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 21:16:12 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 15 Sep 2026 21:16:12 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Tue, 15 Sep 2026 21:16:12 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 15 Sep 2026 21:16:12 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:16:12 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:16:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:16:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:16:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:16:12 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 15 Sep 2026 21:16:12 GMT
ENV PHP_VERSION=8.5.10
# Tue, 15 Sep 2026 21:16:12 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Tue, 15 Sep 2026 21:16:12 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Tue, 15 Sep 2026 21:16:15 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Tue, 15 Sep 2026 21:16:15 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:19:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:19:15 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:19:16 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:19:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:19:16 GMT
CMD ["php" "-a"]
# Tue, 15 Sep 2026 22:28:03 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Tue, 15 Sep 2026 22:28:03 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Tue, 15 Sep 2026 22:28:03 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 22:28:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:28:53 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:28:55 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Tue, 15 Sep 2026 22:28:55 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Tue, 15 Sep 2026 22:28:55 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Tue, 15 Sep 2026 22:28:55 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Tue, 15 Sep 2026 22:28:55 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:28:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:28:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:28:55 GMT
USER www-data
# Tue, 15 Sep 2026 22:28:55 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0616c4ff0f2fca33dc4af3bb7726862353f611c40ff10f1307abfcf07f05f7ff`  
		Last Modified: Tue, 15 Sep 2026 21:19:23 GMT  
		Size: 6.0 MB (5958268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab847589c5939c2e9bc944aaeb26151a7bda5b625469b4bf48056d4d2e29925d`  
		Last Modified: Tue, 15 Sep 2026 21:19:23 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d4d724160412fad4d6104ea3f0d902ea6ba61e4a9b08589d2d421dcb68ff6fc`  
		Last Modified: Tue, 15 Sep 2026 21:19:23 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26fb0f705333fd9e72ad2307e3c2e19055a391cd397480d16963ee34b25a151e`  
		Last Modified: Tue, 15 Sep 2026 21:19:24 GMT  
		Size: 14.5 MB (14479189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6196a45893878b160f2f71780714b1b4624b01434863c880da15f5d638e2df5`  
		Last Modified: Tue, 15 Sep 2026 21:19:24 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4c91db648cfe603e3ca14a9b50ed3e9533e3b896cab75305e1c5199aa67d235`  
		Last Modified: Tue, 15 Sep 2026 21:19:25 GMT  
		Size: 22.8 MB (22826423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0d110aa60f2d9d1301c385497c29556244d968f8d7958b8a55e95ad21cbca71`  
		Last Modified: Tue, 15 Sep 2026 21:19:25 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c79bd9a0fd0dec5f09b543479b0df74241496d14d1a96f05b7058a79d237125`  
		Last Modified: Tue, 15 Sep 2026 21:19:25 GMT  
		Size: 22.4 KB (22380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:054335330f66ad735c3fce216faf6f1a6bb073409662a6cbe059774143939757`  
		Last Modified: Tue, 15 Sep 2026 22:29:04 GMT  
		Size: 11.7 MB (11709707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c9a64f031d3826acdd58ad9efd9db398f81d15d988a8711292eb2b6bb06ae1e`  
		Last Modified: Tue, 15 Sep 2026 22:29:04 GMT  
		Size: 18.2 MB (18230670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cb46bbeb65f0557d363945a8c1e8c9d9d1149643a4d50cc7628ac342b4d5061`  
		Last Modified: Tue, 15 Sep 2026 22:29:03 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6461c36d8d9b82e7ec022b38b085564eb2fa76afa6f723a525ba6f74ce07fcda`  
		Last Modified: Tue, 15 Sep 2026 22:29:03 GMT  
		Size: 1.5 MB (1534673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4704c2e44868003f13e3dd49c7199e42b8959f61d6b1d5f30e208dcd6b783d8`  
		Last Modified: Tue, 15 Sep 2026 22:29:04 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2-php8.5` - unknown; unknown

```console
$ docker pull wordpress@sha256:4b89870c03756d7eb131e2beae5b885ffe0d3728c0f17c5a8bdd27282b285d72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **661.9 KB (661934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aeda41ccbdcd03e6c86f0f0361bbc655d47b4ea19043b42941b6686ca7cedee5`

```dockerfile
```

-	Layers:
	-	`sha256:59d25f64b63fef23e36504314322052f1585c390396e2a38ceead4fae89b379e`  
		Last Modified: Tue, 15 Sep 2026 22:29:03 GMT  
		Size: 621.1 KB (621080 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23a56db5d9be4ae04204de2bce4fc306b0e285606a053105dc39f5bbf2c90636`  
		Last Modified: Tue, 15 Sep 2026 22:29:03 GMT  
		Size: 40.9 KB (40854 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2-php8.5` - linux; arm variant v6

```console
$ docker pull wordpress@sha256:d21a27ae520b9c3ccfcbc494fefc1867220cc5d4f2a76919390eadb794272114
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.2 MB (71159423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:297d6b1670e1074f5053f34b93b2e4ea142c3e2e22b9856b4621a1086689e0ed`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 21:12:11 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 15 Sep 2026 21:12:11 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Tue, 15 Sep 2026 21:12:11 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 15 Sep 2026 21:12:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:12:11 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:12:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:12:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:12:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:12:11 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 15 Sep 2026 21:12:11 GMT
ENV PHP_VERSION=8.5.10
# Tue, 15 Sep 2026 21:12:11 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Tue, 15 Sep 2026 21:12:11 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Tue, 15 Sep 2026 21:12:14 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Tue, 15 Sep 2026 21:12:14 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:15:20 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:15:20 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:15:21 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:15:21 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:15:21 GMT
CMD ["php" "-a"]
# Tue, 15 Sep 2026 22:16:24 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Tue, 15 Sep 2026 22:16:24 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Tue, 15 Sep 2026 22:16:24 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 22:18:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:18:13 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:18:15 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Tue, 15 Sep 2026 22:18:15 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Tue, 15 Sep 2026 22:18:15 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Tue, 15 Sep 2026 22:18:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Tue, 15 Sep 2026 22:18:15 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:18:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:18:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:18:15 GMT
USER www-data
# Tue, 15 Sep 2026 22:18:15 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d33cd744ed9a152cd23dda6e673f548644014c35af9c1a7f47bdaf4a48aad4d`  
		Last Modified: Tue, 15 Sep 2026 21:15:27 GMT  
		Size: 5.5 MB (5549274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa6cd7d111a6f4e881f25783c9d1847c65e291b2c4a1e59c959c008cbd300f0b`  
		Last Modified: Tue, 15 Sep 2026 21:15:27 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49cd9855b915d7901eaa7a0ee685f14adf7741c5b80f37b54030b5feafe5a2d2`  
		Last Modified: Tue, 15 Sep 2026 21:15:27 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60b87bdefe7acd5bcf5aaeb8aac6486d2ce54d1b2af37c1fe6896bdc14d63e23`  
		Last Modified: Tue, 15 Sep 2026 21:15:28 GMT  
		Size: 14.5 MB (14479199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:736f796639ef8f41d4b6a7c0297f24c8f24c62f438deb6fd4348474ef42855ec`  
		Last Modified: Tue, 15 Sep 2026 21:15:28 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4beafa1b9bea3ec0b412a56f0fda91be136c4ae1c56b849141dff10d89b57c61`  
		Last Modified: Tue, 15 Sep 2026 21:15:29 GMT  
		Size: 19.8 MB (19775524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea9930ee45065968b8a05b2f42525ff96e9af629c38c5084f13ee4c13e370c7d`  
		Last Modified: Tue, 15 Sep 2026 21:15:29 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f5810818f6edffeb35fa9738ea9c77455050cd7d9149d181cfbfcdec466269c`  
		Last Modified: Tue, 15 Sep 2026 21:15:29 GMT  
		Size: 22.2 KB (22168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ca4444a5aff0ad3347b83dd13b7c3f6d1e0da71b1eb09040db5084b1f5719c1`  
		Last Modified: Tue, 15 Sep 2026 22:18:21 GMT  
		Size: 11.3 MB (11343069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba8568b19cc6409d2f82e37e8d6145b4b1ce0a758efadd3edc3617c7f4fec3e`  
		Last Modified: Tue, 15 Sep 2026 22:18:21 GMT  
		Size: 14.9 MB (14897108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bac7793920c5110b8e486207d44cf5e20401347bc4ce3482dd9db31e582073b`  
		Last Modified: Tue, 15 Sep 2026 22:18:21 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:320c6973cfdb3c716b69012d1448764842677afa1cf8ce14e45c298227131da5`  
		Last Modified: Tue, 15 Sep 2026 22:18:21 GMT  
		Size: 1.5 MB (1534680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa0378a01f7ef1cb829c2d50259f08f5d3703032cec9e9d555b54530fa52fff4`  
		Last Modified: Tue, 15 Sep 2026 22:18:22 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2-php8.5` - unknown; unknown

```console
$ docker pull wordpress@sha256:8455f22e2bb8034af5feebd0ea80033df6870c7b58f7f7d5f69e161b1f5b6632
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **40.8 KB (40771 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a44cb4bc25a3b9c1f256035c5a552da7e7c5b6491090764c21d2e9f4d495ac33`

```dockerfile
```

-	Layers:
	-	`sha256:1a766ed1c9564d41d40f65a1540af3a71411358de28655c08f162d1847f9f167`  
		Last Modified: Tue, 15 Sep 2026 22:18:20 GMT  
		Size: 40.8 KB (40771 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2-php8.5` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:0bba47d179374baabd270369df8e2c316b5cdda1ff082c311750f4069f23de64
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.5 MB (69503386 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e483ccb1fd9bd69018dece4cc301df881c5718dc27c847d7b24bad7e1a0d55ee`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 21:33:49 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 15 Sep 2026 21:33:49 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Tue, 15 Sep 2026 21:33:49 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 15 Sep 2026 21:33:49 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:33:49 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:33:49 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:33:49 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:33:49 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:33:49 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 15 Sep 2026 21:33:49 GMT
ENV PHP_VERSION=8.5.10
# Tue, 15 Sep 2026 21:33:49 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Tue, 15 Sep 2026 21:33:49 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Tue, 15 Sep 2026 21:33:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Tue, 15 Sep 2026 21:33:52 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:36:59 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:36:59 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:37:00 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:37:00 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:37:00 GMT
CMD ["php" "-a"]
# Tue, 15 Sep 2026 22:20:12 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Tue, 15 Sep 2026 22:20:12 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Tue, 15 Sep 2026 22:20:12 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 22:22:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:22:08 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:22:10 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Tue, 15 Sep 2026 22:22:10 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Tue, 15 Sep 2026 22:22:10 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Tue, 15 Sep 2026 22:22:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Tue, 15 Sep 2026 22:22:10 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:22:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:22:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:22:10 GMT
USER www-data
# Tue, 15 Sep 2026 22:22:10 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21739c3b5f7f2b4c037cd9349fcc46cea897c554564acd6bf570549e043e5ba5`  
		Last Modified: Tue, 15 Sep 2026 21:37:07 GMT  
		Size: 5.2 MB (5200520 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20d1de5fc128872447c1c543827c634cbd8f9785b9752f708500b5b3164d40ef`  
		Last Modified: Tue, 15 Sep 2026 21:37:07 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d254adfd7ac4b75f5660661a9dbc4e824ea9f0f20e58c60c42686ebd1959d83d`  
		Last Modified: Tue, 15 Sep 2026 21:37:07 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f85d5c3281dee0c1189c7ed5882e4541fa1eab0a0a58a2e44ee6c8491bb14fea`  
		Last Modified: Tue, 15 Sep 2026 21:37:08 GMT  
		Size: 14.5 MB (14479204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04a6baddf1f30c142a13269931c760060db254bea959f19741c395239acc242d`  
		Last Modified: Tue, 15 Sep 2026 21:37:08 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4c7f86f38618c779ececf1ca0840d8b739f6a609cebb0edf23a7b2e9a43002b`  
		Last Modified: Tue, 15 Sep 2026 21:37:09 GMT  
		Size: 18.7 MB (18654310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d090dee390c029913b68be72bca5c4c646b8d0f288d09a92fe90b2ed9d749d4d`  
		Last Modified: Tue, 15 Sep 2026 21:37:09 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d798a63e527c58e44a320c4a9195a715c635e1a9081b4122855af823e688605d`  
		Last Modified: Tue, 15 Sep 2026 21:37:09 GMT  
		Size: 22.2 KB (22178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2d77b6734f1bc4a6dab17f584dbef0d54768cb097087db738ef6cceda2c78c9`  
		Last Modified: Tue, 15 Sep 2026 22:22:19 GMT  
		Size: 11.0 MB (10979835 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:654962a3f7f36a1d8e2c8a5f887c85dae065f97c0a7ec3823a87dfc7943f05aa`  
		Last Modified: Tue, 15 Sep 2026 22:22:19 GMT  
		Size: 15.4 MB (15367109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39d38b0647f640a93368e97b1b3dd733aa3926388909b5e7d75646415ffd78cd`  
		Last Modified: Tue, 15 Sep 2026 22:22:19 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87c464689e23ad34dbdfa0aa15ed8a4f627c999ee50472fa4b8f897c5eec49cd`  
		Last Modified: Tue, 15 Sep 2026 22:22:19 GMT  
		Size: 1.5 MB (1534670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:487804843812798e689a52d7add31a13192cef0c09c746e9084da4925b1d20db`  
		Last Modified: Tue, 15 Sep 2026 22:22:20 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2-php8.5` - unknown; unknown

```console
$ docker pull wordpress@sha256:300ab0eb698b2acdab54f093bff57da689e1e3aae5c7e205ed9bb07d2cb018cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **660.2 KB (660208 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:190f84504f4541090c0e5cb74cda9bcf5727031906e16b45a6185fa956c08994`

```dockerfile
```

-	Layers:
	-	`sha256:f7213cbe91efd5749a9647e5471f3989ebfbd8e27b75d54460aa666c39186854`  
		Last Modified: Tue, 15 Sep 2026 22:22:18 GMT  
		Size: 619.2 KB (619222 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:defad8955ee790e8c0a10d5c213f1b2ee71315279db1a2658acdf36e74eaec71`  
		Last Modified: Tue, 15 Sep 2026 22:22:18 GMT  
		Size: 41.0 KB (40986 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2-php8.5` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:309c7b508e6676625e15f552fa11f34be4b6f5a6c7394d48af7e01de67824ed5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.4 MB (77445954 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8e950a5d451bc4e388434710fc7198f8a3ca6cdbb9687cbf800bb4240b21ec7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 21:16:50 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 15 Sep 2026 21:16:50 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Tue, 15 Sep 2026 21:16:50 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 15 Sep 2026 21:16:50 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:16:50 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:16:50 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:16:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:16:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:16:50 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 15 Sep 2026 21:16:50 GMT
ENV PHP_VERSION=8.5.10
# Tue, 15 Sep 2026 21:16:50 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Tue, 15 Sep 2026 21:16:50 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Tue, 15 Sep 2026 21:16:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Tue, 15 Sep 2026 21:16:52 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:20:21 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:20:21 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:20:22 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:20:22 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:20:22 GMT
CMD ["php" "-a"]
# Tue, 15 Sep 2026 22:14:38 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Tue, 15 Sep 2026 22:14:38 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Tue, 15 Sep 2026 22:14:38 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 22:15:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:15:53 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:15:55 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Tue, 15 Sep 2026 22:15:55 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Tue, 15 Sep 2026 22:15:55 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Tue, 15 Sep 2026 22:15:55 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Tue, 15 Sep 2026 22:15:55 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:15:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:15:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:15:55 GMT
USER www-data
# Tue, 15 Sep 2026 22:15:55 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a305949624dcdedbaa7f16ae5c8ec6d0172e8f4a39382bf47786593fac4ceec`  
		Last Modified: Tue, 15 Sep 2026 21:20:30 GMT  
		Size: 6.3 MB (6270029 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64eec39a124044ac20074776bcd4f5e1b7caf7812658f9eb0b4332de2c4bf967`  
		Last Modified: Tue, 15 Sep 2026 21:20:30 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:603f0854f3f5c1ee0039cd647f0f6e9997badd8a44fa59b2721980df53b2d195`  
		Last Modified: Tue, 15 Sep 2026 21:20:21 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d045807fdc3ad67896ddc053319701e9daac1c2224096414b900914108293adb`  
		Last Modified: Tue, 15 Sep 2026 21:20:30 GMT  
		Size: 14.5 MB (14479197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db294a4d936bba0b243222e7828bf36655bc9e489de16203a85ca603e68a3274`  
		Last Modified: Tue, 15 Sep 2026 21:20:31 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e60aaedc6cbaefe6e07b9c94ddcb809e323491e9b2363dc0a5a9fa25e961c84`  
		Last Modified: Tue, 15 Sep 2026 21:20:32 GMT  
		Size: 22.0 MB (22002521 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11dbade6116cc9e20f30cc01a832c8f60f10dddcfba8ee95f062473f90bfd550`  
		Last Modified: Tue, 15 Sep 2026 21:20:32 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29401941ba3bf10dcb2660c5a351a9d03ffd8375ee6480c075096f02abddf924`  
		Last Modified: Tue, 15 Sep 2026 21:20:32 GMT  
		Size: 22.2 KB (22204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:491e3e6d5115aaed5d041b22f2b0f70f251bf92a3d5f01a171d166a5f94a5023`  
		Last Modified: Tue, 15 Sep 2026 22:16:04 GMT  
		Size: 11.6 MB (11641913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd9ce18bcdd1bf3c1f23110bfc6e565ebe3dfd36f88dee62885137e97bac222d`  
		Last Modified: Tue, 15 Sep 2026 22:16:04 GMT  
		Size: 17.3 MB (17307465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68a64cb6301988ef6fa095165a03b1127282f2094666544b00f22641ab95e11c`  
		Last Modified: Tue, 15 Sep 2026 22:16:04 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20f403e9624706827f4924bad58620f2054350b79bb09cac2ae28125585f5f34`  
		Last Modified: Tue, 15 Sep 2026 22:16:04 GMT  
		Size: 1.5 MB (1534644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d86768feb9467f2c589976efafc709514a5a7486b5607e4be2f46388e4cc26ab`  
		Last Modified: Tue, 15 Sep 2026 22:16:05 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2-php8.5` - unknown; unknown

```console
$ docker pull wordpress@sha256:4e4a550d3cfdd82b7d73dca589df1e9e594634662161574d99c2754a583dc520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **660.3 KB (660258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3fe1cb451e75f4950743b3ea74df189ad7716e6b4fa164cbdb3fa3373c97903e`

```dockerfile
```

-	Layers:
	-	`sha256:2e978e1cf2092134d574e678de9f69349f59245660dd3c9b484474fbf52d4f13`  
		Last Modified: Tue, 15 Sep 2026 22:16:04 GMT  
		Size: 619.2 KB (619242 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:97beea593eb0c062dca28339469d7d8cf2ab5143f15405c74c6bba67f4538e3c`  
		Last Modified: Tue, 15 Sep 2026 22:16:03 GMT  
		Size: 41.0 KB (41016 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2-php8.5` - linux; 386

```console
$ docker pull wordpress@sha256:30e2db6eee0df1d8ba8cf1d251a468af8b1fc3ad9ab9cfa8c7fbf6ef1decfd8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77949366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4c2fe60a5593058eca120eec033c16c74cfad6e278f47ad082d03d9e41e2431`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 21:16:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 15 Sep 2026 21:16:23 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Tue, 15 Sep 2026 21:16:23 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 15 Sep 2026 21:16:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:16:23 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:16:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:16:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:16:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:16:23 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Tue, 15 Sep 2026 21:16:23 GMT
ENV PHP_VERSION=8.5.10
# Tue, 15 Sep 2026 21:16:23 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Tue, 15 Sep 2026 21:16:23 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Tue, 15 Sep 2026 21:16:26 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Tue, 15 Sep 2026 21:16:26 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:19:36 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:19:36 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:19:36 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:19:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:19:36 GMT
CMD ["php" "-a"]
# Tue, 15 Sep 2026 22:15:03 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Tue, 15 Sep 2026 22:15:04 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Tue, 15 Sep 2026 22:15:04 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 22:16:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:16:10 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:16:12 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Tue, 15 Sep 2026 22:16:12 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Tue, 15 Sep 2026 22:16:12 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Tue, 15 Sep 2026 22:16:12 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Tue, 15 Sep 2026 22:16:12 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:16:12 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:16:12 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:16:12 GMT
USER www-data
# Tue, 15 Sep 2026 22:16:12 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe90b4aba213d3ace9eb0db208c37a8b09fb5974fd8e7628cbe95d25b264f08c`  
		Last Modified: Tue, 15 Sep 2026 21:19:43 GMT  
		Size: 5.8 MB (5807663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5718895b06d56a08aceab42c7530e58105f840548c5f2a94f84f718764b0e30c`  
		Last Modified: Tue, 15 Sep 2026 21:19:43 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf2afe9e1ba327f7f6988eb44d02291a993ee3cec0b3e3a9014d3005da30a4bf`  
		Last Modified: Tue, 15 Sep 2026 21:19:43 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:045ebfc7c0ca45b4b09463799d00bf7a5cfa79178a2b4eb492b9db849c002e46`  
		Last Modified: Tue, 15 Sep 2026 21:19:44 GMT  
		Size: 14.5 MB (14479183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a7921b18fd26e796ce4df24340cca86dd476b2e09d4a144d55e0dfb2b47f4d2f`  
		Last Modified: Tue, 15 Sep 2026 21:19:44 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10dc0f650a06df266cc49cfd08045a5756b47b122d0692ca2b4e06f4be6fd043`  
		Last Modified: Tue, 15 Sep 2026 21:19:45 GMT  
		Size: 23.3 MB (23278105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1b153297eb3bbe57fe58b58eb119863cde3530697591c1fd27026ba1476fb42f`  
		Last Modified: Tue, 15 Sep 2026 21:19:45 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e26c027a0d23ac24aa21191730c2939e85f1b5f14dee903fe0211244fb420ede`  
		Last Modified: Tue, 15 Sep 2026 21:19:45 GMT  
		Size: 22.4 KB (22381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43cfe3510c8bf45554138b5234c1149bbfd1321aad9cd1df81c5ed31ad6cc5e9`  
		Last Modified: Tue, 15 Sep 2026 22:16:21 GMT  
		Size: 11.8 MB (11843343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68034a495d7556573b00f1435ea2d085720702f8439f6385f96181383dd9d9b4`  
		Last Modified: Tue, 15 Sep 2026 22:16:21 GMT  
		Size: 17.3 MB (17309010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fef882e9b05b860819a001c98d6689ddc9ca01c600b75caeeb073951ad061f46`  
		Last Modified: Tue, 15 Sep 2026 22:16:20 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0c8046379dad470558c9365a17cedd3c1318b8dca3755c90589fb0eef7f2a6c`  
		Last Modified: Tue, 15 Sep 2026 22:16:20 GMT  
		Size: 1.5 MB (1534598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe231de0effdb1b16181aab0595a336f07ce626f435709f33a7b107d61051a79`  
		Last Modified: Tue, 15 Sep 2026 22:16:22 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2-php8.5` - unknown; unknown

```console
$ docker pull wordpress@sha256:1063ded6d2681f4611e090db53fecbefaf025bdb4295223be3cc21c68a21d574
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **661.9 KB (661869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e78c8ef0213699dd05c3017a6711af5b310de3b6dd4344b74347de8fb8727d36`

```dockerfile
```

-	Layers:
	-	`sha256:de333d40816a23bf2b358aa491681848632b53c75fa335deef97b11ab6f78c2a`  
		Last Modified: Tue, 15 Sep 2026 22:16:20 GMT  
		Size: 621.1 KB (621055 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d36c49076ed13f53beac268296f6c80b7bfc8a97795345a15e8c87d24099d89e`  
		Last Modified: Tue, 15 Sep 2026 22:16:20 GMT  
		Size: 40.8 KB (40814 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2-php8.5` - linux; ppc64le

```console
$ docker pull wordpress@sha256:c3e59dd26f9191865726062d0149ccccc67fc63086f8b6a18b5ed2076ed71058
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.3 MB (79266513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2f89a5a29f0b79fdad6b7b2b59eeb5e254a5045a6e31314cc99c4b095cbf00d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:15 GMT
ADD alpine-minirootfs-3.24.1-ppc64le.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:15 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 20:31:38 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 27 Aug 2026 20:31:38 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 27 Aug 2026 20:31:41 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 27 Aug 2026 20:31:41 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 27 Aug 2026 20:31:41 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 27 Aug 2026 20:31:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:31:41 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:31:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 27 Aug 2026 20:31:41 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 27 Aug 2026 20:31:41 GMT
ENV PHP_VERSION=8.5.10
# Thu, 27 Aug 2026 20:31:41 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Thu, 27 Aug 2026 20:31:41 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:40:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 31 Aug 2026 19:40:28 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:45:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 31 Aug 2026 19:45:00 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:45:01 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 31 Aug 2026 19:45:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 31 Aug 2026 19:45:01 GMT
CMD ["php" "-a"]
# Mon, 31 Aug 2026 20:49:54 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Mon, 31 Aug 2026 20:49:55 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Mon, 31 Aug 2026 20:49:56 GMT
WORKDIR /var/www/html
# Mon, 31 Aug 2026 20:52:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Mon, 31 Aug 2026 20:52:12 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Mon, 31 Aug 2026 20:52:15 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Mon, 31 Aug 2026 20:52:15 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Mon, 31 Aug 2026 20:52:15 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Mon, 31 Aug 2026 20:52:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Mon, 31 Aug 2026 20:52:15 GMT
VOLUME [/var/www/html]
# Mon, 31 Aug 2026 20:52:15 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 20:52:15 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:52:15 GMT
USER www-data
# Mon, 31 Aug 2026 20:52:15 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:3ebcdcd395ccee658b9200e4b27d7699e5d6ed9f6c1858dea12781aac519ff59`  
		Last Modified: Sun, 14 Jun 2026 06:46:36 GMT  
		Size: 3.8 MB (3813400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d46d0189f01fa44a5de810f5b99e6a0553eb72f27a64e6fec99aab00ad2c5f58`  
		Last Modified: Thu, 27 Aug 2026 20:36:27 GMT  
		Size: 6.0 MB (5996314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b6c4a7e5a248fb0220fccc581051dfe337fcfea57002e781fec845cfedd1ac6`  
		Last Modified: Thu, 27 Aug 2026 20:36:27 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ac73b2a087920cd615d3a0ce64c530ec173a7e809ac4af77316d13d78432d69`  
		Last Modified: Thu, 27 Aug 2026 20:36:27 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d49a1a50135d6a3a5451c102c708dc512828d687caede01ba37939973c2b71d`  
		Last Modified: Mon, 31 Aug 2026 19:45:17 GMT  
		Size: 14.5 MB (14479210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bec135da3684e055978bb43b45de4b7b2c16d38f55d60a2cde9e97aa9b871ba`  
		Last Modified: Mon, 31 Aug 2026 19:45:17 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22eefb29e2f02548e2b5b3cd474a217909b3a9a66a16e3b31e5458576e6b0afe`  
		Last Modified: Mon, 31 Aug 2026 19:45:18 GMT  
		Size: 22.9 MB (22931418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce6e22e1efb4b8ca1c5d2b84b79a876e21eeeb15eacd5bf52bd34cff40eab0d2`  
		Last Modified: Mon, 31 Aug 2026 19:45:17 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8766bb026e44b5e89ffe69011d9c07b0be09aeafd87349b48b99f3eaa2562b9f`  
		Last Modified: Mon, 31 Aug 2026 19:45:18 GMT  
		Size: 22.2 KB (22228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6733e30c1c8f3d9a5bac7383fc3957ad756fed6e5005cfd7923930bf909b8192`  
		Last Modified: Mon, 31 Aug 2026 20:52:34 GMT  
		Size: 12.4 MB (12378741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33a268feb7bb61d8164d85f6e311589b3b39194d26c4d89e68f1f3cf6dda2843`  
		Last Modified: Mon, 31 Aug 2026 20:52:34 GMT  
		Size: 18.1 MB (18105645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:687f88ec53819cc80b922f56323ff42497b8d8dd49e06de58e5bfc96a3ade49b`  
		Last Modified: Mon, 31 Aug 2026 20:52:33 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b787aca2afab8c72f892bec969f10cf3f46c180df1a8c93e28d280dc5f4ef04c`  
		Last Modified: Mon, 31 Aug 2026 20:52:33 GMT  
		Size: 1.5 MB (1534602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b781b4f5bea895aed0e944edc8d3d321afaa7a43f3251644b78578ece8e0ff01`  
		Last Modified: Mon, 31 Aug 2026 20:52:34 GMT  
		Size: 403.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2-php8.5` - unknown; unknown

```console
$ docker pull wordpress@sha256:f1dc556bb17281cd0a0f7d306b18421e53b2db9e69b081d48cb67a0ea235ab87
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **660.1 KB (660124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cdee29b5f332b1c3a0b08d247a720f59dc8e82332cb599e50999ef03022cbf01`

```dockerfile
```

-	Layers:
	-	`sha256:3beb74e6b11773f085c3e1d492346a7f9bb86c6a5e2177b71f364014dd2af438`  
		Last Modified: Mon, 31 Aug 2026 20:52:33 GMT  
		Size: 619.2 KB (619219 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf51f3c495df53848913a82903c2424ef6b8e9d96e3688f243563b9f6a301b85`  
		Last Modified: Mon, 31 Aug 2026 20:52:32 GMT  
		Size: 40.9 KB (40905 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2-php8.5` - linux; riscv64

```console
$ docker pull wordpress@sha256:79f0c681102fb5e2b5953e88639e1428b7b725211272d03c4d3dba0ec80d72e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.1 MB (75102058 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:403c080ff8866174b0810b3fd9083745f3c504c25270c58c01bc766361322596`
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
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_VERSION=8.5.10
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Tue, 01 Sep 2026 10:42:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Tue, 01 Sep 2026 10:42:35 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 03 Sep 2026 06:08:44 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 03 Sep 2026 06:08:44 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 03 Sep 2026 06:08:48 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 03 Sep 2026 06:08:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 03 Sep 2026 06:08:48 GMT
CMD ["php" "-a"]
# Thu, 03 Sep 2026 15:27:43 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Thu, 03 Sep 2026 15:27:43 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Thu, 03 Sep 2026 15:27:43 GMT
WORKDIR /var/www/html
# Thu, 03 Sep 2026 15:50:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 03 Sep 2026 15:50:48 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 03 Sep 2026 15:50:57 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 03 Sep 2026 15:50:57 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Thu, 03 Sep 2026 15:50:57 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Thu, 03 Sep 2026 15:50:57 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Thu, 03 Sep 2026 15:50:57 GMT
VOLUME [/var/www/html]
# Thu, 03 Sep 2026 15:50:57 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 03 Sep 2026 15:50:57 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 03 Sep 2026 15:50:57 GMT
USER www-data
# Thu, 03 Sep 2026 15:50:57 GMT
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
	-	`sha256:25dacb51f62940149ce1ac103ef905589dbe896527dfcab55c461c13fbab728e`  
		Last Modified: Tue, 01 Sep 2026 12:15:50 GMT  
		Size: 14.5 MB (14479189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c6610caaaeecbf523ad5439cb365b3c43f355815d55553b19e3131832705454`  
		Last Modified: Tue, 01 Sep 2026 12:15:46 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b4f2714ff1aa24b1df73272d536e666670fa58b508731e200a8876a26e66e7`  
		Last Modified: Thu, 03 Sep 2026 06:10:00 GMT  
		Size: 24.3 MB (24276783 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:840bedd29539e9f76f016b1c902772033485a1492e7ca4a02c2dd423eb992ee2`  
		Last Modified: Thu, 03 Sep 2026 06:09:57 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe5175652e0ab24a43f084b795c7ca5b09f196c2dcd03a97e49b4c368c4df901`  
		Last Modified: Thu, 03 Sep 2026 06:09:57 GMT  
		Size: 22.3 KB (22275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75429d4538d479b736474988ed1a3c0578a913de851e11a79eb6b08759dce5ff`  
		Last Modified: Thu, 03 Sep 2026 15:52:27 GMT  
		Size: 12.1 MB (12136008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:157fe012422c6971d88b9315f61aab93f7b24f7aebc79a94c1b04f9a82c16ba3`  
		Last Modified: Thu, 03 Sep 2026 15:52:28 GMT  
		Size: 15.5 MB (15469069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ecff083b27a8e9aaa6901c799d2ac03a858ac6a84d18890e576183de6b5c725`  
		Last Modified: Thu, 03 Sep 2026 15:52:24 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4043acf4cce5577a04959dc389708d6e0140a84faed0aac9a2110b958864fe2a`  
		Last Modified: Thu, 03 Sep 2026 15:52:25 GMT  
		Size: 1.5 MB (1534717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3683d9443d140df48ff0cd9b9311bae97e6d18b0222e86a7dc0731883f89280`  
		Last Modified: Thu, 03 Sep 2026 15:52:26 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2-php8.5` - unknown; unknown

```console
$ docker pull wordpress@sha256:34809b8538ac8db5aa95d42625fe79191737836623c5da021da9152838c20c67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **660.1 KB (660120 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a20b40ad7795b9600c02ca532db27842c34fbcba2cf08c7843f68d00ec8bacdc`

```dockerfile
```

-	Layers:
	-	`sha256:6ee2bd609065adfce89511e6583a2fb3e6897aba7824c3f9f9008f15e9f199c2`  
		Last Modified: Thu, 03 Sep 2026 15:52:24 GMT  
		Size: 619.2 KB (619215 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a0eaf537dd3a5d60102c4bde576c0600ba639a84a752da848c57542307573cd7`  
		Last Modified: Thu, 03 Sep 2026 15:52:23 GMT  
		Size: 40.9 KB (40905 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2-php8.5` - linux; s390x

```console
$ docker pull wordpress@sha256:18dcf2f52c226f7d1e051658bd3ca1dfcba84a04a0d531b0392d06cd67d98b0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.9 MB (77914193 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:701704ca8fb15bc251f0b8b9bd4675cffebf98f0114f46f5a06d72a442746648`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 20:30:09 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 27 Aug 2026 20:30:09 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 27 Aug 2026 20:30:13 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 27 Aug 2026 20:30:13 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 27 Aug 2026 20:30:16 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 27 Aug 2026 20:30:16 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:30:16 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:30:16 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 27 Aug 2026 20:30:16 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 27 Aug 2026 20:30:16 GMT
ENV PHP_VERSION=8.5.10
# Thu, 27 Aug 2026 20:30:16 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Thu, 27 Aug 2026 20:30:16 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:44:59 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 31 Aug 2026 19:44:59 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:50:25 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 31 Aug 2026 19:50:25 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:50:25 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 31 Aug 2026 19:50:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 31 Aug 2026 19:50:25 GMT
CMD ["php" "-a"]
# Mon, 31 Aug 2026 20:11:39 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Mon, 31 Aug 2026 20:11:39 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Mon, 31 Aug 2026 20:11:39 GMT
WORKDIR /var/www/html
# Mon, 31 Aug 2026 20:13:05 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Mon, 31 Aug 2026 20:13:05 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Mon, 31 Aug 2026 20:13:07 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Mon, 31 Aug 2026 20:13:07 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Mon, 31 Aug 2026 20:13:07 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Mon, 31 Aug 2026 20:13:07 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Mon, 31 Aug 2026 20:13:07 GMT
VOLUME [/var/www/html]
# Mon, 31 Aug 2026 20:13:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 20:13:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:13:08 GMT
USER www-data
# Mon, 31 Aug 2026 20:13:08 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a3f9b93abef1af1af2d8ed9c4e85265565c6929d33808724f03142a61a17b14`  
		Last Modified: Thu, 27 Aug 2026 20:40:37 GMT  
		Size: 5.9 MB (5915847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29ab153ddc6cbea109951b3ca4645ec14252741d4303eb0bd39029a579b4f92c`  
		Last Modified: Thu, 27 Aug 2026 20:40:26 GMT  
		Size: 936.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:313fb25fa41f3240e74a1d98f98919161faf1fb80112080451a8d4e0e2578742`  
		Last Modified: Thu, 27 Aug 2026 20:40:26 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a615a6caa2bfa51463aa51bc5f3da5962ff240f46a3f47c67e3caffe729ca4e1`  
		Last Modified: Mon, 31 Aug 2026 19:50:39 GMT  
		Size: 14.5 MB (14479184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcda6f51af58ca861e69c1b7a408950440d41544a59fa796fd7e47d4616186a0`  
		Last Modified: Mon, 31 Aug 2026 19:50:39 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cae051a53936566aa850fba7a100a14485ee22e1dcc1cd0992581afec2611abf`  
		Last Modified: Mon, 31 Aug 2026 19:50:39 GMT  
		Size: 21.7 MB (21667913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad9fa983f28bf4f9dbbd62c2ca27dc1a3428267d2ddbbc17cc599cc86b5f7e9c`  
		Last Modified: Mon, 31 Aug 2026 19:50:39 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21ddbe480566c7070550e6e6b911e0160fc20ca3ba0d8213387f8dc954233e7e`  
		Last Modified: Mon, 31 Aug 2026 19:50:40 GMT  
		Size: 22.2 KB (22176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cf399d5dcdd946d9f20bf4dce9c1a4e1e343fbc92b0d7f308af89cf03a0b6a4`  
		Last Modified: Mon, 31 Aug 2026 20:13:24 GMT  
		Size: 13.1 MB (13127287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:683a050c689ae6b2c15dc8ce8df6a755125632bb4493fc78a0dc7d3e991e61be`  
		Last Modified: Mon, 31 Aug 2026 20:13:24 GMT  
		Size: 17.5 MB (17452909 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fdc1d10076ad980d1cac7b9542b59351487f5e11e6abad1511d6b58234e7995`  
		Last Modified: Mon, 31 Aug 2026 20:13:24 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d4335098c884edec3090988fee978864b4e7df29b9c279b619b2fea386b767`  
		Last Modified: Mon, 31 Aug 2026 20:13:24 GMT  
		Size: 1.5 MB (1534604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0142c4c86af4b8af5ef28ded9feaa85e39d8e59c2450e760663cd27205ea7fbd`  
		Last Modified: Mon, 31 Aug 2026 20:13:25 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2-php8.5` - unknown; unknown

```console
$ docker pull wordpress@sha256:2bc4f3db037c0d5abe9726682cfc1ebbba012c6da2b3d0b92e53eeaacf174749
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **660.0 KB (660039 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6d483e6da0f71c1f2119ecf3ee9230b736da15f19032c3e59c58e258163f230`

```dockerfile
```

-	Layers:
	-	`sha256:d2c45c75783ce97132a8f2951391e003e8aa38b4aab8d4cde55be3e7bbdf1395`  
		Last Modified: Mon, 31 Aug 2026 20:13:24 GMT  
		Size: 619.2 KB (619185 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0da0c51b496bae97c60106a223a2ffaf6b6457f3485c42c7136eec4432fa35e9`  
		Last Modified: Mon, 31 Aug 2026 20:13:24 GMT  
		Size: 40.9 KB (40854 bytes)  
		MIME: application/vnd.in-toto+json
