## `wordpress:cli`

```console
$ docker pull wordpress@sha256:54c7808aa92ad0c25a0062931198c453470cff22b426d39653fc23cb8f7c8179
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

### `wordpress:cli` - linux; amd64

```console
$ docker pull wordpress@sha256:aa31002b5ae67cfff25817c8f4379b0e84aa4f8cc9637c83e16757d435adaf49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.5 MB (71525677 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9f47e57f660b17e9129689c53a59664077b1d47d9b9bb66de15d0426a40c77c`
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
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 15 Sep 2026 21:16:12 GMT
ENV PHP_VERSION=8.3.33
# Tue, 15 Sep 2026 21:16:12 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Tue, 15 Sep 2026 21:16:12 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Tue, 15 Sep 2026 21:29:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Tue, 15 Sep 2026 21:29:07 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:31:38 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:31:38 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:31:39 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:31:39 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:31:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:31:39 GMT
CMD ["php" "-a"]
# Tue, 15 Sep 2026 22:27:50 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Tue, 15 Sep 2026 22:27:50 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Tue, 15 Sep 2026 22:27:50 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 22:28:28 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:28:28 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:28:30 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Tue, 15 Sep 2026 22:28:30 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Tue, 15 Sep 2026 22:28:30 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Tue, 15 Sep 2026 22:28:30 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Tue, 15 Sep 2026 22:28:30 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:28:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:28:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:28:30 GMT
USER www-data
# Tue, 15 Sep 2026 22:28:30 GMT
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
	-	`sha256:9f76b62ee533e8b3181ae84d3baf2291d2c6404d37059d950f65c93d21bc9840`  
		Last Modified: Tue, 15 Sep 2026 21:31:47 GMT  
		Size: 12.6 MB (12636184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98787a629e4714061ab192cbeaeb5e1067b6722f9cdd82ee81bb96bbd75c86e5`  
		Last Modified: Tue, 15 Sep 2026 21:31:46 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36cef5c959f5de419d3b952b1956a36ae7306edbdd2f45e09e5856652f8753cd`  
		Last Modified: Tue, 15 Sep 2026 21:31:47 GMT  
		Size: 17.6 MB (17605590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9c430763e75921493e2c3d418575377721787efd0150d402f93dcb08dbc999f`  
		Last Modified: Tue, 15 Sep 2026 21:31:46 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce746697d398084ca752237c8bc03ff869f06e1b6d4f70126d6e42c72ec07367`  
		Last Modified: Tue, 15 Sep 2026 21:31:47 GMT  
		Size: 22.4 KB (22393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:629fb5004b26dc1949372f7c3db7acc878d0a179ccc987aaddc070bd53e77151`  
		Last Modified: Tue, 15 Sep 2026 21:31:47 GMT  
		Size: 22.4 KB (22396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd6c9c6c4c5e13b90004bf60fa0bd39e2e31ffdeb3496bc1df1b09e05195f107`  
		Last Modified: Tue, 15 Sep 2026 22:28:39 GMT  
		Size: 11.7 MB (11709718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b059f4d68362cacae5e2a3a58508abf50ab43e0cbda26c13269c84423a279405`  
		Last Modified: Tue, 15 Sep 2026 22:28:38 GMT  
		Size: 18.2 MB (18185095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ed1365705666ffa339d1eff7dc244e2566747c774b9286d7ca789266b996590`  
		Last Modified: Tue, 15 Sep 2026 22:28:38 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ad68ec3ddde9295fe7954994e4df415698f24f43035aaad5a4e0a496fee45d3`  
		Last Modified: Tue, 15 Sep 2026 22:28:38 GMT  
		Size: 1.5 MB (1534699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cdb0220dd9b79dc1044a4f55ccfe0cfbab3c23c39822edf060cf08a68b88d9a`  
		Last Modified: Tue, 15 Sep 2026 22:28:39 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli` - unknown; unknown

```console
$ docker pull wordpress@sha256:9646dfc4aeca5e6f91db69e7c99ccc40726353cd0907122eef951e2165b68310
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **666.9 KB (666868 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d60ff84f490f7bd7976cbcebc3c89616e922cc693bbbfa2d53da9090a74fdac5`

```dockerfile
```

-	Layers:
	-	`sha256:f658ee7b9b94dbae1400706244b77c6650539efa42fa2c4908c8ba42cb322b03`  
		Last Modified: Tue, 15 Sep 2026 22:28:38 GMT  
		Size: 623.5 KB (623547 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e5329cddb3a46e822066e7effca230fb680183cabee7de64470ed9e400ea9a90`  
		Last Modified: Tue, 15 Sep 2026 22:28:37 GMT  
		Size: 43.3 KB (43321 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli` - linux; arm variant v6

```console
$ docker pull wordpress@sha256:1aa09c22666fa98937dd5bc4c80216baadd8a4e31f348fc59b905e26a4fb6bb3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.5 MB (65515729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51b2a2a407b6f4e3a6c6ea9949362bec89736f53ee27a3cb2f1257314ccbe06e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 21:30:37 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 15 Sep 2026 21:30:37 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Tue, 15 Sep 2026 21:30:37 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 15 Sep 2026 21:30:37 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:30:37 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:30:37 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:30:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:30:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:30:37 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 15 Sep 2026 21:30:37 GMT
ENV PHP_VERSION=8.3.33
# Tue, 15 Sep 2026 21:30:37 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Tue, 15 Sep 2026 21:30:37 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Tue, 15 Sep 2026 21:30:40 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Tue, 15 Sep 2026 21:30:40 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:33:21 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:33:21 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:33:22 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:33:22 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:33:22 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:33:22 GMT
CMD ["php" "-a"]
# Tue, 15 Sep 2026 22:14:33 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Tue, 15 Sep 2026 22:14:33 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Tue, 15 Sep 2026 22:14:33 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 22:15:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:15:43 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:15:45 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Tue, 15 Sep 2026 22:15:45 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Tue, 15 Sep 2026 22:15:45 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Tue, 15 Sep 2026 22:15:45 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Tue, 15 Sep 2026 22:15:45 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:15:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:15:45 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:15:45 GMT
USER www-data
# Tue, 15 Sep 2026 22:15:45 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d93fabc13291d18ff451373c10871ee63aceb4d66ec5516c2dc6438eafee0e0a`  
		Last Modified: Tue, 15 Sep 2026 21:33:28 GMT  
		Size: 5.5 MB (5549290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c466faf55b0b9277ac4eee6dff313db431222e60bafabbbf4a08f96e1d98914f`  
		Last Modified: Tue, 15 Sep 2026 21:33:28 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4560a67370668f40a40678512f7c59830a32a75c9da0d46b2e4ace769a2ed4d`  
		Last Modified: Tue, 15 Sep 2026 21:33:28 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6c78725a8997046f8cd62eb2ca767dd72fc13cd1cf6b61cffb5be0bee105067`  
		Last Modified: Tue, 15 Sep 2026 21:33:28 GMT  
		Size: 12.6 MB (12636189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a5f288268bf02e01b37307386ba735c18bda41756c1fc196087a17b13793c19`  
		Last Modified: Tue, 15 Sep 2026 21:33:29 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a007f5150b0498db807ab32942074abc3e5f10ac4207511c523ae777ed04e57`  
		Last Modified: Tue, 15 Sep 2026 21:33:30 GMT  
		Size: 16.0 MB (16004899 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec175aa9caa42ca029ca7eab74dbe9ab526f55daad136cebedb7e5c4cb82133e`  
		Last Modified: Tue, 15 Sep 2026 21:33:29 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e45418bcb022a0818ee4e6f1f5e5fdaca4d70d5fd9b51e44e61dd12df2fe926`  
		Last Modified: Tue, 15 Sep 2026 21:33:30 GMT  
		Size: 22.2 KB (22166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bbb0e5912d9ad35d3004fc81c33e79c34fe380c776178d447c7a160c0741135`  
		Last Modified: Tue, 15 Sep 2026 21:33:30 GMT  
		Size: 22.2 KB (22182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1456d69c219a398dcd0ecce9a9bb2bd84d388ca88dcd1b3ee18adaa65e13bd3`  
		Last Modified: Tue, 15 Sep 2026 22:15:50 GMT  
		Size: 11.3 MB (11343134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a893cd25f1924e32cfd7d570cb25786a38ac70ff6d26f73d2b98fc8642ac63f`  
		Last Modified: Tue, 15 Sep 2026 22:15:51 GMT  
		Size: 14.8 MB (14844777 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4fc051cfb20cc5574933d6fcb128f1531c55929ba38ea5c319032c60d8dd76b`  
		Last Modified: Tue, 15 Sep 2026 22:15:50 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0595d9c2ef465f329cafc87eb7e6bb1dc46d8f1d17ab276c76dac80ea0e2f26b`  
		Last Modified: Tue, 15 Sep 2026 22:15:50 GMT  
		Size: 1.5 MB (1534701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da7f463f4abe83f9da2082ac9ec1aacd6298dafed11da76a8d3f716f0f2e79fe`  
		Last Modified: Tue, 15 Sep 2026 22:15:51 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli` - unknown; unknown

```console
$ docker pull wordpress@sha256:d0dd7ce4f5ba793b4a7a19ec8824455c558136beafb8783497140ae1ea490b25
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.3 KB (43271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2a2deb666962516b89d8aade4a0259398f65f19c1dd6c9daf950b900a832997b`

```dockerfile
```

-	Layers:
	-	`sha256:f92c989eecad465b05b8779d074c46172b2e352e7bd9fbc8e9749a66b2d7778c`  
		Last Modified: Tue, 15 Sep 2026 22:15:50 GMT  
		Size: 43.3 KB (43271 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:fe6a66a61a151f6203b8606c4e2065cc03b3f912b5b3da6c6188550077fcb99b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.0 MB (64035543 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c39d1a8fd73f5fe1539f73baa4ca979c342932aa8a49b064564655f4fc13bf0e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 21:50:24 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 15 Sep 2026 21:50:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Tue, 15 Sep 2026 21:50:25 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 15 Sep 2026 21:50:25 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:50:25 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:50:25 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:50:25 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:50:25 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:50:25 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 15 Sep 2026 21:50:25 GMT
ENV PHP_VERSION=8.3.33
# Tue, 15 Sep 2026 21:50:25 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Tue, 15 Sep 2026 21:50:25 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Tue, 15 Sep 2026 21:50:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Tue, 15 Sep 2026 21:50:28 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:53:09 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:53:09 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:53:10 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:53:10 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:53:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:53:10 GMT
CMD ["php" "-a"]
# Tue, 15 Sep 2026 22:19:27 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Tue, 15 Sep 2026 22:19:27 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Tue, 15 Sep 2026 22:19:27 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 22:20:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:20:35 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:20:36 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Tue, 15 Sep 2026 22:20:36 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Tue, 15 Sep 2026 22:20:36 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Tue, 15 Sep 2026 22:20:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Tue, 15 Sep 2026 22:20:36 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:20:36 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:20:36 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:20:36 GMT
USER www-data
# Tue, 15 Sep 2026 22:20:36 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07ec9405ac78a510a7b0a1041b97342cf6e28c4fc081b721e8d1d112e1f3cdbd`  
		Last Modified: Tue, 15 Sep 2026 21:53:17 GMT  
		Size: 5.2 MB (5200565 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdf0d92871340812bf86a5c6021b154e1153787687e1c8293b7c81a62e4a600e`  
		Last Modified: Tue, 15 Sep 2026 21:53:17 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49f447a50727bb42c5787261adf647e96f3ac6a4b3e9ac58e82b5a0605bfc6e6`  
		Last Modified: Tue, 15 Sep 2026 21:53:17 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f138424067f5bdb4b76ae10bcc57fefde10b5184be075835a8cdd7235878bf21`  
		Last Modified: Tue, 15 Sep 2026 21:53:18 GMT  
		Size: 12.6 MB (12636205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc57a4c05c57608674e2d90a96658b166e2c3a3f830e3c94e5628a5a841817e1`  
		Last Modified: Tue, 15 Sep 2026 21:53:18 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b8ad4b2ab8acbe65b2a60ead3a1d1ceb72193bc8d106c5d905e3486b8245a9`  
		Last Modified: Tue, 15 Sep 2026 21:53:19 GMT  
		Size: 15.0 MB (15048439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b5c465cc19c4cbd0b7049d64d0d897106acef1430246925961411464051faad`  
		Last Modified: Tue, 15 Sep 2026 21:53:19 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a043daed43c4417b8589fea640ed4beee893927abd4e5997eedcc022fb3871c0`  
		Last Modified: Tue, 15 Sep 2026 21:53:19 GMT  
		Size: 22.2 KB (22186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e30e3e86016fa02b99f4dcfdd3d965186ebdbbd4183fbfd5e4c529576ae6ac65`  
		Last Modified: Tue, 15 Sep 2026 21:53:19 GMT  
		Size: 22.2 KB (22192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20167a859822a729e9eab74ca608325d5be69899bf4ca902ad4005a3843d564d`  
		Last Modified: Tue, 15 Sep 2026 22:20:45 GMT  
		Size: 11.0 MB (10979789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00125b988de92fd4639b603be36c54927d12190c41b4fac09828d3ec9ab0743d`  
		Last Modified: Tue, 15 Sep 2026 22:20:45 GMT  
		Size: 15.3 MB (15325900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c167c291464f1c3dd2c2db39410f040c76b6a83bd2e69d7f46c2e4282f0a7a14`  
		Last Modified: Tue, 15 Sep 2026 22:20:45 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b0c2313cbc2b56e18bc586a5c1a6953592c58a6cb6e21e4d71ab8323bf15d7`  
		Last Modified: Tue, 15 Sep 2026 22:20:45 GMT  
		Size: 1.5 MB (1534703 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3369fae1f376e1f130ba26b99f45b50f529bc1b81a3b72ed8093368a4ca70362`  
		Last Modified: Tue, 15 Sep 2026 22:20:46 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli` - unknown; unknown

```console
$ docker pull wordpress@sha256:700a29817803ea8cf6ce8919c8ed9def4c39bd9723670fdddab1f9b3a508231f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **665.2 KB (665207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:af5cd523e3621e1b804d4f75bb08a1c7d6aca7708074aaf5f8ec0d0c01e06924`

```dockerfile
```

-	Layers:
	-	`sha256:1cd5b6bdeafd5e015c62515304785d475674eb8db33061d26709e515e0370c99`  
		Last Modified: Tue, 15 Sep 2026 22:20:44 GMT  
		Size: 621.7 KB (621721 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:643c39e5faf33eec2a2d79cc1b5ac4084ba4b0f1dee54dd753caae3a926d5827`  
		Last Modified: Tue, 15 Sep 2026 22:20:45 GMT  
		Size: 43.5 KB (43486 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:1aa7331c40ad7735ce214c4e338667a95666d097e65a0f078b37a6725cfa809f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.0 MB (70970568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:26a1c41dbfb9cb9efd57b4a278f293e8a6b9be735995cb8b3220fb0d06f24b1d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 21:16:55 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 15 Sep 2026 21:16:55 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Tue, 15 Sep 2026 21:16:55 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 15 Sep 2026 21:16:55 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:16:55 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:16:55 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:16:55 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:16:55 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:16:55 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 15 Sep 2026 21:16:55 GMT
ENV PHP_VERSION=8.3.33
# Tue, 15 Sep 2026 21:16:55 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Tue, 15 Sep 2026 21:16:55 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Tue, 15 Sep 2026 21:31:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Tue, 15 Sep 2026 21:31:56 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:36:33 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:36:33 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:36:34 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:36:35 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:36:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:36:35 GMT
CMD ["php" "-a"]
# Tue, 15 Sep 2026 22:14:32 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Tue, 15 Sep 2026 22:14:32 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Tue, 15 Sep 2026 22:14:32 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 22:15:26 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:15:26 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:15:28 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Tue, 15 Sep 2026 22:15:28 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Tue, 15 Sep 2026 22:15:28 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Tue, 15 Sep 2026 22:15:28 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Tue, 15 Sep 2026 22:15:28 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:15:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:15:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:15:28 GMT
USER www-data
# Tue, 15 Sep 2026 22:15:28 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a935d8e291c55b06a0ae70288bb5825f043060ccacd732d5af7d944161ab806a`  
		Last Modified: Tue, 15 Sep 2026 21:20:40 GMT  
		Size: 6.3 MB (6270044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1bbc34d49d79dda0f4c0703708ee689f2bca1d80d0f7cd88c9d6bf3ec396bf3`  
		Last Modified: Tue, 15 Sep 2026 21:20:40 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36d7a72ea8c809f0fd65f731d80ba83625482e802f7a5519f083de7d96b955ae`  
		Last Modified: Tue, 15 Sep 2026 21:20:40 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb32f2a964d5e005c0efba06069ec7e4ed1f0ca95b8ba9bc50ddfa9981290d91`  
		Last Modified: Tue, 15 Sep 2026 21:36:42 GMT  
		Size: 12.6 MB (12636191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92e679fae53412f6cac5dcc76c37a7dd29f4c6cdd16624187acccbfcda88864e`  
		Last Modified: Tue, 15 Sep 2026 21:36:42 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b4fbeb60b26e97cc2a2fa020520692ff132a974392cff905c072961ec6dff84`  
		Last Modified: Tue, 15 Sep 2026 21:36:42 GMT  
		Size: 17.4 MB (17387603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d393d03039e6ffdbb66ae49fb5a6e49e6ad3c4855259f6b10b1b96c29f34acbe`  
		Last Modified: Tue, 15 Sep 2026 21:36:42 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f6b225c9a8b869b758f0ee1282b85384b9492ca2e27054a8e8785ac8e37ac4a`  
		Last Modified: Tue, 15 Sep 2026 21:36:43 GMT  
		Size: 22.2 KB (22207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b82d1dd4c26ff8536e38b60764cebddc991e7f7d3b8295d6895c6fa2edcc94dd`  
		Last Modified: Tue, 15 Sep 2026 21:36:43 GMT  
		Size: 22.2 KB (22213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bf81b8255a153ca9e8d0c74be9943578b0de36f6081cb43652d1b542bd8e835`  
		Last Modified: Tue, 15 Sep 2026 22:15:37 GMT  
		Size: 11.6 MB (11641974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8db279e194c06a9daf30cbf684fe8e30f495e01bb720564268faa5abac076b9b`  
		Last Modified: Tue, 15 Sep 2026 22:15:37 GMT  
		Size: 17.3 MB (17267684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56d8fc70532d5e8f4ee3826d2395c963b637d055c9f4f6076f194497a0a40324`  
		Last Modified: Tue, 15 Sep 2026 22:15:36 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6afe13977825117bce1344b01e610af0e7034c44639d5937c5f37a68f13b8091`  
		Last Modified: Tue, 15 Sep 2026 22:15:36 GMT  
		Size: 1.5 MB (1534667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4a3f69fd27424625a2544d2a1a27482b87d2f641d7f8499c9da662f2198d851`  
		Last Modified: Tue, 15 Sep 2026 22:15:37 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli` - unknown; unknown

```console
$ docker pull wordpress@sha256:0e8e96bcb53ac162b44b6f1c377af782404b7fa716941cd1620920437a8ed451
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **665.3 KB (665291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab69acb93e5baa57544970a0fc88f7d03a7330c19ad99688ca0713ed819ab01a`

```dockerfile
```

-	Layers:
	-	`sha256:0922f14a92396b2ec20e0690fa85d4afb36c49869b783c19bcb5924672ea70da`  
		Last Modified: Tue, 15 Sep 2026 22:15:36 GMT  
		Size: 621.8 KB (621757 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac6a37d27b9afaf8159b696c8afa7cbedfb6883334a98ef14886f64dab39796d`  
		Last Modified: Tue, 15 Sep 2026 22:15:36 GMT  
		Size: 43.5 KB (43534 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli` - linux; 386

```console
$ docker pull wordpress@sha256:80d184b07e1e742c9cd44690a0a6e08ecfb35b6d9667de22b611bec860b8a3da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.8 MB (70766612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cec22a5008ccc3f3717d0a8d2c3dcb29d944f8ec14e0df883e1d5495f93039b7`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 21:16:34 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 15 Sep 2026 21:16:34 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Tue, 15 Sep 2026 21:16:34 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 15 Sep 2026 21:16:34 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:16:34 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:16:34 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:16:34 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:16:34 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:16:34 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 15 Sep 2026 21:16:34 GMT
ENV PHP_VERSION=8.3.33
# Tue, 15 Sep 2026 21:16:34 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Tue, 15 Sep 2026 21:16:34 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Tue, 15 Sep 2026 21:30:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Tue, 15 Sep 2026 21:30:47 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:33:35 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:33:35 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:33:36 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:33:36 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:33:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:33:36 GMT
CMD ["php" "-a"]
# Tue, 15 Sep 2026 22:14:54 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Tue, 15 Sep 2026 22:14:54 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Tue, 15 Sep 2026 22:14:54 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 22:15:39 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:15:39 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:15:41 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Tue, 15 Sep 2026 22:15:41 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Tue, 15 Sep 2026 22:15:41 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Tue, 15 Sep 2026 22:15:41 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Tue, 15 Sep 2026 22:15:41 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:15:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:15:41 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:15:41 GMT
USER www-data
# Tue, 15 Sep 2026 22:15:41 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfa188a33e5b4099910c8737ecebab55214bcef4fb13a39f0d2a07b848ed3179`  
		Last Modified: Tue, 15 Sep 2026 21:20:03 GMT  
		Size: 5.8 MB (5807663 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82510ccd3ab5a0631a2d5ff53f9601d2c4e51073c050ad764049d1d64877aac8`  
		Last Modified: Tue, 15 Sep 2026 21:20:03 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6717cc23cb5c9ea425d27cc2e9afa75ff8e1a67c03f0fee1078998b15bdf075f`  
		Last Modified: Tue, 15 Sep 2026 21:20:03 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:058683de4bd4cc2a165dfbbf2543e52e66ce5c911b74da9ef7e02fcec26e19b9`  
		Last Modified: Tue, 15 Sep 2026 21:33:43 GMT  
		Size: 12.6 MB (12636178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:913c6ddd8a3d11d3bdefbceb931a9aae9f8ee80e783ff6940b10f65af822cdac`  
		Last Modified: Tue, 15 Sep 2026 21:33:43 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c42f75da1a8c24e6d8bd23d4bf9deaecb6d59f6c4118e4f5d76a2bd01de8625`  
		Last Modified: Tue, 15 Sep 2026 21:33:44 GMT  
		Size: 18.0 MB (17961127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b32b5807515aa595f38fe34cbd496fdabe0b941e4ccb79f88258e48d4e04e32c`  
		Last Modified: Tue, 15 Sep 2026 21:33:43 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c0858124622a40cd615dac9eb2ec802961b2a5f39dcc8bcda2b610e8f59812f`  
		Last Modified: Tue, 15 Sep 2026 21:33:44 GMT  
		Size: 22.4 KB (22389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2be62a0c706570333568d9bcdfc329d96b8977cf6225c4a50ef8732d95b6e18`  
		Last Modified: Tue, 15 Sep 2026 21:33:44 GMT  
		Size: 22.4 KB (22397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91632d7b22b11141f3deeab15aad0b58123e410b3aa19ec29e69ea0a08435fec`  
		Last Modified: Tue, 15 Sep 2026 22:15:49 GMT  
		Size: 11.8 MB (11843382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6591099e01be09f388a0ba21cb730bb6d2b1220804b589f803b3bf5aac06a876`  
		Last Modified: Tue, 15 Sep 2026 22:15:49 GMT  
		Size: 17.3 MB (17263775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10dfaec61135c79375f79308f6e5739c296008d51855e617247d94039cca689f`  
		Last Modified: Tue, 15 Sep 2026 22:15:49 GMT  
		Size: 383.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f6831d23cfd2844d07fe84e4aa0fabd3d6e091878cb5d6ebee31742cedab266`  
		Last Modified: Tue, 15 Sep 2026 22:15:49 GMT  
		Size: 1.5 MB (1534618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:207d56a49f0680d0490436495fe1ba359619f67663f697308807bd964978de8a`  
		Last Modified: Tue, 15 Sep 2026 22:15:50 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli` - unknown; unknown

```console
$ docker pull wordpress@sha256:046b15d177de0463db68f89fc08bbe16ca36c1bb755a188c6a1459fdb90e96b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **666.8 KB (666763 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1236b0fdb961dd1d5b168f189659aa4d7a27b804a32f061a6b0f10b6562516ef`

```dockerfile
```

-	Layers:
	-	`sha256:7db06c866e391e894bdc248ad0d84d4765d34b79d8185e3eaf64bbf91ed9e0be`  
		Last Modified: Tue, 15 Sep 2026 22:15:49 GMT  
		Size: 623.5 KB (623502 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2ed83598266735a0e5b93d28e3cd777bb03a9112f3bd2dc3bcb97e4e8a748c9`  
		Last Modified: Tue, 15 Sep 2026 22:15:48 GMT  
		Size: 43.3 KB (43261 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli` - linux; ppc64le

```console
$ docker pull wordpress@sha256:262e862cef14a776a70be612c3521fbdcd94a4e279899d2d4d09b5deed3e6827
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.8 MB (70840880 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be980945d151b48b86d09c53a7ed7f6a0f9b02d11415a05fbbff1b68a5f83981`
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
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 02 Jul 2026 20:57:30 GMT
ENV PHP_VERSION=8.3.33
# Thu, 02 Jul 2026 20:57:30 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Thu, 02 Jul 2026 20:57:30 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Fri, 31 Jul 2026 00:54:43 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Fri, 31 Jul 2026 00:54:43 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:58:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 31 Jul 2026 00:58:15 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:58:17 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 31 Jul 2026 00:58:18 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 31 Jul 2026 00:58:18 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 31 Jul 2026 00:58:18 GMT
CMD ["php" "-a"]
# Fri, 31 Jul 2026 01:58:31 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Fri, 31 Jul 2026 01:58:31 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Fri, 31 Jul 2026 01:58:32 GMT
WORKDIR /var/www/html
# Fri, 31 Jul 2026 02:00:04 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Fri, 31 Jul 2026 02:00:04 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Fri, 31 Jul 2026 02:00:07 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Fri, 31 Jul 2026 02:00:07 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Fri, 31 Jul 2026 02:00:07 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Fri, 31 Jul 2026 02:00:07 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Fri, 31 Jul 2026 02:00:07 GMT
VOLUME [/var/www/html]
# Fri, 31 Jul 2026 02:00:07 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 02:00:07 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 02:00:07 GMT
USER www-data
# Fri, 31 Jul 2026 02:00:07 GMT
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
	-	`sha256:e5651958cf7d15def572f08bdb3ed3b50e34333a943cbc4f83808fd9ad5d6ac7`  
		Last Modified: Fri, 31 Jul 2026 00:58:31 GMT  
		Size: 12.6 MB (12636164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58c01b4956aa88b5620bd35c809931f33601e3d6677980863c8494cc302c3b2e`  
		Last Modified: Fri, 31 Jul 2026 00:58:30 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dda4d83d6f9ed541563b8b6688d61989f30fe7ab7eab8e6b62150b443d7f028`  
		Last Modified: Fri, 31 Jul 2026 00:58:31 GMT  
		Size: 18.7 MB (18716597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:513a692cbcb27778da62db33b4ebc51bdbf788cbb73f842475ee8a6045c20572`  
		Last Modified: Fri, 31 Jul 2026 00:58:30 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bd249fd272431bf2f45c6ee95a5d7b77d89a16940b9973a376d01e3a81649e0`  
		Last Modified: Fri, 31 Jul 2026 00:58:31 GMT  
		Size: 22.2 KB (22208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64babfc3f48a3c03b0389cbea2a614c55778258b4d7e36139958061a1df4d171`  
		Last Modified: Fri, 31 Jul 2026 00:58:31 GMT  
		Size: 22.2 KB (22228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:029fbb7cc402f18490f10b5ef4624a76eb6bebdcbbf8748cf876a8eaafb86799`  
		Last Modified: Fri, 31 Jul 2026 02:00:24 GMT  
		Size: 12.4 MB (12378597 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97e898560b4d1ea9b7b4999aa1799b1bb82ce2d73abd54a29713f46a4e4283a1`  
		Last Modified: Fri, 31 Jul 2026 02:00:23 GMT  
		Size: 18.1 MB (18064784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec5568dca3fed9519489b67da9e9eb0b625ea5aa298b621f3e5bac4579b24d80`  
		Last Modified: Fri, 31 Jul 2026 02:00:23 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4800c743bb80e3572baab26f003aa849137bf31947fb54e26abccf44deca7ab`  
		Last Modified: Fri, 31 Jul 2026 02:00:23 GMT  
		Size: 1.5 MB (1534604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc452fe1b13b471246261bcf5eda6694640da4dc2200059173ae76450bafbb0b`  
		Last Modified: Fri, 31 Jul 2026 02:00:24 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli` - unknown; unknown

```console
$ docker pull wordpress@sha256:8cd1f884231fd1babeae8a80dfa98f42135a8815eff045abe5668bf2a65fcef9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **665.1 KB (665108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15976c211ff9eeecd97c36b45f652ca42824ec5f6c2002dbc6219d5c7c803fe5`

```dockerfile
```

-	Layers:
	-	`sha256:12b84cd6175071bc380fb1968090d6399fee77421e446a9e691d8525c1a89540`  
		Last Modified: Fri, 31 Jul 2026 02:00:22 GMT  
		Size: 621.7 KB (621710 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57183c29d5292cf5bee8060f096ad585337ef793a18b452a553000ccbc3154ab`  
		Last Modified: Fri, 31 Jul 2026 02:00:23 GMT  
		Size: 43.4 KB (43398 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli` - linux; riscv64

```console
$ docker pull wordpress@sha256:f4daecc551404e7cf4dd59308a603351f94d28ae62f27258b32af40ee5ad9606
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.6 MB (66603323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0fe19fec353775bf79ab0e287dbe4f1f52b6773e205b5721be7ba9f6e891e781`
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
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_VERSION=8.3.33
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Sat, 01 Aug 2026 11:35:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Sat, 01 Aug 2026 11:35:22 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 01 Aug 2026 12:28:04 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 01 Aug 2026 12:28:04 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 01 Aug 2026 12:28:09 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sat, 01 Aug 2026 12:28:13 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 01 Aug 2026 12:28:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 01 Aug 2026 12:28:13 GMT
CMD ["php" "-a"]
# Sun, 02 Aug 2026 08:25:36 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Sun, 02 Aug 2026 08:25:37 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Sun, 02 Aug 2026 08:25:37 GMT
WORKDIR /var/www/html
# Sun, 02 Aug 2026 08:39:01 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Sun, 02 Aug 2026 08:39:01 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Sun, 02 Aug 2026 08:39:10 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Sun, 02 Aug 2026 08:39:10 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Sun, 02 Aug 2026 08:39:10 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Sun, 02 Aug 2026 08:39:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Sun, 02 Aug 2026 08:39:10 GMT
VOLUME [/var/www/html]
# Sun, 02 Aug 2026 08:39:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sun, 02 Aug 2026 08:39:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 02 Aug 2026 08:39:10 GMT
USER www-data
# Sun, 02 Aug 2026 08:39:10 GMT
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
	-	`sha256:3af22f022d7d8e23a9ecbbe2cc4bfa58825e52c769b6bac41b23a9eed1ca711c`  
		Last Modified: Sat, 01 Aug 2026 12:29:12 GMT  
		Size: 12.6 MB (12636181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17cff3d73e192204ebc07778b88bde9d1c24991f0458d4b3b1869b97c347c2c3`  
		Last Modified: Sat, 01 Aug 2026 12:29:08 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:320a74dc1d152c68bba1ece0b578cada969846034a9eebb44fe95e1f35ddd21e`  
		Last Modified: Sat, 01 Aug 2026 12:29:13 GMT  
		Size: 17.6 MB (17644150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b515cb390fd103a701dc555a1bb7e11b1c51a11ae177e62206920c3b1d319b1`  
		Last Modified: Sat, 01 Aug 2026 12:29:08 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b620d90a75335afe241022bfdbda88c4d7ec730ea45803ddaf49e221ade0e87`  
		Last Modified: Sat, 01 Aug 2026 12:29:10 GMT  
		Size: 22.2 KB (22204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3caf6f10f1c586344ff6e627f2f244814b6ac5f8304bd254f4741b36a0e0e3a1`  
		Last Modified: Sat, 01 Aug 2026 12:29:10 GMT  
		Size: 22.2 KB (22225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64a658a954ccdbe57b36a874df7410ae5d782f45f49497dadb9ccdddbd09f976`  
		Last Modified: Sun, 02 Aug 2026 08:40:38 GMT  
		Size: 12.1 MB (12135043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95ca62a888b2a08da017d3b12e0a40f7af64ad4c2e73ca6899f62189ca8a8c05`  
		Last Modified: Sun, 02 Aug 2026 08:40:39 GMT  
		Size: 15.4 MB (15424891 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaf6e5eecae1fdc7b3b7697fe2c87e204c7f0ab14de629d364ba6f47d7946498`  
		Last Modified: Sun, 02 Aug 2026 08:40:34 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88c3326f5bdee7d8d9e6362e0042a7d8c2eb30485be7b0f9051e3838c89e0bbf`  
		Last Modified: Sun, 02 Aug 2026 08:40:35 GMT  
		Size: 1.5 MB (1534608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08d8e3f4b23098757900a8728f0ebcad4449531051391005a1c0ed7c9995b1d4`  
		Last Modified: Sun, 02 Aug 2026 08:40:36 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli` - unknown; unknown

```console
$ docker pull wordpress@sha256:48c55678b3335868a219919dc9b9ec2a60e2a670f871ac1321e1dd2cb2cc0a8c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **665.1 KB (665104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b85193f23660e48dcdc8b4e181f01040e6249a338c9b24f97815229451ef92d4`

```dockerfile
```

-	Layers:
	-	`sha256:68e5ac4e8a7dd9a9ba51a1bcb90739fcd9caaed7fe356801b533d17963247b80`  
		Last Modified: Sun, 02 Aug 2026 08:40:34 GMT  
		Size: 621.7 KB (621706 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8794c52d44eff46998cc923ed8cc31b5bed3e55c857dff6d3232253fbcc35a01`  
		Last Modified: Sun, 02 Aug 2026 08:40:34 GMT  
		Size: 43.4 KB (43398 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli` - linux; s390x

```console
$ docker pull wordpress@sha256:45009cd67bcc70f023326f1da948aa47fc9ef1eee158b811034d7544cd003098
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.8 MB (69810423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9ac531455e184f31f62d7acf8e399e2b1c96c6dc466f11c18da32d7ed4e03c5`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Thu, 02 Jul 2026 20:41:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 02 Jul 2026 20:41:15 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 02 Jul 2026 20:41:15 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 02 Jul 2026 20:41:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:41:15 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:41:15 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:41:15 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:41:15 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:41:15 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 02 Jul 2026 20:41:15 GMT
ENV PHP_VERSION=8.3.33
# Thu, 02 Jul 2026 20:41:15 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Thu, 02 Jul 2026 20:41:15 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Thu, 30 Jul 2026 23:35:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 23:35:51 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:39:46 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 23:39:46 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:39:46 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 23:39:47 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 23:39:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 23:39:47 GMT
CMD ["php" "-a"]
# Fri, 31 Jul 2026 00:18:03 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Fri, 31 Jul 2026 00:18:03 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Fri, 31 Jul 2026 00:18:03 GMT
WORKDIR /var/www/html
# Fri, 31 Jul 2026 00:19:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Fri, 31 Jul 2026 00:19:10 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Fri, 31 Jul 2026 00:19:13 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Fri, 31 Jul 2026 00:19:13 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Fri, 31 Jul 2026 00:19:13 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Fri, 31 Jul 2026 00:19:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Fri, 31 Jul 2026 00:19:13 GMT
VOLUME [/var/www/html]
# Fri, 31 Jul 2026 00:19:13 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:19:13 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 00:19:13 GMT
USER www-data
# Fri, 31 Jul 2026 00:19:13 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:456e3629146fe5c0dd41d3f3705f9e0e9c8d1ee227a9fad524cc647d65e3b35d`  
		Last Modified: Thu, 02 Jul 2026 20:46:59 GMT  
		Size: 3.7 MB (3666071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01d30c580e70f09376af9a8db44fc8ea6906e116df2e527d0dd2cc1ff4e3b256`  
		Last Modified: Thu, 02 Jul 2026 20:46:58 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70c796754067eb590ee1e69f477e650c40d2d561ee9e24c969dcc40dd2595f2d`  
		Last Modified: Thu, 02 Jul 2026 20:46:58 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3caa20a06f890c5f1c412f95f700e546bea99551b23250fe0c6a07ba0b1bcdc2`  
		Last Modified: Thu, 30 Jul 2026 23:40:00 GMT  
		Size: 12.6 MB (12636138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f1cabe1bbe5df62c0a171df3f14943384333a7718561f405cb8c2323d80585f`  
		Last Modified: Thu, 30 Jul 2026 23:40:00 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94cf54592394788cbe47c1d692c78d39463d750b1e43a993155378918c40577b`  
		Last Modified: Thu, 30 Jul 2026 23:40:00 GMT  
		Size: 17.7 MB (17676948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2edc34668ed16028b42070bece4b0328105636d7c6f376bd612a609bd4644ced`  
		Last Modified: Thu, 30 Jul 2026 23:40:00 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e2ec30005d93552024bd0966d9ac780db92e5dab8b7a2cf963e7ac933e0fa52`  
		Last Modified: Thu, 30 Jul 2026 23:40:01 GMT  
		Size: 22.2 KB (22155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e1ed045702a91f976af90c614353b8bc6f370983e9bae08a0a59c2c4928f1cf`  
		Last Modified: Thu, 30 Jul 2026 23:40:01 GMT  
		Size: 22.2 KB (22174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3153af80b6b50f1e793aa7c5583ca5e81d5b5bf5ca78ad03cfea1b063c46ae7b`  
		Last Modified: Fri, 31 Jul 2026 00:19:28 GMT  
		Size: 13.1 MB (13127302 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe718d362bfecb18466dffab7ad2e4089b2d52374be517d0e7e99e8369675990`  
		Last Modified: Fri, 31 Jul 2026 00:19:28 GMT  
		Size: 17.4 MB (17410759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6760779dc3edc6312f28c55f6fc43cd255644a1cf21e7fa497155fe2b9d4a6e1`  
		Last Modified: Fri, 31 Jul 2026 00:19:28 GMT  
		Size: 384.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:337c0913a8463b25c3bd507e90cf75f16b7df863d7948b0fb80b5f5815dd73b1`  
		Last Modified: Fri, 31 Jul 2026 00:19:28 GMT  
		Size: 1.5 MB (1534611 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:196e692d0450454c34d2386df711c8375bd9dc66eb964c368fe0be64246e03a9`  
		Last Modified: Fri, 31 Jul 2026 00:19:29 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli` - unknown; unknown

```console
$ docker pull wordpress@sha256:a02bbf3c9a7bfa8abc4ee493214a59fa990a9e5e07391a775ebc898993987662
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **665.0 KB (664974 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e2899d7b8e4019fa0b43061a31b9b0dfede9ceb6a124adca8e18f887ab66b390`

```dockerfile
```

-	Layers:
	-	`sha256:556fc69f53326a26612d024719c81d2dfd34f3be6f3cecc362cd3b9577908885`  
		Last Modified: Fri, 31 Jul 2026 00:19:28 GMT  
		Size: 621.7 KB (621652 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6838fb732a0f2bf8ca1f05e47186b155e63597da7e7c7d2dad0f76d49cf4760`  
		Last Modified: Fri, 31 Jul 2026 00:19:28 GMT  
		Size: 43.3 KB (43322 bytes)  
		MIME: application/vnd.in-toto+json
