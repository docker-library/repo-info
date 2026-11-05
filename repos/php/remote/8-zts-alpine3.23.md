## `php:8-zts-alpine3.23`

```console
$ docker pull php@sha256:4e249aac837745a7000078d636138ce8f388f8ff6d91afa980a4830a9a6dc64f
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

### `php:8-zts-alpine3.23` - linux; amd64

```console
$ docker pull php@sha256:3d7b205d9d89c577db9dd418e70a299d1c95babaa0bfeb0fd7a706bed154ca36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.1 MB (51064395 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:053b90df54281cd056d5826dd76654b598e5c31355588283e74fde458d0051ee`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:00:06 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 19:00:06 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 19:00:06 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 19:00:06 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 19:00:06 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 19:00:06 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 19:00:06 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 19:00:06 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 19:00:06 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 05 Nov 2026 19:00:06 GMT
ENV PHP_VERSION=8.5.12
# Thu, 05 Nov 2026 19:00:06 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Thu, 05 Nov 2026 19:00:06 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Thu, 05 Nov 2026 19:00:08 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 19:00:08 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:03:06 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 						--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 19:03:06 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:03:07 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 19:03:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 19:03:07 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef6b9322bf1822fa0076e9aabb4b54ebe51fe38abd47665313ea1c05d0ed4d7a`  
		Last Modified: Thu, 05 Nov 2026 19:03:14 GMT  
		Size: 3.5 MB (3493832 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a9f9581c756055c45b17f905b427e9e1fabf7c0a481c82eef8f23a0bafc1312`  
		Last Modified: Thu, 05 Nov 2026 19:03:14 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c568bca1388a3611a59d58bc69715cf7c57575a1bc1f4c0f1c93f2d8b6b84c97`  
		Last Modified: Thu, 05 Nov 2026 19:03:14 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d2a8ec723183ec40113c7fbd417257adcb910e235444df24f40b71bc32dda8a`  
		Last Modified: Thu, 05 Nov 2026 19:03:15 GMT  
		Size: 14.6 MB (14577819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a96c67d9d6e4355aaf1cef8084441d7a9adcedc87a359e6df1642874dd3bc32`  
		Last Modified: Thu, 05 Nov 2026 19:03:15 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:181fb4e562453e16f032032f7d8af3726dce84d3f278c13eb09b4952c7ef479e`  
		Last Modified: Thu, 05 Nov 2026 19:03:16 GMT  
		Size: 29.1 MB (29113811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc19e55400bb053702e1ace817c6f558877a16123150222cb5d1ed80d51cac54`  
		Last Modified: Thu, 05 Nov 2026 19:03:15 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1979e2a4ba7cbfbf6bee9a739eee35d8c6fe0acaddd35ab48fb56a5e8775785`  
		Last Modified: Thu, 05 Nov 2026 19:03:16 GMT  
		Size: 22.3 KB (22261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-zts-alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:c823cb320e3c8bb037a6e688e42f1f5ef9ea00c7a88c454835803e28de09937e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.1 KB (297143 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1355e8919c720cccb45642f4c8fcb34dd5b26fe2af85e482eb14d4676f0e006`

```dockerfile
```

-	Layers:
	-	`sha256:32e78649a85b067cccf3f194dc143e182eac8cb26a790bcc8f772228b084f576`  
		Last Modified: Thu, 05 Nov 2026 19:03:14 GMT  
		Size: 258.6 KB (258610 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:359dd9060aed56cc193059650d38f57fe8e38d6b5455ccdae4c890463b14042d`  
		Last Modified: Thu, 05 Nov 2026 19:03:14 GMT  
		Size: 38.5 KB (38533 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-zts-alpine3.23` - linux; arm variant v6

```console
$ docker pull php@sha256:1e71ce615d0dcce9f465ff6bf89e35ac184f0a4f6bb7f45c146c22534b785a4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.9 MB (46882459 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f54e54c457c8dc540b8530dcdc9fd2690dce7a3266cd28d1d752e67a9ac0dedc`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:26:50 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:26:50 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:26:50 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:26:50 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:26:50 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:26:50 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:26:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:26:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:26:50 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 05 Nov 2026 18:26:50 GMT
ENV PHP_VERSION=8.5.12
# Thu, 05 Nov 2026 18:26:50 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Thu, 05 Nov 2026 18:26:50 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Thu, 05 Nov 2026 18:26:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:26:53 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:30:06 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 						--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 18:30:06 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:30:07 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 18:30:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 18:30:07 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:b22a9f01e2b4344ccf6266372fb95f531c3368429fa307b63d5591463dce4ab6`  
		Last Modified: Thu, 05 Nov 2026 18:00:53 GMT  
		Size: 3.6 MB (3558251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24e8391b9569a0b12aeba99fe28fb8e214e61155ba87523c8ae97397e7e85847`  
		Last Modified: Thu, 05 Nov 2026 18:30:13 GMT  
		Size: 3.5 MB (3454580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec04fbd059709ce2295221d054e24e1a1bc73e96ead53feed7bcb1a40b9e1127`  
		Last Modified: Thu, 05 Nov 2026 18:30:13 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da2a70e60adee10d408a0dd5c9923f8237ee513afa5cab7417f4bbb252f979f7`  
		Last Modified: Thu, 05 Nov 2026 18:30:13 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7bab844424190444acff2ab713f45322e9e76f90cecd0140f73883abf1a8b55f`  
		Last Modified: Thu, 05 Nov 2026 18:30:13 GMT  
		Size: 14.6 MB (14577850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa62b75781587062178b6d12b6c5a1036959c827078b6055264c832948b79a9b`  
		Last Modified: Thu, 05 Nov 2026 18:30:14 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e5954410c1b2ba33fdadf16b461d012559442f9fa5ec9d9654e027cfb32191c`  
		Last Modified: Thu, 05 Nov 2026 18:30:15 GMT  
		Size: 25.3 MB (25265632 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5edf185ce75c2b51a238a918f9d2829c6880370f954d8b7268c647ebe707de3`  
		Last Modified: Thu, 05 Nov 2026 18:30:14 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49a6502a64ac47ae141e8a8afcd813c2eff6a914069400cda7da20cdc426565d`  
		Last Modified: Thu, 05 Nov 2026 18:30:15 GMT  
		Size: 22.1 KB (22069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-zts-alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:406055532207a846597aceb2542b394ff969158b43e7388de9f66814ada50269
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **38.5 KB (38463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85c32d0b8f5ae858199850695cfe4f5f4d8523dbcb1f66a4d510193c1f4bffea`

```dockerfile
```

-	Layers:
	-	`sha256:eb9a66288d8a7bf6072e6c5cf4326c5b63527d55090b5909352e53c7206dd23d`  
		Last Modified: Thu, 05 Nov 2026 18:30:13 GMT  
		Size: 38.5 KB (38463 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-zts-alpine3.23` - linux; arm variant v7

```console
$ docker pull php@sha256:d602499b89a59e92f5b2aec3db3382b3849a0028ddd4db4eea9bfc2cae0d4885
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.9 MB (44932716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65c725e72c65c39b27a49b517379fa17e2da718835dbc0e8d2c4f8c1cf94ea64`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Thu, 05 Nov 2026 18:01:17 GMT
ADD alpine-minirootfs-3.23.8-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:01:17 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:23:51 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:23:51 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:23:51 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:23:51 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:23:51 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:23:51 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:23:51 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:23:51 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:23:51 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 05 Nov 2026 18:23:51 GMT
ENV PHP_VERSION=8.5.12
# Thu, 05 Nov 2026 18:23:51 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Thu, 05 Nov 2026 18:23:51 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Thu, 05 Nov 2026 18:23:55 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:23:55 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:27:09 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 						--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 18:27:09 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:27:10 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 18:27:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 18:27:10 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:2715a345c82dd389382733a6d4282bdbb8950eed4bdb95c4a8e332b6b5d8adf5`  
		Last Modified: Thu, 05 Nov 2026 18:01:23 GMT  
		Size: 3.3 MB (3266828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b78008ab9cd4bf7a83a5e67d555426fa4e90f47c7a91448a48f1a46e4eae8ba2`  
		Last Modified: Thu, 05 Nov 2026 18:27:17 GMT  
		Size: 3.3 MB (3262088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a13705ff4bf9ac1ee5b01678136f987cc8d527eb8da04a4646bf8bdaa163d38d`  
		Last Modified: Thu, 05 Nov 2026 18:27:17 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d8ff4c4b4ba03bb2742cbf5d2596b2281d8fc47e4b61b5d89377396b91fc872`  
		Last Modified: Thu, 05 Nov 2026 18:27:17 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cfb1894204eb3a6af55df054a9109a51313ce960507d2805d234cadaad68fea`  
		Last Modified: Thu, 05 Nov 2026 18:27:18 GMT  
		Size: 14.6 MB (14577850 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4fdb77eab816c680530770b0e98527edb1c0b40bfabaa99b54345fd2b9a72eb`  
		Last Modified: Thu, 05 Nov 2026 18:27:18 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02ede29d90b89d919d90941d4662fbb7c31b62447074dce32b0c848a8a66f0d3`  
		Last Modified: Thu, 05 Nov 2026 18:27:19 GMT  
		Size: 23.8 MB (23799802 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df7bdf56cccb0415a39106a4b685c3617f6ccd7fff6b96586c0dc2d3c172e9a3`  
		Last Modified: Thu, 05 Nov 2026 18:27:19 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98917c8480cb9c7d82f39ad26d85762a93b80182f6792279ef54c7d00253e699`  
		Last Modified: Thu, 05 Nov 2026 18:27:19 GMT  
		Size: 22.1 KB (22065 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-zts-alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:9ab45047177bfd14efd70bb65fdd35a78f3a362e93ff4dd888e3b7ba0adcbd46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.7 KB (293684 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e491c055bc3f54ec558a77da17ad95bed9e8b66b9bdb92f54d65497697c3403d`

```dockerfile
```

-	Layers:
	-	`sha256:6a1a214221ba372b647de1514c11d38a728dbc83fe881014999e3dcba7b330c4`  
		Last Modified: Thu, 05 Nov 2026 18:27:17 GMT  
		Size: 255.0 KB (255006 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:949960ffa46f1383e8a98a92692824b4f2cb3382f4257816ea678b50e2bbfc03`  
		Last Modified: Thu, 05 Nov 2026 18:27:17 GMT  
		Size: 38.7 KB (38678 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-zts-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull php@sha256:735551376e43f13af5272f166e46c602f5d4406009eada6cce47141776b36d0b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.4 MB (50355604 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c330c970902b180440f73c41ddf0113a2ba61dbba858b6d2d817921667b64178`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:30 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 21:06:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 21:06:30 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 21:06:30 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 21:06:30 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 21:06:30 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 21:06:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 21:06:30 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 21:06:30 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 21:06:30 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 21:06:30 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 21:06:30 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 21:06:33 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 21:06:33 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:10:04 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 						--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 21:10:04 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 21:10:04 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 21:10:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 21:10:04 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae9045f7ca5c5c46c0bc85cc594139c2c9de19248687c1d498c09d7b3bd286f2`  
		Last Modified: Wed, 21 Oct 2026 21:10:13 GMT  
		Size: 3.5 MB (3496506 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbf2812b4983b333a022c06efa38ff5894c7d3037ee2c3734653e606b9248d80`  
		Last Modified: Wed, 21 Oct 2026 21:10:13 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d4937db77f6dbbc6d6b31423d9a20f15f766a03e524c7505f914183cb8decb0`  
		Last Modified: Wed, 21 Oct 2026 21:10:13 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54ca6becc969726642c1644f072def32b2138e053e01b6903b4b87920fac1d67`  
		Last Modified: Wed, 21 Oct 2026 21:10:13 GMT  
		Size: 14.6 MB (14577854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94eb91195bbe66b91a815e171028a6062a5b706754049b87d20b3d5389de8262`  
		Last Modified: Wed, 21 Oct 2026 21:10:14 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:497a09b1ec15ef8a9733b7122a25c86614c1eede258df59caa4cb6a42fed094e`  
		Last Modified: Wed, 21 Oct 2026 21:10:15 GMT  
		Size: 28.1 MB (28065577 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e317a372280444387f2e8d546297a502f41417c7ac69ae3fbc86abfb49edab5`  
		Last Modified: Wed, 21 Oct 2026 21:10:14 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc1f87c8df23f4cb86ad60a8a624dd015a5f06b2601d947233208c9ab67f1cfb`  
		Last Modified: Wed, 21 Oct 2026 21:10:15 GMT  
		Size: 22.1 KB (22094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-zts-alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:13e91887bf55332f7c19a44f9b942b7bf427142107810f74799d106147f274d8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.7 KB (293738 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:324396528c72e695a2cfbdf38532a9bbdb031abaa46ff331ccd028d226a4dd53`

```dockerfile
```

-	Layers:
	-	`sha256:0836b44c2809bcae2fe13ee47db5fd47c55f0e62719209a0f6140061faa02f45`  
		Last Modified: Wed, 21 Oct 2026 21:10:13 GMT  
		Size: 255.0 KB (255026 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:41ae2c72b7ed5a44eb1091cfd659faf38de7b9da94466cc5f66d93c020ea8ee6`  
		Last Modified: Wed, 21 Oct 2026 21:10:13 GMT  
		Size: 38.7 KB (38712 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-zts-alpine3.23` - linux; 386

```console
$ docker pull php@sha256:c183fd86d20ad9a03ef197ee2a38a342abf5bf8c731db820a05ee465ddb8b864
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.4 MB (51438980 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ba038656516cb91d1eaa16139500bec9cad79a1e13c5a401757bc5c53aa6241`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:53 GMT
ADD alpine-minirootfs-3.23.8-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:53 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:19:07 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:19:07 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:19:07 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:19:07 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:19:08 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:19:08 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:19:08 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:19:08 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:19:08 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 05 Nov 2026 18:19:08 GMT
ENV PHP_VERSION=8.5.12
# Thu, 05 Nov 2026 18:19:08 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Thu, 05 Nov 2026 18:19:08 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Thu, 05 Nov 2026 18:19:10 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:19:10 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:22:22 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 						--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 18:22:22 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:22:23 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 18:22:23 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 18:22:23 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:f309c88c3cc61c27380090cef0250ee55a628e7b1f4670cb85c9621668452bc6`  
		Last Modified: Thu, 05 Nov 2026 18:00:59 GMT  
		Size: 3.7 MB (3678580 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b99b4a38b99895a9071ee39d5e11baa289873cadf63d14fd5ce6a7fbb2b64f76`  
		Last Modified: Thu, 05 Nov 2026 18:22:31 GMT  
		Size: 3.5 MB (3526872 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a85fa479d6d9cd3c59d6b15d936b46d8f2e8add05fe4cb6af2faa4ab114d5b0`  
		Last Modified: Thu, 05 Nov 2026 18:22:30 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23fb14930136c64d2a79b1b1785dbd87cc47f2cb9ec70b0f13d267c5e08dfc58`  
		Last Modified: Thu, 05 Nov 2026 18:22:30 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b695913cb0b04bbc13783a37b04d472df02c7e02a2070de48ebb4340a5db9014`  
		Last Modified: Thu, 05 Nov 2026 18:22:31 GMT  
		Size: 14.6 MB (14577827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d57b2d6d89db5af724376a45c97e570f2a4848641817e47bc5e76bca97105bc`  
		Last Modified: Thu, 05 Nov 2026 18:22:31 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbcfb788f53b9f04371a619488d8e6fd66fa0fe1edc60da8c7b0835331007e92`  
		Last Modified: Thu, 05 Nov 2026 18:22:32 GMT  
		Size: 29.6 MB (29629338 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cd7ef06688b8292982d0507f5a51f276c029cfbbe6f47cd30aa76a695d85132`  
		Last Modified: Thu, 05 Nov 2026 18:22:32 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4ff42d920dad37ea37927714aac0a997c45a6b7b999348271261806ad8f3cbe`  
		Last Modified: Thu, 05 Nov 2026 18:22:32 GMT  
		Size: 22.3 KB (22274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-zts-alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:749da6802b01f731cf76556b7daed4a9f4e58e79f8966b34b1b31d69a824e4ff
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **297.1 KB (297076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:503b454210d78c1aaa812a56105b0e493f87df2806423c6fa4243a810153d548`

```dockerfile
```

-	Layers:
	-	`sha256:a5baa8d22dcde2422093d05af898a77f7f0d36f2d353ab9b355fdbc9f4b8149e`  
		Last Modified: Thu, 05 Nov 2026 18:22:30 GMT  
		Size: 258.6 KB (258585 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cf3855e32be8eea12e698ef596894b3f76242d84a0b65087bb7644564d76ce5f`  
		Last Modified: Thu, 05 Nov 2026 18:22:30 GMT  
		Size: 38.5 KB (38491 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-zts-alpine3.23` - linux; ppc64le

```console
$ docker pull php@sha256:2a8ffca3e8fc1ec7d4fb4ba6dd32c97fc0d088e2882e0fc4308618968cb4175a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.3 MB (51309889 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:430777251773cd5f1bf442ab8e296de022f828fc2c08d0e9d5807c6f84b36297`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.23.7-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 10:51:19 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 22 Oct 2026 10:51:19 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 22 Oct 2026 10:51:19 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 22 Oct 2026 10:51:19 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 22 Oct 2026 10:51:20 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 22 Oct 2026 10:51:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 22 Oct 2026 10:51:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 22 Oct 2026 10:51:20 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 22 Oct 2026 10:51:20 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 22 Oct 2026 10:51:20 GMT
ENV PHP_VERSION=8.5.12
# Thu, 22 Oct 2026 10:51:20 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Thu, 22 Oct 2026 10:51:20 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Thu, 22 Oct 2026 11:09:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 22 Oct 2026 11:09:50 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 11:25:17 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 						--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 22 Oct 2026 11:25:18 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 11:25:20 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 22 Oct 2026 11:25:20 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 22 Oct 2026 11:25:20 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:d9e70b4db37b821f84063fd240e0fd2d83aedeca820dd4ab76e1923d60d4abd7`  
		Last Modified: Thu, 22 Oct 2026 02:45:43 GMT  
		Size: 3.8 MB (3818377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c5e78850d1ccd59b2668cc658056e2729eac399c337387dd24ba677d27a1d48`  
		Last Modified: Thu, 22 Oct 2026 10:56:13 GMT  
		Size: 3.7 MB (3664480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e22bd84bbe0ec060290b3aff4d6a4793a4f6b33b68fcb3698814a768442c8fa3`  
		Last Modified: Thu, 22 Oct 2026 10:56:13 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0c4819d4477ee8d52e3fa42316f9e75a3dbf8eb47ac135a67e24ec92559ca41`  
		Last Modified: Thu, 22 Oct 2026 10:56:13 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3a2dfc5e881ef99216ca9832ec878aba0ab15724e71a2f37f321b8762719e91`  
		Last Modified: Thu, 22 Oct 2026 11:17:09 GMT  
		Size: 14.6 MB (14577863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7affd805adf75347328db85e4ff58abf2d59b058924beb3bfdbfe69bf09ad3f9`  
		Last Modified: Thu, 22 Oct 2026 11:17:08 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6464dd4afdcc3454d0cca6b9b4dcce6a861a4866d80d7da584ede535e4303ce4`  
		Last Modified: Thu, 22 Oct 2026 11:25:44 GMT  
		Size: 29.2 MB (29222940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67f99ec97ba0b5cc13b210c0f098ef7f9ee53a076d45d92e8298c9ebffe647c3`  
		Last Modified: Thu, 22 Oct 2026 11:25:43 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b743167e7c63ef5c83be939939f82dbc2a5f38c60c59fd8659a18049fc841d0`  
		Last Modified: Thu, 22 Oct 2026 11:25:43 GMT  
		Size: 22.1 KB (22130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-zts-alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:2a34a74643f31702b893fffb0a6715d7a26ade4ca175a39bbafef61eabaa407a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.6 KB (292639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b42b453d523731f353b8f847f24492aba0c2797e50777a38652db1491c5a935d`

```dockerfile
```

-	Layers:
	-	`sha256:3e290811fa8f00182eecadf6c2e71335af4014db0bf1bb20fc9a00e97a8321d6`  
		Last Modified: Thu, 22 Oct 2026 11:25:43 GMT  
		Size: 255.0 KB (255003 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:84aee433c761fb1eef213bdd71ad831acd6311b9de8d4926a4cbfe7bbaba4c1e`  
		Last Modified: Thu, 22 Oct 2026 11:25:43 GMT  
		Size: 37.6 KB (37636 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-zts-alpine3.23` - linux; riscv64

```console
$ docker pull php@sha256:67f3765443ba3d79f4999250ffba7a8cd84ad276e570daf97439d889fd83dff6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.7 MB (48655863 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4425eb552f3df6be03461e2c82815e67437e58a22d5b28c9edb27c188287d762`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Fri, 23 Oct 2026 04:55:52 GMT
ADD alpine-minirootfs-3.23.7-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:55:52 GMT
CMD ["/bin/sh"]
# Sat, 24 Oct 2026 19:12:16 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Sat, 24 Oct 2026 19:12:16 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Sat, 24 Oct 2026 19:12:16 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Sat, 24 Oct 2026 19:12:16 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 24 Oct 2026 19:12:17 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Sat, 24 Oct 2026 19:12:17 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 24 Oct 2026 19:12:17 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 24 Oct 2026 19:12:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 24 Oct 2026 19:12:17 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Sat, 24 Oct 2026 19:12:17 GMT
ENV PHP_VERSION=8.5.12
# Sat, 24 Oct 2026 19:12:17 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Sat, 24 Oct 2026 19:12:17 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Sun, 25 Oct 2026 00:52:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Sun, 25 Oct 2026 00:52:56 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sun, 25 Oct 2026 04:15:23 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 						--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sun, 25 Oct 2026 04:15:23 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sun, 25 Oct 2026 04:15:28 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sun, 25 Oct 2026 04:15:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sun, 25 Oct 2026 04:15:28 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:d03de878707a9da693ddc1eddbe1328c578f016182f72385d87f3b4b40158d37`  
		Last Modified: Fri, 23 Oct 2026 04:56:27 GMT  
		Size: 3.6 MB (3579612 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b154fd5622374b2b22208c20e5c2f7ea6063545f72a1fa82ace2fcc16233439f`  
		Last Modified: Sat, 24 Oct 2026 20:17:28 GMT  
		Size: 3.6 MB (3630757 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aeed8417eb3f9e6991ece59c4edd6fffb9209f16426f13fc69964b7d2a6d015`  
		Last Modified: Sat, 24 Oct 2026 20:17:27 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9131d702d31cfa740f6ee17896229a6af7c5eeda3a2cac611535ff23f26d11ab`  
		Last Modified: Sat, 24 Oct 2026 20:17:27 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e08ac2a2edde9d8a6d9701c1ebd2b97a4b7dd1d7da7100907620abb1b1e0732`  
		Last Modified: Sun, 25 Oct 2026 01:58:42 GMT  
		Size: 14.6 MB (14577839 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59832951e0988c237a8b5c7eea41e42629e1fff4f08ca303306f73b88d278405`  
		Last Modified: Sun, 25 Oct 2026 01:58:38 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:742ceedb38cd773b6349b641ad8eb643bbfc85ba153c18464da4af2fed399d6f`  
		Last Modified: Sun, 25 Oct 2026 04:16:59 GMT  
		Size: 26.8 MB (26841457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b0754368c0bd059539c3f4ea5886bb748902e30304cb12bfb3dd38572fb5963`  
		Last Modified: Sun, 25 Oct 2026 04:16:55 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90707eb5ce69a4fb1c93d463c64174e9f188e2aca4406e8ec03bc55f5a61970e`  
		Last Modified: Sun, 25 Oct 2026 04:16:55 GMT  
		Size: 22.1 KB (22096 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-zts-alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:bfe088013ec0fda973d3dc05899ae9a7ae7f66023ddca0e2c8e8381093596eb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.6 KB (293586 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:690a99a5f8ca5cf8262305fa4b93cae12831d77a66eeb919d87b9f6a099111dd`

```dockerfile
```

-	Layers:
	-	`sha256:6a48f47271ba9947612a6614638c9a18ec6be97126b441eacba450785f50a446`  
		Last Modified: Sun, 25 Oct 2026 04:16:55 GMT  
		Size: 255.0 KB (254999 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ece3c023201f3eee8aa118a0cf309172083d2e0bdd65364d4dc637bd157124a0`  
		Last Modified: Sun, 25 Oct 2026 04:16:55 GMT  
		Size: 38.6 KB (38587 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-zts-alpine3.23` - linux; s390x

```console
$ docker pull php@sha256:a7b95e45512c9df514efe88f8d2180d9f61ca5e09324123bced5f08cc09c0ad2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.8 MB (49828341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be128d4a33bd7dfb9b772a87c7cf01083c745d58d3c6706669a40e232171bc8d`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

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
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 05 Nov 2026 18:20:11 GMT
ENV PHP_VERSION=8.5.12
# Thu, 05 Nov 2026 18:20:11 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Thu, 05 Nov 2026 18:20:11 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Thu, 05 Nov 2026 18:24:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:24:45 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:33:40 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 						--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 18:33:40 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:33:41 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 18:33:41 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 18:33:41 GMT
CMD ["php" "-a"]
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
	-	`sha256:f00bdd5cf77a07f72926b72992606961fd776203b91f1b23ce5670a34ffd3352`  
		Last Modified: Thu, 05 Nov 2026 18:29:06 GMT  
		Size: 14.6 MB (14577842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:294bd63ab60f6aae87a2650b780d7b177274ddf9eb81d3cf05f22f4609ae3a7c`  
		Last Modified: Thu, 05 Nov 2026 18:29:05 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ac8f981eae70e2af18253dac582ea60aa60c9a4dd35c5dd6c29c8a1a381184f`  
		Last Modified: Thu, 05 Nov 2026 18:33:59 GMT  
		Size: 27.8 MB (27814938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb083599666e19222b6fdfc6f40666956f30c6bb9bf112e26e15daa43d91530`  
		Last Modified: Thu, 05 Nov 2026 18:33:58 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f469857cfc8c2b07dcde345b06b066af425ebc431b5a938f171fbbd8a6a8229`  
		Last Modified: Thu, 05 Nov 2026 18:33:58 GMT  
		Size: 22.1 KB (22088 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-zts-alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:9ae729d5365cccc9aa5964cbbfebbafa590c494058ac99e0251dc3057e59945b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.6 KB (292551 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4fbc2fd0f085b73c233ff1ffc1fea6278578acea184c7834fa79faebf4954b3a`

```dockerfile
```

-	Layers:
	-	`sha256:2d93a0ea53d3ed05cd9aa2298f47461ef9b7ed73ed441190fffceab764c152d4`  
		Last Modified: Thu, 05 Nov 2026 18:33:58 GMT  
		Size: 255.0 KB (254969 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0ee53c8b645b68fba5192b858e89fdc4fd2ad7e5df6e09ee54e6b7072b1c07e`  
		Last Modified: Thu, 05 Nov 2026 18:33:58 GMT  
		Size: 37.6 KB (37582 bytes)  
		MIME: application/vnd.in-toto+json
