## `php:zts-alpine3.24`

```console
$ docker pull php@sha256:ea5e83c1c9e8568dc87ef88ea59c39b55badde8bf359fa1a8debe09977c839e2
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

### `php:zts-alpine3.24` - linux; amd64

```console
$ docker pull php@sha256:43683ef17b8138cd0f44c87b44cba8248a98ce039666fa465c1d3eca0964f502
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.8 MB (50790687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c6dbd48ac3e601280b5b0ed03fac65c0eada7745a18943b2b1b44e9b89c4747`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 16:50:32 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 06 Jul 2026 16:50:32 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 06 Jul 2026 16:50:32 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 06 Jul 2026 16:50:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 06 Jul 2026 16:50:32 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 06 Jul 2026 16:50:32 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:50:32 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:50:32 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 06 Jul 2026 16:50:32 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 06 Jul 2026 16:50:32 GMT
ENV PHP_VERSION=8.5.8
# Mon, 06 Jul 2026 16:50:32 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Mon, 06 Jul 2026 16:50:32 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:50:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 06 Jul 2026 16:50:35 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:53:42 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 						--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 16:53:42 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:53:43 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 16:53:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 16:53:43 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dae4065f30aa9082cfb4f9d5cfc4913022a9ee071ebc6b8700f7d92b45ca93b7`  
		Last Modified: Mon, 06 Jul 2026 16:53:51 GMT  
		Size: 3.5 MB (3474631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bd77a97dc6fc00f1c4a018d9452999a6f65a8fb2bcbf8893f63ca037d8f9c35`  
		Last Modified: Mon, 06 Jul 2026 16:53:51 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ff42315f7b4c98aeac9ca2a679b717a09729fdd867eacedb6e690e3ba43817f`  
		Last Modified: Mon, 06 Jul 2026 16:53:51 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d116b8d0978a9a063b1d010aed9e549ec1be1d7ca5d6b73b6e808631aecd4e25`  
		Last Modified: Mon, 06 Jul 2026 16:53:51 GMT  
		Size: 14.4 MB (14433720 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcf5d2817f7de347347f42bc9e94ae411cc939a2669cd5056fde397851684099`  
		Last Modified: Mon, 06 Jul 2026 16:53:52 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e61179cecc2734eb20d4a86ff1367e3491c2e1c9e46bda0af0554575196dd36`  
		Last Modified: Mon, 06 Jul 2026 16:53:53 GMT  
		Size: 29.0 MB (29009525 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89d1f8611285230f172375ff6ec0461c46c545567480edd9ba83777aae2853fd`  
		Last Modified: Mon, 06 Jul 2026 16:53:53 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cad78c2312274762b0cbaa02d858e2d527a78588c66e72b6e0b621f9cf9a7d3b`  
		Last Modified: Mon, 06 Jul 2026 16:53:53 GMT  
		Size: 22.3 KB (22339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:zts-alpine3.24` - unknown; unknown

```console
$ docker pull php@sha256:bcbd6f7d799736ef3a55f459e2d91e4b9a2484cbbee5fd4c824bfb12b8577343
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **299.0 KB (298967 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55a381835846c145270b7d7546df193d6d0de77814b8fa680b9c3cacdc9b37a0`

```dockerfile
```

-	Layers:
	-	`sha256:056023b2c744d101ff1d466eef58e6c0f43b4db985e377676180c2e1e14d9657`  
		Last Modified: Mon, 06 Jul 2026 16:53:51 GMT  
		Size: 260.4 KB (260410 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:92199e507c51068d51221bc3331dce0bd6747e09a642a0d713729147aa6b1864`  
		Last Modified: Mon, 06 Jul 2026 16:53:51 GMT  
		Size: 38.6 KB (38557 bytes)  
		MIME: application/vnd.in-toto+json

### `php:zts-alpine3.24` - linux; arm variant v6

```console
$ docker pull php@sha256:66a689d122c93918e3f0c36dac6c787cb32ef40b084a9e22b58a1a742f20fb83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46643939 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b18c435c2715328fc9d2dd323503b50b3c4668e57bfcb8bc0debf3ff8bd89163`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 16:47:19 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 06 Jul 2026 16:47:19 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 06 Jul 2026 16:47:19 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 06 Jul 2026 16:47:19 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 06 Jul 2026 16:47:20 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 06 Jul 2026 16:47:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:47:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:47:20 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 06 Jul 2026 16:47:20 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 06 Jul 2026 16:47:20 GMT
ENV PHP_VERSION=8.5.8
# Mon, 06 Jul 2026 16:47:20 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Mon, 06 Jul 2026 16:47:20 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:47:23 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 06 Jul 2026 16:47:23 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:50:37 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 						--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 16:50:37 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:50:38 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 16:50:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 16:50:38 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69eef3e13215589d095812bd6301ca30732d5f9022c3d7cda1efd6b8ea267732`  
		Last Modified: Mon, 06 Jul 2026 16:50:45 GMT  
		Size: 3.4 MB (3431413 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:846395b9630fdd5d98e7aa54ddb04c4633b07591eae3a2458f66fb962108bcdc`  
		Last Modified: Mon, 06 Jul 2026 16:50:44 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f564fdec63eb70967732320060d9be9e321f6a98f040ff8ff1f6df6fe587c0e5`  
		Last Modified: Mon, 06 Jul 2026 16:50:44 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e52d73b7a0dfd109a17ae6fd7ae1ec29cd2e630d2ccc164143a2051c84d8dc0e`  
		Last Modified: Mon, 06 Jul 2026 16:50:45 GMT  
		Size: 14.4 MB (14433709 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f1584d1caf4e925d869ec4803e15cbc442b22585fe1a5aac7e803fbe0d4dc47`  
		Last Modified: Mon, 06 Jul 2026 16:50:46 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3d7ad79d5178bc66f44ec80d6c2149cc147c285d41d0a38a0f6f3583e1954c9`  
		Last Modified: Mon, 06 Jul 2026 16:50:46 GMT  
		Size: 25.2 MB (25199161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29def15175234204771d0088828512581fb14aeb21ea963c4bef1aca5a37fefb`  
		Last Modified: Mon, 06 Jul 2026 16:50:46 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48d21260cd2aea06312fc098976b2d50273de4bec7ecf5166323a7838fa900ff`  
		Last Modified: Mon, 06 Jul 2026 16:50:47 GMT  
		Size: 22.1 KB (22119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:zts-alpine3.24` - unknown; unknown

```console
$ docker pull php@sha256:0af588b81159dcdd14fd32b2756ee33a49da2cb5dc78ebfab70999da4953f89f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.5 KB (38518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6645d9acb47853e30a9eab888f38b240b115cb6afcf0ca55a9b9a57be0ce6e3`

```dockerfile
```

-	Layers:
	-	`sha256:8e2857085b4c26c734acf9b12dafa3ac09a20493915161f408c007612e51bab3`  
		Last Modified: Mon, 06 Jul 2026 16:50:44 GMT  
		Size: 38.5 KB (38518 bytes)  
		MIME: application/vnd.in-toto+json

### `php:zts-alpine3.24` - linux; arm variant v7

```console
$ docker pull php@sha256:22616716801be36ebf04573982a2c47eed5b92906ebd0ded69dcb77e9aad0610
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.7 MB (44693698 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2c71e285df3679318b9958b5eca940b9e5999e16d620d22afd4f7856f71cb1c`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 16:55:43 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 06 Jul 2026 16:55:43 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 06 Jul 2026 16:55:43 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 06 Jul 2026 16:55:43 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 06 Jul 2026 16:55:43 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 06 Jul 2026 16:55:43 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:55:43 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:55:43 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 06 Jul 2026 16:55:43 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 06 Jul 2026 16:55:43 GMT
ENV PHP_VERSION=8.5.8
# Mon, 06 Jul 2026 16:55:43 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Mon, 06 Jul 2026 16:55:43 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:55:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 06 Jul 2026 16:55:45 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:58:59 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 						--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 16:58:59 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:58:59 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 16:58:59 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 16:58:59 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f4ab49b3086ae3604e897badf930b967f7f0978c544b663ab687aa79a575068`  
		Last Modified: Mon, 06 Jul 2026 16:59:07 GMT  
		Size: 3.2 MB (3244841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d5a1e83a6b15cdafc3e8bc8e1ca6d847a739889eee60f1f83542ca8fc166e7d`  
		Last Modified: Mon, 06 Jul 2026 16:59:07 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be860e8bcd6924fdc3a095a6b36233cd0f15b9d4a3b18bcc0b04d87fa81d7bd3`  
		Last Modified: Mon, 06 Jul 2026 16:59:07 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d87277f6bd255780c10badf7d6550a40b8fff9a56009ee8ac5cdb0c78f21de6c`  
		Last Modified: Mon, 06 Jul 2026 16:59:07 GMT  
		Size: 14.4 MB (14433728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7fed8ea3a6af4c23c0bbbc8f143935fa9f4f6be9c3cb05084b7817c7aabdd82`  
		Last Modified: Mon, 06 Jul 2026 16:59:08 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae37f994f2e77d8920e4367ae03960ad8be1c07b64fc4575e0c8da1d57656bd3`  
		Last Modified: Mon, 06 Jul 2026 16:59:09 GMT  
		Size: 23.7 MB (23728304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9108d9f44b7621cab2e861a6b9abe2e2a6d35ee36587cafdd42f52c90bfd25c`  
		Last Modified: Mon, 06 Jul 2026 16:59:08 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96fa50f069d5feba239e7ab19007409ad4cdea709f40ad5dacc817e68da3842d`  
		Last Modified: Mon, 06 Jul 2026 16:59:09 GMT  
		Size: 22.1 KB (22122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:zts-alpine3.24` - unknown; unknown

```console
$ docker pull php@sha256:b28ec4c973fecd86e82f2301eab665045c1f4c3e529add550fc8ecfa9627db7a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.6 KB (295571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73f50a152a8c66ee6a30a06edb24d9900879bce0f13c758a27c3eb9a0a883df5`

```dockerfile
```

-	Layers:
	-	`sha256:9a11e2d45e4875a2461a5741882467dce8fac9b176f7f6e94683e39f692516bf`  
		Last Modified: Mon, 06 Jul 2026 16:59:07 GMT  
		Size: 256.8 KB (256838 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7db8467b3b3f92b9b0d630debacf2744a55f8ad9b19c53fe9307dcb86bf1de7b`  
		Last Modified: Mon, 06 Jul 2026 16:59:07 GMT  
		Size: 38.7 KB (38733 bytes)  
		MIME: application/vnd.in-toto+json

### `php:zts-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull php@sha256:29567230b7f52366e008a1f46425b895174e281f4c27f81484391100004a8123
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.1 MB (50087932 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:feee3d23e078ae2ffbbfc274bc79a0a7c450469f160eb4495f8fa2d8a486000e`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 16:51:10 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 06 Jul 2026 16:51:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 06 Jul 2026 16:51:11 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 06 Jul 2026 16:51:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 06 Jul 2026 16:51:11 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 06 Jul 2026 16:51:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:51:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:51:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 06 Jul 2026 16:51:11 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 06 Jul 2026 16:51:11 GMT
ENV PHP_VERSION=8.5.8
# Mon, 06 Jul 2026 16:51:11 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Mon, 06 Jul 2026 16:51:11 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:51:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 06 Jul 2026 16:51:13 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:54:45 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 						--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 16:54:45 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:54:45 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 16:54:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 16:54:45 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e668263a7275944cbc629302e6bc04bfc8e295d9b2387d5d215886a592b21ec`  
		Last Modified: Mon, 06 Jul 2026 16:54:54 GMT  
		Size: 3.5 MB (3484724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a246fcda755404c5f2480bc8c447431b61950b7fee8589f73f0c886204768f32`  
		Last Modified: Mon, 06 Jul 2026 16:54:54 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8661fea02c524526b9e46ddf01049591b42585d782a53db0a75a40c7b0d84ca0`  
		Last Modified: Mon, 06 Jul 2026 16:54:54 GMT  
		Size: 219.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba44ad512f1d51663e871d463464cef7792028b6515698a1d6b4607ed76c1275`  
		Last Modified: Mon, 06 Jul 2026 16:54:54 GMT  
		Size: 14.4 MB (14433710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f97fec434b6bb4ae786a8cc40d3900ed83c3e21e3e7084f20d720d4d8f0282fb`  
		Last Modified: Mon, 06 Jul 2026 16:54:55 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:221e2d64602dee7bc36947eeaacec0eda0fad3921f1ef3f6044f19d04efa814c`  
		Last Modified: Mon, 06 Jul 2026 16:54:56 GMT  
		Size: 28.0 MB (27960230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0722dfd0cde73fd3a421c179b6b9abb6fef63d21720b55cda040a78e48a965e`  
		Last Modified: Mon, 06 Jul 2026 16:54:55 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c2a636b65ea11ba5ae5e5cc2e898df287e8086d22eb3a07322adf65de5041e6`  
		Last Modified: Mon, 06 Jul 2026 16:54:56 GMT  
		Size: 22.1 KB (22147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:zts-alpine3.24` - unknown; unknown

```console
$ docker pull php@sha256:6b43629a84093898882cd25a8ff2ca3eaab082979eec558543602617c8c0c92f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.7 KB (295658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bb92ecb9825bbef6923e7cee3eafca3d3b5bbbe303a3a67ac09c08e0a2b0e7a`

```dockerfile
```

-	Layers:
	-	`sha256:288db9a5453a839f207a4a3f36307f381b23aad58c27d8a76db87a94e3e06120`  
		Last Modified: Mon, 06 Jul 2026 16:54:54 GMT  
		Size: 256.9 KB (256874 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6ed5e175bdb635e4dbdb95bc058582269baae4d3cfcfd2b4b2575507955c0413`  
		Last Modified: Mon, 06 Jul 2026 16:54:54 GMT  
		Size: 38.8 KB (38784 bytes)  
		MIME: application/vnd.in-toto+json

### `php:zts-alpine3.24` - linux; 386

```console
$ docker pull php@sha256:e80bb9867c0eef9c3011078a40a88e44f27def16e1170a17d00a84cd7d8e349c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.1 MB (51125991 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c38e0c4a0d08e48af816c26941180df793e39743f74d7924513643b7cfc0789`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 16:51:19 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 06 Jul 2026 16:51:19 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 06 Jul 2026 16:51:19 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 06 Jul 2026 16:51:19 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 06 Jul 2026 16:51:19 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 06 Jul 2026 16:51:19 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:51:19 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:51:19 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 06 Jul 2026 16:51:19 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 06 Jul 2026 16:51:19 GMT
ENV PHP_VERSION=8.5.8
# Mon, 06 Jul 2026 16:51:19 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Mon, 06 Jul 2026 16:51:19 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:51:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 06 Jul 2026 16:51:22 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:54:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 						--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 16:54:57 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:54:57 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 16:54:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 16:54:57 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6333b0e39a923d607201e15b6a0f2e085a3a33efc127a15da7d6641308907b98`  
		Last Modified: Mon, 06 Jul 2026 16:55:06 GMT  
		Size: 3.5 MB (3505495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9675ae353142ad3d3db573d1f270d517a551c0a5e20cb954478f2923d079d084`  
		Last Modified: Mon, 06 Jul 2026 16:55:06 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37b4e594fd92346694c045d89a782be8a95946c5f3fb4ef19f39fc0647ce8f8c`  
		Last Modified: Mon, 06 Jul 2026 16:55:06 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edde02ee1c3db9c40c4f4562f157570180c7866037696544193d7d98f4bba758`  
		Last Modified: Mon, 06 Jul 2026 16:55:06 GMT  
		Size: 14.4 MB (14433701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21f4f81d27bbfe128c7e0d6a91fe268fbbe3043c9f8782b63fd46c3ff9bae1f3`  
		Last Modified: Mon, 06 Jul 2026 16:55:07 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcbcf6b0f5f61741c750c1c2c36c479a9c6dcc6e47547c95053f1f0d70417259`  
		Last Modified: Mon, 06 Jul 2026 16:55:08 GMT  
		Size: 29.5 MB (29490226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b622f9748078763b089b3cea0e8ac591182f2e103832f2bb3c5a8e25c238eb6`  
		Last Modified: Mon, 06 Jul 2026 16:55:08 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34bf2a944c6156d46d9f8150730ec45b98aca46976abbe2938bbd81f8d162e13`  
		Last Modified: Mon, 06 Jul 2026 16:55:08 GMT  
		Size: 22.3 KB (22347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:zts-alpine3.24` - unknown; unknown

```console
$ docker pull php@sha256:12afb04b9f9ee996b5710521013c5246ed243c42622c5855cda11547efe0dd63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **298.9 KB (298860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4c74a921e5757343f214566c83c182bbc6b28e98b9a23174746577224495de6`

```dockerfile
```

-	Layers:
	-	`sha256:9d05aee6d6a46dc44fb9e0cd6531043dea456faf5446dd20897b4d3d974cdecb`  
		Last Modified: Mon, 06 Jul 2026 16:55:06 GMT  
		Size: 260.4 KB (260365 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:423f569c71c314a557e06cf08ba418175137bec1644fd14cb01042ea4742798a`  
		Last Modified: Mon, 06 Jul 2026 16:55:06 GMT  
		Size: 38.5 KB (38495 bytes)  
		MIME: application/vnd.in-toto+json

### `php:zts-alpine3.24` - linux; ppc64le

```console
$ docker pull php@sha256:a402b87bb96d8be85c63dc73a03f9f51c8d28c499c6e71d401b7bc5d14bf28c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (51020804 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:837ce2c87c5ebcc30b6bf8e9dd0e1c5f77947643d428b8cf84dac8a4802df81c`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

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
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 02 Jul 2026 20:57:30 GMT
ENV PHP_VERSION=8.5.8
# Thu, 02 Jul 2026 20:57:30 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Thu, 02 Jul 2026 20:57:30 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 17:08:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 06 Jul 2026 17:08:03 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 17:18:17 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 						--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 17:18:17 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 17:18:19 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 17:18:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 17:18:19 GMT
CMD ["php" "-a"]
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
	-	`sha256:e4420959e69eba64efd7657f9aeec23bb2dfe6cbc4023cbbfb573043174108fe`  
		Last Modified: Mon, 06 Jul 2026 17:13:12 GMT  
		Size: 14.4 MB (14433735 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46074b91ad904d408b60e843cf7ff93bf32eed371d5a036d2bda3d0170a1144a`  
		Last Modified: Mon, 06 Jul 2026 17:13:11 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bd52f81c3fee62f8420aaf3392ee140dc80ba5b8e0755d1df8ccdf87153d6c6`  
		Last Modified: Mon, 06 Jul 2026 17:18:34 GMT  
		Size: 29.1 MB (29100037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cfcc01f2be2fca74390f5caa4ad91e4d637023d4887282571c2ba213be2e9b7`  
		Last Modified: Mon, 06 Jul 2026 17:18:33 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:05ced288c3c3adc0aa59981dc8e1bc4cbf63f3576aef42a0787fd7e38d09fabd`  
		Last Modified: Mon, 06 Jul 2026 17:18:33 GMT  
		Size: 22.2 KB (22190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:zts-alpine3.24` - unknown; unknown

```console
$ docker pull php@sha256:5966a3bbf48aeb725db98f3dd72e5775ffff391ba604b378bb3dd6299f9ecd48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.5 KB (294511 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a0dbaf1873cb249607142f6741bcbc8f6d4507c16d892a4485fb1aa4e29dbed3`

```dockerfile
```

-	Layers:
	-	`sha256:0c8806b7e67746a5d7f848d4c6dccd79f0cc1af7a5cae90f46ef53d406ea3af8`  
		Last Modified: Mon, 06 Jul 2026 17:18:33 GMT  
		Size: 256.8 KB (256827 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0c361ec7b74caa95d66874a39dcd2f11a2867f8773e5a8296ec62989753a8547`  
		Last Modified: Mon, 06 Jul 2026 17:18:33 GMT  
		Size: 37.7 KB (37684 bytes)  
		MIME: application/vnd.in-toto+json

### `php:zts-alpine3.24` - linux; riscv64

```console
$ docker pull php@sha256:2656b9c4bc0a1882a176e9f84f00f0022eff7a9a5118b0d11b82f48326a24e50
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.3 MB (48349141 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d0161946598565b700dcec7154260192b607049fe5d1dff483adc6089919d73`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

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
ENV PHP_VERSION=8.5.7
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.7.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.7.tar.xz.asc
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_SHA256=01ba2ed1c2658dacf91bebc8be6a4885f69b811c7993831fc48e26107ab29985
# Wed, 17 Jun 2026 10:08:39 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 17 Jun 2026 10:08:39 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 17 Jun 2026 12:00:34 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 						--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 17 Jun 2026 12:00:35 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 17 Jun 2026 12:00:39 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 17 Jun 2026 12:00:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 17 Jun 2026 12:00:39 GMT
CMD ["php" "-a"]
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
	-	`sha256:e1eb8f8bb2b04f5e0ffe6bc53b0ad001e8193de762c9efead6a30ceab73f68f5`  
		Last Modified: Wed, 17 Jun 2026 12:01:59 GMT  
		Size: 14.4 MB (14421126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c72be640be1c748ce9befebaa919132302bb0225b14a0a935955c083884d5d2a`  
		Last Modified: Wed, 17 Jun 2026 12:01:57 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4de223c47ade2d57ccd9370875e6167bc2fc23b13446d34e265cfc56bc2fcac2`  
		Last Modified: Wed, 17 Jun 2026 12:02:02 GMT  
		Size: 26.7 MB (26722701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c09facc8f7d3511247c1ad3e0c14b3442065edf017d8ec7b0064de1b47f9d7a`  
		Last Modified: Wed, 17 Jun 2026 12:01:58 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:684dd1b41272de4a8559edc6e90d608e4f4370407817be26c806b46337a7822d`  
		Last Modified: Wed, 17 Jun 2026 12:01:59 GMT  
		Size: 22.2 KB (22165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:zts-alpine3.24` - unknown; unknown

```console
$ docker pull php@sha256:875e5fcb60912fdac2c7b9bb9bc9d7edf7892e195c9f90fdca6b2f17abce3e2f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **295.5 KB (295458 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac20a49ec12fd87b61f8700be8c1414f183c43505cb6741aed1cd1c991795ea7`

```dockerfile
```

-	Layers:
	-	`sha256:f0b21d143209a0fcab00f219b8708917bd9e794161dbae7ef583235a05a4d6aa`  
		Last Modified: Wed, 17 Jun 2026 12:01:55 GMT  
		Size: 256.8 KB (256823 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:667c7004dd90ab2a90b06b73e772207d8706b088910247d803d7c981748d6aec`  
		Last Modified: Wed, 17 Jun 2026 12:01:56 GMT  
		Size: 38.6 KB (38635 bytes)  
		MIME: application/vnd.in-toto+json

### `php:zts-alpine3.24` - linux; s390x

```console
$ docker pull php@sha256:b75177ed5976117175f86ba7de577821f59ed663aeaa74acc21fd2d9a6c85e0c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49539571 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:666a5ea3efd305224943dd93ecd660ef86e9cdd328e054b32f17401f46fbac50`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

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
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 02 Jul 2026 20:41:15 GMT
ENV PHP_VERSION=8.5.8
# Thu, 02 Jul 2026 20:41:15 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Thu, 02 Jul 2026 20:41:15 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 17:22:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 06 Jul 2026 17:22:55 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 17:39:23 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 						--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 17:39:26 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 17:39:31 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 17:39:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 17:39:31 GMT
CMD ["php" "-a"]
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
	-	`sha256:a44d39d5874593331bbc26feede30222e2b7ae7d14ac3852daaee3953cf1437e`  
		Last Modified: Mon, 06 Jul 2026 17:37:53 GMT  
		Size: 14.4 MB (14433715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad51e87e2984336842c57003ebf709337cf71b6dcd87ff18384fc7684b2cb52c`  
		Last Modified: Mon, 06 Jul 2026 17:37:48 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd8313e26cd8894b5e2de38708caaf8ec3dea7d81c19a8b9f7a5395a81be567d`  
		Last Modified: Mon, 06 Jul 2026 17:40:31 GMT  
		Size: 27.7 MB (27704222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39b2ae895b636292ae8f205214665d283ef2a8d1c29f8a22d0a970d4300399a7`  
		Last Modified: Mon, 06 Jul 2026 17:40:27 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec7e5dc1fa298c8a3c35539b13493587dbdb94a435461a7d389e35951b2de8b4`  
		Last Modified: Mon, 06 Jul 2026 17:40:27 GMT  
		Size: 22.2 KB (22154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:zts-alpine3.24` - unknown; unknown

```console
$ docker pull php@sha256:8980ff49204630dabcb5bbc02625081bf01f16cfd3be783fa5ed21a0186b7269
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **294.4 KB (294375 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33b142a3727a037b9ee81faa4456b08f26d36ddca4b56bb248fe05099acd5d14`

```dockerfile
```

-	Layers:
	-	`sha256:679dbb2889ed5550c826382a6902f3c225bd3c4f79245e0a08729d74f5057634`  
		Last Modified: Mon, 06 Jul 2026 17:40:27 GMT  
		Size: 256.8 KB (256769 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f27ec0262fad1e77c135fde11a9b0731878aeba3cd279481aed129afc5963df9`  
		Last Modified: Mon, 06 Jul 2026 17:40:27 GMT  
		Size: 37.6 KB (37606 bytes)  
		MIME: application/vnd.in-toto+json
