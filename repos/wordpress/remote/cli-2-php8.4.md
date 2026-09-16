## `wordpress:cli-2-php8.4`

```console
$ docker pull wordpress@sha256:41d71196fbcc8d50efa5927988ab7d769c15233935922a0c79e1566e505b2a89
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

### `wordpress:cli-2-php8.4` - linux; amd64

```console
$ docker pull wordpress@sha256:23f5d3542a03c2691561c5b301ce007c5173a1a8d434d90fa2d0f28f1a477eb7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.5 MB (75533816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a71dff48cc71ae0df5d2901627da874ab9fc8c39ef1f9abcd903e85f13393d4f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 21:12:30 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 15 Sep 2026 21:12:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Tue, 15 Sep 2026 21:12:30 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 15 Sep 2026 21:12:30 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:12:30 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:12:30 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:12:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:12:30 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:12:30 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Tue, 15 Sep 2026 21:12:30 GMT
ENV PHP_VERSION=8.4.25
# Tue, 15 Sep 2026 21:12:30 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Tue, 15 Sep 2026 21:12:30 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Tue, 15 Sep 2026 21:24:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Tue, 15 Sep 2026 21:24:54 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:27:43 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:27:43 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:27:44 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:27:44 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:27:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:27:44 GMT
CMD ["php" "-a"]
# Tue, 15 Sep 2026 22:27:55 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Tue, 15 Sep 2026 22:27:56 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Tue, 15 Sep 2026 22:27:56 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 22:28:37 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:28:37 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:28:38 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Tue, 15 Sep 2026 22:28:38 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Tue, 15 Sep 2026 22:28:38 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Tue, 15 Sep 2026 22:28:38 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Tue, 15 Sep 2026 22:28:38 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:28:38 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:28:38 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:28:38 GMT
USER www-data
# Tue, 15 Sep 2026 22:28:38 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6463c3123c96bf37501c7e8296cee31203da90f6c85acad45b7e3d79ccf6c68c`  
		Last Modified: Tue, 15 Sep 2026 21:15:30 GMT  
		Size: 6.0 MB (5958263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d83ab78a7e33277f58f92d9e332c87756bfe4edd82bf6c2344c4539f45bc5a0`  
		Last Modified: Tue, 15 Sep 2026 21:15:30 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8b38a63a7203e263ded955576e2e4076c80edb907f2880aa2af8e47dddbd332`  
		Last Modified: Tue, 15 Sep 2026 21:15:30 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a76e0ed0c2459220ccd68cdb9dbe5fa7fe717a4c457bfb3d465ed3c9926f6b5`  
		Last Modified: Tue, 15 Sep 2026 21:27:52 GMT  
		Size: 13.8 MB (13782394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:726272ff811c21f0b7cfbbf13de8b73cd173f5a0a617e47bea0307008ad289c6`  
		Last Modified: Tue, 15 Sep 2026 21:27:51 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b38a276d77a9972498998e12b61b06ee9242950f23ff5ecafe0e971b649ded48`  
		Last Modified: Tue, 15 Sep 2026 21:27:52 GMT  
		Size: 20.4 MB (20432667 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:244a1c474f78e7cb191febfd8860acdbc5f7d6d45d7b6901b2ad0f62e0c7ab05`  
		Last Modified: Tue, 15 Sep 2026 21:27:51 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f439d5ef3ef8efa7132c12151631b791c100fb31925423f8c8d6189ea3ae197`  
		Last Modified: Tue, 15 Sep 2026 21:27:52 GMT  
		Size: 22.4 KB (22389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:167334366adbe754558119467a681ca7b9d560e4d930472b1f2de1fa8f73b48d`  
		Last Modified: Tue, 15 Sep 2026 21:27:52 GMT  
		Size: 22.4 KB (22394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2ff31e17fe4325479acbf1a173e286ad2c68fbf4e61f038ca53aa8a719c144d`  
		Last Modified: Tue, 15 Sep 2026 22:28:46 GMT  
		Size: 11.7 MB (11709723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d9871bac6c9134d879615feae4dce7619c1cfa55bdf1a0276880422734c35d7`  
		Last Modified: Tue, 15 Sep 2026 22:28:46 GMT  
		Size: 18.2 MB (18219951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:169bdd6506a9b4bf320b4aee5ce530d096bc547bf82d7cc31f5d8f0d9a3a56b4`  
		Last Modified: Tue, 15 Sep 2026 22:28:46 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed2cda9dae57e40997cc78a4345d3a2370b47508385d76e23451f43c548d3766`  
		Last Modified: Tue, 15 Sep 2026 22:28:46 GMT  
		Size: 1.5 MB (1534700 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02aeab9c50e2ef6b0f76b9e7f96100d70dc4b9aaff35edb530e13f3f4cf2783b`  
		Last Modified: Tue, 15 Sep 2026 22:28:47 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2-php8.4` - unknown; unknown

```console
$ docker pull wordpress@sha256:55235c9636dee604c3a944d07514292837dec0cd6c5c54cdac26a3e785aa03e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **664.4 KB (664429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bf3b1d15164e32eb0ee7127f6878da2cea388f09a93da206c34af362aa93818a`

```dockerfile
```

-	Layers:
	-	`sha256:f8cb2367fc75425a40cfd16a5e12e1bcd45503bb65c8137948714a38a97ae505`  
		Last Modified: Tue, 15 Sep 2026 22:28:46 GMT  
		Size: 622.3 KB (622327 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:252ae9b8d1005ad56f876ed2a4bf6999e127310cc55154dcf0aae9cb7f40ecad`  
		Last Modified: Tue, 15 Sep 2026 22:28:45 GMT  
		Size: 42.1 KB (42102 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2-php8.4` - linux; arm variant v6

```console
$ docker pull wordpress@sha256:601de267f92893f9ca33b7effd1701e1d4b7e76e2b82959d21dd539ab3ecc3c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.2 MB (69162335 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5ebeeb2dc06baf14d66a7d4c9685832e7c16b6d51cc164115fbdb51acef3fe0b`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 21:12:14 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 15 Sep 2026 21:12:14 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Tue, 15 Sep 2026 21:12:14 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 15 Sep 2026 21:12:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:12:14 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:12:14 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:12:14 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:12:14 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:12:14 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Tue, 15 Sep 2026 21:12:14 GMT
ENV PHP_VERSION=8.4.25
# Tue, 15 Sep 2026 21:12:14 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Tue, 15 Sep 2026 21:12:14 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Tue, 15 Sep 2026 21:23:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Tue, 15 Sep 2026 21:23:37 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:26:37 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:26:37 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:26:38 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:26:39 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:26:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:26:39 GMT
CMD ["php" "-a"]
# Tue, 15 Sep 2026 22:15:32 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Tue, 15 Sep 2026 22:15:32 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Tue, 15 Sep 2026 22:15:32 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 22:16:53 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:16:54 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:16:55 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Tue, 15 Sep 2026 22:16:55 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Tue, 15 Sep 2026 22:16:55 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Tue, 15 Sep 2026 22:16:55 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Tue, 15 Sep 2026 22:16:55 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:16:55 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:16:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:16:55 GMT
USER www-data
# Tue, 15 Sep 2026 22:16:55 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:755d51510b91080babd23300a77973d2bc3f18099553659799417a0d39e46a4c`  
		Last Modified: Tue, 15 Sep 2026 21:15:29 GMT  
		Size: 5.5 MB (5549258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f6beacb99a6d40612134a068f636b03526ebf658b95a0a06390625e6510c0ac`  
		Last Modified: Tue, 15 Sep 2026 21:15:29 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a8363f45842a1ca3b756364c3e8b66d46418e9396df2031b83e3a5ee7d9ae02`  
		Last Modified: Tue, 15 Sep 2026 21:15:29 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbb8adcd7c4a81cc583b9d802494f0b6820d7df063819524f3fd161c4bcfe714`  
		Last Modified: Tue, 15 Sep 2026 21:26:45 GMT  
		Size: 13.8 MB (13782412 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2ce2098283ed951c4b28df1a8bd28b405a2986bda4f87225ff4a912a4f53616`  
		Last Modified: Tue, 15 Sep 2026 21:26:44 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f87b1122c084f856404d84df75330ee0edae05ddd625273d75d58aee6de8e98`  
		Last Modified: Tue, 15 Sep 2026 21:26:45 GMT  
		Size: 18.5 MB (18457844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13d1c99f1ab2e7c3a9cf25696ac391ea3322db0cb232a65102f1f67897add101`  
		Last Modified: Tue, 15 Sep 2026 21:26:44 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0428f0417e0a4f086e1ee1f08e761009633e4936c8e40200896e7a072b800ad`  
		Last Modified: Tue, 15 Sep 2026 21:26:45 GMT  
		Size: 22.2 KB (22171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd9118eee8840195196498d8bfcc8be4ca3032291a2048d8a2bca41b97921fa8`  
		Last Modified: Tue, 15 Sep 2026 21:26:45 GMT  
		Size: 22.2 KB (22183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7bc1171c59211d55af9bb3f633bb4a37144c9a3503a73d7083d94e8b682ed44`  
		Last Modified: Tue, 15 Sep 2026 22:17:01 GMT  
		Size: 11.3 MB (11343019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c16b31b0c9832c8b579599cd82a3d225e8e2f5d1fc5e5fb68934520ab0cceffc`  
		Last Modified: Tue, 15 Sep 2026 22:17:02 GMT  
		Size: 14.9 MB (14892356 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e094067db1664bab829fbcc10e20ced3ac0e5833bdeb6b345f2ba06a318c784d`  
		Last Modified: Tue, 15 Sep 2026 22:17:01 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d49a20e22742642592101bcd45f6debc7a1b949aff822bbc24a978113b6e23e7`  
		Last Modified: Tue, 15 Sep 2026 22:17:01 GMT  
		Size: 1.5 MB (1534702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd4820b3bbb6161434871b86cfde2b0c90a4d38be8423fea09b15ebbf4d8c7c4`  
		Last Modified: Tue, 15 Sep 2026 22:17:02 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2-php8.4` - unknown; unknown

```console
$ docker pull wordpress@sha256:37a3e775a09059359e97759571a3054a15a94fb112f8402df1516ad7c0dd1149
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.0 KB (42019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d93bda8cf903488db8bd81a77ad7f63637f6a995a7d57e55fbe0e808f6cbba5`

```dockerfile
```

-	Layers:
	-	`sha256:f317a3685092dbe42a3d41adf2c3c80e7462c1fe6b22f8a066f909179bbbb6b0`  
		Last Modified: Tue, 15 Sep 2026 22:17:01 GMT  
		Size: 42.0 KB (42019 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2-php8.4` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:fcdded4f941adb74bfd6d83917b89cc8a1af6ed0e7516c10a80a6db5ec88de81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.6 MB (67559128 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e30362d4e17cfcf78e72aaa7f6899e2af06acbe9d7b5de903930cdb2972d74e3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 21:21:57 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 15 Sep 2026 21:21:57 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Tue, 15 Sep 2026 21:21:57 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 15 Sep 2026 21:21:57 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:21:57 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:21:57 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:21:57 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:21:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:21:57 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Tue, 15 Sep 2026 21:21:57 GMT
ENV PHP_VERSION=8.4.25
# Tue, 15 Sep 2026 21:21:57 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Tue, 15 Sep 2026 21:21:57 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Tue, 15 Sep 2026 21:45:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Tue, 15 Sep 2026 21:45:54 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:48:56 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:48:56 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:48:57 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:48:58 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:48:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:48:58 GMT
CMD ["php" "-a"]
# Tue, 15 Sep 2026 22:19:57 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Tue, 15 Sep 2026 22:19:57 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Tue, 15 Sep 2026 22:19:57 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 22:21:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:21:17 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:21:19 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Tue, 15 Sep 2026 22:21:19 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Tue, 15 Sep 2026 22:21:19 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Tue, 15 Sep 2026 22:21:19 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Tue, 15 Sep 2026 22:21:19 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:21:19 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:21:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:21:19 GMT
USER www-data
# Tue, 15 Sep 2026 22:21:19 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:93e5a78f31cb72bb4c577a56fc7474aa0fb88d4aa86af2fedfceaee8d69e27d1`  
		Last Modified: Tue, 15 Sep 2026 21:25:05 GMT  
		Size: 5.2 MB (5200514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6cbf8d81ca62f482d36b23b1ad34cd8ca4e59d58d477add60ad4e877dd9bce3`  
		Last Modified: Tue, 15 Sep 2026 21:25:05 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c70a98bd385ba1e3bb7e7411679ee68d6a2b53aeca454c0338df32b6189582f0`  
		Last Modified: Tue, 15 Sep 2026 21:25:05 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca151d3a9aec0b17f09b622624adef4eb87d5881f84e7af89482355ccb97e1ef`  
		Last Modified: Tue, 15 Sep 2026 21:49:05 GMT  
		Size: 13.8 MB (13782419 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3b5bb6ae9cc6507e62ec2dbfbce6e15759e993b766b11493f780e7445fe96be`  
		Last Modified: Tue, 15 Sep 2026 21:49:04 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47f1e4716c3b8d22b9b5a6c220f19e5204939955e6bb664d45e4012142538c4b`  
		Last Modified: Tue, 15 Sep 2026 21:49:05 GMT  
		Size: 17.4 MB (17390660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b130420f5423fe5c5e31173ba6fa0aa9d71210678e4ae8c7c844eb2a3ffca580`  
		Last Modified: Tue, 15 Sep 2026 21:49:04 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f47877ec3c77a6dd8a834b6bb4d46260e7d53338ea4380d671bcc69e99c0198`  
		Last Modified: Tue, 15 Sep 2026 21:49:06 GMT  
		Size: 22.2 KB (22185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1701f68571166285e66b9d64f08e6096a91edfd81e02464b305f943730eb377d`  
		Last Modified: Tue, 15 Sep 2026 21:49:06 GMT  
		Size: 22.2 KB (22199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c42e2aea3a0804b7fa033d2a41631ea6953e5091fb75ca96a9f1e5640605aa30`  
		Last Modified: Tue, 15 Sep 2026 22:21:27 GMT  
		Size: 11.0 MB (10979834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee5abfd0bbfbdeae88045365eb301e4ec6ea999c1d44dafed14f98db0b451b26`  
		Last Modified: Tue, 15 Sep 2026 22:21:28 GMT  
		Size: 15.4 MB (15361046 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f6b71db1645496fed74dff27da91d1505e209162b211b19d0f0c944a0fcaab6`  
		Last Modified: Tue, 15 Sep 2026 22:21:27 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b6f232bef82b5e63337bd54a034b53cf7d46ced1f63b5ddc8147144114a9b43`  
		Last Modified: Tue, 15 Sep 2026 22:21:27 GMT  
		Size: 1.5 MB (1534710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50280d1fe6e3a44c88948870b05e887a3b4f4f7f937f6d12e7209c9b535b1177`  
		Last Modified: Tue, 15 Sep 2026 22:21:28 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2-php8.4` - unknown; unknown

```console
$ docker pull wordpress@sha256:4143ecfe6620a0216793ebea3eb39a681b288f06c896f66b8d012d0f511b6b30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **662.7 KB (662703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adc6510e54fb45971f034e9deacd9146f78c850c71b75237b3e9c794ebc66803`

```dockerfile
```

-	Layers:
	-	`sha256:e7ecf88c59183595cf8d30b455c9c6951be46021711b465ca60fd208f0d0d0ae`  
		Last Modified: Tue, 15 Sep 2026 22:21:27 GMT  
		Size: 620.5 KB (620469 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:822121d359d6cf2ee433943e44da4f6460d1065c5606ddf060164bda8bb4b65c`  
		Last Modified: Tue, 15 Sep 2026 22:21:27 GMT  
		Size: 42.2 KB (42234 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2-php8.4` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:c4af2be89e4ed4493448d00a42df934462114e9572f138b5f7c72db0cfe93f2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.6 MB (74562608 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b5c7d078b55b806e19a37b7046a3ddd44155024e1797ac5a2e031e096b6cbb8`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 21:12:14 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 15 Sep 2026 21:12:14 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Tue, 15 Sep 2026 21:12:14 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 15 Sep 2026 21:12:14 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:12:14 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:12:14 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:12:14 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:12:14 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:12:14 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Tue, 15 Sep 2026 21:12:14 GMT
ENV PHP_VERSION=8.4.25
# Tue, 15 Sep 2026 21:12:14 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Tue, 15 Sep 2026 21:12:14 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Tue, 15 Sep 2026 21:26:27 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Tue, 15 Sep 2026 21:26:27 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:29:42 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:29:42 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:29:42 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:29:43 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:29:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:29:43 GMT
CMD ["php" "-a"]
# Tue, 15 Sep 2026 22:14:38 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Tue, 15 Sep 2026 22:14:38 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Tue, 15 Sep 2026 22:14:38 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 22:15:32 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:15:32 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:15:34 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Tue, 15 Sep 2026 22:15:34 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Tue, 15 Sep 2026 22:15:34 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Tue, 15 Sep 2026 22:15:34 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Tue, 15 Sep 2026 22:15:34 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:15:34 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:15:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:15:34 GMT
USER www-data
# Tue, 15 Sep 2026 22:15:34 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37261b7eb96477411d47375949b01b43a53ffdfbb2362e60c97afb966a54e574`  
		Last Modified: Tue, 15 Sep 2026 21:15:35 GMT  
		Size: 6.3 MB (6270103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81366218b139ce090c390d0d87583a6c07de3670e42060bc90ba6483ea2a8aea`  
		Last Modified: Tue, 15 Sep 2026 21:15:34 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:709b0fb578126aa3e5b35eaaec251d30c9f86c1785383ac7c57dd4843b63a3a6`  
		Last Modified: Tue, 15 Sep 2026 21:15:34 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f96d769215b8d43b9d80e37eb78c2cf0b74f9752a68afc5c5ca9fd2e3632b3f`  
		Last Modified: Tue, 15 Sep 2026 21:29:51 GMT  
		Size: 13.8 MB (13782403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae4f6a08ac1be2d29a13cb105b7c23bd732c89d2ef9ac0d4bd32507ec1667cc`  
		Last Modified: Tue, 15 Sep 2026 21:29:50 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bac74aef381f9e4964075b150fa34889fc801d1aae72873c958903e37e7dfcff`  
		Last Modified: Tue, 15 Sep 2026 21:29:51 GMT  
		Size: 19.8 MB (19799089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0102e476c562b5cc483f3b84753a493cedbf354347a8c4bc2a918c4f06322d0a`  
		Last Modified: Tue, 15 Sep 2026 21:29:50 GMT  
		Size: 2.4 KB (2444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc53ea1727b121fdbaff470fea5566eb4bfca62962119e9b049b7430d5e684a5`  
		Last Modified: Tue, 15 Sep 2026 21:29:51 GMT  
		Size: 22.2 KB (22210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29b4b88289691bfbde8e2e5194a2c731a2f9a30fbc9ab7ef21d55c48699fb298`  
		Last Modified: Tue, 15 Sep 2026 21:29:51 GMT  
		Size: 22.2 KB (22229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfa55b8281509515d4cfcb1dceebc1aefbf5c4c4c8e9416b56bcf4e215ea2c95`  
		Last Modified: Tue, 15 Sep 2026 22:15:43 GMT  
		Size: 11.6 MB (11641936 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2a3a48920e774a8c7026676152be345d0b20a7980fcd1938b9642a72e2190db`  
		Last Modified: Tue, 15 Sep 2026 22:15:43 GMT  
		Size: 17.3 MB (17302001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36365092ff02f5ec669efa137ec79656f4560efd7a196561728dd4997e480f77`  
		Last Modified: Tue, 15 Sep 2026 22:15:43 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b27a7797ae585a8605eb7d352b18a1d940059e90f653ac520ac9610d42ec70`  
		Last Modified: Tue, 15 Sep 2026 22:15:43 GMT  
		Size: 1.5 MB (1534659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8971be3a28c997ead89cffd5a1aa066317765c804e038a39fcb38c4622e992f`  
		Last Modified: Tue, 15 Sep 2026 22:15:44 GMT  
		Size: 404.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2-php8.4` - unknown; unknown

```console
$ docker pull wordpress@sha256:8aca5293091d5611123edafa9d8eca2d1e64b81d9f996c8825df165542b7208d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **662.8 KB (662755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0b55b56f82e4cb53bd583bd2964c649f6efaaa03c6aec04b38056f88eec1c7f0`

```dockerfile
```

-	Layers:
	-	`sha256:f61a743822b89fa21aa65139ef9bb7a7776607af9faac79b408f243e34d014e3`  
		Last Modified: Tue, 15 Sep 2026 22:15:42 GMT  
		Size: 620.5 KB (620489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:68a019f23014c4a7a8a8f93db74bb55885c7d4a1253891032002d6a98e553746`  
		Last Modified: Tue, 15 Sep 2026 22:15:42 GMT  
		Size: 42.3 KB (42266 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2-php8.4` - linux; 386

```console
$ docker pull wordpress@sha256:f067fcb1e124be3aac2042c0cb0697d41e1b7d986d34c85b43bd3491b71cda61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.8 MB (74837819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7b04f46e43b97007968fc06330975e4600e4eca06365bf4413e1a1a79a0b9ea`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 21:12:18 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 15 Sep 2026 21:12:18 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Tue, 15 Sep 2026 21:12:19 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 15 Sep 2026 21:12:19 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:12:19 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:12:19 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:12:19 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:12:19 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:12:19 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Tue, 15 Sep 2026 21:12:19 GMT
ENV PHP_VERSION=8.4.25
# Tue, 15 Sep 2026 21:12:19 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Tue, 15 Sep 2026 21:12:19 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Tue, 15 Sep 2026 21:25:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Tue, 15 Sep 2026 21:25:42 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:28:44 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:28:44 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:28:44 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:28:45 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:28:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:28:45 GMT
CMD ["php" "-a"]
# Tue, 15 Sep 2026 22:14:56 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Tue, 15 Sep 2026 22:14:56 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Tue, 15 Sep 2026 22:14:56 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 22:15:45 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:15:45 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:15:47 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Tue, 15 Sep 2026 22:15:47 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Tue, 15 Sep 2026 22:15:47 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Tue, 15 Sep 2026 22:15:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Tue, 15 Sep 2026 22:15:47 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:15:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:15:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:15:47 GMT
USER www-data
# Tue, 15 Sep 2026 22:15:47 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae1808651f20aeddd5d5767e7fe47707539f0a4cf6127f8484f8b43d098ce979`  
		Last Modified: Tue, 15 Sep 2026 21:15:29 GMT  
		Size: 5.8 MB (5807642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd4adab76782283844f175d01907decfe1895e9c54d2987ed1017a2ec032a83f`  
		Last Modified: Tue, 15 Sep 2026 21:15:28 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c614ef1ba212b38856abeac32f266735aaeb3480e0247a462e21dd7a9ff63b`  
		Last Modified: Tue, 15 Sep 2026 21:15:28 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edc608b7ea8ab5127a02d3fdd7ce6ec961f2dc9727c21f9e170359f9602e1d81`  
		Last Modified: Tue, 15 Sep 2026 21:28:52 GMT  
		Size: 13.8 MB (13782388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b398f1e06a24dcd6663d79da591f6a96c957c52b26f489e0a4fd851267d04af`  
		Last Modified: Tue, 15 Sep 2026 21:28:52 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecba92e8fe0aabf50e990eb03f56d234f159f2f30b2fcc3c21b2418816534fdd`  
		Last Modified: Tue, 15 Sep 2026 21:28:52 GMT  
		Size: 20.8 MB (20847396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a30637c569b7b63b339da94f45bbd2ed5dd60bbe70036daf39ce8c9eae94f6b`  
		Last Modified: Tue, 15 Sep 2026 21:28:52 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27dfd96f66c9420120d9a502309267ed73198d61215318eeedcb375a83931b45`  
		Last Modified: Tue, 15 Sep 2026 21:28:53 GMT  
		Size: 22.4 KB (22389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e89c232cdd5b0ede4ec4a5cfd61bce856294eb481f07df075191196fc8c1565`  
		Last Modified: Tue, 15 Sep 2026 21:28:53 GMT  
		Size: 22.4 KB (22414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dafdcf75e95bd3626d2e1deede123e46562d5e89ec65a68eb0a2c0b8b347d1b4`  
		Last Modified: Tue, 15 Sep 2026 22:15:56 GMT  
		Size: 11.8 MB (11843378 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b93ccb21842d678e90cd621c64c919948d9cd5786b10bbf49d265f2047b2f2ec`  
		Last Modified: Tue, 15 Sep 2026 22:15:56 GMT  
		Size: 17.3 MB (17302485 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32a7078d4dc6e683e4104b59a62ecb05adcace5bd6c047998ac52d6a3dd0b768`  
		Last Modified: Tue, 15 Sep 2026 22:15:55 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b2c3df2d5394681149c47811a9af59d069dd6f9dc248b15aad92f8ad4463d60`  
		Last Modified: Tue, 15 Sep 2026 22:15:55 GMT  
		Size: 1.5 MB (1534631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5994c2651e076a78018e6117e0282f89d43eb0df519ebbdc6aea4f6f0cd4b722`  
		Last Modified: Tue, 15 Sep 2026 22:15:56 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2-php8.4` - unknown; unknown

```console
$ docker pull wordpress@sha256:d2d6a414a1680a0f70eab62eed7f8e00390ff3f7a603f67d46254fd32f661962
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **664.4 KB (664364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0996f64d83011becd3fd7a30adffe06db1c4fc5c13523362f21d9ea02dc10a66`

```dockerfile
```

-	Layers:
	-	`sha256:2bc2162cc0ef637d36990c64909c35e43ec83ef90753b4acf08520581ec481aa`  
		Last Modified: Tue, 15 Sep 2026 22:15:55 GMT  
		Size: 622.3 KB (622302 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21756251aa7ead8a34e6b6f001d8a294cb505fdb35cac302b587d0be194d6c09`  
		Last Modified: Tue, 15 Sep 2026 22:15:55 GMT  
		Size: 42.1 KB (42062 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2-php8.4` - linux; ppc64le

```console
$ docker pull wordpress@sha256:5734ad9987f0c3d774afe5300c773ca332fc4e0b0f66ecf8ac7ce9302efbf513
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.1 MB (77107944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:137ee2ef0232807b2ffe71958d73dd06a218c7ec2dbbb8a97a135394eb6680a6`
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
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 27 Aug 2026 20:31:41 GMT
ENV PHP_VERSION=8.4.25
# Thu, 27 Aug 2026 20:31:41 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 27 Aug 2026 20:31:41 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 27 Aug 2026 21:03:38 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 27 Aug 2026 21:03:39 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 21:07:31 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 27 Aug 2026 21:07:32 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 21:07:33 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 27 Aug 2026 21:07:35 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 27 Aug 2026 21:07:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 27 Aug 2026 21:07:35 GMT
CMD ["php" "-a"]
# Thu, 27 Aug 2026 21:34:48 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Thu, 27 Aug 2026 21:34:49 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Thu, 27 Aug 2026 21:34:50 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 21:36:50 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 27 Aug 2026 21:36:52 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 27 Aug 2026 21:36:57 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 27 Aug 2026 21:36:57 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Thu, 27 Aug 2026 21:36:57 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Thu, 27 Aug 2026 21:36:57 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Thu, 27 Aug 2026 21:36:57 GMT
VOLUME [/var/www/html]
# Thu, 27 Aug 2026 21:36:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 21:36:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 21:36:58 GMT
USER www-data
# Thu, 27 Aug 2026 21:36:58 GMT
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
	-	`sha256:a01929bea70205d5ce2afcdb8606d9e4a94dbbdc39fc6a89f73f563c224ac149`  
		Last Modified: Thu, 27 Aug 2026 21:07:49 GMT  
		Size: 13.8 MB (13782404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71ae7f85ad3dbf4b1fe4e60e2391f0e695dc2431ade76296b269a311e16d3aff`  
		Last Modified: Thu, 27 Aug 2026 21:07:49 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09e0f018669ad5234b7a2aa6e54a0befe4ae3fc6e603c768d67d73d5e61f6a01`  
		Last Modified: Thu, 27 Aug 2026 21:07:50 GMT  
		Size: 21.4 MB (21448109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbbffa9222d8d09c6a70bbd3d2492f69ad01185d32511691a8207f3d02613c7e`  
		Last Modified: Thu, 27 Aug 2026 21:07:49 GMT  
		Size: 2.4 KB (2445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:818e0f779c86b6bcbf39e96706dfa271b2c220943500ff3711243f2f30386d13`  
		Last Modified: Thu, 27 Aug 2026 21:07:50 GMT  
		Size: 22.2 KB (22222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03e52ab20c4dfb77c272e59d66059c12c5c2b910a0e124f94c55f7446f257839`  
		Last Modified: Thu, 27 Aug 2026 21:07:50 GMT  
		Size: 22.2 KB (22245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb4872095c2c2849a9ac5d66f1c95df19187212ec5386c8d1f358e732ef4527d`  
		Last Modified: Thu, 27 Aug 2026 21:37:21 GMT  
		Size: 12.4 MB (12378661 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81859947f6a757cfa7eaee5047c0f01eb3ae954354670a1102999b5fa53c6719`  
		Last Modified: Thu, 27 Aug 2026 21:37:21 GMT  
		Size: 18.1 MB (18105015 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5795fe17879af021b2846a20e070b30aa9dfbdfcbd7b2682042dd82fd2fc827`  
		Last Modified: Thu, 27 Aug 2026 21:37:20 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a15f40935c7c1bd7296b5befef92218f900151d4ff938124bf74385e1c50b5d`  
		Last Modified: Thu, 27 Aug 2026 21:37:20 GMT  
		Size: 1.5 MB (1534626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05004224c911d567beadb008a1156e936988495bb7ba1dae7ab0d1a3862ecab6`  
		Last Modified: Thu, 27 Aug 2026 21:37:21 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2-php8.4` - unknown; unknown

```console
$ docker pull wordpress@sha256:81b6f738b792b6e530cee2f91e4a4d4ca59494a9990852e2ba12d0668898e660
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **662.6 KB (662620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3325aadb38427f5bc6584b1d2431fb5f5873c60f0b51d34fbf253612b9efe375`

```dockerfile
```

-	Layers:
	-	`sha256:16cd444e50a4b8c26ca1e3bedd7b736fc784e40939ee1ecab6ccb9490662339f`  
		Last Modified: Thu, 27 Aug 2026 21:37:20 GMT  
		Size: 620.5 KB (620466 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8d6853c1befbc8d08e6b19a8e4df73a680b21b49634e31b0deafd4fe6d60e758`  
		Last Modified: Thu, 27 Aug 2026 21:37:20 GMT  
		Size: 42.2 KB (42154 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2-php8.4` - linux; riscv64

```console
$ docker pull wordpress@sha256:7796373cee373da2ea8abc790096b76407bc92c5b5307e51023a20ab694c3177
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (73048302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f8be9d0059e426feebc7164b190ed938cfb89a9251120e20e7f81f5ab917ab14`
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
ENV PHP_VERSION=8.4.25
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Fri, 28 Aug 2026 17:25:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Fri, 28 Aug 2026 17:25:07 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 28 Aug 2026 18:22:38 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 28 Aug 2026 18:22:38 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 28 Aug 2026 18:22:42 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 28 Aug 2026 18:22:47 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 28 Aug 2026 18:22:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 28 Aug 2026 18:22:47 GMT
CMD ["php" "-a"]
# Sun, 30 Aug 2026 11:44:27 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Sun, 30 Aug 2026 11:44:27 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Sun, 30 Aug 2026 11:44:27 GMT
WORKDIR /var/www/html
# Sun, 30 Aug 2026 12:00:30 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Sun, 30 Aug 2026 12:00:30 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Sun, 30 Aug 2026 12:00:39 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Sun, 30 Aug 2026 12:00:39 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Sun, 30 Aug 2026 12:00:39 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Sun, 30 Aug 2026 12:00:39 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Sun, 30 Aug 2026 12:00:39 GMT
VOLUME [/var/www/html]
# Sun, 30 Aug 2026 12:00:39 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sun, 30 Aug 2026 12:00:39 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 30 Aug 2026 12:00:39 GMT
USER www-data
# Sun, 30 Aug 2026 12:00:39 GMT
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
	-	`sha256:35e7b3ff8b579d6148c0c6a3a3f532650eb443aaafcec254028ebb48d2492ccc`  
		Last Modified: Fri, 28 Aug 2026 18:23:54 GMT  
		Size: 13.8 MB (13782401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08cb55bdef5ffab76fd96949b2dc9af0cc8ec36e249524c3cd4d01bdf0d2a563`  
		Last Modified: Fri, 28 Aug 2026 18:23:50 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c66e0295bab19ac2e1a11c1bafe45fa6493270fe417da7ce46cf07134d42911`  
		Last Modified: Fri, 28 Aug 2026 18:23:56 GMT  
		Size: 22.9 MB (22901877 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4004d79dbcb6177af23dee26a1b12419a4021e949682d51994547ec72e449bd4`  
		Last Modified: Fri, 28 Aug 2026 18:23:50 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e8836f254b817a422eaab7465967c9fed5906e6a750097c3293cc5ebdf24913`  
		Last Modified: Fri, 28 Aug 2026 18:23:52 GMT  
		Size: 22.3 KB (22270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d4c9a134ff3d3611ca41f82bb6674eb5bc960d3ac3013d8606fe834a449d1bb`  
		Last Modified: Fri, 28 Aug 2026 18:23:52 GMT  
		Size: 22.3 KB (22289 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad1f8a2b062505153acb336eb85d2d4a349b47dcb3ee936f74cf106e42b6ad47`  
		Last Modified: Sun, 30 Aug 2026 12:02:07 GMT  
		Size: 12.1 MB (12135338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc3813ec96650824d5040ce3e2fb1ab8ab4f230736a3f36be84136c488a03fca`  
		Last Modified: Sun, 30 Aug 2026 12:02:08 GMT  
		Size: 15.5 MB (15465449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:564e5b76a8e41c648b8db7b6c4cdca21973b2ca6354c0d058e32f20d8b2577d4`  
		Last Modified: Sun, 30 Aug 2026 12:02:04 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d443128f66d216e23e9d181c7e74c2d7a52f45ec0f9f3c7c6a41c911ddc5cce3`  
		Last Modified: Sun, 30 Aug 2026 12:02:05 GMT  
		Size: 1.5 MB (1534664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d419d4174d8e239dbab11f6105ada1b844a4027d88dabb3a8eeece04e2d15ff`  
		Last Modified: Sun, 30 Aug 2026 12:02:06 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2-php8.4` - unknown; unknown

```console
$ docker pull wordpress@sha256:0e026ad87470db4f32a680b21bc67aaf0025de0d3524601436a00f82761cf1e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **662.6 KB (662616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e4fdb1943e3566c553e04c346d368d0512c8d67e0a36b55ea60038a790b09cc0`

```dockerfile
```

-	Layers:
	-	`sha256:25e74cbdfaa1aade67f8410f21493c99f243223ec724f00c46a2d3a422f5bc58`  
		Last Modified: Sun, 30 Aug 2026 12:02:04 GMT  
		Size: 620.5 KB (620462 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:de237259468c4b2dbe7f75b7004bb402d0edb206b8c38cee0f60f2ca930d058c`  
		Last Modified: Sun, 30 Aug 2026 12:02:04 GMT  
		Size: 42.2 KB (42154 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2-php8.4` - linux; s390x

```console
$ docker pull wordpress@sha256:f928dd8d4c87c4fed0957c864de5ca6d9aff6a82390e2f482ea62b21a29e59f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.8 MB (75832178 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6bd04e7ba873b7b949154701c2981275281c47c0e4e2552b376e3089b7819698`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 20:30:10 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 27 Aug 2026 20:30:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 27 Aug 2026 20:30:13 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 27 Aug 2026 20:30:13 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 27 Aug 2026 20:30:15 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 27 Aug 2026 20:30:15 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:30:15 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:30:15 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 27 Aug 2026 20:30:15 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 27 Aug 2026 20:30:15 GMT
ENV PHP_VERSION=8.4.25
# Thu, 27 Aug 2026 20:30:15 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 27 Aug 2026 20:30:15 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 27 Aug 2026 21:01:40 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 27 Aug 2026 21:01:43 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 21:11:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 27 Aug 2026 21:11:03 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 21:11:07 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 27 Aug 2026 21:11:11 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 27 Aug 2026 21:11:11 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 27 Aug 2026 21:11:11 GMT
CMD ["php" "-a"]
# Thu, 27 Aug 2026 22:09:39 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Thu, 27 Aug 2026 22:09:39 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Thu, 27 Aug 2026 22:09:39 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 22:10:44 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 27 Aug 2026 22:10:44 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 27 Aug 2026 22:10:47 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Thu, 27 Aug 2026 22:10:47 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Thu, 27 Aug 2026 22:10:47 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Thu, 27 Aug 2026 22:10:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Thu, 27 Aug 2026 22:10:47 GMT
VOLUME [/var/www/html]
# Thu, 27 Aug 2026 22:10:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 22:10:47 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 27 Aug 2026 22:10:47 GMT
USER www-data
# Thu, 27 Aug 2026 22:10:47 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c1de7c1cc2e69e0018b4ab464dac9225c0d21b592ede93c030c67b9736a221f`  
		Last Modified: Thu, 27 Aug 2026 20:42:16 GMT  
		Size: 5.9 MB (5915820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb7a1ea3c4fa18357924ed1b01c3b8dd2fc258266e1fb761019a1de2eede5625`  
		Last Modified: Thu, 27 Aug 2026 20:42:15 GMT  
		Size: 936.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37cfbfe2b61eb302e789355ae7132d8f038815e6d99a575c19c0235dd50bc3f3`  
		Last Modified: Thu, 27 Aug 2026 20:42:15 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9194ad6131f4e9f020ecfe3cd9523c3a7d92e84f6d31fe935f6d68d149fb014`  
		Last Modified: Thu, 27 Aug 2026 21:12:12 GMT  
		Size: 13.8 MB (13782392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea3df17a436ee760b73a07a941b19b65db4f412218d5fe0ea140d1eba4dd65fa`  
		Last Modified: Thu, 27 Aug 2026 21:12:02 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd4196d1b4e271b78b974653fa3497c6e1e4bf89889d183072d709568694685b`  
		Last Modified: Thu, 27 Aug 2026 21:12:13 GMT  
		Size: 20.3 MB (20266516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:665fda9a563d6ef0d712f04b5798a7548f5a1b0130f25c03888ad1e137667802`  
		Last Modified: Thu, 27 Aug 2026 21:12:04 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cab04318beae4a54d518d4202cbd170b769e44e028ab7ae0bd452fcb77726f6`  
		Last Modified: Thu, 27 Aug 2026 21:12:12 GMT  
		Size: 22.2 KB (22188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbf7aa8f6875e0d03c623079e99110a5f9c6274cb15e5f75b26032bd18ec256c`  
		Last Modified: Thu, 27 Aug 2026 21:12:12 GMT  
		Size: 22.2 KB (22208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d71569f80c4c994dbef64bff8772c5582b582b0a4d8d553067f0af53437b3c21`  
		Last Modified: Thu, 27 Aug 2026 22:11:01 GMT  
		Size: 13.1 MB (13127335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eda4c4158d784fcde28bacad7e4c9f7cb9a02d2b9e50192e2917a02dad2b1bc`  
		Last Modified: Thu, 27 Aug 2026 22:11:01 GMT  
		Size: 17.4 MB (17446782 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:031fc2635e20ea29bd97a123ae469bf45ad401c2394b9df14f2440796c9efb19`  
		Last Modified: Thu, 27 Aug 2026 22:11:00 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c7526a66ccf88d8991303393c114471ab3c610580627d3e11807e1c4197769e`  
		Last Modified: Thu, 27 Aug 2026 22:11:00 GMT  
		Size: 1.5 MB (1534655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86a32fd844ae57d36659b6ae27df206ee998dee1e769db08f463b940b0029ea7`  
		Last Modified: Thu, 27 Aug 2026 22:11:01 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2-php8.4` - unknown; unknown

```console
$ docker pull wordpress@sha256:0cb87f370384a51fd37cf9d208e92766638d0a1dd7b796813931cc6b33723f5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **662.5 KB (662534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cc81feb2fee54664412ed4ac161e567237b3beb26aca516a4f44210d97f6019d`

```dockerfile
```

-	Layers:
	-	`sha256:ed3f9be2ce287e40f5b6c52565c856630cf2ecbf197d6ce4ab55c415418f0c44`  
		Last Modified: Thu, 27 Aug 2026 22:11:00 GMT  
		Size: 620.4 KB (620432 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db6275b4a15002fe9a84ebf2a2dafba076bd0f519ef6ae9703b21bfb5cd2e48d`  
		Last Modified: Thu, 27 Aug 2026 22:11:00 GMT  
		Size: 42.1 KB (42102 bytes)  
		MIME: application/vnd.in-toto+json
