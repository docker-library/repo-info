## `wordpress:cli-2.12.0-php8.2`

```console
$ docker pull wordpress@sha256:dc9331f2f6deac8904fc6ee9462f2fbfee9b580cf2d18873edc6b609c33924c9
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

### `wordpress:cli-2.12.0-php8.2` - linux; amd64

```console
$ docker pull wordpress@sha256:7334d4489c386f654ae5c12b504c0ddde8159cbc7f2daedfcadda52797ea6615
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.7 MB (70716180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0021d135bed53d6fb9ef39095835312d1f4c70269c03395deb188eea3cf2652e`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 21:16:49 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 15 Sep 2026 21:16:49 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Tue, 15 Sep 2026 21:16:49 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 15 Sep 2026 21:16:49 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:16:49 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:16:49 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:16:49 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:16:49 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:16:49 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Tue, 15 Sep 2026 21:16:49 GMT
ENV PHP_VERSION=8.2.33
# Tue, 15 Sep 2026 21:16:49 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Tue, 15 Sep 2026 21:16:49 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Tue, 15 Sep 2026 21:33:21 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Tue, 15 Sep 2026 21:33:21 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:36:07 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:36:07 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:36:08 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:36:09 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:36:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:36:09 GMT
CMD ["php" "-a"]
# Tue, 15 Sep 2026 22:27:48 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Tue, 15 Sep 2026 22:27:48 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Tue, 15 Sep 2026 22:27:48 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 22:28:28 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:28:28 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:28:29 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Tue, 15 Sep 2026 22:28:29 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Tue, 15 Sep 2026 22:28:29 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Tue, 15 Sep 2026 22:28:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Tue, 15 Sep 2026 22:28:29 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:28:29 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:28:29 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:28:29 GMT
USER www-data
# Tue, 15 Sep 2026 22:28:29 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1d5554a5849ea38b57a316b08a1f87d3a169f426f748e5759a9be49345e49ca`  
		Last Modified: Tue, 15 Sep 2026 21:20:22 GMT  
		Size: 6.0 MB (5958273 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ccb9f0b1ab6bcb7c52c99bb1bfd7f457e977d4fc56e433d359cff0162095dfb`  
		Last Modified: Tue, 15 Sep 2026 21:20:22 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e734ec2816a60f0307dd6d51c0c232b522753b3a70c5e11e9eacd495d030bbe0`  
		Last Modified: Tue, 15 Sep 2026 21:20:22 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f60bf6d0b8aaea90e54c157aa5457f9bb8234622b00e26b985dff4edf064bfb0`  
		Last Modified: Tue, 15 Sep 2026 21:36:16 GMT  
		Size: 12.2 MB (12189435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3ec18c6c37082a4de8a5c6804031064711670e89de0972376cff5dba0a8a611`  
		Last Modified: Tue, 15 Sep 2026 21:36:15 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61d4cd021dec72433474eab15c8e9952b50d2d8fc4ea63a77d5ff89d1585cd5d`  
		Last Modified: Tue, 15 Sep 2026 21:36:16 GMT  
		Size: 17.3 MB (17253231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35ab74a04d9293afb4b739da6f49fcb4f24a4a9b7d5726df6aacb6ce387f43c8`  
		Last Modified: Tue, 15 Sep 2026 21:36:15 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6364c1f08d2c024b12aecc974d6ef0e7e5821411ffb6c4d82b83992b736d313`  
		Last Modified: Tue, 15 Sep 2026 21:36:16 GMT  
		Size: 22.4 KB (22390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0c5f6644f3638c00eed071e8bd367176a5a180dcc5ce0ae7fed4f61d5afa1c0`  
		Last Modified: Tue, 15 Sep 2026 21:36:16 GMT  
		Size: 22.4 KB (22395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b64f2e2708a0478f1fe1566f34cb0bff3bce27438c9007b3282172d9e949e32d`  
		Last Modified: Tue, 15 Sep 2026 22:28:37 GMT  
		Size: 11.7 MB (11709704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95879dd5098f60b587f31a299b985f7c8221667a74833693c0cf5edffc682a8a`  
		Last Modified: Tue, 15 Sep 2026 22:28:37 GMT  
		Size: 18.2 MB (18174720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fb5cde80d28def56de242b61dd584722a6e82909678dfa2123ac3867330fe2b`  
		Last Modified: Tue, 15 Sep 2026 22:28:37 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37a9a2dad5dc1ae6f6438cee6e48b9920f9c6742fd27d4e4572450351883c9f1`  
		Last Modified: Tue, 15 Sep 2026 22:28:37 GMT  
		Size: 1.5 MB (1534694 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b1c5c4ff7d52cffe4192e297c7d25348a2bbe95130b7707a48bc26110f84faa`  
		Last Modified: Tue, 15 Sep 2026 22:28:38 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2.12.0-php8.2` - unknown; unknown

```console
$ docker pull wordpress@sha256:4bb0d448f3f46894de2ad7f096cd07401069e1fa20f44046df251256d8dce5cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **664.4 KB (664429 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:032ffb3b7ac04a2f0d7f821699d17fb4a952346ad9c93a7f0d1b780dcf74072a`

```dockerfile
```

-	Layers:
	-	`sha256:a9e6ab52dc57eba80614a0ee97e8b662588d677a58d94236d32c7086b06d65be`  
		Last Modified: Tue, 15 Sep 2026 22:28:37 GMT  
		Size: 622.3 KB (622327 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:992af05bf57b1e0fcb2f52645492b1d83c901561e51fd4330514bfbc223be936`  
		Last Modified: Tue, 15 Sep 2026 22:28:37 GMT  
		Size: 42.1 KB (42102 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2.12.0-php8.2` - linux; arm variant v6

```console
$ docker pull wordpress@sha256:bc0ed32993fe7f9e18f6252273f966531065e0e5caddb97bebb78bdff61cce79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.7 MB (64722399 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e94be7ba295f22c3d8fc8a4a97f839dfacb6ff541074371eb4c11030bc870263`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 21:25:29 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 15 Sep 2026 21:25:29 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Tue, 15 Sep 2026 21:25:29 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 15 Sep 2026 21:25:29 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:25:29 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:25:29 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:25:29 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:25:29 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:25:29 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Tue, 15 Sep 2026 21:25:29 GMT
ENV PHP_VERSION=8.2.33
# Tue, 15 Sep 2026 21:25:29 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Tue, 15 Sep 2026 21:25:29 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Tue, 15 Sep 2026 21:36:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Tue, 15 Sep 2026 21:36:05 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:38:45 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:38:45 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:38:45 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:38:46 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:38:46 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:38:46 GMT
CMD ["php" "-a"]
# Tue, 15 Sep 2026 22:14:33 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Tue, 15 Sep 2026 22:14:33 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Tue, 15 Sep 2026 22:14:33 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 22:15:40 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:15:40 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:15:42 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Tue, 15 Sep 2026 22:15:42 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Tue, 15 Sep 2026 22:15:42 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Tue, 15 Sep 2026 22:15:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Tue, 15 Sep 2026 22:15:42 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:15:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:15:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:15:42 GMT
USER www-data
# Tue, 15 Sep 2026 22:15:42 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1fd6b3f9e2e64e262a6c83d756a2e0fa488a16d5b154023d825f5f49095efb2`  
		Last Modified: Tue, 15 Sep 2026 21:28:40 GMT  
		Size: 5.5 MB (5549221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1066fe401c4564e3a1e8ef53de591300c1ab0f3896093d774adead04194892c`  
		Last Modified: Tue, 15 Sep 2026 21:28:39 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99f1097790bb2aeedfd196a54557fa62be0dc485a2f469201977179e46aa0163`  
		Last Modified: Tue, 15 Sep 2026 21:28:39 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d33157098351626ffae84db16db0822d85644df6d2f7679f00ace03bea165185`  
		Last Modified: Tue, 15 Sep 2026 21:38:52 GMT  
		Size: 12.2 MB (12189443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89f7796dfbca411a7ee53e1105d5fc3de0da48d6e7d3d8f7b078602777f14e6f`  
		Last Modified: Tue, 15 Sep 2026 21:38:51 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa2521fc1e0359e1c7b24bf341b6c5e692886e01da3d618c4640e437a4b14553`  
		Last Modified: Tue, 15 Sep 2026 21:38:52 GMT  
		Size: 15.7 MB (15666164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:453bdd3f93a32bfb34c23cfa5f2a2ed701c9a02c6e1d1c937cc20ba7dee77531`  
		Last Modified: Tue, 15 Sep 2026 21:38:51 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69627071015e1f0add77680f88cde9874c75b9f2a74b0a82e164ebc81f152d04`  
		Last Modified: Tue, 15 Sep 2026 21:38:53 GMT  
		Size: 22.2 KB (22170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f8db1fd6cbb37e58b53642833618e8fd1268028c49e45905a92101776380868`  
		Last Modified: Tue, 15 Sep 2026 21:38:53 GMT  
		Size: 22.2 KB (22193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3a6c30c6ffcde37aa0bb2777597058463c4553f5640d2cd389eff71b0a51707`  
		Last Modified: Tue, 15 Sep 2026 22:15:48 GMT  
		Size: 11.3 MB (11343145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73ac46ca1b6206679c455df283764bf99fb88d980eae954cd10c7428299cb186`  
		Last Modified: Tue, 15 Sep 2026 22:15:48 GMT  
		Size: 14.8 MB (14836956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efaf37d6203d05ff7b0aac8b3ec7917bfccec9b8b1b111283ce8b26730cdfa16`  
		Last Modified: Tue, 15 Sep 2026 22:15:47 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40a8bc42042e8f28f775c382eb2c7223c28a8c27dda26dc1b705f379ac8faf1a`  
		Last Modified: Tue, 15 Sep 2026 22:15:48 GMT  
		Size: 1.5 MB (1534711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f47a91b2f926ebbf24ec589b5e3a696d8166face7ced96a57b914fdc16a7bbe3`  
		Last Modified: Tue, 15 Sep 2026 22:15:48 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2.12.0-php8.2` - unknown; unknown

```console
$ docker pull wordpress@sha256:0b5186811e1b96f934cc7f9c33bbc0dbc93bea9d84fb95e23eb4607ab09a55bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **42.0 KB (42018 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b703efcb980088273bdde02c5a269e9b947cf0b00524185b794f4345a554bd44`

```dockerfile
```

-	Layers:
	-	`sha256:fa63f2d3b96b2e92b93aead0419fa04b4266a54ad91008043b7366901361307f`  
		Last Modified: Tue, 15 Sep 2026 22:15:47 GMT  
		Size: 42.0 KB (42018 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2.12.0-php8.2` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:a352cd0935109ed8ecc64502d862db211d1c26c9e551895c964fab01f1ba1aa6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63256498 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f18902915f294d340b11d6fe455d32ba05ea77fd8e71134d68f648d3560207f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 21:34:26 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 15 Sep 2026 21:34:26 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Tue, 15 Sep 2026 21:34:26 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 15 Sep 2026 21:34:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:34:27 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:34:27 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:34:27 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:34:27 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:34:27 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Tue, 15 Sep 2026 21:34:27 GMT
ENV PHP_VERSION=8.2.33
# Tue, 15 Sep 2026 21:34:27 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Tue, 15 Sep 2026 21:34:27 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Tue, 15 Sep 2026 21:54:16 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Tue, 15 Sep 2026 21:54:16 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:56:55 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:56:55 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:56:55 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:56:56 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:56:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:56:56 GMT
CMD ["php" "-a"]
# Tue, 15 Sep 2026 22:18:33 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Tue, 15 Sep 2026 22:18:33 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Tue, 15 Sep 2026 22:18:33 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 22:19:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:19:42 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:19:44 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Tue, 15 Sep 2026 22:19:44 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Tue, 15 Sep 2026 22:19:44 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Tue, 15 Sep 2026 22:19:44 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Tue, 15 Sep 2026 22:19:44 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:19:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:19:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:19:44 GMT
USER www-data
# Tue, 15 Sep 2026 22:19:44 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59add7f8e3a74957a79d1939de5a1f1f7cb17fa849da0930f54cac3ddb83385c`  
		Last Modified: Tue, 15 Sep 2026 21:37:49 GMT  
		Size: 5.2 MB (5200554 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e65bfdac110848f8c82ef8f856af0adc381b851baed0793ff51cb4814762493b`  
		Last Modified: Tue, 15 Sep 2026 21:37:48 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c89244855264efc988e64622f709e0d31694630ac1e8808d499686cedaae6c5`  
		Last Modified: Tue, 15 Sep 2026 21:37:48 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1c55c8b97d3394e45bc5a7efd408a7e820ac00574bd0e7fdee8885d8f591283`  
		Last Modified: Tue, 15 Sep 2026 21:57:03 GMT  
		Size: 12.2 MB (12189459 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:914a22b62b3f20d5294ee192100136f4827174c8d0540401405b629a382d12ae`  
		Last Modified: Tue, 15 Sep 2026 21:57:02 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7bdd0e664ad792482bd8f5daf3c36e225e38fdb54ca88f084965daf0ba7588e`  
		Last Modified: Tue, 15 Sep 2026 21:57:03 GMT  
		Size: 14.7 MB (14725083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbc0e377e37dd026c483419c86dde49bf053cf8bf991a3f0abc76769df28a125`  
		Last Modified: Tue, 15 Sep 2026 21:57:02 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c898fe33b82091f3810750fb3fc91d51465c7325f2b2019d4c103fb925cdfb3`  
		Last Modified: Tue, 15 Sep 2026 21:57:03 GMT  
		Size: 22.2 KB (22179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:656de6dc25f8ccda22a7478a2f8176d23fd9f6e4ce716dddbf7918f6ce2c7c47`  
		Last Modified: Tue, 15 Sep 2026 21:57:03 GMT  
		Size: 22.2 KB (22200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:843921dcb2f0ebcdb12a8b3ee55ac7c316faed3a5febf50c91a35137ffb28eed`  
		Last Modified: Tue, 15 Sep 2026 22:19:52 GMT  
		Size: 11.0 MB (10979844 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e582791f933c381748920e5abc3d4d45bfb4dc11431e1567f4e573b2e00d2fb`  
		Last Modified: Tue, 15 Sep 2026 22:19:53 GMT  
		Size: 15.3 MB (15316918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7cb281c406e61d67090bd7c8f722ba5e1340a03a282c4711c5c38d2c0d842e6`  
		Last Modified: Tue, 15 Sep 2026 22:19:52 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:793d53466b08b6101b9a966e43b1e915deb16a301f678a4ed93cb3844e2e8954`  
		Last Modified: Tue, 15 Sep 2026 22:19:52 GMT  
		Size: 1.5 MB (1534693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00fd6f9440f3485ba1bee012bdb6a3e8ca04ff7acd0801823cdd375d1f8de560`  
		Last Modified: Tue, 15 Sep 2026 22:19:53 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2.12.0-php8.2` - unknown; unknown

```console
$ docker pull wordpress@sha256:e8fed0b3a10d091d204f158e87ca89db669326e609eb2e6d21c8b3202bf34b54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **662.7 KB (662703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:68b6860587e8863f5b46104b200c06786e954d4d56623739aec640dae8d24b52`

```dockerfile
```

-	Layers:
	-	`sha256:fe86479ca3c8b3c246924c63e885a17b130d251a03470cede619837ffe133f33`  
		Last Modified: Tue, 15 Sep 2026 22:19:52 GMT  
		Size: 620.5 KB (620469 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9fa639810fb7a9357d6e64d0f82b352286c99303ff130ecc48e0dfcc5dbbdf17`  
		Last Modified: Tue, 15 Sep 2026 22:19:52 GMT  
		Size: 42.2 KB (42234 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2.12.0-php8.2` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:c4456ff7c82b248604e86a3790aaab224d96243dee630be9b2c050c0d757881a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.2 MB (70168093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb9f594fe2f452bfef00b86e9e9e398275db6c7cc570b8a698597fccffe3da1f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["wp","shell"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 21:21:24 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 15 Sep 2026 21:21:24 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Tue, 15 Sep 2026 21:21:24 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 15 Sep 2026 21:21:24 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:21:25 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:21:25 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:21:25 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:21:25 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:21:25 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Tue, 15 Sep 2026 21:21:25 GMT
ENV PHP_VERSION=8.2.33
# Tue, 15 Sep 2026 21:21:25 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Tue, 15 Sep 2026 21:21:25 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Tue, 15 Sep 2026 21:37:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Tue, 15 Sep 2026 21:37:35 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:41:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:41:41 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:41:41 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:41:42 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:41:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:41:42 GMT
CMD ["php" "-a"]
# Tue, 15 Sep 2026 22:14:31 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Tue, 15 Sep 2026 22:14:31 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Tue, 15 Sep 2026 22:14:31 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 22:15:23 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:15:23 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:15:25 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Tue, 15 Sep 2026 22:15:25 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Tue, 15 Sep 2026 22:15:25 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Tue, 15 Sep 2026 22:15:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Tue, 15 Sep 2026 22:15:25 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:15:25 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:15:25 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:15:25 GMT
USER www-data
# Tue, 15 Sep 2026 22:15:25 GMT
CMD ["wp" "shell"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:598d2042474225f237d8b919e734e7d4f1e57390fb825980512080762f4901dd`  
		Last Modified: Tue, 15 Sep 2026 21:24:58 GMT  
		Size: 6.3 MB (6270080 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abd61e39a86a8d82b34c0e681b049eb092f6df243ebad26c68053e4824bec42b`  
		Last Modified: Tue, 15 Sep 2026 21:24:58 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0530dbd02123615ae0163f332f0192aec080b7adf6be4914276d3b497e4a6978`  
		Last Modified: Tue, 15 Sep 2026 21:24:58 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d2074bc0551685b20a8d2207ea6bb22f13668ec80a1cbb906d2165bcb715c82`  
		Last Modified: Tue, 15 Sep 2026 21:41:50 GMT  
		Size: 12.2 MB (12189443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72c6f1e0c6c0bc3dbf41b0f955d6b78ef6acff638741744fe736ecf5844059ea`  
		Last Modified: Tue, 15 Sep 2026 21:41:49 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98754b3528d75e7c25f0fb09c5ac7c0a7a584d35c9bf226d0458d94ad6b61b74`  
		Last Modified: Tue, 15 Sep 2026 21:41:50 GMT  
		Size: 17.0 MB (17037457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cecf4e63fd5bbd08dca7261c460f7a8c019100abbbb9564e16dff27f4c0cc7f`  
		Last Modified: Tue, 15 Sep 2026 21:41:49 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c48756ec4da01ea2f22f99857068b95dc2137b642bfa8f44f6a2283ca3f90878`  
		Last Modified: Tue, 15 Sep 2026 21:41:50 GMT  
		Size: 22.2 KB (22206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42d47eb0e63f3010c110890c8ca8d1c6910a84c428cc8f5a5b6b87989a9c4dfa`  
		Last Modified: Tue, 15 Sep 2026 21:41:50 GMT  
		Size: 22.2 KB (22231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77e8adc2d72812999afba9584f564f89682ba518ba1a2dae4e1f2e5401e7b333`  
		Last Modified: Tue, 15 Sep 2026 22:15:33 GMT  
		Size: 11.6 MB (11641966 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:433349437957fda0394dbcb42783fa862b0832fdd1a245127b7e03dc94c24b41`  
		Last Modified: Tue, 15 Sep 2026 22:15:34 GMT  
		Size: 17.3 MB (17262049 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bdafdd4cec62d45393c4dbde00a848bc72f88e91c0a0161224da9794792def2`  
		Last Modified: Tue, 15 Sep 2026 22:15:33 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:845a669bf4704c60e67c51e6ee625dc88e82ac6c8ecd4dc36a2f6de21c221aa7`  
		Last Modified: Tue, 15 Sep 2026 22:15:33 GMT  
		Size: 1.5 MB (1534677 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd7fe2e35bd31c540a95c3f13dcbe6c34e14dfbb121eabfeb8c05a5f85a6934d`  
		Last Modified: Tue, 15 Sep 2026 22:15:34 GMT  
		Size: 405.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2.12.0-php8.2` - unknown; unknown

```console
$ docker pull wordpress@sha256:5b97f7d782795d8fe1c934cce5ba5e6c13bfaa04474f353fdb54553612e5ceed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **662.8 KB (662755 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:165fb2b106d65ee00c8772139a400f48853b41e2612681f310bf45c57536e715`

```dockerfile
```

-	Layers:
	-	`sha256:64fad81acde740863ed10051b473ec3afa40678b0e0783976ea6149b69c5bb77`  
		Last Modified: Tue, 15 Sep 2026 22:15:33 GMT  
		Size: 620.5 KB (620489 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:25bbb36f1f23ae8aaeea2cc31128bc6312a026134cc99701cc27074e4629a6ca`  
		Last Modified: Tue, 15 Sep 2026 22:15:33 GMT  
		Size: 42.3 KB (42266 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2.12.0-php8.2` - linux; 386

```console
$ docker pull wordpress@sha256:2b7dfee6d2311a9c85b26163a7bc5c218cfb2ed13940354108ce98e8a6c3749e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.0 MB (69970990 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:416713be6b70422221d055b6431818c18217f7a4b86b72b7acb4c3c4d913e5d3`
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
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Tue, 15 Sep 2026 21:12:19 GMT
ENV PHP_VERSION=8.2.33
# Tue, 15 Sep 2026 21:12:19 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Tue, 15 Sep 2026 21:12:19 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Tue, 15 Sep 2026 21:34:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Tue, 15 Sep 2026 21:34:49 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:37:27 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:37:27 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:37:27 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:37:28 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:37:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:37:28 GMT
CMD ["php" "-a"]
# Tue, 15 Sep 2026 22:14:53 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Tue, 15 Sep 2026 22:14:53 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Tue, 15 Sep 2026 22:14:53 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 22:15:41 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Tue, 15 Sep 2026 22:15:41 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Tue, 15 Sep 2026 22:15:42 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Tue, 15 Sep 2026 22:15:42 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Tue, 15 Sep 2026 22:15:42 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Tue, 15 Sep 2026 22:15:42 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Tue, 15 Sep 2026 22:15:42 GMT
VOLUME [/var/www/html]
# Tue, 15 Sep 2026 22:15:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:15:42 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:15:42 GMT
USER www-data
# Tue, 15 Sep 2026 22:15:42 GMT
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
	-	`sha256:8772cfe142ba928919a3c818c084adfa6243991f5a686bde0f0d198c91fa04f7`  
		Last Modified: Tue, 15 Sep 2026 21:37:35 GMT  
		Size: 12.2 MB (12189427 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd255b6b5a579575b01e6f6f648cc165219717558637997322769ce93633ed05`  
		Last Modified: Tue, 15 Sep 2026 21:37:34 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d99eb88f2a4a00520fb735a1e5b4eaefa269ffc2eed276928a9e6142a8c7280`  
		Last Modified: Tue, 15 Sep 2026 21:37:35 GMT  
		Size: 17.6 MB (17618208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71c4c0f2031993b30ba47aa801d10008e47c2526ec14d48e03e39a2d885ec9a7`  
		Last Modified: Tue, 15 Sep 2026 21:37:34 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb678a76e139db5fa11858f9a6f8ceda60295c43b2f0c5ebc3a887b8df4802ab`  
		Last Modified: Tue, 15 Sep 2026 21:37:36 GMT  
		Size: 22.4 KB (22390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fd1c31bb6117836ab50d18875d329c504e4ebd26f64d3f04043d45bfcba192a`  
		Last Modified: Tue, 15 Sep 2026 21:37:35 GMT  
		Size: 22.4 KB (22415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c3cc3be7687dcd0f0087401385550444dab9cebd48dee9d71a64a1b6d446625`  
		Last Modified: Tue, 15 Sep 2026 22:15:51 GMT  
		Size: 11.8 MB (11843387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a2d11428193487555743bbb303108d13b2e74856ca46bf5a79fd960513089a9`  
		Last Modified: Tue, 15 Sep 2026 22:15:51 GMT  
		Size: 17.3 MB (17257796 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3586430d05da13f0791751bff7e29e203ed2bd464810204a8366136ae2fbd73f`  
		Last Modified: Tue, 15 Sep 2026 22:15:51 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1319f0e9cca6d2bdeddb657a2b8cd66b48b93c5ec894b446eb464948c7e5b41`  
		Last Modified: Tue, 15 Sep 2026 22:15:51 GMT  
		Size: 1.5 MB (1534629 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d35471eefb8287e7e5b3eeab5da162fd9291c03b3b2d2689f3f5d1d963112879`  
		Last Modified: Tue, 15 Sep 2026 22:15:52 GMT  
		Size: 406.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2.12.0-php8.2` - unknown; unknown

```console
$ docker pull wordpress@sha256:92b9ad71c18ecc7c9809a39daf7253d8c2f8fd64720cd1e72aa2e39ea03cf788
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **664.4 KB (664364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:052f5652b4540d482c6c63ce3f7bd38c58c8c037725902afe109c3c22a19547e`

```dockerfile
```

-	Layers:
	-	`sha256:eec06cd12d5fee1acf1c06760b981359784617db978b27c6f80f4760152571be`  
		Last Modified: Tue, 15 Sep 2026 22:15:50 GMT  
		Size: 622.3 KB (622302 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:011ee7e511d255b0379559ccb2bfb3dd533c1aa04263bea6bc9a0a1bdca1ae64`  
		Last Modified: Tue, 15 Sep 2026 22:15:50 GMT  
		Size: 42.1 KB (42062 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2.12.0-php8.2` - linux; ppc64le

```console
$ docker pull wordpress@sha256:d6a4f9f7d602eeec8659122552faf0b37bbbd5d55e873e07eca2a4a3f0c76a70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.0 MB (70012183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a479619f04242b5d347bd600835129c3feae9551bdcf30b4abe8423e44b6359`
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
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 02 Jul 2026 20:57:30 GMT
ENV PHP_VERSION=8.2.33
# Thu, 02 Jul 2026 20:57:30 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Thu, 02 Jul 2026 20:57:30 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Fri, 31 Jul 2026 01:23:59 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Fri, 31 Jul 2026 01:24:00 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 01:27:27 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 31 Jul 2026 01:27:28 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 01:27:29 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 31 Jul 2026 01:27:31 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 31 Jul 2026 01:27:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 31 Jul 2026 01:27:31 GMT
CMD ["php" "-a"]
# Fri, 31 Jul 2026 03:58:27 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Fri, 31 Jul 2026 03:58:32 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Fri, 31 Jul 2026 03:58:35 GMT
WORKDIR /var/www/html
# Fri, 31 Jul 2026 04:00:13 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Fri, 31 Jul 2026 04:00:15 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Fri, 31 Jul 2026 04:00:20 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Fri, 31 Jul 2026 04:00:20 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Fri, 31 Jul 2026 04:00:20 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Fri, 31 Jul 2026 04:00:20 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Fri, 31 Jul 2026 04:00:20 GMT
VOLUME [/var/www/html]
# Fri, 31 Jul 2026 04:00:21 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 04:00:21 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 04:00:21 GMT
USER www-data
# Fri, 31 Jul 2026 04:00:21 GMT
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
	-	`sha256:ac741741b57d0c43aa599ce0f7ae0fb38df96fec2bca006d78745f5b242c4cf4`  
		Last Modified: Fri, 31 Jul 2026 01:27:44 GMT  
		Size: 12.2 MB (12189415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee0ab2e68278f99efe0cc5357ad4ad0a05b0aee5975ee91ea30222b91a9ddf65`  
		Last Modified: Fri, 31 Jul 2026 01:27:44 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2b3d7ebf9a657dcaba4e444aecef0730bc916892256d3ad4bf793852e71f89a`  
		Last Modified: Fri, 31 Jul 2026 01:27:45 GMT  
		Size: 18.3 MB (18337253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59ca6aacb11dab5eca385ffc4245466fbc904f057d212e87921eb5e220d34e6b`  
		Last Modified: Fri, 31 Jul 2026 01:27:44 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcc98cfb41c11235d7673aba2b0fb94a27f81b40cd976d985d58a0fe6fcd1a06`  
		Last Modified: Fri, 31 Jul 2026 01:27:45 GMT  
		Size: 22.2 KB (22201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9f28df9b8c9b1d0760d6a4db111a6c171e50371bcead0c19b8dd8737a46b3c1`  
		Last Modified: Fri, 31 Jul 2026 01:27:45 GMT  
		Size: 22.2 KB (22237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b79b13c6cc6f6469b4dd1eae289662c9b1c0485627396fb7ac9a970cdb46a77`  
		Last Modified: Fri, 31 Jul 2026 04:00:40 GMT  
		Size: 12.4 MB (12378628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0eaf23d607d58e274804487fd732bf4c02b96b283ddca08ad0d8bbc045f9c14b`  
		Last Modified: Fri, 31 Jul 2026 04:00:40 GMT  
		Size: 18.1 MB (18062121 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4b4559ddd5058d8b84ffe431c48af9130f5fabb0f796c59806665e245ed7470`  
		Last Modified: Fri, 31 Jul 2026 04:00:39 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26eeb8c8c75cc78b72971b8960dd5e183150a472e7c9b58b012513378de0f8eb`  
		Last Modified: Fri, 31 Jul 2026 04:00:39 GMT  
		Size: 1.5 MB (1534623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:728581fe538dd6310be882466a9fdef529773953d25bcd1618963d310441395d`  
		Last Modified: Fri, 31 Jul 2026 04:00:41 GMT  
		Size: 407.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2.12.0-php8.2` - unknown; unknown

```console
$ docker pull wordpress@sha256:04072d3a0dab2df4168bf4fea2a83ea5f8b3aa1301bcd5bc99cf540079142dd0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **662.6 KB (662620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c8499df2dc72e873ab5dc825b0c6109791970dc6742026cac87082f210bca01`

```dockerfile
```

-	Layers:
	-	`sha256:3ead078dfac9c464ab55dbf46285f540d45d19121e167e9a40892c12942972da`  
		Last Modified: Fri, 31 Jul 2026 04:00:39 GMT  
		Size: 620.5 KB (620466 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:423cfcd3a8f609086e110fc368543d308cd203fe7540266573a10483ade3f3f4`  
		Last Modified: Fri, 31 Jul 2026 04:00:39 GMT  
		Size: 42.2 KB (42154 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2.12.0-php8.2` - linux; riscv64

```console
$ docker pull wordpress@sha256:d32b23f3a14a476b2515682fb9ba61448201c1b86cb4f60454c75c9eaf82c8da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.5 MB (65488687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1746d72c57736e7f3137066ffcc83be6e5c5438e22b0102571a225165734f9d`
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
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_VERSION=8.2.33
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Sat, 01 Aug 2026 20:22:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Sat, 01 Aug 2026 20:22:01 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 01 Aug 2026 21:08:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 01 Aug 2026 21:08:58 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 01 Aug 2026 21:09:02 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sat, 01 Aug 2026 21:09:07 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 01 Aug 2026 21:09:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 01 Aug 2026 21:09:07 GMT
CMD ["php" "-a"]
# Sun, 02 Aug 2026 08:09:53 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Sun, 02 Aug 2026 08:09:54 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Sun, 02 Aug 2026 08:09:54 GMT
WORKDIR /var/www/html
# Sun, 02 Aug 2026 08:23:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Sun, 02 Aug 2026 08:23:17 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Sun, 02 Aug 2026 08:23:30 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Sun, 02 Aug 2026 08:23:30 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Sun, 02 Aug 2026 08:23:30 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Sun, 02 Aug 2026 08:23:30 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Sun, 02 Aug 2026 08:23:30 GMT
VOLUME [/var/www/html]
# Sun, 02 Aug 2026 08:23:30 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Sun, 02 Aug 2026 08:23:30 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Sun, 02 Aug 2026 08:23:30 GMT
USER www-data
# Sun, 02 Aug 2026 08:23:30 GMT
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
	-	`sha256:4fb529461b4fd20762d533560127e1f65e88ed245cbc7844e7a4b2faf24e566f`  
		Last Modified: Sat, 01 Aug 2026 21:10:04 GMT  
		Size: 12.2 MB (12189435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5302e68e515bf78b78e4ca96faec5cbd0489bacf066ce84d002d999459930b58`  
		Last Modified: Sat, 01 Aug 2026 21:10:00 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66de632370b585a133ba350a430c3d4abfd9e2552c29bff3ff45286d6e39e1fd`  
		Last Modified: Sat, 01 Aug 2026 21:10:04 GMT  
		Size: 17.0 MB (16985227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1dfcb7212d5d6ff808f221ba20573924a025185d3121a475f9685800f75585aa`  
		Last Modified: Sat, 01 Aug 2026 21:10:00 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97d2f3b84d7e6c3a159032d68f245cd574e060860252b8e6be7b0e3921a11a71`  
		Last Modified: Sat, 01 Aug 2026 21:10:02 GMT  
		Size: 22.2 KB (22205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:346668f57607804f7355e6711e0a6493cb2774b2f5034204ef4ccbdab4f01723`  
		Last Modified: Sat, 01 Aug 2026 21:10:02 GMT  
		Size: 22.2 KB (22226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5398f2fa8ef442b7e187044926fe335cfefe179a3b721c1d48fe5758a226a75`  
		Last Modified: Sun, 02 Aug 2026 08:24:59 GMT  
		Size: 12.1 MB (12135130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12bc90e17ab4836abcf1b828b446de0f81ec8480ed33f538580ba6d06b6be768`  
		Last Modified: Sun, 02 Aug 2026 08:25:00 GMT  
		Size: 15.4 MB (15415832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66c5106737f09998951789b6a3d86ce4d66e3852130a18a4b0d1dda348856464`  
		Last Modified: Sun, 02 Aug 2026 08:24:56 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0edee79527e36ae35ea873b777167877091b873d06ad7810e9e1fbc2c1b55541`  
		Last Modified: Sun, 02 Aug 2026 08:24:57 GMT  
		Size: 1.5 MB (1534614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0578a8852270d3ebd604890e517377a924bb40edab525953fe5b5cd051cd63f1`  
		Last Modified: Sun, 02 Aug 2026 08:24:58 GMT  
		Size: 408.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2.12.0-php8.2` - unknown; unknown

```console
$ docker pull wordpress@sha256:7da581a6702109ee4de5c651a37a7a44c618db7bfbc7213c6e63bbce52a51e45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **662.6 KB (662616 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52df91edb9e5cedc783a6256a8fa3e25ad1e6979b1e6fd5231a3cba7475ff07d`

```dockerfile
```

-	Layers:
	-	`sha256:f8d755a17b792a5a37b3ee5afe95790e1ed5ec685138892036adc8fb9fcfc509`  
		Last Modified: Sun, 02 Aug 2026 08:24:56 GMT  
		Size: 620.5 KB (620462 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:284801ec95f7a5014dd89c6a624a42d1aa58ad8ad7736c511a42a9ceeb2db7a1`  
		Last Modified: Sun, 02 Aug 2026 08:24:55 GMT  
		Size: 42.2 KB (42154 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:cli-2.12.0-php8.2` - linux; s390x

```console
$ docker pull wordpress@sha256:cce32326d0bfbb5fc182f12eafa0551b86be415228b286e460d6f6d1abec52ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.0 MB (69011892 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5d0d62fd76ea9bed70b3e4a5ef05ca56407cc03d88f76324a098eed2d8c5593`
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
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 02 Jul 2026 20:41:15 GMT
ENV PHP_VERSION=8.2.33
# Thu, 02 Jul 2026 20:41:15 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Thu, 02 Jul 2026 20:41:15 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Thu, 30 Jul 2026 23:49:04 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 23:49:04 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:52:53 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 23:52:53 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:52:54 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 23:52:54 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 23:52:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 23:52:54 GMT
CMD ["php" "-a"]
# Fri, 31 Jul 2026 00:17:01 GMT
RUN apk add --no-cache 		bash 		less 		mysql-client # buildkit
# Fri, 31 Jul 2026 00:17:01 GMT
RUN set -ex; 	mkdir -p /var/www/html; 	chown -R www-data:www-data /var/www/html # buildkit
# Fri, 31 Jul 2026 00:17:01 GMT
WORKDIR /var/www/html
# Fri, 31 Jul 2026 00:18:08 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Fri, 31 Jul 2026 00:18:08 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Fri, 31 Jul 2026 00:18:10 GMT
ENV WORDPRESS_CLI_GPG_KEY=63AF7AA15067C05616FDDD88A3A2E8F226F0BC06
# Fri, 31 Jul 2026 00:18:10 GMT
ENV WORDPRESS_CLI_VERSION=2.12.0
# Fri, 31 Jul 2026 00:18:10 GMT
ENV WORDPRESS_CLI_SHA512=be928f6b8ca1e8dfb9d2f4b75a13aa4aee0896f8a9a0a1c45cd5d2c98605e6172e6d014dda2e27f88c98befc16c040cbb2bd1bfa121510ea5cdf5f6a30fe8832
# Fri, 31 Jul 2026 00:18:10 GMT
RUN set -ex; 		apk add --no-cache --virtual .fetch-deps 		gnupg 	; 		curl -o /usr/local/bin/wp.gpg -fL "https://github.com/wp-cli/wp-cli/releases/download/v${WORDPRESS_CLI_VERSION}/wp-cli-${WORDPRESS_CLI_VERSION}.phar.gpg"; 		GNUPGHOME="$(mktemp -d)"; export GNUPGHOME; 	gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$WORDPRESS_CLI_GPG_KEY"; 	gpg --batch --decrypt --output /usr/local/bin/wp /usr/local/bin/wp.gpg; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME" /usr/local/bin/wp.gpg; unset GNUPGHOME; 		echo "$WORDPRESS_CLI_SHA512 */usr/local/bin/wp" | sha512sum -c -; 	chmod +x /usr/local/bin/wp; 		apk del --no-network .fetch-deps; 		wp --allow-root --version # buildkit
# Fri, 31 Jul 2026 00:18:10 GMT
VOLUME [/var/www/html]
# Fri, 31 Jul 2026 00:18:10 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:18:10 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 00:18:10 GMT
USER www-data
# Fri, 31 Jul 2026 00:18:10 GMT
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
	-	`sha256:d8303175776364780ace87e87326860eb22c8ecbbb8e5ac70cf1dc919a1388fa`  
		Last Modified: Thu, 30 Jul 2026 23:53:06 GMT  
		Size: 12.2 MB (12189393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9296e2681d2ac37e69995bead081e554bad1555a573869e007b15f3ec0247307`  
		Last Modified: Thu, 30 Jul 2026 23:53:05 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36630c857186809f436dddc702a75b0e0736d61be6726253d768ec7014a5ee1e`  
		Last Modified: Thu, 30 Jul 2026 23:53:06 GMT  
		Size: 17.3 MB (17328687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46e15dfd1fe68ddc81f2fdb36eb41998f5e6c9b19f42abce696e69b4aacd2d6c`  
		Last Modified: Thu, 30 Jul 2026 23:53:05 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b0b1ee3c06795376c99562f02f938d76172bd499882d9f429ed5914b3953421`  
		Last Modified: Thu, 30 Jul 2026 23:53:06 GMT  
		Size: 22.2 KB (22170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74e6e646759118beffc67580e2d599b38a7d8d7af4c9b69fd7da102009b7dc28`  
		Last Modified: Thu, 30 Jul 2026 23:53:06 GMT  
		Size: 22.2 KB (22179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb0d9329d59260d65e4368d9ad595395fe1cf24f71e8aa0a9a3c27a075127adf`  
		Last Modified: Fri, 31 Jul 2026 00:18:26 GMT  
		Size: 13.1 MB (13127303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e68948ca70060d6222a135f29bd5467f57147b8c52f749173b868f11581f9c0`  
		Last Modified: Fri, 31 Jul 2026 00:18:27 GMT  
		Size: 17.4 MB (17407206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b2b3df792d727b44f90f2a7e03fbc32f614e53cdd11e93a603e64b28b13980`  
		Last Modified: Fri, 31 Jul 2026 00:18:26 GMT  
		Size: 384.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:402a42e12bfe2a0ec126e7dd754b8361194b0f8c86856a49e82d2f62d021b263`  
		Last Modified: Fri, 31 Jul 2026 00:18:26 GMT  
		Size: 1.5 MB (1534623 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1475805f74d2be6b80a1ab66a0f1426067056a14d4183c005bc3b05ed4c183b`  
		Last Modified: Fri, 31 Jul 2026 00:18:27 GMT  
		Size: 402.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:cli-2.12.0-php8.2` - unknown; unknown

```console
$ docker pull wordpress@sha256:df029db0f4b550b8831d7ebd8b36d20a29b11534e95beeb9d56b0d70f075b348
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **662.5 KB (662534 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba100b20ae6826ae3a64c71d4f5f2e295c4fcc32835d1621388d03513ba94cbd`

```dockerfile
```

-	Layers:
	-	`sha256:9d3aa0cd0f21c32c9ec10b40e09032a09c9e4b68708fef3467a90037c792f6e1`  
		Last Modified: Fri, 31 Jul 2026 00:18:26 GMT  
		Size: 620.4 KB (620432 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:40b85ace2f100cdb5a681c52da46c6407c8cd06abb4f83635c37666ba3d88718`  
		Last Modified: Fri, 31 Jul 2026 00:18:26 GMT  
		Size: 42.1 KB (42102 bytes)  
		MIME: application/vnd.in-toto+json
