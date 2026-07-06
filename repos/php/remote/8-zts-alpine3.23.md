## `php:8-zts-alpine3.23`

```console
$ docker pull php@sha256:fbf266450142e0e4f5795c80edbac34481b890da9560b382e02ad17204dfa935
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
$ docker pull php@sha256:6773fa6b86f7a0c587433a81ee3aa626690016a3f184ff94514df6d10acb45ba
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.7 MB (50723397 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a25b7154dff4c164768844bc5b2b2e7754a038d625445b4e862f9ad2ab2b902c`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 16:51:18 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 06 Jul 2026 16:51:18 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 06 Jul 2026 16:51:18 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 06 Jul 2026 16:51:18 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 06 Jul 2026 16:51:18 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 06 Jul 2026 16:51:18 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:51:18 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:51:18 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 06 Jul 2026 16:51:18 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 06 Jul 2026 16:51:18 GMT
ENV PHP_VERSION=8.5.8
# Mon, 06 Jul 2026 16:51:18 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Mon, 06 Jul 2026 16:51:18 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:51:21 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 06 Jul 2026 16:51:21 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:54:50 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 						--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 16:54:50 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:54:51 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 16:54:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 16:54:51 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fbd496ae6d717e461ff922583bc5eeb5e4601f0f4d09093580c78363d210178`  
		Last Modified: Mon, 06 Jul 2026 16:55:00 GMT  
		Size: 3.5 MB (3465301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faf3ce5a11b706d7e61361653a19ec70b7450c411e43b9d5955e7e2c3db63ea7`  
		Last Modified: Mon, 06 Jul 2026 16:55:00 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbaadb20fb195bf0310d051caf3205a53c2197d2560ee500b2e1849c5f87b6ca`  
		Last Modified: Mon, 06 Jul 2026 16:55:00 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be3ba4d98f48e92d0fce888ac12ad74ccbbd9a250a03b28c83f675bfd8f9009e`  
		Last Modified: Mon, 06 Jul 2026 16:55:00 GMT  
		Size: 14.4 MB (14433706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1587b00967188d77f355f6b556b93e2d5cd1dc2ebfd7ca99a18e2ccc5dfcad17`  
		Last Modified: Mon, 06 Jul 2026 16:55:01 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:353f43a8080d213dd2d284f8039b72313e809682768b11066009e6014d23ac3a`  
		Last Modified: Mon, 06 Jul 2026 16:55:02 GMT  
		Size: 29.0 MB (28953572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d562a6c8fe416795c7f777d4fdd4cb6166f7c4a4f8494c0cb79cc701d0e59a09`  
		Last Modified: Mon, 06 Jul 2026 16:55:01 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a93a6f014620e11a4e8d1c8e017f8b20f8ea019d1df707f3d807fa6ea99ecfb3`  
		Last Modified: Mon, 06 Jul 2026 16:55:02 GMT  
		Size: 22.3 KB (22314 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-zts-alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:3f1e1c1a4e176a0c9611aede8ed7820aacd036f49910a30c13654f5480a8e9dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.6 KB (296580 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11863dbb4de7b17293b1844e533afbc9e45e6c190c9c19f0f67fc89b7f315002`

```dockerfile
```

-	Layers:
	-	`sha256:8b158f2af61bac335af6d35b7be10ba31386e5bfd5c419cfda5310478562d161`  
		Last Modified: Mon, 06 Jul 2026 16:55:00 GMT  
		Size: 259.2 KB (259247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:998abd90fd4ad81a255d4be7cb3eb075851f0ca1df1e15f477a7c55dc239cc9f`  
		Last Modified: Mon, 06 Jul 2026 16:55:00 GMT  
		Size: 37.3 KB (37333 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-zts-alpine3.23` - linux; arm variant v6

```console
$ docker pull php@sha256:96458bde6253670bc5a3c9971ae0757f36828b3e97661796ad4be5637de14e7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.6 MB (46561525 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b40c1b07bd3a191ddaf03ab4cd103d01be21143e6f66048afcf8d489f9496ae5`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.23.5-armhf.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 16:51:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 06 Jul 2026 16:51:39 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 06 Jul 2026 16:51:39 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 06 Jul 2026 16:51:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 06 Jul 2026 16:51:39 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 06 Jul 2026 16:51:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:51:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:51:39 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 06 Jul 2026 16:51:39 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 06 Jul 2026 16:51:39 GMT
ENV PHP_VERSION=8.5.8
# Mon, 06 Jul 2026 16:51:39 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Mon, 06 Jul 2026 16:51:39 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:51:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 06 Jul 2026 16:51:42 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:54:53 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 						--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 16:54:53 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:54:54 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 16:54:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 16:54:54 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:e10b64a07fc8ab4702bfbad629edb6572f190358cdb4b2b7392040bdef454c0f`  
		Last Modified: Mon, 22 Jun 2026 19:20:25 GMT  
		Size: 3.6 MB (3552595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c5f4eb2e756460f90c6f1033446586536e5bf2ec0066b354c079db55f2e2724`  
		Last Modified: Mon, 06 Jul 2026 16:55:00 GMT  
		Size: 3.4 MB (3419517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6eccc6418a82ace27ec613fe54f8ec7839f893c77b74f8b17649f3b6f339d5f`  
		Last Modified: Mon, 06 Jul 2026 16:55:00 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9393e3c38ddc5ed0957e1d1addc5f61246bc7f1f6ff582d4c3e730ec00fcc90b`  
		Last Modified: Mon, 06 Jul 2026 16:55:00 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d06b4f5dafcf5753ae9b6181a47180fc45613d1fb1783f2b2bd7a52df748ea1b`  
		Last Modified: Mon, 06 Jul 2026 16:55:00 GMT  
		Size: 14.4 MB (14433734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:439c8a182a90f5e654763c381f64ef27ffc074c36093da4ef56144a29220fb36`  
		Last Modified: Mon, 06 Jul 2026 16:55:01 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac400dbd736b0f7583178f06c03556f96607950aaa1a92bc5f3a8eefcf88493d`  
		Last Modified: Mon, 06 Jul 2026 16:55:02 GMT  
		Size: 25.1 MB (25129452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75433584dcd6867c997ea3c92527a32fb7a5deb0161000d3c69061a4323db75c`  
		Last Modified: Mon, 06 Jul 2026 16:55:02 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:761c643421d2e644e8220caa2e8bdd00e4ab975a9bb29d891d08065bccf838b4`  
		Last Modified: Mon, 06 Jul 2026 16:55:02 GMT  
		Size: 22.1 KB (22142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-zts-alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:181530e590627ea3a7a37a4816d4ba58edde69ce26eec02120399c8871db6d82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.3 KB (37263 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7db20e5910e963b52a2740ae730c706ec3ffef30570d873299f4a955cd9a4214`

```dockerfile
```

-	Layers:
	-	`sha256:8931f431d92177c170028a7f04c27bced7c7c061de29ec7e5dcb21ab0af995b3`  
		Last Modified: Mon, 06 Jul 2026 16:55:00 GMT  
		Size: 37.3 KB (37263 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-zts-alpine3.23` - linux; arm variant v7

```console
$ docker pull php@sha256:ebae6be54127c35c4e9e22c9b5a0a238125780c1ec2c60b8c7160aa2c326636b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **44.6 MB (44630419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0c9d7fa549e1b8b325c6d693afad778abb6a5fa249810855fbfe42358abea28`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:18 GMT
ADD alpine-minirootfs-3.23.5-armv7.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:18 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 16:55:54 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 06 Jul 2026 16:55:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 06 Jul 2026 16:55:54 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 06 Jul 2026 16:55:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 06 Jul 2026 16:55:54 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 06 Jul 2026 16:55:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:55:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:55:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 06 Jul 2026 16:55:54 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 06 Jul 2026 16:55:54 GMT
ENV PHP_VERSION=8.5.8
# Mon, 06 Jul 2026 16:55:54 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Mon, 06 Jul 2026 16:55:54 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:55:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 06 Jul 2026 16:55:56 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:59:09 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 						--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 16:59:09 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:59:10 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 16:59:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 16:59:10 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:177f8e1e6f831989320cf2b59b7eabd21cbf36804c79506912f3a81caff426f2`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.3 MB (3261854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6a5fdf62c2e7da091274a52489c21605eec866e0185b7fc4d25e0a95177473a`  
		Last Modified: Mon, 06 Jul 2026 16:59:18 GMT  
		Size: 3.2 MB (3229672 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3732931d5798aaaf0cddf7fa106ca1768debf299aa4eb31b14cd9271e0673f6c`  
		Last Modified: Mon, 06 Jul 2026 16:59:17 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:075deabbc3a41d87db0af30a8a352300b88d06610db58099739fc87f15d19fc1`  
		Last Modified: Mon, 06 Jul 2026 16:59:17 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4703d0e339e3dafc14b87d8c0e699a93536f9b1c9c9f1e9b512af556f006a6e`  
		Last Modified: Mon, 06 Jul 2026 16:59:18 GMT  
		Size: 14.4 MB (14433742 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38b452177c05c817f043dc009789770f49823ecf92cda0a0d17654056f739943`  
		Last Modified: Mon, 06 Jul 2026 16:59:18 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5388ac550e7f61903486d092c26d7cdd04c9d66f2c07a22ee2ba00a03039564`  
		Last Modified: Mon, 06 Jul 2026 16:59:19 GMT  
		Size: 23.7 MB (23678931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a035e2ce7bcd7a53d5da911f88a160a2763c19989eac34b38cca807ff602237c`  
		Last Modified: Mon, 06 Jul 2026 16:59:19 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfabff35eab202a0c9c55c1024a4fff9ab723399c1233c09167c3ef8de9af1c2`  
		Last Modified: Mon, 06 Jul 2026 16:59:19 GMT  
		Size: 22.1 KB (22133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-zts-alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:c3cd5aca39f8449abfedb4ef6f6d6d94485085bad8dd1a26a928629b28e9110d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.1 KB (293121 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7b27c2bbe2ff065810fdf33eb064b9bb59893ac840f6f1e576de9e394d8cd57`

```dockerfile
```

-	Layers:
	-	`sha256:78dad4dc9e72b82105cd93aec08e803aa1b319f62bd0cc864fd0f5f6d2c343da`  
		Last Modified: Mon, 06 Jul 2026 16:59:17 GMT  
		Size: 255.6 KB (255643 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6609ac752cf54ca73316181fefb2061c2a1722b96da3c1974bc06b403173df9c`  
		Last Modified: Mon, 06 Jul 2026 16:59:17 GMT  
		Size: 37.5 KB (37478 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-zts-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull php@sha256:2914c0a8d9202faba3e39964976de1cc9d5e75e657321e4dd4cc443e9db08e67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **50.0 MB (50023548 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6c35ce0718af5bc99e373d8c99ee14a4de42d8c988d61de777d1eb919598d197`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:57 GMT
ADD alpine-minirootfs-3.23.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:57 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 16:51:30 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 06 Jul 2026 16:51:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 06 Jul 2026 16:51:30 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 06 Jul 2026 16:51:30 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 06 Jul 2026 16:51:31 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 06 Jul 2026 16:51:31 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:51:31 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:51:31 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 06 Jul 2026 16:51:31 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 06 Jul 2026 16:51:31 GMT
ENV PHP_VERSION=8.5.8
# Mon, 06 Jul 2026 16:51:31 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Mon, 06 Jul 2026 16:51:31 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:51:33 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 06 Jul 2026 16:51:33 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:55:01 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 						--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 16:55:02 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:55:02 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 16:55:02 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 16:55:02 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:14a4754c352fba4c6c0da8e4f01bb990463c19f7ff63e090073c385bd2bc5046`  
		Last Modified: Mon, 22 Jun 2026 12:03:31 GMT  
		Size: 4.2 MB (4181860 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c91c73b0df087bfb566eb8e5023f8d7760b1ee55204a8ea6d7aa0313b251c83`  
		Last Modified: Mon, 06 Jul 2026 16:55:11 GMT  
		Size: 3.5 MB (3476739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2369c64a02f557c3a60e1e70e7a86ac9fb89a5c47da79ad2a3cac4baa9d8623`  
		Last Modified: Mon, 06 Jul 2026 16:55:10 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c55781c7eba20117b3ff19cfd5a834a6b97b0acd0fa57019f8d442615d4fd66`  
		Last Modified: Mon, 06 Jul 2026 16:55:10 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbb2c1fcb1a199da462e4edf23540d96a824f5d7381a5d49810a69085c1c7ce9`  
		Last Modified: Mon, 06 Jul 2026 16:55:11 GMT  
		Size: 14.4 MB (14433714 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dcca380ed5115109cd4ad30adab5370847e1baba8143fa1f1a0a4fc92bc64fa`  
		Last Modified: Mon, 06 Jul 2026 16:55:12 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1b5f63cbcc5b1850706d4bcbe6415c1f0bd2e4914767a3137d47aa295739a71`  
		Last Modified: Mon, 06 Jul 2026 16:55:13 GMT  
		Size: 27.9 MB (27905019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc8367622df23c84d1be83b8a4177e81b16e9e6350e387681a01efbb539d94c3`  
		Last Modified: Mon, 06 Jul 2026 16:55:12 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eadf9d03d759d9d9d1d91e058dbbd8384ed6fddb454e0376edc62f794d98c4eb`  
		Last Modified: Mon, 06 Jul 2026 16:55:13 GMT  
		Size: 22.1 KB (22127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-zts-alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:22d92b39ec48fe267211a25d88e49983a9498815d270221ade04899aa09fc55a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.2 KB (293173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d357775f08798109f847add1099e35ded4104bd9e2bf44363393b5e69116b81`

```dockerfile
```

-	Layers:
	-	`sha256:4c0f1731bab402304fc80f9e8a88567204b61311abfe58f61dd7ed169ca295c4`  
		Last Modified: Mon, 06 Jul 2026 16:55:11 GMT  
		Size: 255.7 KB (255663 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08787d107412cb7464a7eb569106e0b32763d647e707f2947811f1ae7887ad10`  
		Last Modified: Mon, 06 Jul 2026 16:55:11 GMT  
		Size: 37.5 KB (37510 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-zts-alpine3.23` - linux; 386

```console
$ docker pull php@sha256:3126fd8fcad278810d13f7881cfab0915591b075f792b99048e40a91bcf8e5d4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.1 MB (51051764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70f936ace2423307550eb20930cb1fdbb20f9777913026e4cca87e6932bf8b89`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Mon, 06 Jul 2026 16:51:48 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 06 Jul 2026 16:51:48 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 06 Jul 2026 16:51:48 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 06 Jul 2026 16:51:48 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 06 Jul 2026 16:51:48 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 06 Jul 2026 16:51:48 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:51:48 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 06 Jul 2026 16:51:48 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 06 Jul 2026 16:51:48 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 06 Jul 2026 16:51:48 GMT
ENV PHP_VERSION=8.5.8
# Mon, 06 Jul 2026 16:51:48 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Mon, 06 Jul 2026 16:51:48 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 16:51:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 06 Jul 2026 16:51:51 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:55:26 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 						--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 16:55:26 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 16:55:27 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 16:55:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 16:55:27 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96848f4aa975808b187fd17ca6c71fd53bde7f1bd8b5ddf75f7c611bf10c264c`  
		Last Modified: Mon, 06 Jul 2026 16:55:36 GMT  
		Size: 3.5 MB (3495900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbcef16433c94e62003aca5d33d1a9c148af65de70b3420bf46f452982ffad99`  
		Last Modified: Mon, 06 Jul 2026 16:55:35 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef50aa49cb3faf7b32764780af0019822ce496bb5be0624bb5a476d5af4e47dc`  
		Last Modified: Mon, 06 Jul 2026 16:55:35 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4be8725518b22da441079de2706b90fe9d1c188608cdf652e5de5272b9f735c4`  
		Last Modified: Mon, 06 Jul 2026 16:55:36 GMT  
		Size: 14.4 MB (14433692 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9cd515ce4684789569632815f01e108f3cd200eda7799a67ba6c86acb4a561d`  
		Last Modified: Mon, 06 Jul 2026 16:55:37 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9a07c73ad2da91ff3983c6151307f900f3f13d36409de86bec291af1f7dc67a`  
		Last Modified: Mon, 06 Jul 2026 16:55:37 GMT  
		Size: 29.4 MB (29427787 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7279e2129f7b3c9bfac6ed6d31fbe93040a12ef8f0d89f10bb8003caf5930cc`  
		Last Modified: Mon, 06 Jul 2026 16:55:37 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b846f0ff96855312840b4e300ef2be9f86f8bb06b5f428d6c229e78506f83d4`  
		Last Modified: Mon, 06 Jul 2026 16:55:37 GMT  
		Size: 22.3 KB (22310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-zts-alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:9d2ac106712fea58a963ebaa42c075e416641561e6da9a24cd32d07ef2f664ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **296.5 KB (296513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f139705955d78265f0479e63627658ee39962dbb497370ef7f9b9608f05d89d6`

```dockerfile
```

-	Layers:
	-	`sha256:eb4b5f71e760dfa2db552119ab733852c2bae6344d506a80f0ab5522d06719e1`  
		Last Modified: Mon, 06 Jul 2026 16:55:35 GMT  
		Size: 259.2 KB (259222 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:013cddd33eae2072d31a55e5158e84ba6151c8f48211024434c6935a4228ce48`  
		Last Modified: Mon, 06 Jul 2026 16:55:35 GMT  
		Size: 37.3 KB (37291 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-zts-alpine3.23` - linux; ppc64le

```console
$ docker pull php@sha256:8ab7ed771cc1459abcb0a89ccdddb4708c01bd744a3fa918eb86d0193f815078
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.0 MB (50966213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d5766af6882ff30c7876fad596d4e8c3925ebf4bff8027932906f363c479c83a`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:21 GMT
ADD alpine-minirootfs-3.23.5-ppc64le.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:21 GMT
CMD ["/bin/sh"]
# Thu, 02 Jul 2026 21:04:11 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 02 Jul 2026 21:04:11 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 02 Jul 2026 21:04:12 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 02 Jul 2026 21:04:12 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 21:04:13 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 21:04:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 21:04:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 21:04:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 21:04:13 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 02 Jul 2026 21:04:13 GMT
ENV PHP_VERSION=8.5.8
# Thu, 02 Jul 2026 21:04:13 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Thu, 02 Jul 2026 21:04:13 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 17:14:00 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 06 Jul 2026 17:14:00 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 17:24:16 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 						--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 17:24:17 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 17:24:18 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 17:24:18 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 17:24:18 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:8593c4b2127f4c903557fc9d975d78f121957a1e927c866a1c54d29f11b3ba76`  
		Last Modified: Mon, 22 Jun 2026 12:03:30 GMT  
		Size: 3.8 MB (3812299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db6a45cd04d119b3c9d26d7f907356c821c9c3e39f3d7e57bf812eff4c63c2de`  
		Last Modified: Thu, 02 Jul 2026 21:09:39 GMT  
		Size: 3.6 MB (3640793 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b68be9cdc419c07baa3849d133638caa59a2b75cd45ec1a00efda68efd9ed2f`  
		Last Modified: Thu, 02 Jul 2026 21:09:39 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f785bda7aea92234457f42a98168ada58d8feb5754d3cb1e5389b329f16b02e7`  
		Last Modified: Thu, 02 Jul 2026 21:09:39 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf7c60dcf936dcf83cec9f2f36bd6f2be2016502b9a3e3ba4c74d563347b8777`  
		Last Modified: Mon, 06 Jul 2026 17:19:10 GMT  
		Size: 14.4 MB (14433731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5e0a0c934ea95a9418fa1369ea2ef0c2f9a5f5512d99f35214da28f5f121ddd`  
		Last Modified: Mon, 06 Jul 2026 17:19:09 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5477ff945fa0d06e2f4d766675a49db9d9cdfc50be79fae0272523a25b3980e0`  
		Last Modified: Mon, 06 Jul 2026 17:24:35 GMT  
		Size: 29.1 MB (29053133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5c1aa539f14e011251aa0f49d728f16edd7037fbd968cb86940977a08dcb0c2`  
		Last Modified: Mon, 06 Jul 2026 17:24:35 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a0976546c82aff84f3de44101ee986637ed63f1d34d7e9a89ef166bf2a9cb33`  
		Last Modified: Mon, 06 Jul 2026 17:24:35 GMT  
		Size: 22.2 KB (22165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-zts-alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:e0ab05a6611869ee48ea8c7449d8efe54fb51d36c96fae694720887ce4cb7c4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.1 KB (292076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bfd3aa4727fabac43ef50c7744c71a92c7bb2e06386388f5c407b238299c28c8`

```dockerfile
```

-	Layers:
	-	`sha256:4ddf0befb1f2bf6eab97226e6329b242a7a7371edbc486ea47a98a5460c9a88f`  
		Last Modified: Mon, 06 Jul 2026 17:24:35 GMT  
		Size: 255.6 KB (255640 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ca518c94f974cc80b1be3a4926cad8c8dc7ca91e87a94d8d6d3e3098e38e02e7`  
		Last Modified: Mon, 06 Jul 2026 17:24:35 GMT  
		Size: 36.4 KB (36436 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-zts-alpine3.23` - linux; riscv64

```console
$ docker pull php@sha256:070be3d478938d000f31db07ecb922905818ced795db7681f9730c5ad566e43c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.3 MB (48297658 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:20b96ebdf45ad49b80192eb62c0ba0fb040778cc086f9ee5e998adeded03df73`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Mon, 22 Jun 2026 19:30:17 GMT
ADD alpine-minirootfs-3.23.5-riscv64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:30:17 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 21:37:25 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 22 Jun 2026 21:37:25 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 22 Jun 2026 21:37:25 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 22 Jun 2026 21:37:25 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 22 Jun 2026 21:37:25 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 22 Jun 2026 21:37:25 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 22 Jun 2026 21:37:25 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 22 Jun 2026 21:37:25 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 22 Jun 2026 21:37:25 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 22 Jun 2026 21:37:25 GMT
ENV PHP_VERSION=8.5.7
# Mon, 22 Jun 2026 21:37:25 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.7.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.7.tar.xz.asc
# Mon, 22 Jun 2026 21:37:25 GMT
ENV PHP_SHA256=01ba2ed1c2658dacf91bebc8be6a4885f69b811c7993831fc48e26107ab29985
# Mon, 22 Jun 2026 21:37:37 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 22 Jun 2026 21:37:37 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 23 Jun 2026 00:47:01 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 						--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 23 Jun 2026 00:47:01 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 23 Jun 2026 00:47:06 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 23 Jun 2026 00:47:06 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 23 Jun 2026 00:47:06 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:8a1e5860a6401101356d3688f519ef896539fceeb0e505b24a7224fe7e76fdb1`  
		Last Modified: Mon, 22 Jun 2026 19:30:41 GMT  
		Size: 3.6 MB (3573240 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb42bea68a2af79d3ab5c7d97b0d79df81a465d93a9d7af266e102c3724bb82`  
		Last Modified: Mon, 22 Jun 2026 22:40:47 GMT  
		Size: 3.6 MB (3605582 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f88f0e7707ae583d6042075063a4c05b2191916232960e9aa4f37a61bde64b0a`  
		Last Modified: Mon, 22 Jun 2026 22:40:46 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a793f7413b68510356f0ff3df3c37f19645827c4d4847cff60fbdcf56de075be`  
		Last Modified: Mon, 22 Jun 2026 22:40:46 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:caf71615d818600295929d25343ae0e967e94e4a94700932e8227926ad6c07e1`  
		Last Modified: Mon, 22 Jun 2026 22:40:50 GMT  
		Size: 14.4 MB (14421117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba93106dabfd05a46c05e0abe10fe20c7d47040ed6962da905127e7fad6a3ff8`  
		Last Modified: Mon, 22 Jun 2026 22:40:48 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a81a8718cab1c4d8373d6548fddd64c1fb70c5a66099de21c9543d1674d65a`  
		Last Modified: Tue, 23 Jun 2026 00:48:23 GMT  
		Size: 26.7 MB (26671481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6b90919e7707674f443f6072478e8262b7bc08fec2b18d4354a76ad7fcedbaa`  
		Last Modified: Tue, 23 Jun 2026 00:48:19 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f962145e14a6c83a5a7d99e0883e655d573109d67ca82d0abd7380f716303682`  
		Last Modified: Tue, 23 Jun 2026 00:48:19 GMT  
		Size: 22.1 KB (22149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-zts-alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:9d59e95f6c96a7d2a0e4d99d8a7dfc09f6755f4855d8a73c3e14f15f442a57fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.0 KB (293023 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5439fe96c8ca7cb538c0456742b0b80633b99f0b97d342472835f2c50cd48fdc`

```dockerfile
```

-	Layers:
	-	`sha256:0b2caacbcb327ce3636117a02571eefc674de57a81edd2b686fae14f30b56896`  
		Last Modified: Tue, 23 Jun 2026 00:48:19 GMT  
		Size: 255.6 KB (255636 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:069564bc7b76fb3caca962c694bef3d20b6cc2a12206d5191f4c7a6157d60807`  
		Last Modified: Tue, 23 Jun 2026 00:48:19 GMT  
		Size: 37.4 KB (37387 bytes)  
		MIME: application/vnd.in-toto+json

### `php:8-zts-alpine3.23` - linux; s390x

```console
$ docker pull php@sha256:06f2e33f7df60947e78dd7a3f64255b27c06d447fa183d524f4ba25238e8e544
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.5 MB (49483325 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e848cbb348f461cffd0fd2ace90f9eefbb700a79e43b2e0917a40062f63854f`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php","-a"]`

```dockerfile
# Mon, 22 Jun 2026 19:19:13 GMT
ADD alpine-minirootfs-3.23.5-s390x.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:19:13 GMT
CMD ["/bin/sh"]
# Thu, 02 Jul 2026 20:41:37 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 02 Jul 2026 20:41:37 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 02 Jul 2026 20:41:37 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 02 Jul 2026 20:41:37 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 02 Jul 2026 20:41:38 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 02 Jul 2026 20:41:38 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:41:38 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 02 Jul 2026 20:41:38 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 02 Jul 2026 20:41:38 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 02 Jul 2026 20:41:38 GMT
ENV PHP_VERSION=8.5.8
# Thu, 02 Jul 2026 20:41:38 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Thu, 02 Jul 2026 20:41:38 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 17:30:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 06 Jul 2026 17:30:10 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 17:50:20 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 						--enable-embed 				--enable-zts 		--disable-zend-signals 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 17:50:22 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 17:50:27 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 17:50:27 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 17:50:27 GMT
CMD ["php" "-a"]
```

-	Layers:
	-	`sha256:e7ed98545f58cf5b2daa8ddc132c859b15cb780cb2ee2246e28415eaba3d63c8`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.7 MB (3707249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f5f26e7daf175a3fe326e09d49d4ce99c2ab76f9c3082749311230f8d6cee9`  
		Last Modified: Thu, 02 Jul 2026 20:47:29 GMT  
		Size: 3.7 MB (3654481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec073cea38c47f926efaffe0251f7719fecce0a8e12f6d51f7d27c83a44856b8`  
		Last Modified: Thu, 02 Jul 2026 20:47:29 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:570f861b4caba4ee0b4a9fa3d9bda4c3437a2368e47eb35c5c668168c1ed68ec`  
		Last Modified: Thu, 02 Jul 2026 20:47:29 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6df171548ae3fd142f172d62c8d63375b6cca1faa198dcc619814a7e12b7abf`  
		Last Modified: Mon, 06 Jul 2026 17:44:36 GMT  
		Size: 14.4 MB (14433731 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc9baf2e8ce793d81a71ff2819543a4689e8ac96b83a65c5883ab977bdf546c6`  
		Last Modified: Mon, 06 Jul 2026 17:44:32 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d7f4e3a7af56f19cc49997749af18e8403fb379360627b1580923a9ee660e30`  
		Last Modified: Mon, 06 Jul 2026 17:51:15 GMT  
		Size: 27.7 MB (27661598 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:061fa0d8ad46b5e153b4ad83a3c10f50a27d678e959b13998f5879263176afd1`  
		Last Modified: Mon, 06 Jul 2026 17:51:09 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f73e3e149a6ede7722e5a6dab1fe788fa10ea040b7292f00ac04c92bdfc56d2e`  
		Last Modified: Mon, 06 Jul 2026 17:51:09 GMT  
		Size: 22.2 KB (22169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `php:8-zts-alpine3.23` - unknown; unknown

```console
$ docker pull php@sha256:df7ec2da9ca49eeea2e2df4612b7b3feb45c8eb97d06eb614ee4b31c90c0b430
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.0 KB (291988 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46c595edb1e950e19ea70a7675c9e2578d971558748b5db23e07c200e47791e6`

```dockerfile
```

-	Layers:
	-	`sha256:4e7cdadccd7ff3d3d94317640388d2832c512df0110b11c6c545ca8a6a970dae`  
		Last Modified: Mon, 06 Jul 2026 17:51:09 GMT  
		Size: 255.6 KB (255606 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f83d8089d88f494e90af3a5e27a25efd6c804e246f818256a4d646bffb023218`  
		Last Modified: Mon, 06 Jul 2026 17:51:08 GMT  
		Size: 36.4 KB (36382 bytes)  
		MIME: application/vnd.in-toto+json
