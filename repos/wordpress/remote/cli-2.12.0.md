## `wordpress:cli-2.12.0`

```console
$ docker pull wordpress@sha256:a4fff017eb08c03187e90fe52d4bff8d3a4d4a5103de05829a6e747c4ca3056e
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

### `wordpress:cli-2.12.0` - linux; amd64

```console
$ docker pull wordpress@sha256:b9d0a29387b36a4dd02fbc017defdd18f52f5613a9b4e86a484648479c16b54c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.2 MB (69242575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:174bf7a0198dd580e5bc23387a8dc417c5b8e97b53b95d89c8079e7e34b1612d`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:01:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 19:01:23 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 19:01:23 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 19:01:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 19:01:23 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 19:01:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 19:01:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 19:01:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 19:01:23 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 05 Nov 2026 19:01:23 GMT
ENV PHP_VERSION=8.3.36
# Thu, 05 Nov 2026 19:01:23 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.36.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.36.tar.xz.asc
# Thu, 05 Nov 2026 19:01:23 GMT
ENV PHP_SHA256=dd54693aa334c5c4d72e9aee96b082c2473750a18a6c1d105789c93a3b1692fd
# Thu, 05 Nov 2026 19:01:26 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 19:01:26 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:04:14 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 19:04:14 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:04:14 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 19:04:15 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 19:04:15 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 19:04:15 GMT
CMD ["php" "-a"]
# Thu, 05 Nov 2026 19:56:54 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Thu, 05 Nov 2026 19:56:54 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Thu, 05 Nov 2026 19:56:54 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 19:57:33 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 05 Nov 2026 19:57:33 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 05 Nov 2026 19:57:35 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 05 Nov 2026 19:57:35 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Thu, 05 Nov 2026 19:57:35 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Thu, 05 Nov 2026 19:57:35 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Thu, 05 Nov 2026 19:57:35 GMT
VOLUME [/var/www/html]
# Thu, 05 Nov 2026 19:57:35 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:57:35 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:57:35 GMT
USER www-data
# Thu, 05 Nov 2026 19:57:35 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:123165dced3053c167d9d83b46c607adef5cdbb8d4dff21e63ab01f0958c5ed2`  
		Last Modified: Thu, 05 Nov 2026 19:04:22 GMT  
		Size: 3.5 MB (3496416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbc83deec43818a6651d0002377d1aa9780c4f36234be9a29d83dc93eae08094`  
		Last Modified: Thu, 05 Nov 2026 19:04:22 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0df9ae647c0a6231579838ff53244df0c03a2b56457c69754a1780b4420dd95b`  
		Last Modified: Thu, 05 Nov 2026 19:04:22 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a37bfa1328f9d55be2e11c400209e1bcdd666a3a5455bb27c85c595a1130f78f`  
		Last Modified: Thu, 05 Nov 2026 19:04:22 GMT  
		Size: 12.7 MB (12692503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0dafd5af3eda0fbf96b37cc3866ffad11942508a34a3902de9247df2405b758f`  
		Last Modified: Thu, 05 Nov 2026 19:04:23 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17681d4bc54189fca629ddd3772ea605d0a9db6991a96f8663253583ab8cf0db`  
		Last Modified: Thu, 05 Nov 2026 19:04:24 GMT  
		Size: 17.7 MB (17680685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdcabfea62ea6a20dfde48f1d4e2ffe80ee9d60fc16866cac88b799c937f7f3a`  
		Last Modified: Thu, 05 Nov 2026 19:04:23 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ef6c9954a077c8f5e9c41e98cf5bd75859ac4b6cb5395decb8830cb757bdd5`  
		Last Modified: Thu, 05 Nov 2026 19:04:23 GMT  
		Size: 22.3 KB (22341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:beab9fe6a68949b0ee72864fdeb99fe3554cb3267731d133e574aaef6505754b`  
		Last Modified: Thu, 05 Nov 2026 19:04:24 GMT  
		Size: 22.4 KB (22360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ad4633beaea56c6e0677b8a764c2fb5a6ce9c920ba26f80cb278753b664896d`  
		Last Modified: Thu, 05 Nov 2026 19:57:44 GMT  
		Size: 11.7 MB (11734064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6af007b3d2a8c9b58e63cf3dedd65f67d8e9f73f36980d13bd979a33bb712fe9`  
		Last Modified: Thu, 05 Nov 2026 19:57:44 GMT  
		Size: 18.2 MB (18201003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79deeefb0f6e078ec7e40360ceb1a3f3a6a56883a5f3dd43dec4af98ec3a3760`  
		Last Modified: Thu, 05 Nov 2026 19:57:43 GMT  
		Size: 384.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89201144ac7523b0b3610fb09e4650261373eb679f0f503553d1489a137fea11`  
		Last Modified: Thu, 05 Nov 2026 19:57:43 GMT  
		Size: 1.5 MB (1534601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f895ac75b68514276419648273182e30d37356e566aa9fdda2152dea97320da`  
		Last Modified: Thu, 05 Nov 2026 19:57:44 GMT  
		Size: 401.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2.12.0` - unknown; unknown

```console
$ docker pull wordpress@sha256:f14bf23606825fdea91dc216cb3cc8def662c9ede959172fbd3cee82bd879732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **666.2 KB (666229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:667ecc0863447a11c14f931400a93037279d7d546dd919560ea3aa4468455811`

```dockerfile
```

-	Layers:
	-	`sha256:34537c29974745bc136c1df23e03c4ad9ed762341cf7d5f7b4babd113cc274db`  
		Last Modified: Thu, 05 Nov 2026 19:57:43 GMT  
		Size: 622.9 KB (622907 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bf29aa684ed8e650a9a6dfecd874bb08cc482fac3e187a943ac2da43fc82cbe6`  
		Last Modified: Thu, 05 Nov 2026 19:57:43 GMT  
		Size: 43.3 KB (43322 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2.12.0` - linux; arm variant v6

```console
$ docker pull wordpress@sha256:cde25de566727924b1d3ce4d948f1be30daf2184d2df63c6f727c89fed22e7e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.6 MB (63563467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8478df3525f29afa4e9491c69db2f24e58803caebbed622f3c9f851b7499318`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:23:33 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:23:33 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:23:33 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:23:33 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:23:33 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:23:33 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:23:33 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:23:33 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:23:33 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 05 Nov 2026 18:23:33 GMT
ENV PHP_VERSION=8.3.36
# Thu, 05 Nov 2026 18:23:33 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.36.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.36.tar.xz.asc
# Thu, 05 Nov 2026 18:23:33 GMT
ENV PHP_SHA256=dd54693aa334c5c4d72e9aee96b082c2473750a18a6c1d105789c93a3b1692fd
# Thu, 05 Nov 2026 18:30:31 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:30:31 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:33:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 18:33:15 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:33:16 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 18:33:17 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 18:33:17 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 18:33:17 GMT
CMD ["php" "-a"]
# Thu, 05 Nov 2026 19:27:47 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Thu, 05 Nov 2026 19:27:47 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Thu, 05 Nov 2026 19:27:47 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 19:28:56 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 05 Nov 2026 19:28:56 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 05 Nov 2026 19:28:58 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 05 Nov 2026 19:28:58 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Thu, 05 Nov 2026 19:28:58 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Thu, 05 Nov 2026 19:28:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Thu, 05 Nov 2026 19:28:58 GMT
VOLUME [/var/www/html]
# Thu, 05 Nov 2026 19:28:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:28:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:28:58 GMT
USER www-data
# Thu, 05 Nov 2026 19:28:58 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:860e8fe90551d1694b0887e7a71b98a525d1e994327f3da143b1eeac87367af2`  
		Last Modified: Thu, 05 Nov 2026 18:26:53 GMT  
		Size: 3.5 MB (3455741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b4a080409861016bb807095fbf80c9dfdf7b804f12fd94155ed685328d9f057`  
		Last Modified: Thu, 05 Nov 2026 18:26:53 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc1b857e5d5fdc23f18030ee9a75328aeb8907431eef63502bb7ec6abeeb7cd8`  
		Last Modified: Thu, 05 Nov 2026 18:26:53 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32e577ddd44fb6e3f6a2d90676cedfe09d76afe3a86d85d9b34f1e5cc45fcd7e`  
		Last Modified: Thu, 05 Nov 2026 18:33:23 GMT  
		Size: 12.7 MB (12692518 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c78eca629f5dc6394e5731aff62b579eb65bc2eb6f238f195fb59140f1dd7aba`  
		Last Modified: Thu, 05 Nov 2026 18:33:22 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faad5b0ac77a7c1cfbd1be32aca82f0b2d950f0f7af9dae6e8cc8ed858d21b04`  
		Last Modified: Thu, 05 Nov 2026 18:33:23 GMT  
		Size: 16.1 MB (16059242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92a8f6aeb271df4e10dcdce93ee584b0422ce5f1052c03d2e77b69450e683d79`  
		Last Modified: Thu, 05 Nov 2026 18:33:22 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ac1c8919a7ab2bc0ebbe5a8239134039a9abf887a3c07fbf23579b496a4fdf0`  
		Last Modified: Thu, 05 Nov 2026 18:33:23 GMT  
		Size: 22.1 KB (22134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5650eddced1e553a36c183211a9fcfd592875f7153cff12dcd2464c3e7db7d8c`  
		Last Modified: Thu, 05 Nov 2026 18:33:23 GMT  
		Size: 22.1 KB (22150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:106fdfdd18e29573b8f1e0ace08a10739c1413168d4d28cecfad2d04054072fd`  
		Last Modified: Thu, 05 Nov 2026 19:29:04 GMT  
		Size: 11.4 MB (11356563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5039ecf97ab9ee827400cbb3ef6cbd64d1bf6d19dca2d3b2297b14767c60b93b`  
		Last Modified: Thu, 05 Nov 2026 19:29:04 GMT  
		Size: 14.9 MB (14857115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb5670ac88d1bfe7c69407edfb52fe78de1fbeeaeb62f46618c2725fea320c77`  
		Last Modified: Thu, 05 Nov 2026 19:29:04 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae1c165af5247c7b494063ed10300ebc4fa2b975f1ac5598a9b8076c490645b1`  
		Last Modified: Thu, 05 Nov 2026 19:29:04 GMT  
		Size: 1.5 MB (1534662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc03e9b0c8b871c1efe81f369cced27f0254c339c44feca9114c212a2ebf9e54`  
		Last Modified: Thu, 05 Nov 2026 19:29:05 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2.12.0` - unknown; unknown

```console
$ docker pull wordpress@sha256:6e902e1d14d72ab502613273d07371d9906fd50eba4510c66ee5562ba46e327f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.3 KB (43271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0c3bbfb657e51e0417915f06eb102c2b249f17071dd3ced368318b6d50bbc5bf`

```dockerfile
```

-	Layers:
	-	`sha256:a38fd642387a81476fbb95d2801fb38e4613ee2662308542bc7a08800cd4839c`  
		Last Modified: Thu, 05 Nov 2026 19:29:04 GMT  
		Size: 43.3 KB (43271 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2.12.0` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:7907d18e2649999356a6390ffc21916931659a7693e502b4d1342d24c9cdfef4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.3 MB (62253147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb66ed963ecebba21297cf73e531888c820c524d42267d72c36c2cfdc6bf4f80`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:19:32 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:19:32 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:19:32 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:19:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:19:32 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:19:32 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:19:32 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:19:32 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:19:32 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 05 Nov 2026 18:19:32 GMT
ENV PHP_VERSION=8.3.36
# Thu, 05 Nov 2026 18:19:32 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.36.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.36.tar.xz.asc
# Thu, 05 Nov 2026 18:19:32 GMT
ENV PHP_SHA256=dd54693aa334c5c4d72e9aee96b082c2473750a18a6c1d105789c93a3b1692fd
# Thu, 05 Nov 2026 18:29:58 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:29:58 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:32:45 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 18:32:45 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:32:46 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 18:32:46 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 18:32:46 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 18:32:46 GMT
CMD ["php" "-a"]
# Thu, 05 Nov 2026 19:35:37 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Thu, 05 Nov 2026 19:35:37 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Thu, 05 Nov 2026 19:35:37 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 19:36:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 05 Nov 2026 19:36:46 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 05 Nov 2026 19:36:48 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 05 Nov 2026 19:36:48 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Thu, 05 Nov 2026 19:36:48 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Thu, 05 Nov 2026 19:36:48 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Thu, 05 Nov 2026 19:36:48 GMT
VOLUME [/var/www/html]
# Thu, 05 Nov 2026 19:36:48 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:36:48 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 19:36:48 GMT
USER www-data
# Thu, 05 Nov 2026 19:36:48 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0913743028f20c2d9a8b822b536a7fa51546db4200531934d5237c68fcb910cc`  
		Last Modified: Thu, 05 Nov 2026 18:22:49 GMT  
		Size: 3.3 MB (3266196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f859a11addd9d126aec818e862cb32f42e40d1356e22e20c97ceac9f925869f5`  
		Last Modified: Thu, 05 Nov 2026 18:22:49 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5979cdc9dc768c603c3d5b886d0d10c6c1d08c840aa9d908e00b2911f1fdd15`  
		Last Modified: Thu, 05 Nov 2026 18:22:49 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19447e1af4b81d5d0393b1f1cc14aad7562c7abc26923d631a75bccf7c4ca65d`  
		Last Modified: Thu, 05 Nov 2026 18:32:54 GMT  
		Size: 12.7 MB (12692516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3e2a88493800a51f65e98c73e1816fc400afa67fda88eb7d401f11957c4f7f3`  
		Last Modified: Thu, 05 Nov 2026 18:32:53 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5bf80f3a940d09f41ed0d1efc936c70a5d898c460ed5bee33b34f8413d15d505`  
		Last Modified: Thu, 05 Nov 2026 18:32:54 GMT  
		Size: 15.1 MB (15092127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3af415f78b86953cee2610070f8970af4c0a6470f4b9b013f8379c116dc946b7`  
		Last Modified: Thu, 05 Nov 2026 18:32:53 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93d4be35b7bd4a8b12841a29fb223bde9e02e3903da9ee87e56f8238959d62ec`  
		Last Modified: Thu, 05 Nov 2026 18:32:54 GMT  
		Size: 22.1 KB (22150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0db3e5471e4cf6cad74038a23d4449f79080130e8e388a860649ec2a572cb4d0`  
		Last Modified: Thu, 05 Nov 2026 18:32:54 GMT  
		Size: 22.2 KB (22161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7388691bc46c8c895388b37ab875d6be18266a5513e8b7c87a3f803abd76ea91`  
		Last Modified: Thu, 05 Nov 2026 19:36:56 GMT  
		Size: 11.0 MB (11004790 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab4fd8851fb1f534b07f6b267500e8b47388fd1db80a1171f95cca417c02d092`  
		Last Modified: Thu, 05 Nov 2026 19:36:56 GMT  
		Size: 15.3 MB (15345867 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e30579c05eeb7763fa161dafb2ad131e8dc45c15bf6e1b0ed92601e74de108f9`  
		Last Modified: Thu, 05 Nov 2026 19:36:56 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9c4696a597357ba6fb3e886e8f87b8268bf71c6702b774d3f13f8749e3d3e3c`  
		Last Modified: Thu, 05 Nov 2026 19:36:56 GMT  
		Size: 1.5 MB (1534662 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ae69fae46c85eac56e40128c59807c2557bd2eae5870ff0b17a0bb976b90a6a`  
		Last Modified: Thu, 05 Nov 2026 19:36:57 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2.12.0` - unknown; unknown

```console
$ docker pull wordpress@sha256:e259302814a8727c5312610176e9ef9872cfa08f4745881867d4eb596324e732
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **664.6 KB (664565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a449fe3758b3898e8d711eb77ce3dc8784f4466b317fc68d57182cdad9a7567`

```dockerfile
```

-	Layers:
	-	`sha256:64df5b2aad6645ee53860c7d3d92c20ad089c6afa7f1f0cebe84c037138118d8`  
		Last Modified: Thu, 05 Nov 2026 19:36:56 GMT  
		Size: 621.1 KB (621081 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:435f81f3621f210fb57fd206085c2a1c02844439e1d696191c2bc66ae8fb269a`  
		Last Modified: Thu, 05 Nov 2026 19:36:56 GMT  
		Size: 43.5 KB (43484 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2.12.0` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:3f5a9ce5ca7feb6dfa6664df93e07327392d6f07f97d9d56adc44f45c74b0935
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.4 MB (68388825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d843d1f6e19bd4b9a1859f55d9ee05b7f2e58a864998bb0babc8d16b73fab10`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 20:28:58 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 20:28:58 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 20:28:58 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 20:28:58 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 20:28:58 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 20:28:58 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 20:28:58 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 20:28:58 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 20:28:58 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 05 Nov 2026 20:28:58 GMT
ENV PHP_VERSION=8.3.36
# Thu, 05 Nov 2026 20:28:58 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.36.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.36.tar.xz.asc
# Thu, 05 Nov 2026 20:28:58 GMT
ENV PHP_SHA256=dd54693aa334c5c4d72e9aee96b082c2473750a18a6c1d105789c93a3b1692fd
# Thu, 05 Nov 2026 20:29:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 20:29:01 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 20:33:19 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 20:33:19 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 20:33:20 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 20:33:21 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 20:33:21 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 20:33:21 GMT
CMD ["php" "-a"]
# Thu, 05 Nov 2026 21:22:20 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Thu, 05 Nov 2026 21:22:20 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Thu, 05 Nov 2026 21:22:20 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 21:23:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 05 Nov 2026 21:23:15 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 05 Nov 2026 21:23:16 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 05 Nov 2026 21:23:16 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Thu, 05 Nov 2026 21:23:16 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Thu, 05 Nov 2026 21:23:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Thu, 05 Nov 2026 21:23:16 GMT
VOLUME [/var/www/html]
# Thu, 05 Nov 2026 21:23:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 21:23:16 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 21:23:16 GMT
USER www-data
# Thu, 05 Nov 2026 21:23:16 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bba749f23976b8d92cc948f5ef6ecbc681b807d14fb2d4e0cfdbc2a8ab4f8ca9`  
		Last Modified: Thu, 05 Nov 2026 20:33:28 GMT  
		Size: 3.5 MB (3512457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b6b16ed7554a5e065651b58c61a13de2c03ab13cdb0c93be2e46668cac6da44`  
		Last Modified: Thu, 05 Nov 2026 20:33:27 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a1ac2dd107161b7eb8d7dbd100ef1398a1e61ab553f3dfc62be59aae4999901`  
		Last Modified: Thu, 05 Nov 2026 20:33:27 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d88ec3a55e7c15b784414a85f274e0168852ef8f9419d24bbf8bd10e85b5b81`  
		Last Modified: Thu, 05 Nov 2026 20:33:28 GMT  
		Size: 12.7 MB (12692490 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f9a39f2f1e667d667ee3bc11bab792381cff9291295d52c781ea16d41fb5514`  
		Last Modified: Thu, 05 Nov 2026 20:33:29 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a8d6cafc10e8b7871ac1c956f17b1b2ea2764f60368db17438daf4911427ea1`  
		Last Modified: Thu, 05 Nov 2026 20:33:29 GMT  
		Size: 17.5 MB (17455561 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe8def101f390f548367abd7cd0fbaea7da636e29a4a9af99809a7f085353acb`  
		Last Modified: Thu, 05 Nov 2026 20:33:29 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9ad2825e6c4da47b14151e7cc91833a34895a703590beb911778a25b8ada8ea`  
		Last Modified: Thu, 05 Nov 2026 20:33:29 GMT  
		Size: 22.2 KB (22165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b50f0c213a99f0556af57e5fe5d4dc79bb4f400b720ce3216138bab7259aad5`  
		Last Modified: Thu, 05 Nov 2026 20:33:30 GMT  
		Size: 22.2 KB (22178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b1ff96ef7bba452028fd75e4c0108f199dc4244578b7aa8601f3871226b9c1b`  
		Last Modified: Thu, 05 Nov 2026 21:23:26 GMT  
		Size: 11.7 MB (11664234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2dfb004093be6074222f2670fca1ee6fff0814d054846ac8979f8bdf194ed0f`  
		Last Modified: Thu, 05 Nov 2026 21:23:26 GMT  
		Size: 17.3 MB (17289621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d151ebdc787c0cbdb1293390a77062e030298c5ab42da4ee1a9ffc271ab957e0`  
		Last Modified: Thu, 05 Nov 2026 21:23:25 GMT  
		Size: 385.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bbb9009a97fd863c1c51d671deee41af20e385c6aea3e77aa5149ebcf0e67b5`  
		Last Modified: Thu, 05 Nov 2026 21:23:25 GMT  
		Size: 1.5 MB (1534585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:349f310f19358819666a00de90d9691f7740398ba2944b8da19f31d4770f69a6`  
		Last Modified: Thu, 05 Nov 2026 21:23:26 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2.12.0` - unknown; unknown

```console
$ docker pull wordpress@sha256:797ac707fa147c360cf7fa5f8b7f363228067440eff7ce40e85ff7e19027cdda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **664.7 KB (664651 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41b6da8ddcf29be138bc1c65cccffdeffc14707e3b145b3b73ec7d60aa61d597`

```dockerfile
```

-	Layers:
	-	`sha256:7a5c7d3ae7ae9bbad1e194e4dc6c4d2cdb7ae3dfc8f00dde3baa086205d7d13c`  
		Last Modified: Thu, 05 Nov 2026 21:23:25 GMT  
		Size: 621.1 KB (621117 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1513773ae54027575bdb1452799888c6dccb935324a99f39bc58ce29886e53f2`  
		Last Modified: Thu, 05 Nov 2026 21:23:25 GMT  
		Size: 43.5 KB (43534 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2.12.0` - linux; 386

```console
$ docker pull wordpress@sha256:9cfef8bd852dccc80bef742ead0512d4dd0c6ac5253b3a262a11d3b1dae772e0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.7 MB (68695566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0feb482f1b7292a7e7496c1280bf714c4fbb80c96962bfbaf8bb8a2992f46280`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:12 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:16:12 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:16:12 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:16:12 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:16:12 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:16:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:16:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:16:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:16:12 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 05 Nov 2026 18:16:12 GMT
ENV PHP_VERSION=8.3.36
# Thu, 05 Nov 2026 18:16:12 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.36.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.36.tar.xz.asc
# Thu, 05 Nov 2026 18:16:12 GMT
ENV PHP_SHA256=dd54693aa334c5c4d72e9aee96b082c2473750a18a6c1d105789c93a3b1692fd
# Thu, 05 Nov 2026 18:21:27 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:21:27 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:24:24 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 18:24:24 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:24:25 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 18:24:25 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 18:24:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 18:24:25 GMT
CMD ["php" "-a"]
# Thu, 05 Nov 2026 18:44:10 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Thu, 05 Nov 2026 18:44:10 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Thu, 05 Nov 2026 18:44:10 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 18:44:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 05 Nov 2026 18:44:54 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 05 Nov 2026 18:44:55 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 05 Nov 2026 18:44:55 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Thu, 05 Nov 2026 18:44:55 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Thu, 05 Nov 2026 18:44:55 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Thu, 05 Nov 2026 18:44:55 GMT
VOLUME [/var/www/html]
# Thu, 05 Nov 2026 18:44:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:44:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 18:44:55 GMT
USER www-data
# Thu, 05 Nov 2026 18:44:55 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25317646bee2563ac2317b16a87ccbe821e9d1291917519b517060cc10a1e497`  
		Last Modified: Thu, 05 Nov 2026 18:21:16 GMT  
		Size: 3.5 MB (3532758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c1650229283f1b0c5037c8fd3aebad0d0bb5e318ae5ed809daf1b35ed72ac7f`  
		Last Modified: Thu, 05 Nov 2026 18:21:16 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0397b866f99b6358856c56b3eece654a12362fca396d9db2c4ab4c08f786c818`  
		Last Modified: Thu, 05 Nov 2026 18:21:16 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:197def0a55d0023d9f0af892a103b96449a210ebaf4b2112c0dac63fc2e29e0d`  
		Last Modified: Thu, 05 Nov 2026 18:24:33 GMT  
		Size: 12.7 MB (12692495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:385554bd0bc6a2af3b6ab28171d20d53674e1c6e523ce4f81f18462eb3887e6c`  
		Last Modified: Thu, 05 Nov 2026 18:24:32 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6bbd780199558f985a4b0fd6b2682881dbbc7c7fb809b74718b69bb6d752ab92`  
		Last Modified: Thu, 05 Nov 2026 18:24:33 GMT  
		Size: 18.1 MB (18051093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46620de52cc69bb2756bf8092d13811fb0577f263d3b566e5417de51b8d67bd4`  
		Last Modified: Thu, 05 Nov 2026 18:24:32 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edcd1cff4f7230676740defa932dcb5d113246a8e07a6be16011e00a804abb85`  
		Last Modified: Thu, 05 Nov 2026 18:24:33 GMT  
		Size: 22.4 KB (22351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d90356d1769cb1cf136ed04c1c755def32510f3583b9a96f5645c241e6bde453`  
		Last Modified: Thu, 05 Nov 2026 18:24:33 GMT  
		Size: 22.4 KB (22357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e6d319968ebab77e704d74589328ab5ff38ae48e23b902c50857089ef837867`  
		Last Modified: Thu, 05 Nov 2026 18:45:04 GMT  
		Size: 11.9 MB (11869152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9370fd5fb5ed6c1d748ea143787dc5a417a2a98b5045241b01a20c007c26b928`  
		Last Modified: Thu, 05 Nov 2026 18:45:04 GMT  
		Size: 17.3 MB (17285468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef921859d334385cb2d10c548a294b61109cb4ee0fb912311a352504068d45de`  
		Last Modified: Thu, 05 Nov 2026 18:45:03 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:017b1f2c1a42225cb8ac364fbc649830f2c23984e0d423fc610392969a4325e8`  
		Last Modified: Thu, 05 Nov 2026 18:45:03 GMT  
		Size: 1.5 MB (1534590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52f2ba09b21a1ec02f4972328e4c73d1242a8a9f83d05e77bbfd54ef86ce1999`  
		Last Modified: Thu, 05 Nov 2026 18:45:04 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2.12.0` - unknown; unknown

```console
$ docker pull wordpress@sha256:ecc84d8c38f2398c7c5cb7a19cdba252c101bac25eaef06d157286af2822af8a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **666.1 KB (666124 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bca42f5e07b99d2334b141ec88b469c557e6eefd958ff36f6c99814880d1e5c2`

```dockerfile
```

-	Layers:
	-	`sha256:c2beaf963c52cd6b322924e7dfa16aee80f9926cad45ec81c9bd35dd4ae7039a`  
		Last Modified: Thu, 05 Nov 2026 18:45:03 GMT  
		Size: 622.9 KB (622862 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4895b5551fe1cbfbf0ea84e6d9775b360ea15cfcfeb61318fe29cdbcce5270d6`  
		Last Modified: Thu, 05 Nov 2026 18:45:03 GMT  
		Size: 43.3 KB (43262 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2.12.0` - linux; ppc64le

```console
$ docker pull wordpress@sha256:671ba4f576287621ec95bc5a2946debfec59d0ef2cdf5d277ad53ebede87c551
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.9 MB (70921911 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c5c31b60fc7520f1d3e0e0d9ffcb454da713a7cce0737801091056c8217a665e`
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
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 05 Nov 2026 21:37:46 GMT
ENV PHP_VERSION=8.3.36
# Thu, 05 Nov 2026 21:37:46 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.36.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.36.tar.xz.asc
# Thu, 05 Nov 2026 21:37:46 GMT
ENV PHP_SHA256=dd54693aa334c5c4d72e9aee96b082c2473750a18a6c1d105789c93a3b1692fd
# Thu, 05 Nov 2026 22:23:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 22:23:18 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 22:27:20 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 22:27:20 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 22:27:21 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 22:27:23 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 22:27:23 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 22:27:23 GMT
CMD ["php" "-a"]
# Fri, 06 Nov 2026 10:03:36 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Fri, 06 Nov 2026 10:03:37 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Fri, 06 Nov 2026 10:03:38 GMT
WORKDIR /var/www/html
# Fri, 06 Nov 2026 10:05:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Fri, 06 Nov 2026 10:05:24 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Fri, 06 Nov 2026 10:05:27 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Fri, 06 Nov 2026 10:05:27 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Fri, 06 Nov 2026 10:05:27 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Fri, 06 Nov 2026 10:05:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Fri, 06 Nov 2026 10:05:27 GMT
VOLUME [/var/www/html]
# Fri, 06 Nov 2026 10:05:28 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 06 Nov 2026 10:05:28 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 06 Nov 2026 10:05:28 GMT
USER www-data
# Fri, 06 Nov 2026 10:05:28 GMT
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
	-	`sha256:513a05dfe508f850376b986b98c56acfaf22cb8d9b05d0b1d660b12395688f03`  
		Last Modified: Thu, 05 Nov 2026 22:27:37 GMT  
		Size: 12.7 MB (12692507 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3aff97a0905d406c735017f6a0dff73a717a899241ceb171e6c39e7a04ac62d`  
		Last Modified: Thu, 05 Nov 2026 22:27:37 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c781f4d2fb99a9219c9888c24b6215d4e2c585f30668a4a9a15b55d2cef486bd`  
		Last Modified: Thu, 05 Nov 2026 22:27:37 GMT  
		Size: 18.7 MB (18661111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75bfc8bb0f5da10e8f3fd44b6cad34e0f5c246fb3234464d4eda482163fe407b`  
		Last Modified: Thu, 05 Nov 2026 22:27:37 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b78eff5850a0179f3d6850b0528a0a3c5b0fb98bcecfcf10c6ecf4ba975a582c`  
		Last Modified: Thu, 05 Nov 2026 22:27:38 GMT  
		Size: 22.2 KB (22181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9c63c6dfbfde98342a3b2823f15c0732dcf3e9615446ac91b6f81248dcde5be`  
		Last Modified: Thu, 05 Nov 2026 22:27:38 GMT  
		Size: 22.2 KB (22198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:616441a93cbb487f76544b7046651499fe583eb51e0e1e6bd469062c61412538`  
		Last Modified: Fri, 06 Nov 2026 10:05:46 GMT  
		Size: 12.4 MB (12403742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db53b1f802c1e6debd5eaf889b5d0847ac57afc01433d45fe9ac074b78ab8583`  
		Last Modified: Fri, 06 Nov 2026 10:05:46 GMT  
		Size: 18.1 MB (18085950 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0aa6504b97c024eaa09cf3fdaf75115f9a22104d4a9dea45d1a3cf857e7d1b7a`  
		Last Modified: Fri, 06 Nov 2026 10:05:45 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a753c2e178dd1cc1f81d5db3542817c124bcaf95c2fbaccee1153a70e4a155e2`  
		Last Modified: Fri, 06 Nov 2026 10:05:45 GMT  
		Size: 1.5 MB (1534639 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e74f8a535d548114d6f7085004e790a82d7cc1f9c74cb9c19a04246e7a6f776e`  
		Last Modified: Fri, 06 Nov 2026 10:05:46 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2.12.0` - unknown; unknown

```console
$ docker pull wordpress@sha256:12de7de96c310dbc3565fb703ddd44d20e10d48293e6b1a2498939a9db273d0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **664.5 KB (664468 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a026c18f13cb1a7fe42a2e35d925945c1ce911914e708ba2f007f78780ff268e`

```dockerfile
```

-	Layers:
	-	`sha256:28e08de0c54db1fb797e88d191a2803a9a43b7e6a69e78ba0d2ec72a887a0f36`  
		Last Modified: Fri, 06 Nov 2026 10:05:45 GMT  
		Size: 621.1 KB (621070 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13ace234503c2e789251dae51632762c737bccdad6d51704c7b3f5dead6e08d9`  
		Last Modified: Fri, 06 Nov 2026 10:05:45 GMT  
		Size: 43.4 KB (43398 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2.12.0` - linux; riscv64

```console
$ docker pull wordpress@sha256:c74ed544359294bb0a106e9f646fd5b238beb464a9c60e802bf3fc21197f6df3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.1 MB (66142743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e867ba002b289a609f514fcee929fa843ab54ba23601929ffdc22cd218cd115e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Sat, 24 Oct 2026 16:59:15 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Sat, 24 Oct 2026 16:59:15 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 24 Oct 2026 16:59:15 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 24 Oct 2026 16:59:15 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHP_VERSION=8.3.36
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.36.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.36.tar.xz.asc
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHP_SHA256=dd54693aa334c5c4d72e9aee96b082c2473750a18a6c1d105789c93a3b1692fd
# Sun, 25 Oct 2026 10:54:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Sun, 25 Oct 2026 10:54:53 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sun, 25 Oct 2026 11:51:09 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sun, 25 Oct 2026 11:51:09 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sun, 25 Oct 2026 11:51:14 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sun, 25 Oct 2026 11:51:18 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sun, 25 Oct 2026 11:51:18 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sun, 25 Oct 2026 11:51:18 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 02:55:02 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Thu, 29 Oct 2026 02:55:02 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Thu, 29 Oct 2026 02:55:03 GMT
WORKDIR /var/www/html
# Thu, 29 Oct 2026 03:08:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 29 Oct 2026 03:08:58 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 29 Oct 2026 03:09:08 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 29 Oct 2026 03:09:08 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Thu, 29 Oct 2026 03:09:08 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Thu, 29 Oct 2026 03:09:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Thu, 29 Oct 2026 03:09:08 GMT
VOLUME [/var/www/html]
# Thu, 29 Oct 2026 03:09:08 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 29 Oct 2026 03:09:08 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 29 Oct 2026 03:09:08 GMT
USER www-data
# Thu, 29 Oct 2026 03:09:08 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c78eff1dba649354d5f1624680b39758fd75d4c2f426fb2d4e2be86e1ad12e27`  
		Last Modified: Sat, 24 Oct 2026 18:03:49 GMT  
		Size: 3.6 MB (3637070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adff7d7e828c2b89fff33664584cc15a414f868fa8f6880adb903e1b1ee78be6`  
		Last Modified: Sat, 24 Oct 2026 18:03:48 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ffc140b5c63bfa44ee1e29819cfa6b34b26660b67cda72d06898efd07d37316`  
		Last Modified: Sat, 24 Oct 2026 18:03:48 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b3a3a74db6d18f511051481a12c23d1175c278c196bfe8779536c2ad5a0c5d7`  
		Last Modified: Sun, 25 Oct 2026 11:52:30 GMT  
		Size: 12.7 MB (12692537 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dee878a2df1c580754f1cdec9a2b969b93b1bb6fe69b9778a63af99b140db985`  
		Last Modified: Sun, 25 Oct 2026 11:52:26 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6f1b153c07a3527917d50488e5224ddf92e9fd1e893796ed2694429fac949a7`  
		Last Modified: Sun, 25 Oct 2026 11:52:30 GMT  
		Size: 17.1 MB (17051822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:385e817671a0bddb0007785aa1f572a6aaedd52f8e7ad5bdc563e341f6115993`  
		Last Modified: Sun, 25 Oct 2026 11:52:26 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e9140ee0b9125dc6a3c9c869a6afdbcf96d47be53a36a9270c909c1a6f8e78c`  
		Last Modified: Sun, 25 Oct 2026 11:52:28 GMT  
		Size: 22.2 KB (22176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d71828e09eb0000e4eb6b79918366879929c182f23a872546a96c637b30a2276`  
		Last Modified: Sun, 25 Oct 2026 11:52:28 GMT  
		Size: 22.2 KB (22192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f6cbe712317f134f986bd77fd542a07d35f3ca599f63c1c7cc9be8f75cbce0a`  
		Last Modified: Thu, 29 Oct 2026 03:10:39 GMT  
		Size: 12.2 MB (12162459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c9f069a4f3ff1635ad4987fa863989b2707279453378aa9c3220049b64bb417`  
		Last Modified: Thu, 29 Oct 2026 03:10:40 GMT  
		Size: 15.4 MB (15434216 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3286d2cf48f9f4c68505b647bb751137a17735be1bc8f3cfdee12eb6e8157ea`  
		Last Modified: Thu, 29 Oct 2026 03:10:36 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:006e3da141d78ec1d51e1936b03073e9b8f4b3be9b521c28939f62ff2810e7ed`  
		Last Modified: Thu, 29 Oct 2026 03:10:36 GMT  
		Size: 1.5 MB (1534656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37baae4ae3cf34ee4e52474c06a5560dbe11c931c08a5523320da7239e6328df`  
		Last Modified: Thu, 29 Oct 2026 03:10:38 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2.12.0` - unknown; unknown

```console
$ docker pull wordpress@sha256:3f571f0dee3bfd9267227e2384525bd5062eb67969e09a2edf599caa3296b9a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **664.5 KB (664460 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2281d81b6535112c9d769d0b8fc7afe771a7245dc64d8244c4fe6142b551e3e2`

```dockerfile
```

-	Layers:
	-	`sha256:b7d4a944eab2365773e44ec95f27eb327adf15099c9926df2f491523a485393e`  
		Last Modified: Thu, 29 Oct 2026 03:10:35 GMT  
		Size: 621.1 KB (621062 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3185cced912a352ee1716a105b66a1e9e0f19a3ab9398688b2de8f5064719297`  
		Last Modified: Thu, 29 Oct 2026 03:10:35 GMT  
		Size: 43.4 KB (43398 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2.12.0` - linux; s390x

```console
$ docker pull wordpress@sha256:dafdcfe36e8133fb9aca2db5c47348af09f5e8ca3ddaf6209ed55ebe7bd1fc94
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.9 MB (69896030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9b26a5d94c5606efd57045bf8453626220fd958458530f49cc5e5db60c9f7c16`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:17:40 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:17:40 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:17:40 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:17:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:17:40 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:17:40 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:17:40 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:17:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:17:40 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 05 Nov 2026 18:17:40 GMT
ENV PHP_VERSION=8.3.36
# Thu, 05 Nov 2026 18:17:40 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.36.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.36.tar.xz.asc
# Thu, 05 Nov 2026 18:17:40 GMT
ENV PHP_SHA256=dd54693aa334c5c4d72e9aee96b082c2473750a18a6c1d105789c93a3b1692fd
# Thu, 05 Nov 2026 18:35:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:35:45 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:39:27 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 18:39:27 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:39:28 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 18:39:29 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 18:39:29 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 18:39:29 GMT
CMD ["php" "-a"]
# Thu, 05 Nov 2026 21:34:10 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Thu, 05 Nov 2026 21:34:10 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Thu, 05 Nov 2026 21:34:10 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 21:35:36 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 05 Nov 2026 21:35:37 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 05 Nov 2026 21:35:42 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 05 Nov 2026 21:35:42 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Thu, 05 Nov 2026 21:35:42 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Thu, 05 Nov 2026 21:35:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Thu, 05 Nov 2026 21:35:42 GMT
VOLUME [/var/www/html]
# Thu, 05 Nov 2026 21:35:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 21:35:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 05 Nov 2026 21:35:42 GMT
USER www-data
# Thu, 05 Nov 2026 21:35:42 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:618f633add7643f5dbf32937a509a5ada6699ff1a4c94641f87cbd1a0182a7bf`  
		Last Modified: Thu, 05 Nov 2026 18:20:55 GMT  
		Size: 3.7 MB (3691032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7943a5fad4f7eb12144e901d291d5400736edab23f2ccd63ae3aade879b1f11c`  
		Last Modified: Thu, 05 Nov 2026 18:20:53 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b0fff43cfd9dc96d02abd83f96ccd039cef07b4dd33a7f229685ee2c32aa8c9`  
		Last Modified: Thu, 05 Nov 2026 18:20:53 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eaef84cdb5afac182dbd558a00a05d7482d0b1e0a9b6eadecc029e046a837a88`  
		Last Modified: Thu, 05 Nov 2026 18:39:47 GMT  
		Size: 12.7 MB (12692505 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50c6198b7bb591dd97e9046dbaa08e36bc02c20d7396a70e7bfbf514a2c302b8`  
		Last Modified: Thu, 05 Nov 2026 18:39:45 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51ec4bdef1569d3d5d45e2b3683285577a1e87f7d3111fbdc268a797a5df4eed`  
		Last Modified: Thu, 05 Nov 2026 18:39:47 GMT  
		Size: 17.6 MB (17624422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93c3d847964a0f40dc010b627e5b060a971b21e8e7b896d37404f10c640dd388`  
		Last Modified: Thu, 05 Nov 2026 18:39:45 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0236d20a2e3c16d2f65f9c076f3a21a24773002c1ad8d93e4a244cc2c30b2638`  
		Last Modified: Thu, 05 Nov 2026 18:39:47 GMT  
		Size: 22.1 KB (22131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92695d03e3fea269ad18aa8131990f62140ade5f1f1cd36facbcd59e1887f939`  
		Last Modified: Thu, 05 Nov 2026 18:39:47 GMT  
		Size: 22.1 KB (22149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f7f63a90fb95bc64d71007c712402d48a1979289724363c54cb28d9b2fc64d`  
		Last Modified: Thu, 05 Nov 2026 21:36:11 GMT  
		Size: 13.1 MB (13148170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7d9f285402397df2737b01e1ec5c9d992d1625d0965a9932d0ea202221185c3`  
		Last Modified: Thu, 05 Nov 2026 21:36:11 GMT  
		Size: 17.4 MB (17435351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14173ecfe09ed0535329eb39ca4b9b1fa93c4ff5e17cf971ab3110b88b5d5dd`  
		Last Modified: Thu, 05 Nov 2026 21:36:10 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17d90bacaf27019301f6a8fbaeed76c8aa7a0463ae322befc7615709f35f7493`  
		Last Modified: Thu, 05 Nov 2026 21:36:11 GMT  
		Size: 1.5 MB (1534651 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b707a8b3b450093a3f0342fc32202fe04f43c3d4e89226e15c751b944a60a7d`  
		Last Modified: Thu, 05 Nov 2026 21:36:11 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2.12.0` - unknown; unknown

```console
$ docker pull wordpress@sha256:bd890c27a537928f61744580d97b0ce522f8ae6e759eb08115b5b75b583ffa73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **664.3 KB (664334 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4163127e1be0719f39dc41495157090d6c2aa16609c4bf13678b5bf637f1a6ec`

```dockerfile
```

-	Layers:
	-	`sha256:6fecb772501a855d271b03472a88d8f7a4e691a73f7650e5860e878c9c59e863`  
		Last Modified: Thu, 05 Nov 2026 21:36:10 GMT  
		Size: 621.0 KB (621012 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6f67f1dde11179a21453a2a861d363b230296307801ffd120378a1efe028b0c3`  
		Last Modified: Thu, 05 Nov 2026 21:36:10 GMT  
		Size: 43.3 KB (43322 bytes)  
		MIME: application/vnd.in-toto+json
