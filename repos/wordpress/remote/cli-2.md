## `wordpress:cli-2`

```console
$ docker pull wordpress@sha256:0f7f0f895c379bb7b60b8f09562811084ac0424d544747f76d95cc785feccac0
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

### `wordpress:cli-2` - linux; amd64

```console
$ docker pull wordpress@sha256:07e56f9242a5c5e194bb0191c0f95a07fd1eefe712a231fc444d67eb51bb01e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.1 MB (69075567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:564621995c41f6fa2180d042796eed4fb29f424aef8a46f5e53858f5f4e98b3a`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 17:42:11 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 25 Sep 2026 17:42:11 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Fri, 25 Sep 2026 17:42:11 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Fri, 25 Sep 2026 17:42:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 25 Sep 2026 17:42:11 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Fri, 25 Sep 2026 17:42:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Fri, 25 Sep 2026 17:42:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Fri, 25 Sep 2026 17:42:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Fri, 25 Sep 2026 17:42:11 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Fri, 25 Sep 2026 17:42:11 GMT
ENV PHP_VERSION=8.3.35
# Fri, 25 Sep 2026 17:42:11 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.35.tar.xz.asc
# Fri, 25 Sep 2026 17:42:11 GMT
ENV PHP_SHA256=ff4630fbbbd94359134b7d3c223db59329905bdc4f5a9ef93d257b48e358619a
# Fri, 25 Sep 2026 17:42:14 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Fri, 25 Sep 2026 17:42:14 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:44:43 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 25 Sep 2026 17:44:43 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:44:44 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 25 Sep 2026 17:44:44 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 25 Sep 2026 17:44:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 25 Sep 2026 17:44:44 GMT
CMD ["php" "-a"]
# Fri, 25 Sep 2026 17:48:19 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Fri, 25 Sep 2026 17:48:19 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Fri, 25 Sep 2026 17:48:19 GMT
WORKDIR /var/www/html
# Fri, 25 Sep 2026 17:49:01 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Fri, 25 Sep 2026 17:49:01 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Fri, 25 Sep 2026 17:49:03 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Fri, 25 Sep 2026 17:49:03 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Fri, 25 Sep 2026 17:49:03 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Fri, 25 Sep 2026 17:49:03 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Fri, 25 Sep 2026 17:49:03 GMT
VOLUME [/var/www/html]
# Fri, 25 Sep 2026 17:49:03 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:49:03 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Sep 2026 17:49:03 GMT
USER www-data
# Fri, 25 Sep 2026 17:49:03 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c000c04c8f2f086d45bb69271c82de00274829a70214a2d6bdb8990feeee456e`  
		Last Modified: Fri, 25 Sep 2026 17:44:51 GMT  
		Size: 3.5 MB (3491166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5a483bb6fb6aec9c54e1abf5ff1f3aa737499323ecc98cce4f77430c617eb6c`  
		Last Modified: Fri, 25 Sep 2026 17:44:51 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:153be18733f7b1e8a46f07adb6923eb74775e1d361818acf70fbbff5a420830e`  
		Last Modified: Fri, 25 Sep 2026 17:44:51 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f666bd2b0ebf19916685eb30b2906dabfe2d452607378e17e810a224e2eba15`  
		Last Modified: Fri, 25 Sep 2026 17:44:51 GMT  
		Size: 12.6 MB (12645594 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df39b3e39ebd8e6015ecc35d5fedd151b2a06936b447c763162432244cbb992d`  
		Last Modified: Fri, 25 Sep 2026 17:44:52 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e21e0a43e0ba6d2463956e45a7a6f79a33f4174518f6cf935cd031b338df79b2`  
		Last Modified: Fri, 25 Sep 2026 17:44:53 GMT  
		Size: 17.6 MB (17609596 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01dbcfc712acc7d0e69f0674533cf17c63b7dd26f6560d6db08eab7e933ac131`  
		Last Modified: Fri, 25 Sep 2026 17:44:52 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:821f9da095688100f0183f7027782a708839a82bf629dcd46924e8c91828dbd0`  
		Last Modified: Fri, 25 Sep 2026 17:44:53 GMT  
		Size: 22.4 KB (22422 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3d9884b4935da28f24b30e709e64e02c5c0207dd085eb18e75f72ef0cb42330`  
		Last Modified: Fri, 25 Sep 2026 17:44:53 GMT  
		Size: 22.4 KB (22433 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97bbddd139d88f50f310be8ab3257518b55a8e536c41ffb42d833f3d866e3928`  
		Last Modified: Fri, 25 Sep 2026 17:49:12 GMT  
		Size: 11.7 MB (11709535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973017586e13f1b478a917ad4cec5dfa235ab2e1b9d7414871a5e50e370b1888`  
		Last Modified: Fri, 25 Sep 2026 17:49:12 GMT  
		Size: 18.2 MB (18185419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0e8187ef6d05e8c0716f1a53fe4aeeb983a03f952df676482ca4f19781af175`  
		Last Modified: Fri, 25 Sep 2026 17:49:11 GMT  
		Size: 384.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b6b84b8f3f7dd2ca2aff50f7afe93e15b8d20b6ffdca9d31b6b0a1cab0f989c`  
		Last Modified: Fri, 25 Sep 2026 17:49:11 GMT  
		Size: 1.5 MB (1534729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3e797563c47a0d69f8daaf3bb799532f150cde1946968fd4c8321afc08a7fde`  
		Last Modified: Fri, 25 Sep 2026 17:49:12 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2` - unknown; unknown

```console
$ docker pull wordpress@sha256:096e4ea2e5584fe0b38d8f94f676b5769c387ee6ccd65bd3ffa28b8eeb9f8605
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **668.2 KB (668162 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51d33e80562a0c9adfd7a4fa89f17c149065426133c768a32faa13894d42f830`

```dockerfile
```

-	Layers:
	-	`sha256:febf82b6c32c4de888973841d720a744e08791279a0a4e0c79972b3fdfaa93fa`  
		Last Modified: Fri, 25 Sep 2026 17:49:11 GMT  
		Size: 624.8 KB (624840 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6e1254b62b3c1773b902b0f61685700c37a205421640d51e92df3f3f89c1c271`  
		Last Modified: Fri, 25 Sep 2026 17:49:11 GMT  
		Size: 43.3 KB (43322 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2` - linux; arm variant v6

```console
$ docker pull wordpress@sha256:47ab57fc291cbfe0e0b2692c25649ab5c855969e7bcb30f7398d8fd5e3997d71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.4 MB (63426167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:689b6f896b4f9ae9c663ff3f843af835d438b74dd4f1f2130fd18a82802dbf20`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 17:40:56 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 25 Sep 2026 17:40:56 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Fri, 25 Sep 2026 17:40:56 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Fri, 25 Sep 2026 17:40:56 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 25 Sep 2026 17:40:56 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Fri, 25 Sep 2026 17:40:56 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Fri, 25 Sep 2026 17:40:56 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Fri, 25 Sep 2026 17:40:56 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Fri, 25 Sep 2026 17:40:56 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Fri, 25 Sep 2026 17:40:56 GMT
ENV PHP_VERSION=8.3.35
# Fri, 25 Sep 2026 17:40:56 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.35.tar.xz.asc
# Fri, 25 Sep 2026 17:40:56 GMT
ENV PHP_SHA256=ff4630fbbbd94359134b7d3c223db59329905bdc4f5a9ef93d257b48e358619a
# Fri, 25 Sep 2026 17:41:00 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Fri, 25 Sep 2026 17:41:00 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:43:46 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 25 Sep 2026 17:43:46 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:43:47 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 25 Sep 2026 17:43:47 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 25 Sep 2026 17:43:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 25 Sep 2026 17:43:47 GMT
CMD ["php" "-a"]
# Fri, 25 Sep 2026 17:48:18 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Fri, 25 Sep 2026 17:48:18 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Fri, 25 Sep 2026 17:48:18 GMT
WORKDIR /var/www/html
# Fri, 25 Sep 2026 17:49:28 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Fri, 25 Sep 2026 17:49:28 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Fri, 25 Sep 2026 17:49:31 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Fri, 25 Sep 2026 17:49:31 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Fri, 25 Sep 2026 17:49:31 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Fri, 25 Sep 2026 17:49:31 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Fri, 25 Sep 2026 17:49:31 GMT
VOLUME [/var/www/html]
# Fri, 25 Sep 2026 17:49:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:49:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Sep 2026 17:49:31 GMT
USER www-data
# Fri, 25 Sep 2026 17:49:31 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edc4689c2276f4ab52a10050ce3948deadb32d0a26e4126f1ce0080555fe75ef`  
		Last Modified: Fri, 25 Sep 2026 17:43:53 GMT  
		Size: 3.4 MB (3445127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14c32920014f17de1430d458c632a3faf80cad32264d6b0f793cd9da29c47244`  
		Last Modified: Fri, 25 Sep 2026 17:43:51 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4312864afdecc770a7f73f757d907811609c80b51771b5971f4a976eee1d5865`  
		Last Modified: Fri, 25 Sep 2026 17:43:51 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd3f40bc0fc487898cb99de6386f79503784e8aac2494aab7c352f82e53f8e68`  
		Last Modified: Fri, 25 Sep 2026 17:43:53 GMT  
		Size: 12.6 MB (12645640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4408cccc987311678d988bee89164f07d4690db0e128a33b9b2ba5344405a34`  
		Last Modified: Fri, 25 Sep 2026 17:43:53 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecaa9d46121cf13298fb7fc387adf92ca9f6afbf7d69a5437083710249424152`  
		Last Modified: Fri, 25 Sep 2026 17:43:53 GMT  
		Size: 16.0 MB (16007581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae019d22653f86588c6b1f203015d64f29e8146980f8a6c7dd0610c8ec01818a`  
		Last Modified: Fri, 25 Sep 2026 17:43:54 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f64a03ee60551e015b0899f977c18696b7e5c0ceeab99b5456d5d6e945c9a6f`  
		Last Modified: Fri, 25 Sep 2026 17:43:54 GMT  
		Size: 22.2 KB (22242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28a96c6ac9898a3d8bc149e8f5b17d704815bec3f44275a336d5b518b4a55061`  
		Last Modified: Fri, 25 Sep 2026 17:43:55 GMT  
		Size: 22.3 KB (22261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18a87138f4b0935ada13885d5275094fd44d71711698eefaf0d54d78bbb5fac3`  
		Last Modified: Fri, 25 Sep 2026 17:49:36 GMT  
		Size: 11.3 MB (11343370 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:417cb69b6299ef24bad52efbe1219516aa60e3a20929020d9704c366708a1345`  
		Last Modified: Fri, 25 Sep 2026 17:49:36 GMT  
		Size: 14.8 MB (14845136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95b80c457e3033d3cf98ff8f8ca05e0bea7fab7ecbffe01762ccfeadb4699482`  
		Last Modified: Fri, 25 Sep 2026 17:49:36 GMT  
		Size: 385.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13930ece9f61d2f52b25272f96caf62b3108ae3560984266d2510ceebaa1c662`  
		Last Modified: Fri, 25 Sep 2026 17:49:36 GMT  
		Size: 1.5 MB (1534763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cba3d9afd7b56d41d274e545f2342cba2d7d6c0b2468378cf04809d55046c5a8`  
		Last Modified: Fri, 25 Sep 2026 17:49:37 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2` - unknown; unknown

```console
$ docker pull wordpress@sha256:719bdb41de8662a8cd43c22d5ad00b5bdc49490691501e703e42a209c1e1eaae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.3 KB (43270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2dbc4a86601675e600c08bde49833744bcd17e6961967b3f1fc9dc23aef7505b`

```dockerfile
```

-	Layers:
	-	`sha256:24e20e04d236217b9d8da17a2884bf082c91b14dd50cca6762d5ad23b83f216c`  
		Last Modified: Fri, 25 Sep 2026 17:49:36 GMT  
		Size: 43.3 KB (43270 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:93c1305c1a4ff41228fabc9f4775b64f57923fcb0a61149f57452fae87607b49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **62.1 MB (62109777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:71e0634a25693639ee6a56756c6b7ad9786e73db249ae83db832694260948685`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 17:44:52 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 25 Sep 2026 17:44:52 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Fri, 25 Sep 2026 17:44:53 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Fri, 25 Sep 2026 17:44:53 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 25 Sep 2026 17:44:53 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Fri, 25 Sep 2026 17:44:53 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Fri, 25 Sep 2026 17:44:53 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Fri, 25 Sep 2026 17:44:53 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Fri, 25 Sep 2026 17:44:53 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Fri, 25 Sep 2026 17:44:53 GMT
ENV PHP_VERSION=8.3.35
# Fri, 25 Sep 2026 17:44:53 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.35.tar.xz.asc
# Fri, 25 Sep 2026 17:44:53 GMT
ENV PHP_SHA256=ff4630fbbbd94359134b7d3c223db59329905bdc4f5a9ef93d257b48e358619a
# Fri, 25 Sep 2026 17:44:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Fri, 25 Sep 2026 17:44:56 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:47:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 25 Sep 2026 17:47:41 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:47:42 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 25 Sep 2026 17:47:42 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 25 Sep 2026 17:47:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 25 Sep 2026 17:47:42 GMT
CMD ["php" "-a"]
# Fri, 25 Sep 2026 17:58:36 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Fri, 25 Sep 2026 17:58:36 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Fri, 25 Sep 2026 17:58:36 GMT
WORKDIR /var/www/html
# Fri, 25 Sep 2026 17:59:45 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Fri, 25 Sep 2026 17:59:45 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Fri, 25 Sep 2026 17:59:47 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Fri, 25 Sep 2026 17:59:47 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Fri, 25 Sep 2026 17:59:47 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Fri, 25 Sep 2026 17:59:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Fri, 25 Sep 2026 17:59:47 GMT
VOLUME [/var/www/html]
# Fri, 25 Sep 2026 17:59:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:59:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Sep 2026 17:59:47 GMT
USER www-data
# Fri, 25 Sep 2026 17:59:47 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35c14125a05970729d1a0f27122e2b0413d2456237f327c8830cdb595924421a`  
		Last Modified: Fri, 25 Sep 2026 17:47:49 GMT  
		Size: 3.3 MB (3258248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eac97a8560626e93823a2e87577a42615622ef9e9e0f4d9b58fb05899a36101c`  
		Last Modified: Fri, 25 Sep 2026 17:47:49 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e10c21d3a9d574615e409de87bcd9897ea2d0c0d2e70e93730cc949effd2262e`  
		Last Modified: Fri, 25 Sep 2026 17:47:49 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb00c218f4315dff67d2566598aff91c5bd5b1a3938c86a0594b192fcb76a868`  
		Last Modified: Fri, 25 Sep 2026 17:47:49 GMT  
		Size: 12.6 MB (12645618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1c8e4cc277da18ef854895ab71809c97ad1479257266e8108fed4b0fdda720c`  
		Last Modified: Fri, 25 Sep 2026 17:47:50 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6e84debfa30c3ad3710afc9c0bb81d1807c17153946c787f4f70bf618e852a2`  
		Last Modified: Fri, 25 Sep 2026 17:47:50 GMT  
		Size: 15.1 MB (15050696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3ecee2379119444a8b0649dfa5b7bc57e709737e302d4c1657042c021e90dc5`  
		Last Modified: Fri, 25 Sep 2026 17:47:50 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02a55f2c24af5ff747d2f3f91a15a29e288556476eb8e2c325b193d0f4fe81fe`  
		Last Modified: Fri, 25 Sep 2026 17:47:50 GMT  
		Size: 22.2 KB (22236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f27acfedc4be4774a9ae1c0996742f120d1e7c25a7a5ff85ba319bd9cdb5a6`  
		Last Modified: Fri, 25 Sep 2026 17:47:51 GMT  
		Size: 22.2 KB (22247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:228fcca9d3aac2ce114e602b1e7f1bb9a955346aa300acfb51be39ed177dce64`  
		Last Modified: Fri, 25 Sep 2026 17:59:55 GMT  
		Size: 11.0 MB (10979814 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37bed55c60ac5779c92768eb5d24730cfbb44cb1707ce64d931570885d0c512d`  
		Last Modified: Fri, 25 Sep 2026 17:59:55 GMT  
		Size: 15.3 MB (15326047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bd90a23198c494222984aba8d958008eedf68f544377d0902584fadabc994fa`  
		Last Modified: Fri, 25 Sep 2026 17:59:55 GMT  
		Size: 385.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ec5fa0be836be8831a8fab80dda6e723699969ab23fc1e859a744627d9ad3d6`  
		Last Modified: Fri, 25 Sep 2026 17:59:55 GMT  
		Size: 1.5 MB (1534729 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72e1d9c5c017e5a452975f2e4d9a8f7b35fdee6ab2c34b47dd3bb50731782581`  
		Last Modified: Fri, 25 Sep 2026 17:59:56 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2` - unknown; unknown

```console
$ docker pull wordpress@sha256:b053704c8fc5ef167350072850f5004ae9b7a216a7c1820ab613f5e660b39bd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **666.5 KB (666499 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b96f49f500a4cfab22342027643309c89545ff480556bc03f145e8e2f0ea944`

```dockerfile
```

-	Layers:
	-	`sha256:e6b85bbd40564c45d4a717d034efff8f4aadc43dfd1b18da670d2033c36dacfa`  
		Last Modified: Fri, 25 Sep 2026 17:59:54 GMT  
		Size: 623.0 KB (623014 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:28d54ba4ff0a30ecc519f48fc47883b8bdc8c455be67ea805bac3dde74e279a9`  
		Last Modified: Fri, 25 Sep 2026 17:59:54 GMT  
		Size: 43.5 KB (43485 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:6e4fbbdd4c30802445c1c5bb1812b480c166df0c37179813867f4c155c4eb534
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.2 MB (68218529 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1c84209446b7daafcbe17431343cafc72e53afc07df743e9a536ff18c92dffb`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 17:41:54 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 25 Sep 2026 17:41:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Fri, 25 Sep 2026 17:41:54 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Fri, 25 Sep 2026 17:41:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 25 Sep 2026 17:41:54 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Fri, 25 Sep 2026 17:41:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Fri, 25 Sep 2026 17:41:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Fri, 25 Sep 2026 17:41:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Fri, 25 Sep 2026 17:41:54 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Fri, 25 Sep 2026 17:41:54 GMT
ENV PHP_VERSION=8.3.35
# Fri, 25 Sep 2026 17:41:54 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.35.tar.xz.asc
# Fri, 25 Sep 2026 17:41:54 GMT
ENV PHP_SHA256=ff4630fbbbd94359134b7d3c223db59329905bdc4f5a9ef93d257b48e358619a
# Fri, 25 Sep 2026 17:41:57 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Fri, 25 Sep 2026 17:41:57 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:46:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 25 Sep 2026 17:46:15 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:46:16 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 25 Sep 2026 17:46:16 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 25 Sep 2026 17:46:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 25 Sep 2026 17:46:16 GMT
CMD ["php" "-a"]
# Fri, 25 Sep 2026 17:52:05 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Fri, 25 Sep 2026 17:52:05 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Fri, 25 Sep 2026 17:52:05 GMT
WORKDIR /var/www/html
# Fri, 25 Sep 2026 17:53:02 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Fri, 25 Sep 2026 17:53:02 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Fri, 25 Sep 2026 17:53:04 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Fri, 25 Sep 2026 17:53:04 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Fri, 25 Sep 2026 17:53:04 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Fri, 25 Sep 2026 17:53:04 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Fri, 25 Sep 2026 17:53:04 GMT
VOLUME [/var/www/html]
# Fri, 25 Sep 2026 17:53:04 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:53:04 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Sep 2026 17:53:04 GMT
USER www-data
# Fri, 25 Sep 2026 17:53:04 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f65b175285d235e29702da8a5548f0eb1ac841a17937747a02e732831538759`  
		Last Modified: Fri, 25 Sep 2026 17:46:24 GMT  
		Size: 3.5 MB (3501062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24e9175580b67167459eb2fe5019f52f8472905d3092ad93b3e2dddd755398dd`  
		Last Modified: Fri, 25 Sep 2026 17:46:24 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:922c8530f4031c88b3e4b9906c6c2e68e23f0001d9bd25f31d0cf97787223091`  
		Last Modified: Fri, 25 Sep 2026 17:46:23 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efc9cde02eb049355dc5b773450b92afcac49e898edb905cc420666c6ed2c191`  
		Last Modified: Fri, 25 Sep 2026 17:46:24 GMT  
		Size: 12.6 MB (12645615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9ac7ba8bd869e7b4567b63cd0647839b7ef91f237bb1edcc4fa602535924d7`  
		Last Modified: Fri, 25 Sep 2026 17:46:25 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f91440d65aeb41bff2b6c6c888c3ed0ca80a3c7c1fc970f797c9b616a2843c0`  
		Last Modified: Fri, 25 Sep 2026 17:46:25 GMT  
		Size: 17.4 MB (17390557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9bdcc6bd25fce89a27d4a7df9a1b30ac310c3d4dfbc9c92540123644c332a47f`  
		Last Modified: Fri, 25 Sep 2026 17:46:25 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fe4c7be7c5d426c1ffea7b3d78fdb17b3a8c51e822e21556d7b8021f7d8b45b`  
		Last Modified: Fri, 25 Sep 2026 17:46:25 GMT  
		Size: 22.2 KB (22245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38839a56bf9b8b048dedde31f8db217a3a5f75f394007ab2eac10f595e1a4815`  
		Last Modified: Fri, 25 Sep 2026 17:46:26 GMT  
		Size: 22.3 KB (22255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:373c7174fca5354f63c213fa009afda512590cce41e5cad7ada7eae7820ab729`  
		Last Modified: Fri, 25 Sep 2026 17:53:12 GMT  
		Size: 11.6 MB (11641734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:090dbbed7f2cb2bf90bea24d5713c450bcb1cbc7f5f8ef094f4645af2cbe90d8`  
		Last Modified: Fri, 25 Sep 2026 17:53:13 GMT  
		Size: 17.3 MB (17267771 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be3df574113c74cd5a90d9feec38950b783959b1181016bdae1d91076dd57e67`  
		Last Modified: Fri, 25 Sep 2026 17:53:12 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0d4326888a8668edaab573b80eaff81bfd71cca7e4d6826a53a9fc3a3b542b3`  
		Last Modified: Fri, 25 Sep 2026 17:53:12 GMT  
		Size: 1.5 MB (1534689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a74fca873558c111c8b395b04b77e454ed7f13b957dbd63a6f983f003732c2e0`  
		Last Modified: Fri, 25 Sep 2026 17:53:13 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2` - unknown; unknown

```console
$ docker pull wordpress@sha256:28d0041a0b99cebab0d38d81a57e5cf87ef0708cb40402e4af1e6da4319532e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **666.6 KB (666583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f99155e62b9000ed5fd331e5d1f6957e255e67caddfa48fd4c2dfc4e1ff7dc2f`

```dockerfile
```

-	Layers:
	-	`sha256:977007819d3a452a4d1d4068276806b1a2a1dd84066f5cb5fd751c1e94c98cf3`  
		Last Modified: Fri, 25 Sep 2026 17:53:12 GMT  
		Size: 623.0 KB (623050 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6fef12d169937806f5146b79478c6c5631fb42a642586cd01ba8a70197038880`  
		Last Modified: Fri, 25 Sep 2026 17:53:12 GMT  
		Size: 43.5 KB (43533 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2` - linux; 386

```console
$ docker pull wordpress@sha256:aab17ae5d081397e8a20eec462ae26dbb525894d4aba31f3ceb4950db1b24c45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.5 MB (68501649 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c07ad22f6ec94045ce55313cb8f7a0b54904ded9092755ccc3c55c0c21bbb705`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Fri, 25 Sep 2026 17:42:00 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Fri, 25 Sep 2026 17:42:00 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Fri, 25 Sep 2026 17:42:00 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Fri, 25 Sep 2026 17:42:00 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Fri, 25 Sep 2026 17:42:00 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Fri, 25 Sep 2026 17:42:00 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Fri, 25 Sep 2026 17:42:00 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Fri, 25 Sep 2026 17:42:00 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Fri, 25 Sep 2026 17:42:00 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Fri, 25 Sep 2026 17:42:00 GMT
ENV PHP_VERSION=8.3.35
# Fri, 25 Sep 2026 17:42:00 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.35.tar.xz.asc
# Fri, 25 Sep 2026 17:42:00 GMT
ENV PHP_SHA256=ff4630fbbbd94359134b7d3c223db59329905bdc4f5a9ef93d257b48e358619a
# Fri, 25 Sep 2026 17:42:03 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Fri, 25 Sep 2026 17:42:03 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:44:44 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 25 Sep 2026 17:44:44 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:44:45 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 25 Sep 2026 17:44:45 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 25 Sep 2026 17:44:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 25 Sep 2026 17:44:45 GMT
CMD ["php" "-a"]
# Fri, 25 Sep 2026 17:48:25 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Fri, 25 Sep 2026 17:48:25 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Fri, 25 Sep 2026 17:48:25 GMT
WORKDIR /var/www/html
# Fri, 25 Sep 2026 17:49:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Fri, 25 Sep 2026 17:49:10 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Fri, 25 Sep 2026 17:49:11 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Fri, 25 Sep 2026 17:49:11 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Fri, 25 Sep 2026 17:49:11 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Fri, 25 Sep 2026 17:49:11 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Fri, 25 Sep 2026 17:49:11 GMT
VOLUME [/var/www/html]
# Fri, 25 Sep 2026 17:49:11 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:49:11 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Sep 2026 17:49:11 GMT
USER www-data
# Fri, 25 Sep 2026 17:49:11 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:664bbc9959b2798a476169cc9fed79d36d2bf4069862c7dd51a7a8cfb12a2fde`  
		Last Modified: Fri, 25 Sep 2026 17:44:53 GMT  
		Size: 3.5 MB (3524558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f361a50d25d6a7ad200a38c5207767d724d217af73f525ea931650724dbab896`  
		Last Modified: Fri, 25 Sep 2026 17:44:52 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:840b2e345a16f0908b6083270a63fbefa248caee45bba0202a05bb5e7e284436`  
		Last Modified: Fri, 25 Sep 2026 17:44:52 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c1d2871e62629328b70735480842aa44719995c782a0d1dbe14cfb126933885`  
		Last Modified: Fri, 25 Sep 2026 17:44:53 GMT  
		Size: 12.6 MB (12645595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a15dcb80bb6bb7f676f4b20d4b6f96f4e8b3882d2311fb59359406c366684c41`  
		Last Modified: Fri, 25 Sep 2026 17:44:53 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30d15bb7e807f152a22ea7bfc2a86986c16a3deda35ebbe827b232a9b176b8ca`  
		Last Modified: Fri, 25 Sep 2026 17:44:54 GMT  
		Size: 18.0 MB (17962830 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fae7fa008f219714bb7b6b817070d07df0f0379e51905bb88ac1b240d1547451`  
		Last Modified: Fri, 25 Sep 2026 17:44:54 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ab6c035e1571cec60564a10ac27851cf79ab7d50c7bee86179adc9f10f7e940`  
		Last Modified: Fri, 25 Sep 2026 17:44:54 GMT  
		Size: 22.4 KB (22431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:527a2124f36027aed178fb432de2e64b021590c914d03b03372a7d6226a3a855`  
		Last Modified: Fri, 25 Sep 2026 17:44:55 GMT  
		Size: 22.4 KB (22436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:237174108bcf9362d051343b2e759da5b621b4925ea97a5ae9cfef408cc41d1c`  
		Last Modified: Fri, 25 Sep 2026 17:49:19 GMT  
		Size: 11.8 MB (11843358 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:148df238a307f870ae3ed95c6290d0d494fbd94d4d153843b8f6927f64d1d230`  
		Last Modified: Fri, 25 Sep 2026 17:49:19 GMT  
		Size: 17.3 MB (17264021 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18f5cbcaf0662a3081de56533515c6348c4864add0fc363461eaffb71b522012`  
		Last Modified: Fri, 25 Sep 2026 17:49:19 GMT  
		Size: 384.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01ba9c82d1fbb519b6df3241c88fe98b238d18b8d5a632727fa02d47746f0dfd`  
		Last Modified: Fri, 25 Sep 2026 17:49:19 GMT  
		Size: 1.5 MB (1534708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05d11b4087fb1dd346337ed84ad33a01ac64d42b8649cd98c50b038551a175ba`  
		Last Modified: Fri, 25 Sep 2026 17:49:20 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2` - unknown; unknown

```console
$ docker pull wordpress@sha256:bc008681b1c04e29d8782c8194ecadfbd3c10b3d7f22a1ff094e2c9fdfda9cbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **668.1 KB (668057 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c17e1e07da5117f01f54b67ba94a30aa06661b44913896a55fde9778dc9131c`

```dockerfile
```

-	Layers:
	-	`sha256:6d7ade30adf3ef1e017367f08eeab373589dee03c051ccf19d014f57a269afb6`  
		Last Modified: Fri, 25 Sep 2026 17:49:19 GMT  
		Size: 624.8 KB (624795 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:09e28625bf03a80c1f4440bc9dc301d777a9689aca19cafc2222b430890f8b13`  
		Last Modified: Fri, 25 Sep 2026 17:49:18 GMT  
		Size: 43.3 KB (43262 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2` - linux; ppc64le

```console
$ docker pull wordpress@sha256:e5e78cad70c2152f9603c8a0e4984bb1efa6be453f4998a0d7884e1ba16ac23c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.7 MB (70742169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:676f38a20884d577d4415cc971190ce0cb4dc5665897b4922b7243281c8a5d08`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:35:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 17 Sep 2026 21:35:21 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 17 Sep 2026 21:35:22 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 17 Sep 2026 21:35:22 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 17 Sep 2026 21:35:22 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 17 Sep 2026 21:35:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 21:35:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 21:35:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 17 Sep 2026 21:35:22 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 17 Sep 2026 21:35:22 GMT
ENV PHP_VERSION=8.3.35
# Thu, 17 Sep 2026 21:35:22 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.35.tar.xz.asc
# Thu, 17 Sep 2026 21:35:22 GMT
ENV PHP_SHA256=ff4630fbbbd94359134b7d3c223db59329905bdc4f5a9ef93d257b48e358619a
# Fri, 25 Sep 2026 17:59:09 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Fri, 25 Sep 2026 17:59:10 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 18:03:08 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 25 Sep 2026 18:03:09 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 18:03:10 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 25 Sep 2026 18:03:11 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 25 Sep 2026 18:03:11 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 25 Sep 2026 18:03:11 GMT
CMD ["php" "-a"]
# Fri, 25 Sep 2026 18:34:10 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Fri, 25 Sep 2026 18:34:10 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Fri, 25 Sep 2026 18:34:11 GMT
WORKDIR /var/www/html
# Fri, 25 Sep 2026 18:35:54 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Fri, 25 Sep 2026 18:35:55 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Fri, 25 Sep 2026 18:35:59 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Fri, 25 Sep 2026 18:35:59 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Fri, 25 Sep 2026 18:35:59 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Fri, 25 Sep 2026 18:35:59 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Fri, 25 Sep 2026 18:35:59 GMT
VOLUME [/var/www/html]
# Fri, 25 Sep 2026 18:36:00 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 18:36:00 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Sep 2026 18:36:00 GMT
USER www-data
# Fri, 25 Sep 2026 18:36:00 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94dd3b632bc8356dfcd2913d56c4dafaee9f64ea172ed02d121456debc7e09e3`  
		Last Modified: Thu, 17 Sep 2026 21:39:40 GMT  
		Size: 3.7 MB (3664991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ffba323cefd4aec9e70567151bff96ffe7dcd359abe0c80e30f54fdb9d519d3`  
		Last Modified: Thu, 17 Sep 2026 21:39:40 GMT  
		Size: 928.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f076f58842bb9537630b1ddc9001cb2a7d48b3dc3da8088c3b602853fa14e686`  
		Last Modified: Thu, 17 Sep 2026 21:39:40 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9be4cf205e3da8adce83f2a2e6f7a667741b1040e23921e5c4a613e1dccd81b4`  
		Last Modified: Fri, 25 Sep 2026 18:03:27 GMT  
		Size: 12.6 MB (12645640 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:837133aa69ef01a15cc1eeb8d32ee8444918c32726d5dbede929029ed1544795`  
		Last Modified: Fri, 25 Sep 2026 18:03:27 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdcc28e9a55dcb75937c26197ebe62b7f0fd000f5ab3b674c70169b1c7188f09`  
		Last Modified: Fri, 25 Sep 2026 18:03:28 GMT  
		Size: 18.6 MB (18587779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0a2bb9b6254f8ec3a2c97f8e072553a2952a008295cdb0270777fcaac8f0903`  
		Last Modified: Fri, 25 Sep 2026 18:03:27 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:366f1cf7817fd38291d42ae4bcd5daf7fa151d9b14042782b532c4daf32197bc`  
		Last Modified: Fri, 25 Sep 2026 18:03:28 GMT  
		Size: 22.3 KB (22272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77b2e13bbe7b89ce3785c6efe45122b952d97b2b9ae618ef7e42eb15955280dc`  
		Last Modified: Fri, 25 Sep 2026 18:03:28 GMT  
		Size: 22.3 KB (22293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fca3415bee88ba95ad71350acd3e51fce0929dc4aae1754a4548b88af84507d`  
		Last Modified: Fri, 25 Sep 2026 18:36:22 GMT  
		Size: 12.4 MB (12381221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dac621ddae6cdd3922683acf7ea66010769e61d7ae59c6a3af6a039a35fd7c9`  
		Last Modified: Fri, 25 Sep 2026 18:36:22 GMT  
		Size: 18.1 MB (18060805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ffda4cf1a6c51ce58013d0a1a1aee0cbfc4f0df63aca3d5eb9c5236036dd745`  
		Last Modified: Fri, 25 Sep 2026 18:36:21 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbfaeb2a56319e3c7d757d6bfb852bc713c91d4e3c3f5273207d0bc746d8e1fd`  
		Last Modified: Fri, 25 Sep 2026 18:36:22 GMT  
		Size: 1.5 MB (1534744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6360ea885e55466f41eb493331c16f244c3e89cd6ccda7145362fdce7da0c7ed`  
		Last Modified: Fri, 25 Sep 2026 18:36:23 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2` - unknown; unknown

```console
$ docker pull wordpress@sha256:d4623613bfd8953610e9681f76a1a5d44bdd5c1e7505225fdf78ed43f50668f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **666.4 KB (666401 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:de415f8b3731e573073bde0f0b1ddf50a048017825dfbaa4621a3e5d7a4c647a`

```dockerfile
```

-	Layers:
	-	`sha256:b849161d3785f0ee98598f5caac71b24dc117c6446d1f8faa7b6ad15b18e3c92`  
		Last Modified: Fri, 25 Sep 2026 18:36:21 GMT  
		Size: 623.0 KB (623003 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:df8b727a30a4b6c9c646b585eb58b353319cbf0138592cf3227e971b7544bcdf`  
		Last Modified: Fri, 25 Sep 2026 18:36:21 GMT  
		Size: 43.4 KB (43398 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2` - linux; riscv64

```console
$ docker pull wordpress@sha256:14c46fedc726c976d879b572a457c58922780d9a1a6899a90bc6e152f2e37cf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.0 MB (65976277 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6c8d678544c3e8292a2b5d6151c382f16b5b77571272324ee1d5ec76cb9a30e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Sat, 19 Sep 2026 07:31:37 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Sat, 19 Sep 2026 07:31:37 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Sat, 19 Sep 2026 07:31:37 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Sat, 19 Sep 2026 07:31:37 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 19 Sep 2026 07:31:38 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Sat, 19 Sep 2026 07:31:38 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 07:31:38 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 07:31:38 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 19 Sep 2026 07:31:38 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Sat, 19 Sep 2026 07:31:38 GMT
ENV PHP_VERSION=8.3.33
# Sat, 19 Sep 2026 07:31:38 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Sat, 19 Sep 2026 07:31:38 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Sun, 20 Sep 2026 08:46:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Sun, 20 Sep 2026 08:46:35 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sun, 20 Sep 2026 09:41:26 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sun, 20 Sep 2026 09:41:26 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sun, 20 Sep 2026 09:41:31 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sun, 20 Sep 2026 09:41:36 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sun, 20 Sep 2026 09:41:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sun, 20 Sep 2026 09:41:36 GMT
CMD ["php" "-a"]
# Thu, 24 Sep 2026 23:15:11 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Thu, 24 Sep 2026 23:15:11 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Thu, 24 Sep 2026 23:15:12 GMT
WORKDIR /var/www/html
# Thu, 24 Sep 2026 23:29:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 24 Sep 2026 23:29:11 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 24 Sep 2026 23:29:21 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 24 Sep 2026 23:29:21 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Thu, 24 Sep 2026 23:29:21 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Thu, 24 Sep 2026 23:29:21 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Thu, 24 Sep 2026 23:29:21 GMT
VOLUME [/var/www/html]
# Thu, 24 Sep 2026 23:29:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 23:29:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 24 Sep 2026 23:29:21 GMT
USER www-data
# Thu, 24 Sep 2026 23:29:21 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7241c71c294d31a27a6d12101f993cfc2b6864a0ff355a14fa8497f9c685f122`  
		Last Modified: Sat, 19 Sep 2026 08:32:39 GMT  
		Size: 3.6 MB (3636236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a3222b1ad00a93a0d1c606f25dede0fea90c1cfaa6958b7c8436165a65af4dc`  
		Last Modified: Sat, 19 Sep 2026 08:32:38 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6597b890299299be1fd94195683c9712a3a11b9d0265652252b6cb0ace1a0acb`  
		Last Modified: Sat, 19 Sep 2026 08:32:38 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2397db3411712335bbfe695a48581e52d140da2ae23b1d54884a54d02f2e087e`  
		Last Modified: Sun, 20 Sep 2026 09:42:36 GMT  
		Size: 12.6 MB (12636213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19d8430733599cce0d86d9061e15cfa20021bc0b3d8b60658c034f1680749b13`  
		Last Modified: Sun, 20 Sep 2026 09:42:32 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ebde95b1ed1951e94c9bb1de5452cb8d2fa50df0eef1470bedea54aba588da2`  
		Last Modified: Sun, 20 Sep 2026 09:42:36 GMT  
		Size: 17.0 MB (16984784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:629433f958ec1ed215b0acf5543b3ba58f72c6586876f24e3a0a2fb51cb73dc2`  
		Last Modified: Sun, 20 Sep 2026 09:42:32 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aeb129e58e822e849197a023191842bf10a40b32f1092a57d7c5d70c40569fe`  
		Last Modified: Sun, 20 Sep 2026 09:42:34 GMT  
		Size: 22.2 KB (22246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a185a530d1010475dec813d8842e3dcba98330260d75185dffb1117063ca6052`  
		Last Modified: Sun, 20 Sep 2026 09:42:34 GMT  
		Size: 22.3 KB (22269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e466e3fd6c6aec298c4c393583d3a1f781540a6b877c44425814c63771b028`  
		Last Modified: Thu, 24 Sep 2026 23:30:50 GMT  
		Size: 12.1 MB (12136189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a246e8ae4fa1a4a3f8ae8c5e95aba4aa6a42cfe488ec7af33f3f4110336ae9d6`  
		Last Modified: Thu, 24 Sep 2026 23:30:50 GMT  
		Size: 15.4 MB (15423233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:496cdace7669c22b9a0f95ab28afe23bffe42be72c2c5a74e6a7ad93292cf676`  
		Last Modified: Thu, 24 Sep 2026 23:30:46 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc157f8c6c02ae94d3b11180837f002f471f6ccbeeda5fa6921b26964ed6bd55`  
		Last Modified: Thu, 24 Sep 2026 23:30:47 GMT  
		Size: 1.5 MB (1534772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:102c2195fd41d2a851e6fd141edfc2028900be4fb4fb394c7628a411425317e9`  
		Last Modified: Thu, 24 Sep 2026 23:30:48 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2` - unknown; unknown

```console
$ docker pull wordpress@sha256:21325bd3aece70d7029e30872515e92911b788a932d46106eb7c30d1076f5a75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **666.4 KB (666397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d243ff46c9df4db747d9795334f8a2564781c324a67a7f44f90ed146676e97c1`

```dockerfile
```

-	Layers:
	-	`sha256:62aed59b3996c25e3d6048f304ca5cb2a06340279c8bd39da56540ae6b4dbbec`  
		Last Modified: Thu, 24 Sep 2026 23:30:46 GMT  
		Size: 623.0 KB (622999 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c3f0084784a4ab1b7577f7a8ee242d2d24bfeaaff0853b5a8adc8922f3081fe`  
		Last Modified: Thu, 24 Sep 2026 23:30:46 GMT  
		Size: 43.4 KB (43398 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2` - linux; s390x

```console
$ docker pull wordpress@sha256:46c970a89baa0e0ca6d7aa48568ece5c388092edd6a5cb2b1cd9f17047ebc143
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.7 MB (69732872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0c6df5d16bd1c10a695584e93c63eb73228000d8a57d5ef4fe9937c4223e209`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:26:50 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 17 Sep 2026 22:26:50 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 17 Sep 2026 22:26:50 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 17 Sep 2026 22:26:50 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 17 Sep 2026 22:26:50 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 17 Sep 2026 22:26:50 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 22:26:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 22:26:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 17 Sep 2026 22:26:50 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 17 Sep 2026 22:26:50 GMT
ENV PHP_VERSION=8.3.35
# Thu, 17 Sep 2026 22:26:50 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.35.tar.xz.asc
# Thu, 17 Sep 2026 22:26:50 GMT
ENV PHP_SHA256=ff4630fbbbd94359134b7d3c223db59329905bdc4f5a9ef93d257b48e358619a
# Fri, 25 Sep 2026 17:45:36 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Fri, 25 Sep 2026 17:45:37 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:49:33 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 25 Sep 2026 17:49:34 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:49:37 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 25 Sep 2026 17:49:38 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 25 Sep 2026 17:49:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 25 Sep 2026 17:49:38 GMT
CMD ["php" "-a"]
# Fri, 25 Sep 2026 17:57:31 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Fri, 25 Sep 2026 17:57:31 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Fri, 25 Sep 2026 17:57:31 GMT
WORKDIR /var/www/html
# Fri, 25 Sep 2026 17:58:27 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Fri, 25 Sep 2026 17:58:27 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Fri, 25 Sep 2026 17:58:29 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Fri, 25 Sep 2026 17:58:29 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Fri, 25 Sep 2026 17:58:29 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Fri, 25 Sep 2026 17:58:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Fri, 25 Sep 2026 17:58:29 GMT
VOLUME [/var/www/html]
# Fri, 25 Sep 2026 17:58:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 25 Sep 2026 17:58:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 25 Sep 2026 17:58:29 GMT
USER www-data
# Fri, 25 Sep 2026 17:58:29 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7495a2e85785a505f197517cb201c41b849c6c222991ddc59ab428082c5ade00`  
		Last Modified: Thu, 17 Sep 2026 22:31:22 GMT  
		Size: 3.7 MB (3686224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60603f20a2e221221fa8dd5e32811e0a28e96f06fca1d28d83841aa23da38ebf`  
		Last Modified: Thu, 17 Sep 2026 22:31:21 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:248b124dd8d316aa608eea025a3b5467f33483554da047fcf0374eb31a329941`  
		Last Modified: Thu, 17 Sep 2026 22:31:21 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f67907adbdd4997eaabc0b566369a09890649729e2a42d7bfec69962664c379`  
		Last Modified: Fri, 25 Sep 2026 17:50:08 GMT  
		Size: 12.6 MB (12645620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fe41c3a45a8a0aa04649f74771fb63422339160d200981b9b5b2cf8a7397df6`  
		Last Modified: Fri, 25 Sep 2026 17:50:02 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74a161629fd04f93c80ba766ac87d32c374002a58e5243e771b364860feee497`  
		Last Modified: Fri, 25 Sep 2026 17:50:09 GMT  
		Size: 17.6 MB (17562075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8d554b4d5b47b4659f8ee2f08efaca464e89e57e2ed993816b95cc735f228d2`  
		Last Modified: Fri, 25 Sep 2026 17:50:02 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c66f48937bcb992b040f66774144a3a16d329a0eb2e7e585f6874591c1982913`  
		Last Modified: Fri, 25 Sep 2026 17:50:07 GMT  
		Size: 22.3 KB (22264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c92bb61cb03ab691d12ba9ed16a5c0e58e9d307e55333552c03590c204c2c3a0`  
		Last Modified: Fri, 25 Sep 2026 17:50:07 GMT  
		Size: 22.3 KB (22282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6416b58352cd04b20cfbfe95ecf934bb23a9d78092452cb3293c462018f18f2a`  
		Last Modified: Fri, 25 Sep 2026 17:58:45 GMT  
		Size: 13.1 MB (13128174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50bc2148f2743eff6ec6966d6387d71b28ab1e60f04892f29e59fb09b2029ef4`  
		Last Modified: Fri, 25 Sep 2026 17:58:45 GMT  
		Size: 17.4 MB (17411156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e1a34ea8033025e2968e54075f9cde00d5ec6613b0cff9b7fcd31baf53e7f2b`  
		Last Modified: Fri, 25 Sep 2026 17:58:44 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fec2f9772e7bc570864f1a226428cd56bc996c15ee946d240a78cdd7308c0021`  
		Last Modified: Fri, 25 Sep 2026 17:58:44 GMT  
		Size: 1.5 MB (1534795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43e8092b52d6b0d48825ba3b21c7e7fb348848ff66ae42caf14a3076f02b7f9a`  
		Last Modified: Fri, 25 Sep 2026 17:58:45 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2` - unknown; unknown

```console
$ docker pull wordpress@sha256:79f1931942b86af0d075a6c1011e6fb2d83159b5da9b72ca93afa119493d859c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **666.3 KB (666267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e784321c21e27942087c51e7d61e090508552ca0683f8bd52b9b798df777ad54`

```dockerfile
```

-	Layers:
	-	`sha256:c90e162634ad477f0ecb571de5902ac2ca08215146f485d4d0463fa3a88fc9e1`  
		Last Modified: Fri, 25 Sep 2026 17:58:44 GMT  
		Size: 622.9 KB (622945 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b6fb0e737f0802717736329814c1b8f913ec2a460f6e95db92bea8c5e698611`  
		Last Modified: Fri, 25 Sep 2026 17:58:44 GMT  
		Size: 43.3 KB (43322 bytes)  
		MIME: application/vnd.in-toto+json
