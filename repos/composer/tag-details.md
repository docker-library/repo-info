<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `composer`

-	[`composer:2`](#composer2)
-	[`composer:2.11`](#composer211)
-	[`composer:2.11.0`](#composer2110)
-	[`composer:2.2`](#composer22)
-	[`composer:2.2.31`](#composer2231)
-	[`composer:latest`](#composerlatest)

## `composer:2`

```console
$ docker pull composer@sha256:c7f68260503e3c1f0ece10bdbe84519fd98d48ba091f2c02f16ea94a7faae337
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

### `composer:2` - linux; amd64

```console
$ docker pull composer@sha256:e86de4d29f50ca4eb982db0f1fd57a38a5019972b5697a89f75c2f551c1451a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77967306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75dfdea8e68c54fcb28eade4c64e069feeef2a01e4b266726ba756679450dfe1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 22:47:39 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 22:47:39 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 22:47:39 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 22:47:39 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 22:47:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 22:47:41 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:51:04 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 22:51:04 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:51:05 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 22:51:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 22:51:05 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:30:48 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:30:48 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:31:01 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:31:01 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:31:01 GMT
ENV COMPOSER_VERSION=2.11.0
# Thu, 29 Oct 2026 17:31:01 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:31:01 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:31:01 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:31:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:31:01 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:376608520fec13724c5434a1ded7eb9031a39b655141a2e04968e0fbe586fdbc`  
		Last Modified: Wed, 21 Oct 2026 22:51:13 GMT  
		Size: 3.5 MB (3490552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c8980f3dbe0d688f813899b22c18938c913dd1fa4ea8b5432c84db8af5299c5`  
		Last Modified: Wed, 21 Oct 2026 22:51:13 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a137d44a72ff85dcecc5762b37ebe8661a17e4798f7cf59d124c8098d9e928`  
		Last Modified: Wed, 21 Oct 2026 22:51:13 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:445b9af79994b4888ee58cb173cc36114acdef2a015f895661e43602c1e9ed38`  
		Last Modified: Wed, 21 Oct 2026 22:51:14 GMT  
		Size: 14.6 MB (14577842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:885fc261a1a10bba4027457db8b8108658f2ce839cc0442070db12eb475c6632`  
		Last Modified: Wed, 21 Oct 2026 22:51:14 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc76ccfcd45bf400236f2db0f8239b29907ccaa8bb0fa42f4d4b5e115cb8cbf9`  
		Last Modified: Wed, 21 Oct 2026 22:51:15 GMT  
		Size: 22.9 MB (22905684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cda05494a4f87da8838d70692427889af18083405f03cb926211ece66107cdc`  
		Last Modified: Wed, 21 Oct 2026 22:51:15 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6044f6b455c81c7b7e479f51a06a2742bcca49eed7f0917c51c4ab0d2b9df650`  
		Last Modified: Wed, 21 Oct 2026 22:51:15 GMT  
		Size: 22.4 KB (22362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85fb19fe0e1a3a7aecdbc55a1a3ce2f1524d6a3c6f778dfd9c06233ce2f6f829`  
		Last Modified: Thu, 29 Oct 2026 17:31:12 GMT  
		Size: 32.0 MB (32028535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e1f05c8f0c423b0141b053cfb222de1c6748b984268504ee292d032975c80a0`  
		Last Modified: Thu, 29 Oct 2026 17:31:11 GMT  
		Size: 260.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6396a5a72d7276167000bb9ed17aa6e2204248c59140e2b8c2b23c29b4575da4`  
		Last Modified: Thu, 29 Oct 2026 17:31:11 GMT  
		Size: 1.1 MB (1084366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b68e4d98f8f6c9eeebad55ed6dbcb0cf8a557dae91cff2f1b86f5d10444cdd1`  
		Last Modified: Thu, 29 Oct 2026 17:31:11 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ee9875c3f8400f83ce9e094c2b7e079b3420aed96e544fa622eaa71de7a637b`  
		Last Modified: Thu, 29 Oct 2026 17:31:10 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2` - unknown; unknown

```console
$ docker pull composer@sha256:e3079c0b68aa0ed08ad5442f7a573b7013ce31189f21e55b1935597516686968
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c81a503de224163178c1068f5a2a94e6d274352a12c2753681ce522ac85a54ee`

```dockerfile
```

-	Layers:
	-	`sha256:a2870af674ef24ffd0901b5418029e7ece458cba891bde6dc9bb23768f4b5a10`  
		Last Modified: Thu, 29 Oct 2026 17:31:11 GMT  
		Size: 2.2 MB (2181528 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46f14da6c9116c2a20ee9588fe7efc97599daa8cde603b8ac99d0ef02d4b8d5b`  
		Last Modified: Thu, 29 Oct 2026 17:31:11 GMT  
		Size: 30.6 KB (30589 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2` - linux; arm variant v6

```console
$ docker pull composer@sha256:6d4f617e5526affc2a276f548eeeb15a39f69c1c958a101f064c4a3b213121e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.3 MB (74279862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9705f556bbd3af5fbf5f9bc7d1a2d5e8794673291353a470bb95cd18030f42b7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:17:13 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:17:13 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:17:13 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:17:13 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 23:17:16 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:17:16 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:20:21 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:20:21 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:20:22 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:20:22 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:20:22 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:30:28 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:30:28 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:30:46 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:30:46 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:30:46 GMT
ENV COMPOSER_VERSION=2.11.0
# Thu, 29 Oct 2026 17:30:46 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:30:46 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:30:46 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:30:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:30:46 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34261f84d7ef8445bcf616905088020a73742fa8cba3a783277534f96cb919e3`  
		Last Modified: Wed, 21 Oct 2026 23:20:28 GMT  
		Size: 3.4 MB (3445779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d079375510e49850f6ce5b7baae755d73ea08962a2779737fac5cb01f8ec016`  
		Last Modified: Wed, 21 Oct 2026 23:20:28 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c51265cbeda0a655d6bda2d76d86d971d13e98f0825566cd9da799b688fe2a`  
		Last Modified: Wed, 21 Oct 2026 23:20:28 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75e0d2bfaec09bb1210bf610416028293d9e172d1ad89eb0fa9d68877fdc76a5`  
		Last Modified: Wed, 21 Oct 2026 23:20:28 GMT  
		Size: 14.6 MB (14577852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94d48ed0a90a40bd66f2fc38ebb1cd43c2776488739d1a857237bf1f9536283b`  
		Last Modified: Wed, 21 Oct 2026 23:20:29 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4e0148715c98c76112803e4e7bba388c2238925c8a8ee176f690278e8fb2825`  
		Last Modified: Wed, 21 Oct 2026 23:20:29 GMT  
		Size: 19.8 MB (19828719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:182bc95bd78f5e925cd9466a1e61d7e89937e65aa86996b0e894e34c6692a290`  
		Last Modified: Wed, 21 Oct 2026 23:20:29 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:898d0ebd89fbea4e27e9048eacb3b29f3f1758a0d29107f9220b80d08cd129cc`  
		Last Modified: Wed, 21 Oct 2026 23:20:29 GMT  
		Size: 22.1 KB (22133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f57891c8c2662dd2774d5961ee592676f16836343cd0beb00f1290e6bfe95822`  
		Last Modified: Thu, 29 Oct 2026 17:30:55 GMT  
		Size: 31.8 MB (31758658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f37b2cc9499bb61e3e1157c15291fcf9d69233e5945a85e809440686c4bcba7`  
		Last Modified: Thu, 29 Oct 2026 17:30:54 GMT  
		Size: 259.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c06914b7fb25f0136557c64fd9b3d7464a409e07857d340cae0bc29369c8fa05`  
		Last Modified: Thu, 29 Oct 2026 17:30:54 GMT  
		Size: 1.1 MB (1083569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552166de2658e7936a65b7e8275a84e3eb91033952f887eb8f7881cb1f3cb77b`  
		Last Modified: Thu, 29 Oct 2026 17:30:54 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9477ba0f89e76eea4dfdc8eeb30c2192f881c4db0feb03670580307d3f6fe20`  
		Last Modified: Thu, 29 Oct 2026 17:30:55 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2` - unknown; unknown

```console
$ docker pull composer@sha256:de76fdeadf0a2330b19e224b27bdff82bccf51c674559efedf57e2c902b2a0b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3181dba55c9f8444cb0a5a4bf0e8234dac6e5d0a849ea6c0f84f56aea3d53c9f`

```dockerfile
```

-	Layers:
	-	`sha256:4b5f6e5b45638128b718c890569acde2afecf072eb73bbeb43651a5b88d708c1`  
		Last Modified: Thu, 29 Oct 2026 17:30:53 GMT  
		Size: 30.5 KB (30480 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2` - linux; arm variant v7

```console
$ docker pull composer@sha256:f669caebe639e48213b48345686447bec8749a6881f46fea9987e247b02f3f5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.3 MB (71265785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c201fb900230e0e05f150d2097a2bd852aec29f0c39ca687e9fadc3041b64985`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:40 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:20:40 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:20:41 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:20:41 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:20:41 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 23:20:44 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:20:44 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:23:55 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:23:55 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:23:56 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:23:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:23:56 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:30:43 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:30:43 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:30:59 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:30:59 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:30:59 GMT
ENV COMPOSER_VERSION=2.11.0
# Thu, 29 Oct 2026 17:30:59 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:30:59 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:30:59 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:30:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:30:59 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce0acf9ba5220aef037466d130f7f326ab9ef0c5870793956e96251f1836efe3`  
		Last Modified: Wed, 21 Oct 2026 23:24:03 GMT  
		Size: 3.3 MB (3257820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:865067921a4c0ed209af9565b5e8d40435c227b21307684d39da57ded4474af6`  
		Last Modified: Wed, 21 Oct 2026 23:24:03 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8ba9010c2935c6ada5f0257931f104bd958a55c474c40a1fab34bf91aede0aa`  
		Last Modified: Wed, 21 Oct 2026 23:24:03 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4fa67a9851204f8bf42909cf4ffafba10dd11cec11681adc94770c22650a2a5`  
		Last Modified: Wed, 21 Oct 2026 23:24:03 GMT  
		Size: 14.6 MB (14577854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35f620c032a4750276d551ddcb4880624b877a0482d36fda0b5f34121aeb34e6`  
		Last Modified: Wed, 21 Oct 2026 23:24:04 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3abfc41d850665317cc58782f4e62b19d10ecd32c08c53d22e4d78747accd735`  
		Last Modified: Wed, 21 Oct 2026 23:24:05 GMT  
		Size: 18.7 MB (18711848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ebc848c55d1fce83940950291e534af2567abf8506be91457699fb37177e48`  
		Last Modified: Wed, 21 Oct 2026 23:24:04 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4b9053a6d68424b0181b2ae9769d4e6c1d30f41f746fefd4254f9ac384b79a0`  
		Last Modified: Wed, 21 Oct 2026 23:24:05 GMT  
		Size: 22.1 KB (22141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aec250e436276e2702f8fbad5704c5e79ef99213454fd8c379e5590ce148580`  
		Last Modified: Thu, 29 Oct 2026 17:31:08 GMT  
		Size: 30.4 MB (30350969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b08f3642912e723a82d5a3436bbeacad3549cfd5d2cdee28c9081907bf7bafa9`  
		Last Modified: Thu, 29 Oct 2026 17:31:08 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc4c12954a2c69714a6026738f60f9c43b1eea159fb86531685d7fe6f04122de`  
		Last Modified: Thu, 29 Oct 2026 17:31:08 GMT  
		Size: 1.1 MB (1073637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97f099795c9f3ffe89383586004a668892dcf6b125437b7ede57ab7966ca5e45`  
		Last Modified: Thu, 29 Oct 2026 17:31:08 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb70b5c51ba68fa875c2d33664ccd7b39a23982aa399a627973f6900bb52d5bb`  
		Last Modified: Thu, 29 Oct 2026 17:31:09 GMT  
		Size: 92.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2` - unknown; unknown

```console
$ docker pull composer@sha256:06b08aa69c0f1cac931cdc30c0e75240c892ba1acc7923bf4986d38226b8a26a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a0a29043ab7e9f3e20ba5ad7c09586b789b2d90feaa8dc4b6e2834ba2ac18e1`

```dockerfile
```

-	Layers:
	-	`sha256:614634f76c05b0eea54197069aa01665b1265e857cf784267cf81b9f9bc51761`  
		Last Modified: Thu, 29 Oct 2026 17:31:08 GMT  
		Size: 2.2 MB (2181193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c8802450a6d5b79c3a87fd55db2eb9b6e8b9c0de90f871587bbf6c40defc6f2`  
		Last Modified: Thu, 29 Oct 2026 17:31:07 GMT  
		Size: 30.7 KB (30695 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2` - linux; arm64 variant v8

```console
$ docker pull composer@sha256:f9a0252b680e7a7fe4d19319f2e4cf6d93f9bc577008763ed09972ca1db91559
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.6 MB (77629215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f35ff59b041d24c529794643bd3a41656e59024d3c7e29e89ef27caad160a0fa`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:13:13 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:13:13 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:13:13 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:13:13 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 23:13:16 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:13:16 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:16:44 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:16:44 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:16:45 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:16:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:16:45 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:30:30 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:30:30 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:30:43 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:30:43 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:30:43 GMT
ENV COMPOSER_VERSION=2.11.0
# Thu, 29 Oct 2026 17:30:43 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:30:43 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:30:43 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:30:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:30:43 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ab96d4a471bafc26cb4609f5785273f51fa52727219feb41098a0655b7658aa`  
		Last Modified: Wed, 21 Oct 2026 23:16:53 GMT  
		Size: 3.5 MB (3500755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e20eb32fc8542481a4e72dbf0c37a7e126b93272dc1e00b90581d62087c5e76`  
		Last Modified: Wed, 21 Oct 2026 23:16:37 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bff1f2144e6df91e63a5b8246cf332533431fe69e26df8d7f18ee88976ad954b`  
		Last Modified: Wed, 21 Oct 2026 23:16:37 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04dec9fd6d8b70aa38749bc013fed907c2d3c675e9061ade9625f6ca2d14eb7a`  
		Last Modified: Wed, 21 Oct 2026 23:16:53 GMT  
		Size: 14.6 MB (14577831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634514a3c9cca89834cf85309c526c8b3239f295a232ce77e6bcebe71ead3a02`  
		Last Modified: Wed, 21 Oct 2026 23:16:38 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0710d863a911e052326baf681756dce2ae1f5e08b99c85010e313334afa0b8fe`  
		Last Modified: Wed, 21 Oct 2026 23:16:53 GMT  
		Size: 22.1 MB (22088277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1122b3f336c096b4a94452448cc32afb1980871b367f4925b881483999830585`  
		Last Modified: Wed, 21 Oct 2026 23:16:52 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d55afb5318bd77aff94bca26afbb7ea6f7bf1afc7e68c5611fac7e8d1bc6ad`  
		Last Modified: Wed, 21 Oct 2026 23:16:53 GMT  
		Size: 22.2 KB (22159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbed5be2d973f35addb37f6c81535640e32d136e6c209c894cde33ce739cdb49`  
		Last Modified: Thu, 29 Oct 2026 17:30:54 GMT  
		Size: 32.2 MB (32161852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dce8f775ab4a2a9794239e7511ec3a0654ae826b8e0521f5930017dbd492a56f`  
		Last Modified: Thu, 29 Oct 2026 17:30:53 GMT  
		Size: 258.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a71ef0b8df688bae2ae638d0631435deff2746b5b424051f0f55d1a5e6b39ed`  
		Last Modified: Thu, 29 Oct 2026 17:30:53 GMT  
		Size: 1.1 MB (1083004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fab9d4539c170c2ac1e7da95fb9eda3abe1bb51e422c527c88cf01a5a311fd9`  
		Last Modified: Thu, 29 Oct 2026 17:30:54 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cf0800d1ef522f85f450c05a078924f8c66793d2dc07ca2c770a6c4d178196f`  
		Last Modified: Thu, 29 Oct 2026 17:30:55 GMT  
		Size: 92.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2` - unknown; unknown

```console
$ docker pull composer@sha256:262f089c5932f187820ef34320a16b70151fef5bde04bc8d5423c17c6be9e90d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:068e37674b6b2d77c1f36e609f851761eda36adabd4d439e1a8be663d0ee738f`

```dockerfile
```

-	Layers:
	-	`sha256:a6cb07329a4e471ac0ad157daf50edee4b30ceab8584ac883f3af5504fae8bcd`  
		Last Modified: Thu, 29 Oct 2026 17:30:53 GMT  
		Size: 2.2 MB (2181027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35861f873bf939a2329c2a26b7d42cb3c55a96bd60f5b56f5724665423397949`  
		Last Modified: Thu, 29 Oct 2026 17:30:53 GMT  
		Size: 30.7 KB (30723 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2` - linux; 386

```console
$ docker pull composer@sha256:c428b310fb802f219534fc5faf24ac0e43cf6efc233d462f602ab1f983f0950d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.8 MB (78819731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53fce2ad576a6302b365198b0c0a06f036cdf725ae6a7e7e7fecfe1dbdd9f809`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 21 Oct 2026 22:50:43 GMT
ADD alpine-minirootfs-3.24.3-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:50:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:13:13 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:13:13 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:13:13 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:13:13 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 23:13:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:13:18 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:16:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:16:41 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:16:41 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:16:41 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:16:41 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:29:52 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:29:52 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:30:05 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:30:05 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:30:05 GMT
ENV COMPOSER_VERSION=2.11.0
# Thu, 29 Oct 2026 17:30:05 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:30:05 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:30:05 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:30:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:30:05 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:f89afe85a29e874c0bc6d49b09150af4f08fbc4e6db82e7870677ef76977c07d`  
		Last Modified: Wed, 21 Oct 2026 22:50:49 GMT  
		Size: 3.7 MB (3678996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90ab361813d0997c5956c46b9c4ea156280d4dcd71d38ca46d3331e3eec0d1b3`  
		Last Modified: Wed, 21 Oct 2026 23:16:49 GMT  
		Size: 3.5 MB (3524290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdeb61fe97e7f8c8cd86e9a1db1dcccf56a7a9fb75084e974785b13d42a4df58`  
		Last Modified: Wed, 21 Oct 2026 23:16:44 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bff1f2144e6df91e63a5b8246cf332533431fe69e26df8d7f18ee88976ad954b`  
		Last Modified: Wed, 21 Oct 2026 23:16:37 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:037030204c9a0cd7860b02f5621cae6c1ec61a5a2ad3fd2b56b077c4be4381c2`  
		Last Modified: Wed, 21 Oct 2026 23:16:50 GMT  
		Size: 14.6 MB (14577825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11c65f33ab044b67b2dfcf45d46cfa8cac26aa1db0259b1e5aa92381bd9ee998`  
		Last Modified: Wed, 21 Oct 2026 23:16:49 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80691052feb5efdf9fd906dee8ac4f3be3172c1c188cd1b56fa061fcd37c8764`  
		Last Modified: Wed, 21 Oct 2026 23:16:50 GMT  
		Size: 23.4 MB (23384278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c8ef2140f6fd7bc9d64d3a3a96c30b190ed438a16ac9edd87987dbbe08b1fd3`  
		Last Modified: Wed, 21 Oct 2026 23:16:50 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a778e09088262a247914f0c3db8a642de7710967a500727f9f00476356d45dd`  
		Last Modified: Wed, 21 Oct 2026 23:16:50 GMT  
		Size: 22.3 KB (22341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac3fbcd85934d967cda395612affadb73b79006a7cea140c5d8b5bbba1a912cf`  
		Last Modified: Thu, 29 Oct 2026 17:30:15 GMT  
		Size: 32.5 MB (32530480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1efb8e1626c554cdef0e559cc778505c1a143194134c29cc50c0a22338aa12b9`  
		Last Modified: Thu, 29 Oct 2026 17:30:14 GMT  
		Size: 259.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022412a6f26362dfb96c53e9e5a747e4a5d216b1514d4c0dcbc77c16e661b865`  
		Last Modified: Thu, 29 Oct 2026 17:30:14 GMT  
		Size: 1.1 MB (1096669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c42f7583028a0cc1ad93a29d6ba0c6c20e6b7686f92e6a4b51a585aaa717f79`  
		Last Modified: Thu, 29 Oct 2026 17:30:14 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d937ecbaf6418c5b517bf1394c98bc8e9c8eef2509a9e153ae234b5e2db48e11`  
		Last Modified: Thu, 29 Oct 2026 17:30:16 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2` - unknown; unknown

```console
$ docker pull composer@sha256:487570753bcd8f8c0d2e47ff32697804339290861eecdb36819469637b085124
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3732dcdc96a924912e5a5e4b21fb42ea8f7909d9128a00afa8a5ccc6180af5cd`

```dockerfile
```

-	Layers:
	-	`sha256:6715fd717c8b54a598b673e3f3eb4a49953c56c0ff60dc30d71fe3687d958659`  
		Last Modified: Thu, 29 Oct 2026 17:30:14 GMT  
		Size: 2.2 MB (2181317 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1456ea96a94a055c6f914a394f87d3adb70a48517647732166c83cd66177d828`  
		Last Modified: Thu, 29 Oct 2026 17:30:14 GMT  
		Size: 30.6 KB (30553 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2` - linux; ppc64le

```console
$ docker pull composer@sha256:84b15d61992b9f045390476d4ace121239c4d6801cf931426ace18152f8935db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.3 MB (79345831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7d104bd06c24f46df61e79fe921eaf37b9aedf2f739416a450669a0054fa666`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 10:41:08 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 22 Oct 2026 10:41:08 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 22 Oct 2026 10:41:08 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 22 Oct 2026 10:41:08 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 22 Oct 2026 10:41:10 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 22 Oct 2026 10:41:10 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_VERSION=8.5.12
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Thu, 22 Oct 2026 10:58:03 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 22 Oct 2026 10:58:03 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 11:04:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 22 Oct 2026 11:04:42 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 11:04:44 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 22 Oct 2026 11:04:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 22 Oct 2026 11:04:44 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:29:36 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:29:37 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:30:22 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:30:22 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:30:22 GMT
ENV COMPOSER_VERSION=2.11.0
# Thu, 29 Oct 2026 17:30:22 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:30:23 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:30:23 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:30:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:30:23 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34960f353c419102a4e6aa8def25e776b62fc861c2c7f3498ae163f83c42a913`  
		Last Modified: Thu, 22 Oct 2026 10:45:49 GMT  
		Size: 3.7 MB (3665469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc8b6dad17e9a4de16850dd156812ecc0a368713613a848e61da65fc704edbe`  
		Last Modified: Thu, 22 Oct 2026 10:45:48 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9180d692f4fcd0b027b940ab4548e62ecdbfcd62b8438a632e69b2299aacdcd`  
		Last Modified: Thu, 22 Oct 2026 10:45:48 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed005116498b48ae5fb54d7e5bdb983c0af7f680ab5f96a9af7e62e19c268c64`  
		Last Modified: Thu, 22 Oct 2026 11:05:23 GMT  
		Size: 14.6 MB (14577836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5b947ba4505c12d11d5511f4a89c2874eeda46e7503f8af574594f6a83690ef`  
		Last Modified: Thu, 22 Oct 2026 11:05:22 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5273c4824064374eca4303b43014f08be9f99280099f840ee4679b254144d64`  
		Last Modified: Thu, 22 Oct 2026 11:05:23 GMT  
		Size: 23.0 MB (23028687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f81004a0da47bf741288eabcbcf2ac176bc1cffc637ad8554706ad4d111108`  
		Last Modified: Thu, 22 Oct 2026 11:05:22 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c7e2b7ed5a28fea078ad8264e59a9ca084f211368fe02a849dba03fb7d32daa`  
		Last Modified: Thu, 22 Oct 2026 11:05:23 GMT  
		Size: 22.2 KB (22178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2b0957b71d7d4ad0abe8cac2c658929a70ac811658a8fd94b73a607aa56d927`  
		Last Modified: Thu, 29 Oct 2026 17:30:52 GMT  
		Size: 33.1 MB (33135684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc707c814f6ccf6274528f7cbdc8a047daaebb51e8d81820d4a3ca4eb39e27f0`  
		Last Modified: Thu, 29 Oct 2026 17:30:51 GMT  
		Size: 260.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35b0ebfab45fa166c61625fa23bd2e8409c1cd298df18714b176c5a3d48f403c`  
		Last Modified: Thu, 29 Oct 2026 17:30:51 GMT  
		Size: 1.1 MB (1090291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdadbb2226fe1f0cfc0711d2542ca11857ecd17bca3b3a5fb4032d2fde15f162`  
		Last Modified: Thu, 29 Oct 2026 17:30:51 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3907b9485e65baf437f23343b5c10fc98b63f92ed666122ac6554de6606c090`  
		Last Modified: Thu, 29 Oct 2026 17:30:52 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2` - unknown; unknown

```console
$ docker pull composer@sha256:5f175eb0823caceeacd090cfadf6b2f5ec351697780cb7a7ed81606268888c8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e72e4dc086c51745566abdc704ca9561f1239d688efffd941f2215b2cd354f7`

```dockerfile
```

-	Layers:
	-	`sha256:1c4df9f37086974b2e16130441d9d01d5a5c93386b8e0786f9fb9323a54ebbaf`  
		Last Modified: Thu, 29 Oct 2026 17:30:51 GMT  
		Size: 2.2 MB (2181376 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5fb8c347f8a361f71e9d3d7314d1f29077826fc436a1bdd40238b059da6a3e3`  
		Last Modified: Thu, 29 Oct 2026 17:30:50 GMT  
		Size: 30.6 KB (30637 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2` - linux; riscv64

```console
$ docker pull composer@sha256:e6d3961eaef409a8425cb992665e1d48202c4a8f1cb967ac5e226131cc211db0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.2 MB (76229575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebc6f7f98dab21e81a2403cdfaee8202aa0482f24320966f39a8f17deb68d3c5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

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
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHP_VERSION=8.5.12
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Sat, 24 Oct 2026 21:26:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Sat, 24 Oct 2026 21:26:17 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 24 Oct 2026 22:31:26 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 24 Oct 2026 22:31:26 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 24 Oct 2026 22:31:30 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 24 Oct 2026 22:31:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 24 Oct 2026 22:31:30 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 04:17:19 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 04:17:20 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 04:20:41 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 04:20:41 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 04:20:41 GMT
ENV COMPOSER_VERSION=2.10.3
# Thu, 29 Oct 2026 04:20:41 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 04:20:41 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 04:20:41 GMT
WORKDIR /app
# Thu, 29 Oct 2026 04:20:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 04:20:41 GMT
CMD ["composer"]
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
	-	`sha256:6768c3a60b96d1e94f5f0ec89ff6b88f778ab6b895c2d00cf52e5e594f1b63a2`  
		Last Modified: Sat, 24 Oct 2026 22:32:52 GMT  
		Size: 14.6 MB (14577866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a375e2dcca56a7f46e843223639300f2535afa5d4449703ceb9f70b2f7c850c`  
		Last Modified: Sat, 24 Oct 2026 22:32:48 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e6d51c6bc9763928c45bc4c7f3c9e22f1958c8669a313c24eff6881bb69553f`  
		Last Modified: Sat, 24 Oct 2026 22:32:53 GMT  
		Size: 21.1 MB (21079704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27ba0ddb9e946940cc1e746066626fe028854ecd7a34de4ab1f46a5a61e5d528`  
		Last Modified: Sat, 24 Oct 2026 22:32:48 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90dbbbb063d2ea4d1265014ea29584541fa004ee62bb54094c4f8de44e090163`  
		Last Modified: Sat, 24 Oct 2026 22:32:50 GMT  
		Size: 22.2 KB (22170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75b43b25100b405ab5448dd9cbf0ced2fc5bd74966566b266070ba1424aa1fb6`  
		Last Modified: Thu, 29 Oct 2026 04:22:22 GMT  
		Size: 32.2 MB (32246017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:354267519d9a567124a67aecfbec7041b69555f7eedf4838f1b22fc30508c9a1`  
		Last Modified: Thu, 29 Oct 2026 04:22:17 GMT  
		Size: 260.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75a5e15f19c2084dc57af02a5f30456085d5408dc816ce7a2c1bc7601a534acd`  
		Last Modified: Thu, 29 Oct 2026 04:22:17 GMT  
		Size: 1.1 MB (1081233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2f3e99fd36e2dc2c9e911d4319ca11a1af1fafa8dd1ee2d356dd14a71ba7052`  
		Last Modified: Thu, 29 Oct 2026 04:22:17 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1644f3a96c860c6807fd02566017f19a9dee7108f28fc7cef7515aa54cedda0`  
		Last Modified: Thu, 29 Oct 2026 04:21:27 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2` - unknown; unknown

```console
$ docker pull composer@sha256:a4b7749335c633f19367f8f2eb56727d731f31b3a7b76647a72f8f405085a86b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b7858f5cc167c2e94bf6baef08d5166c856d974fd80882afe0e31d19295948f`

```dockerfile
```

-	Layers:
	-	`sha256:8cb4a8dc0ca7269f97e4c97964b5cbdc5238e1617345d316bc3dfed8f874ade5`  
		Last Modified: Thu, 29 Oct 2026 04:22:17 GMT  
		Size: 2.2 MB (2180100 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45a646af8bee972c980726b0574fc2eccbf3a875f01b303456b1df04f02e2743`  
		Last Modified: Thu, 29 Oct 2026 04:22:17 GMT  
		Size: 30.7 KB (30734 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2` - linux; s390x

```console
$ docker pull composer@sha256:d5a086e312cf93494465dd450b01b0a1a6dc5676638e82b8695e5fd8229bed6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.8 MB (77826917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad61071e371650c28015669e637fa033f709d1f7b248fe85c3cc59a10432898`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:20:23 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:20:23 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:20:23 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:20:23 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 23:21:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:21:51 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:25:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:25:41 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:25:42 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:25:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:25:42 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:29:36 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:29:37 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:29:57 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:29:57 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:29:57 GMT
ENV COMPOSER_VERSION=2.11.0
# Thu, 29 Oct 2026 17:29:57 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:29:58 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:29:59 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:29:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:29:59 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3994947cd88d28cfb3f991c5b6fd75edffe6f7e091429cad77f8db61869091f`  
		Last Modified: Wed, 21 Oct 2026 23:24:22 GMT  
		Size: 3.7 MB (3683873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:187dd63caa64ac1d5888e1f101c2c414d74d260eef5fc095e9dc6dbb374f7267`  
		Last Modified: Wed, 21 Oct 2026 23:24:21 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:428c8b641892350c28dd8dc3645e567eb63ac63033b1d7e5e28f1a6b6bf3670e`  
		Last Modified: Wed, 21 Oct 2026 23:24:21 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dad3e2711e594137e332b0b8d206cc1ca16f454e8205de6bf3f1053fa4856557`  
		Last Modified: Wed, 21 Oct 2026 23:25:54 GMT  
		Size: 14.6 MB (14577842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ecc9de14cbfddefd10b5b12025384105b6fcfd3288c1bfe5f156560e839f6fb`  
		Last Modified: Wed, 21 Oct 2026 23:25:54 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f74c95f00b7275ee5e9eb1564dd340bf6b9bdfdf5827a48aa756c780a8d2792e`  
		Last Modified: Wed, 21 Oct 2026 23:25:54 GMT  
		Size: 21.7 MB (21742396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34c0db3041505705d6ed118114ccaf6c9d8f46e852555eee7afbaca8eb7c20f6`  
		Last Modified: Wed, 21 Oct 2026 23:25:53 GMT  
		Size: 2.4 KB (2442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c00b5eab2e06d4e48cca5a4774e319d8ad4a2ebd14148c4c964ff1e659610c`  
		Last Modified: Wed, 21 Oct 2026 23:25:55 GMT  
		Size: 22.1 KB (22132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:004dea91dfd2ea6b46667f58973690fc57366ea82b570234a6fed19149c48611`  
		Last Modified: Thu, 29 Oct 2026 17:30:27 GMT  
		Size: 33.0 MB (32988671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eb5cd95d8cb3fdc952b0c0a9be4224a576eb630da18c0c96bf9ef0f72e9ca42`  
		Last Modified: Thu, 29 Oct 2026 17:30:26 GMT  
		Size: 260.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecdd34b3ab48b900aacea486fc84423abb645ce5440f149cd0ebd81de2838ce3`  
		Last Modified: Thu, 29 Oct 2026 17:30:26 GMT  
		Size: 1.1 MB (1087450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cca4ae567647f5d3dfac677ee075d6345dfd6f7bbb7440b15a05c824f71cedb`  
		Last Modified: Thu, 29 Oct 2026 17:30:26 GMT  
		Size: 415.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78d0c2860d06593a40f07ea535d170d88064742c3645fdb6a67f053a87879c0f`  
		Last Modified: Thu, 29 Oct 2026 17:30:25 GMT  
		Size: 92.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2` - unknown; unknown

```console
$ docker pull composer@sha256:7c817aa3fc7e7925e50091e9b3c2b87ddcf768958fb86c3ae3164ed7ecf53995
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:649abc8eccf5690c0e4f38a2546e3cedda4fb3139abcc643af05ea31c3bc9a1c`

```dockerfile
```

-	Layers:
	-	`sha256:2649e690cc5e96d99076e9d8ea264757096604f2b922518c82d44d7350ca3c71`  
		Last Modified: Thu, 29 Oct 2026 17:30:26 GMT  
		Size: 2.2 MB (2180784 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ffc554f713937193a56b13d9e6845b065484f348f9e33ec242c0e8b2b11bce86`  
		Last Modified: Thu, 29 Oct 2026 17:30:25 GMT  
		Size: 30.6 KB (30588 bytes)  
		MIME: application/vnd.in-toto+json

## `composer:2.11`

```console
$ docker pull composer@sha256:278dfc7bd35169965d03f87194816f43bf4e6b6ea61707c2114e52ad12fe24ce
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
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
	-	linux; s390x
	-	unknown; unknown

### `composer:2.11` - linux; amd64

```console
$ docker pull composer@sha256:e86de4d29f50ca4eb982db0f1fd57a38a5019972b5697a89f75c2f551c1451a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77967306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75dfdea8e68c54fcb28eade4c64e069feeef2a01e4b266726ba756679450dfe1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 22:47:39 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 22:47:39 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 22:47:39 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 22:47:39 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 22:47:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 22:47:41 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:51:04 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 22:51:04 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:51:05 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 22:51:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 22:51:05 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:30:48 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:30:48 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:31:01 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:31:01 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:31:01 GMT
ENV COMPOSER_VERSION=2.11.0
# Thu, 29 Oct 2026 17:31:01 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:31:01 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:31:01 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:31:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:31:01 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:376608520fec13724c5434a1ded7eb9031a39b655141a2e04968e0fbe586fdbc`  
		Last Modified: Wed, 21 Oct 2026 22:51:13 GMT  
		Size: 3.5 MB (3490552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c8980f3dbe0d688f813899b22c18938c913dd1fa4ea8b5432c84db8af5299c5`  
		Last Modified: Wed, 21 Oct 2026 22:51:13 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a137d44a72ff85dcecc5762b37ebe8661a17e4798f7cf59d124c8098d9e928`  
		Last Modified: Wed, 21 Oct 2026 22:51:13 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:445b9af79994b4888ee58cb173cc36114acdef2a015f895661e43602c1e9ed38`  
		Last Modified: Wed, 21 Oct 2026 22:51:14 GMT  
		Size: 14.6 MB (14577842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:885fc261a1a10bba4027457db8b8108658f2ce839cc0442070db12eb475c6632`  
		Last Modified: Wed, 21 Oct 2026 22:51:14 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc76ccfcd45bf400236f2db0f8239b29907ccaa8bb0fa42f4d4b5e115cb8cbf9`  
		Last Modified: Wed, 21 Oct 2026 22:51:15 GMT  
		Size: 22.9 MB (22905684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cda05494a4f87da8838d70692427889af18083405f03cb926211ece66107cdc`  
		Last Modified: Wed, 21 Oct 2026 22:51:15 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6044f6b455c81c7b7e479f51a06a2742bcca49eed7f0917c51c4ab0d2b9df650`  
		Last Modified: Wed, 21 Oct 2026 22:51:15 GMT  
		Size: 22.4 KB (22362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85fb19fe0e1a3a7aecdbc55a1a3ce2f1524d6a3c6f778dfd9c06233ce2f6f829`  
		Last Modified: Thu, 29 Oct 2026 17:31:12 GMT  
		Size: 32.0 MB (32028535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e1f05c8f0c423b0141b053cfb222de1c6748b984268504ee292d032975c80a0`  
		Last Modified: Thu, 29 Oct 2026 17:31:11 GMT  
		Size: 260.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6396a5a72d7276167000bb9ed17aa6e2204248c59140e2b8c2b23c29b4575da4`  
		Last Modified: Thu, 29 Oct 2026 17:31:11 GMT  
		Size: 1.1 MB (1084366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b68e4d98f8f6c9eeebad55ed6dbcb0cf8a557dae91cff2f1b86f5d10444cdd1`  
		Last Modified: Thu, 29 Oct 2026 17:31:11 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ee9875c3f8400f83ce9e094c2b7e079b3420aed96e544fa622eaa71de7a637b`  
		Last Modified: Thu, 29 Oct 2026 17:31:10 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.11` - unknown; unknown

```console
$ docker pull composer@sha256:e3079c0b68aa0ed08ad5442f7a573b7013ce31189f21e55b1935597516686968
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c81a503de224163178c1068f5a2a94e6d274352a12c2753681ce522ac85a54ee`

```dockerfile
```

-	Layers:
	-	`sha256:a2870af674ef24ffd0901b5418029e7ece458cba891bde6dc9bb23768f4b5a10`  
		Last Modified: Thu, 29 Oct 2026 17:31:11 GMT  
		Size: 2.2 MB (2181528 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46f14da6c9116c2a20ee9588fe7efc97599daa8cde603b8ac99d0ef02d4b8d5b`  
		Last Modified: Thu, 29 Oct 2026 17:31:11 GMT  
		Size: 30.6 KB (30589 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.11` - linux; arm variant v6

```console
$ docker pull composer@sha256:6d4f617e5526affc2a276f548eeeb15a39f69c1c958a101f064c4a3b213121e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.3 MB (74279862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9705f556bbd3af5fbf5f9bc7d1a2d5e8794673291353a470bb95cd18030f42b7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:17:13 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:17:13 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:17:13 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:17:13 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 23:17:16 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:17:16 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:20:21 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:20:21 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:20:22 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:20:22 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:20:22 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:30:28 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:30:28 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:30:46 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:30:46 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:30:46 GMT
ENV COMPOSER_VERSION=2.11.0
# Thu, 29 Oct 2026 17:30:46 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:30:46 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:30:46 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:30:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:30:46 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34261f84d7ef8445bcf616905088020a73742fa8cba3a783277534f96cb919e3`  
		Last Modified: Wed, 21 Oct 2026 23:20:28 GMT  
		Size: 3.4 MB (3445779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d079375510e49850f6ce5b7baae755d73ea08962a2779737fac5cb01f8ec016`  
		Last Modified: Wed, 21 Oct 2026 23:20:28 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c51265cbeda0a655d6bda2d76d86d971d13e98f0825566cd9da799b688fe2a`  
		Last Modified: Wed, 21 Oct 2026 23:20:28 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75e0d2bfaec09bb1210bf610416028293d9e172d1ad89eb0fa9d68877fdc76a5`  
		Last Modified: Wed, 21 Oct 2026 23:20:28 GMT  
		Size: 14.6 MB (14577852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94d48ed0a90a40bd66f2fc38ebb1cd43c2776488739d1a857237bf1f9536283b`  
		Last Modified: Wed, 21 Oct 2026 23:20:29 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4e0148715c98c76112803e4e7bba388c2238925c8a8ee176f690278e8fb2825`  
		Last Modified: Wed, 21 Oct 2026 23:20:29 GMT  
		Size: 19.8 MB (19828719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:182bc95bd78f5e925cd9466a1e61d7e89937e65aa86996b0e894e34c6692a290`  
		Last Modified: Wed, 21 Oct 2026 23:20:29 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:898d0ebd89fbea4e27e9048eacb3b29f3f1758a0d29107f9220b80d08cd129cc`  
		Last Modified: Wed, 21 Oct 2026 23:20:29 GMT  
		Size: 22.1 KB (22133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f57891c8c2662dd2774d5961ee592676f16836343cd0beb00f1290e6bfe95822`  
		Last Modified: Thu, 29 Oct 2026 17:30:55 GMT  
		Size: 31.8 MB (31758658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f37b2cc9499bb61e3e1157c15291fcf9d69233e5945a85e809440686c4bcba7`  
		Last Modified: Thu, 29 Oct 2026 17:30:54 GMT  
		Size: 259.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c06914b7fb25f0136557c64fd9b3d7464a409e07857d340cae0bc29369c8fa05`  
		Last Modified: Thu, 29 Oct 2026 17:30:54 GMT  
		Size: 1.1 MB (1083569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552166de2658e7936a65b7e8275a84e3eb91033952f887eb8f7881cb1f3cb77b`  
		Last Modified: Thu, 29 Oct 2026 17:30:54 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9477ba0f89e76eea4dfdc8eeb30c2192f881c4db0feb03670580307d3f6fe20`  
		Last Modified: Thu, 29 Oct 2026 17:30:55 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.11` - unknown; unknown

```console
$ docker pull composer@sha256:de76fdeadf0a2330b19e224b27bdff82bccf51c674559efedf57e2c902b2a0b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3181dba55c9f8444cb0a5a4bf0e8234dac6e5d0a849ea6c0f84f56aea3d53c9f`

```dockerfile
```

-	Layers:
	-	`sha256:4b5f6e5b45638128b718c890569acde2afecf072eb73bbeb43651a5b88d708c1`  
		Last Modified: Thu, 29 Oct 2026 17:30:53 GMT  
		Size: 30.5 KB (30480 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.11` - linux; arm variant v7

```console
$ docker pull composer@sha256:f669caebe639e48213b48345686447bec8749a6881f46fea9987e247b02f3f5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.3 MB (71265785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c201fb900230e0e05f150d2097a2bd852aec29f0c39ca687e9fadc3041b64985`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:40 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:20:40 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:20:41 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:20:41 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:20:41 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 23:20:44 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:20:44 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:23:55 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:23:55 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:23:56 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:23:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:23:56 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:30:43 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:30:43 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:30:59 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:30:59 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:30:59 GMT
ENV COMPOSER_VERSION=2.11.0
# Thu, 29 Oct 2026 17:30:59 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:30:59 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:30:59 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:30:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:30:59 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce0acf9ba5220aef037466d130f7f326ab9ef0c5870793956e96251f1836efe3`  
		Last Modified: Wed, 21 Oct 2026 23:24:03 GMT  
		Size: 3.3 MB (3257820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:865067921a4c0ed209af9565b5e8d40435c227b21307684d39da57ded4474af6`  
		Last Modified: Wed, 21 Oct 2026 23:24:03 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8ba9010c2935c6ada5f0257931f104bd958a55c474c40a1fab34bf91aede0aa`  
		Last Modified: Wed, 21 Oct 2026 23:24:03 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4fa67a9851204f8bf42909cf4ffafba10dd11cec11681adc94770c22650a2a5`  
		Last Modified: Wed, 21 Oct 2026 23:24:03 GMT  
		Size: 14.6 MB (14577854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35f620c032a4750276d551ddcb4880624b877a0482d36fda0b5f34121aeb34e6`  
		Last Modified: Wed, 21 Oct 2026 23:24:04 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3abfc41d850665317cc58782f4e62b19d10ecd32c08c53d22e4d78747accd735`  
		Last Modified: Wed, 21 Oct 2026 23:24:05 GMT  
		Size: 18.7 MB (18711848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ebc848c55d1fce83940950291e534af2567abf8506be91457699fb37177e48`  
		Last Modified: Wed, 21 Oct 2026 23:24:04 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4b9053a6d68424b0181b2ae9769d4e6c1d30f41f746fefd4254f9ac384b79a0`  
		Last Modified: Wed, 21 Oct 2026 23:24:05 GMT  
		Size: 22.1 KB (22141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aec250e436276e2702f8fbad5704c5e79ef99213454fd8c379e5590ce148580`  
		Last Modified: Thu, 29 Oct 2026 17:31:08 GMT  
		Size: 30.4 MB (30350969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b08f3642912e723a82d5a3436bbeacad3549cfd5d2cdee28c9081907bf7bafa9`  
		Last Modified: Thu, 29 Oct 2026 17:31:08 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc4c12954a2c69714a6026738f60f9c43b1eea159fb86531685d7fe6f04122de`  
		Last Modified: Thu, 29 Oct 2026 17:31:08 GMT  
		Size: 1.1 MB (1073637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97f099795c9f3ffe89383586004a668892dcf6b125437b7ede57ab7966ca5e45`  
		Last Modified: Thu, 29 Oct 2026 17:31:08 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb70b5c51ba68fa875c2d33664ccd7b39a23982aa399a627973f6900bb52d5bb`  
		Last Modified: Thu, 29 Oct 2026 17:31:09 GMT  
		Size: 92.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.11` - unknown; unknown

```console
$ docker pull composer@sha256:06b08aa69c0f1cac931cdc30c0e75240c892ba1acc7923bf4986d38226b8a26a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a0a29043ab7e9f3e20ba5ad7c09586b789b2d90feaa8dc4b6e2834ba2ac18e1`

```dockerfile
```

-	Layers:
	-	`sha256:614634f76c05b0eea54197069aa01665b1265e857cf784267cf81b9f9bc51761`  
		Last Modified: Thu, 29 Oct 2026 17:31:08 GMT  
		Size: 2.2 MB (2181193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c8802450a6d5b79c3a87fd55db2eb9b6e8b9c0de90f871587bbf6c40defc6f2`  
		Last Modified: Thu, 29 Oct 2026 17:31:07 GMT  
		Size: 30.7 KB (30695 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.11` - linux; arm64 variant v8

```console
$ docker pull composer@sha256:f9a0252b680e7a7fe4d19319f2e4cf6d93f9bc577008763ed09972ca1db91559
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.6 MB (77629215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f35ff59b041d24c529794643bd3a41656e59024d3c7e29e89ef27caad160a0fa`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:13:13 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:13:13 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:13:13 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:13:13 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 23:13:16 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:13:16 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:16:44 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:16:44 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:16:45 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:16:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:16:45 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:30:30 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:30:30 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:30:43 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:30:43 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:30:43 GMT
ENV COMPOSER_VERSION=2.11.0
# Thu, 29 Oct 2026 17:30:43 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:30:43 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:30:43 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:30:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:30:43 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ab96d4a471bafc26cb4609f5785273f51fa52727219feb41098a0655b7658aa`  
		Last Modified: Wed, 21 Oct 2026 23:16:53 GMT  
		Size: 3.5 MB (3500755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e20eb32fc8542481a4e72dbf0c37a7e126b93272dc1e00b90581d62087c5e76`  
		Last Modified: Wed, 21 Oct 2026 23:16:37 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bff1f2144e6df91e63a5b8246cf332533431fe69e26df8d7f18ee88976ad954b`  
		Last Modified: Wed, 21 Oct 2026 23:16:37 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04dec9fd6d8b70aa38749bc013fed907c2d3c675e9061ade9625f6ca2d14eb7a`  
		Last Modified: Wed, 21 Oct 2026 23:16:53 GMT  
		Size: 14.6 MB (14577831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634514a3c9cca89834cf85309c526c8b3239f295a232ce77e6bcebe71ead3a02`  
		Last Modified: Wed, 21 Oct 2026 23:16:38 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0710d863a911e052326baf681756dce2ae1f5e08b99c85010e313334afa0b8fe`  
		Last Modified: Wed, 21 Oct 2026 23:16:53 GMT  
		Size: 22.1 MB (22088277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1122b3f336c096b4a94452448cc32afb1980871b367f4925b881483999830585`  
		Last Modified: Wed, 21 Oct 2026 23:16:52 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d55afb5318bd77aff94bca26afbb7ea6f7bf1afc7e68c5611fac7e8d1bc6ad`  
		Last Modified: Wed, 21 Oct 2026 23:16:53 GMT  
		Size: 22.2 KB (22159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbed5be2d973f35addb37f6c81535640e32d136e6c209c894cde33ce739cdb49`  
		Last Modified: Thu, 29 Oct 2026 17:30:54 GMT  
		Size: 32.2 MB (32161852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dce8f775ab4a2a9794239e7511ec3a0654ae826b8e0521f5930017dbd492a56f`  
		Last Modified: Thu, 29 Oct 2026 17:30:53 GMT  
		Size: 258.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a71ef0b8df688bae2ae638d0631435deff2746b5b424051f0f55d1a5e6b39ed`  
		Last Modified: Thu, 29 Oct 2026 17:30:53 GMT  
		Size: 1.1 MB (1083004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fab9d4539c170c2ac1e7da95fb9eda3abe1bb51e422c527c88cf01a5a311fd9`  
		Last Modified: Thu, 29 Oct 2026 17:30:54 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cf0800d1ef522f85f450c05a078924f8c66793d2dc07ca2c770a6c4d178196f`  
		Last Modified: Thu, 29 Oct 2026 17:30:55 GMT  
		Size: 92.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.11` - unknown; unknown

```console
$ docker pull composer@sha256:262f089c5932f187820ef34320a16b70151fef5bde04bc8d5423c17c6be9e90d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:068e37674b6b2d77c1f36e609f851761eda36adabd4d439e1a8be663d0ee738f`

```dockerfile
```

-	Layers:
	-	`sha256:a6cb07329a4e471ac0ad157daf50edee4b30ceab8584ac883f3af5504fae8bcd`  
		Last Modified: Thu, 29 Oct 2026 17:30:53 GMT  
		Size: 2.2 MB (2181027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35861f873bf939a2329c2a26b7d42cb3c55a96bd60f5b56f5724665423397949`  
		Last Modified: Thu, 29 Oct 2026 17:30:53 GMT  
		Size: 30.7 KB (30723 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.11` - linux; 386

```console
$ docker pull composer@sha256:c428b310fb802f219534fc5faf24ac0e43cf6efc233d462f602ab1f983f0950d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.8 MB (78819731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53fce2ad576a6302b365198b0c0a06f036cdf725ae6a7e7e7fecfe1dbdd9f809`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 21 Oct 2026 22:50:43 GMT
ADD alpine-minirootfs-3.24.3-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:50:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:13:13 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:13:13 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:13:13 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:13:13 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 23:13:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:13:18 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:16:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:16:41 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:16:41 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:16:41 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:16:41 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:29:52 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:29:52 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:30:05 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:30:05 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:30:05 GMT
ENV COMPOSER_VERSION=2.11.0
# Thu, 29 Oct 2026 17:30:05 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:30:05 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:30:05 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:30:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:30:05 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:f89afe85a29e874c0bc6d49b09150af4f08fbc4e6db82e7870677ef76977c07d`  
		Last Modified: Wed, 21 Oct 2026 22:50:49 GMT  
		Size: 3.7 MB (3678996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90ab361813d0997c5956c46b9c4ea156280d4dcd71d38ca46d3331e3eec0d1b3`  
		Last Modified: Wed, 21 Oct 2026 23:16:49 GMT  
		Size: 3.5 MB (3524290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdeb61fe97e7f8c8cd86e9a1db1dcccf56a7a9fb75084e974785b13d42a4df58`  
		Last Modified: Wed, 21 Oct 2026 23:16:44 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bff1f2144e6df91e63a5b8246cf332533431fe69e26df8d7f18ee88976ad954b`  
		Last Modified: Wed, 21 Oct 2026 23:16:37 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:037030204c9a0cd7860b02f5621cae6c1ec61a5a2ad3fd2b56b077c4be4381c2`  
		Last Modified: Wed, 21 Oct 2026 23:16:50 GMT  
		Size: 14.6 MB (14577825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11c65f33ab044b67b2dfcf45d46cfa8cac26aa1db0259b1e5aa92381bd9ee998`  
		Last Modified: Wed, 21 Oct 2026 23:16:49 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80691052feb5efdf9fd906dee8ac4f3be3172c1c188cd1b56fa061fcd37c8764`  
		Last Modified: Wed, 21 Oct 2026 23:16:50 GMT  
		Size: 23.4 MB (23384278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c8ef2140f6fd7bc9d64d3a3a96c30b190ed438a16ac9edd87987dbbe08b1fd3`  
		Last Modified: Wed, 21 Oct 2026 23:16:50 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a778e09088262a247914f0c3db8a642de7710967a500727f9f00476356d45dd`  
		Last Modified: Wed, 21 Oct 2026 23:16:50 GMT  
		Size: 22.3 KB (22341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac3fbcd85934d967cda395612affadb73b79006a7cea140c5d8b5bbba1a912cf`  
		Last Modified: Thu, 29 Oct 2026 17:30:15 GMT  
		Size: 32.5 MB (32530480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1efb8e1626c554cdef0e559cc778505c1a143194134c29cc50c0a22338aa12b9`  
		Last Modified: Thu, 29 Oct 2026 17:30:14 GMT  
		Size: 259.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022412a6f26362dfb96c53e9e5a747e4a5d216b1514d4c0dcbc77c16e661b865`  
		Last Modified: Thu, 29 Oct 2026 17:30:14 GMT  
		Size: 1.1 MB (1096669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c42f7583028a0cc1ad93a29d6ba0c6c20e6b7686f92e6a4b51a585aaa717f79`  
		Last Modified: Thu, 29 Oct 2026 17:30:14 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d937ecbaf6418c5b517bf1394c98bc8e9c8eef2509a9e153ae234b5e2db48e11`  
		Last Modified: Thu, 29 Oct 2026 17:30:16 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.11` - unknown; unknown

```console
$ docker pull composer@sha256:487570753bcd8f8c0d2e47ff32697804339290861eecdb36819469637b085124
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3732dcdc96a924912e5a5e4b21fb42ea8f7909d9128a00afa8a5ccc6180af5cd`

```dockerfile
```

-	Layers:
	-	`sha256:6715fd717c8b54a598b673e3f3eb4a49953c56c0ff60dc30d71fe3687d958659`  
		Last Modified: Thu, 29 Oct 2026 17:30:14 GMT  
		Size: 2.2 MB (2181317 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1456ea96a94a055c6f914a394f87d3adb70a48517647732166c83cd66177d828`  
		Last Modified: Thu, 29 Oct 2026 17:30:14 GMT  
		Size: 30.6 KB (30553 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.11` - linux; ppc64le

```console
$ docker pull composer@sha256:84b15d61992b9f045390476d4ace121239c4d6801cf931426ace18152f8935db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.3 MB (79345831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7d104bd06c24f46df61e79fe921eaf37b9aedf2f739416a450669a0054fa666`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 10:41:08 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 22 Oct 2026 10:41:08 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 22 Oct 2026 10:41:08 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 22 Oct 2026 10:41:08 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 22 Oct 2026 10:41:10 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 22 Oct 2026 10:41:10 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_VERSION=8.5.12
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Thu, 22 Oct 2026 10:58:03 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 22 Oct 2026 10:58:03 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 11:04:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 22 Oct 2026 11:04:42 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 11:04:44 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 22 Oct 2026 11:04:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 22 Oct 2026 11:04:44 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:29:36 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:29:37 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:30:22 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:30:22 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:30:22 GMT
ENV COMPOSER_VERSION=2.11.0
# Thu, 29 Oct 2026 17:30:22 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:30:23 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:30:23 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:30:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:30:23 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34960f353c419102a4e6aa8def25e776b62fc861c2c7f3498ae163f83c42a913`  
		Last Modified: Thu, 22 Oct 2026 10:45:49 GMT  
		Size: 3.7 MB (3665469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc8b6dad17e9a4de16850dd156812ecc0a368713613a848e61da65fc704edbe`  
		Last Modified: Thu, 22 Oct 2026 10:45:48 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9180d692f4fcd0b027b940ab4548e62ecdbfcd62b8438a632e69b2299aacdcd`  
		Last Modified: Thu, 22 Oct 2026 10:45:48 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed005116498b48ae5fb54d7e5bdb983c0af7f680ab5f96a9af7e62e19c268c64`  
		Last Modified: Thu, 22 Oct 2026 11:05:23 GMT  
		Size: 14.6 MB (14577836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5b947ba4505c12d11d5511f4a89c2874eeda46e7503f8af574594f6a83690ef`  
		Last Modified: Thu, 22 Oct 2026 11:05:22 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5273c4824064374eca4303b43014f08be9f99280099f840ee4679b254144d64`  
		Last Modified: Thu, 22 Oct 2026 11:05:23 GMT  
		Size: 23.0 MB (23028687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f81004a0da47bf741288eabcbcf2ac176bc1cffc637ad8554706ad4d111108`  
		Last Modified: Thu, 22 Oct 2026 11:05:22 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c7e2b7ed5a28fea078ad8264e59a9ca084f211368fe02a849dba03fb7d32daa`  
		Last Modified: Thu, 22 Oct 2026 11:05:23 GMT  
		Size: 22.2 KB (22178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2b0957b71d7d4ad0abe8cac2c658929a70ac811658a8fd94b73a607aa56d927`  
		Last Modified: Thu, 29 Oct 2026 17:30:52 GMT  
		Size: 33.1 MB (33135684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc707c814f6ccf6274528f7cbdc8a047daaebb51e8d81820d4a3ca4eb39e27f0`  
		Last Modified: Thu, 29 Oct 2026 17:30:51 GMT  
		Size: 260.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35b0ebfab45fa166c61625fa23bd2e8409c1cd298df18714b176c5a3d48f403c`  
		Last Modified: Thu, 29 Oct 2026 17:30:51 GMT  
		Size: 1.1 MB (1090291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdadbb2226fe1f0cfc0711d2542ca11857ecd17bca3b3a5fb4032d2fde15f162`  
		Last Modified: Thu, 29 Oct 2026 17:30:51 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3907b9485e65baf437f23343b5c10fc98b63f92ed666122ac6554de6606c090`  
		Last Modified: Thu, 29 Oct 2026 17:30:52 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.11` - unknown; unknown

```console
$ docker pull composer@sha256:5f175eb0823caceeacd090cfadf6b2f5ec351697780cb7a7ed81606268888c8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e72e4dc086c51745566abdc704ca9561f1239d688efffd941f2215b2cd354f7`

```dockerfile
```

-	Layers:
	-	`sha256:1c4df9f37086974b2e16130441d9d01d5a5c93386b8e0786f9fb9323a54ebbaf`  
		Last Modified: Thu, 29 Oct 2026 17:30:51 GMT  
		Size: 2.2 MB (2181376 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5fb8c347f8a361f71e9d3d7314d1f29077826fc436a1bdd40238b059da6a3e3`  
		Last Modified: Thu, 29 Oct 2026 17:30:50 GMT  
		Size: 30.6 KB (30637 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.11` - linux; s390x

```console
$ docker pull composer@sha256:d5a086e312cf93494465dd450b01b0a1a6dc5676638e82b8695e5fd8229bed6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.8 MB (77826917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad61071e371650c28015669e637fa033f709d1f7b248fe85c3cc59a10432898`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:20:23 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:20:23 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:20:23 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:20:23 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 23:21:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:21:51 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:25:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:25:41 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:25:42 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:25:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:25:42 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:29:36 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:29:37 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:29:57 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:29:57 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:29:57 GMT
ENV COMPOSER_VERSION=2.11.0
# Thu, 29 Oct 2026 17:29:57 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:29:58 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:29:59 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:29:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:29:59 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3994947cd88d28cfb3f991c5b6fd75edffe6f7e091429cad77f8db61869091f`  
		Last Modified: Wed, 21 Oct 2026 23:24:22 GMT  
		Size: 3.7 MB (3683873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:187dd63caa64ac1d5888e1f101c2c414d74d260eef5fc095e9dc6dbb374f7267`  
		Last Modified: Wed, 21 Oct 2026 23:24:21 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:428c8b641892350c28dd8dc3645e567eb63ac63033b1d7e5e28f1a6b6bf3670e`  
		Last Modified: Wed, 21 Oct 2026 23:24:21 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dad3e2711e594137e332b0b8d206cc1ca16f454e8205de6bf3f1053fa4856557`  
		Last Modified: Wed, 21 Oct 2026 23:25:54 GMT  
		Size: 14.6 MB (14577842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ecc9de14cbfddefd10b5b12025384105b6fcfd3288c1bfe5f156560e839f6fb`  
		Last Modified: Wed, 21 Oct 2026 23:25:54 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f74c95f00b7275ee5e9eb1564dd340bf6b9bdfdf5827a48aa756c780a8d2792e`  
		Last Modified: Wed, 21 Oct 2026 23:25:54 GMT  
		Size: 21.7 MB (21742396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34c0db3041505705d6ed118114ccaf6c9d8f46e852555eee7afbaca8eb7c20f6`  
		Last Modified: Wed, 21 Oct 2026 23:25:53 GMT  
		Size: 2.4 KB (2442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c00b5eab2e06d4e48cca5a4774e319d8ad4a2ebd14148c4c964ff1e659610c`  
		Last Modified: Wed, 21 Oct 2026 23:25:55 GMT  
		Size: 22.1 KB (22132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:004dea91dfd2ea6b46667f58973690fc57366ea82b570234a6fed19149c48611`  
		Last Modified: Thu, 29 Oct 2026 17:30:27 GMT  
		Size: 33.0 MB (32988671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eb5cd95d8cb3fdc952b0c0a9be4224a576eb630da18c0c96bf9ef0f72e9ca42`  
		Last Modified: Thu, 29 Oct 2026 17:30:26 GMT  
		Size: 260.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecdd34b3ab48b900aacea486fc84423abb645ce5440f149cd0ebd81de2838ce3`  
		Last Modified: Thu, 29 Oct 2026 17:30:26 GMT  
		Size: 1.1 MB (1087450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cca4ae567647f5d3dfac677ee075d6345dfd6f7bbb7440b15a05c824f71cedb`  
		Last Modified: Thu, 29 Oct 2026 17:30:26 GMT  
		Size: 415.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78d0c2860d06593a40f07ea535d170d88064742c3645fdb6a67f053a87879c0f`  
		Last Modified: Thu, 29 Oct 2026 17:30:25 GMT  
		Size: 92.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.11` - unknown; unknown

```console
$ docker pull composer@sha256:7c817aa3fc7e7925e50091e9b3c2b87ddcf768958fb86c3ae3164ed7ecf53995
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:649abc8eccf5690c0e4f38a2546e3cedda4fb3139abcc643af05ea31c3bc9a1c`

```dockerfile
```

-	Layers:
	-	`sha256:2649e690cc5e96d99076e9d8ea264757096604f2b922518c82d44d7350ca3c71`  
		Last Modified: Thu, 29 Oct 2026 17:30:26 GMT  
		Size: 2.2 MB (2180784 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ffc554f713937193a56b13d9e6845b065484f348f9e33ec242c0e8b2b11bce86`  
		Last Modified: Thu, 29 Oct 2026 17:30:25 GMT  
		Size: 30.6 KB (30588 bytes)  
		MIME: application/vnd.in-toto+json

## `composer:2.11.0`

```console
$ docker pull composer@sha256:278dfc7bd35169965d03f87194816f43bf4e6b6ea61707c2114e52ad12fe24ce
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
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
	-	linux; s390x
	-	unknown; unknown

### `composer:2.11.0` - linux; amd64

```console
$ docker pull composer@sha256:e86de4d29f50ca4eb982db0f1fd57a38a5019972b5697a89f75c2f551c1451a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77967306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75dfdea8e68c54fcb28eade4c64e069feeef2a01e4b266726ba756679450dfe1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 22:47:39 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 22:47:39 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 22:47:39 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 22:47:39 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 22:47:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 22:47:41 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:51:04 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 22:51:04 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:51:05 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 22:51:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 22:51:05 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:30:48 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:30:48 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:31:01 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:31:01 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:31:01 GMT
ENV COMPOSER_VERSION=2.11.0
# Thu, 29 Oct 2026 17:31:01 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:31:01 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:31:01 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:31:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:31:01 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:376608520fec13724c5434a1ded7eb9031a39b655141a2e04968e0fbe586fdbc`  
		Last Modified: Wed, 21 Oct 2026 22:51:13 GMT  
		Size: 3.5 MB (3490552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c8980f3dbe0d688f813899b22c18938c913dd1fa4ea8b5432c84db8af5299c5`  
		Last Modified: Wed, 21 Oct 2026 22:51:13 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a137d44a72ff85dcecc5762b37ebe8661a17e4798f7cf59d124c8098d9e928`  
		Last Modified: Wed, 21 Oct 2026 22:51:13 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:445b9af79994b4888ee58cb173cc36114acdef2a015f895661e43602c1e9ed38`  
		Last Modified: Wed, 21 Oct 2026 22:51:14 GMT  
		Size: 14.6 MB (14577842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:885fc261a1a10bba4027457db8b8108658f2ce839cc0442070db12eb475c6632`  
		Last Modified: Wed, 21 Oct 2026 22:51:14 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc76ccfcd45bf400236f2db0f8239b29907ccaa8bb0fa42f4d4b5e115cb8cbf9`  
		Last Modified: Wed, 21 Oct 2026 22:51:15 GMT  
		Size: 22.9 MB (22905684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cda05494a4f87da8838d70692427889af18083405f03cb926211ece66107cdc`  
		Last Modified: Wed, 21 Oct 2026 22:51:15 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6044f6b455c81c7b7e479f51a06a2742bcca49eed7f0917c51c4ab0d2b9df650`  
		Last Modified: Wed, 21 Oct 2026 22:51:15 GMT  
		Size: 22.4 KB (22362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85fb19fe0e1a3a7aecdbc55a1a3ce2f1524d6a3c6f778dfd9c06233ce2f6f829`  
		Last Modified: Thu, 29 Oct 2026 17:31:12 GMT  
		Size: 32.0 MB (32028535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e1f05c8f0c423b0141b053cfb222de1c6748b984268504ee292d032975c80a0`  
		Last Modified: Thu, 29 Oct 2026 17:31:11 GMT  
		Size: 260.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6396a5a72d7276167000bb9ed17aa6e2204248c59140e2b8c2b23c29b4575da4`  
		Last Modified: Thu, 29 Oct 2026 17:31:11 GMT  
		Size: 1.1 MB (1084366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b68e4d98f8f6c9eeebad55ed6dbcb0cf8a557dae91cff2f1b86f5d10444cdd1`  
		Last Modified: Thu, 29 Oct 2026 17:31:11 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ee9875c3f8400f83ce9e094c2b7e079b3420aed96e544fa622eaa71de7a637b`  
		Last Modified: Thu, 29 Oct 2026 17:31:10 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.11.0` - unknown; unknown

```console
$ docker pull composer@sha256:e3079c0b68aa0ed08ad5442f7a573b7013ce31189f21e55b1935597516686968
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c81a503de224163178c1068f5a2a94e6d274352a12c2753681ce522ac85a54ee`

```dockerfile
```

-	Layers:
	-	`sha256:a2870af674ef24ffd0901b5418029e7ece458cba891bde6dc9bb23768f4b5a10`  
		Last Modified: Thu, 29 Oct 2026 17:31:11 GMT  
		Size: 2.2 MB (2181528 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46f14da6c9116c2a20ee9588fe7efc97599daa8cde603b8ac99d0ef02d4b8d5b`  
		Last Modified: Thu, 29 Oct 2026 17:31:11 GMT  
		Size: 30.6 KB (30589 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.11.0` - linux; arm variant v6

```console
$ docker pull composer@sha256:6d4f617e5526affc2a276f548eeeb15a39f69c1c958a101f064c4a3b213121e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.3 MB (74279862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9705f556bbd3af5fbf5f9bc7d1a2d5e8794673291353a470bb95cd18030f42b7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:17:13 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:17:13 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:17:13 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:17:13 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 23:17:16 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:17:16 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:20:21 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:20:21 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:20:22 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:20:22 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:20:22 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:30:28 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:30:28 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:30:46 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:30:46 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:30:46 GMT
ENV COMPOSER_VERSION=2.11.0
# Thu, 29 Oct 2026 17:30:46 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:30:46 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:30:46 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:30:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:30:46 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34261f84d7ef8445bcf616905088020a73742fa8cba3a783277534f96cb919e3`  
		Last Modified: Wed, 21 Oct 2026 23:20:28 GMT  
		Size: 3.4 MB (3445779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d079375510e49850f6ce5b7baae755d73ea08962a2779737fac5cb01f8ec016`  
		Last Modified: Wed, 21 Oct 2026 23:20:28 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c51265cbeda0a655d6bda2d76d86d971d13e98f0825566cd9da799b688fe2a`  
		Last Modified: Wed, 21 Oct 2026 23:20:28 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75e0d2bfaec09bb1210bf610416028293d9e172d1ad89eb0fa9d68877fdc76a5`  
		Last Modified: Wed, 21 Oct 2026 23:20:28 GMT  
		Size: 14.6 MB (14577852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94d48ed0a90a40bd66f2fc38ebb1cd43c2776488739d1a857237bf1f9536283b`  
		Last Modified: Wed, 21 Oct 2026 23:20:29 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4e0148715c98c76112803e4e7bba388c2238925c8a8ee176f690278e8fb2825`  
		Last Modified: Wed, 21 Oct 2026 23:20:29 GMT  
		Size: 19.8 MB (19828719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:182bc95bd78f5e925cd9466a1e61d7e89937e65aa86996b0e894e34c6692a290`  
		Last Modified: Wed, 21 Oct 2026 23:20:29 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:898d0ebd89fbea4e27e9048eacb3b29f3f1758a0d29107f9220b80d08cd129cc`  
		Last Modified: Wed, 21 Oct 2026 23:20:29 GMT  
		Size: 22.1 KB (22133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f57891c8c2662dd2774d5961ee592676f16836343cd0beb00f1290e6bfe95822`  
		Last Modified: Thu, 29 Oct 2026 17:30:55 GMT  
		Size: 31.8 MB (31758658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f37b2cc9499bb61e3e1157c15291fcf9d69233e5945a85e809440686c4bcba7`  
		Last Modified: Thu, 29 Oct 2026 17:30:54 GMT  
		Size: 259.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c06914b7fb25f0136557c64fd9b3d7464a409e07857d340cae0bc29369c8fa05`  
		Last Modified: Thu, 29 Oct 2026 17:30:54 GMT  
		Size: 1.1 MB (1083569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552166de2658e7936a65b7e8275a84e3eb91033952f887eb8f7881cb1f3cb77b`  
		Last Modified: Thu, 29 Oct 2026 17:30:54 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9477ba0f89e76eea4dfdc8eeb30c2192f881c4db0feb03670580307d3f6fe20`  
		Last Modified: Thu, 29 Oct 2026 17:30:55 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.11.0` - unknown; unknown

```console
$ docker pull composer@sha256:de76fdeadf0a2330b19e224b27bdff82bccf51c674559efedf57e2c902b2a0b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3181dba55c9f8444cb0a5a4bf0e8234dac6e5d0a849ea6c0f84f56aea3d53c9f`

```dockerfile
```

-	Layers:
	-	`sha256:4b5f6e5b45638128b718c890569acde2afecf072eb73bbeb43651a5b88d708c1`  
		Last Modified: Thu, 29 Oct 2026 17:30:53 GMT  
		Size: 30.5 KB (30480 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.11.0` - linux; arm variant v7

```console
$ docker pull composer@sha256:f669caebe639e48213b48345686447bec8749a6881f46fea9987e247b02f3f5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.3 MB (71265785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c201fb900230e0e05f150d2097a2bd852aec29f0c39ca687e9fadc3041b64985`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:40 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:20:40 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:20:41 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:20:41 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:20:41 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 23:20:44 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:20:44 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:23:55 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:23:55 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:23:56 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:23:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:23:56 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:30:43 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:30:43 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:30:59 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:30:59 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:30:59 GMT
ENV COMPOSER_VERSION=2.11.0
# Thu, 29 Oct 2026 17:30:59 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:30:59 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:30:59 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:30:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:30:59 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce0acf9ba5220aef037466d130f7f326ab9ef0c5870793956e96251f1836efe3`  
		Last Modified: Wed, 21 Oct 2026 23:24:03 GMT  
		Size: 3.3 MB (3257820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:865067921a4c0ed209af9565b5e8d40435c227b21307684d39da57ded4474af6`  
		Last Modified: Wed, 21 Oct 2026 23:24:03 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8ba9010c2935c6ada5f0257931f104bd958a55c474c40a1fab34bf91aede0aa`  
		Last Modified: Wed, 21 Oct 2026 23:24:03 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4fa67a9851204f8bf42909cf4ffafba10dd11cec11681adc94770c22650a2a5`  
		Last Modified: Wed, 21 Oct 2026 23:24:03 GMT  
		Size: 14.6 MB (14577854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35f620c032a4750276d551ddcb4880624b877a0482d36fda0b5f34121aeb34e6`  
		Last Modified: Wed, 21 Oct 2026 23:24:04 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3abfc41d850665317cc58782f4e62b19d10ecd32c08c53d22e4d78747accd735`  
		Last Modified: Wed, 21 Oct 2026 23:24:05 GMT  
		Size: 18.7 MB (18711848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ebc848c55d1fce83940950291e534af2567abf8506be91457699fb37177e48`  
		Last Modified: Wed, 21 Oct 2026 23:24:04 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4b9053a6d68424b0181b2ae9769d4e6c1d30f41f746fefd4254f9ac384b79a0`  
		Last Modified: Wed, 21 Oct 2026 23:24:05 GMT  
		Size: 22.1 KB (22141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aec250e436276e2702f8fbad5704c5e79ef99213454fd8c379e5590ce148580`  
		Last Modified: Thu, 29 Oct 2026 17:31:08 GMT  
		Size: 30.4 MB (30350969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b08f3642912e723a82d5a3436bbeacad3549cfd5d2cdee28c9081907bf7bafa9`  
		Last Modified: Thu, 29 Oct 2026 17:31:08 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc4c12954a2c69714a6026738f60f9c43b1eea159fb86531685d7fe6f04122de`  
		Last Modified: Thu, 29 Oct 2026 17:31:08 GMT  
		Size: 1.1 MB (1073637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97f099795c9f3ffe89383586004a668892dcf6b125437b7ede57ab7966ca5e45`  
		Last Modified: Thu, 29 Oct 2026 17:31:08 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb70b5c51ba68fa875c2d33664ccd7b39a23982aa399a627973f6900bb52d5bb`  
		Last Modified: Thu, 29 Oct 2026 17:31:09 GMT  
		Size: 92.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.11.0` - unknown; unknown

```console
$ docker pull composer@sha256:06b08aa69c0f1cac931cdc30c0e75240c892ba1acc7923bf4986d38226b8a26a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a0a29043ab7e9f3e20ba5ad7c09586b789b2d90feaa8dc4b6e2834ba2ac18e1`

```dockerfile
```

-	Layers:
	-	`sha256:614634f76c05b0eea54197069aa01665b1265e857cf784267cf81b9f9bc51761`  
		Last Modified: Thu, 29 Oct 2026 17:31:08 GMT  
		Size: 2.2 MB (2181193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c8802450a6d5b79c3a87fd55db2eb9b6e8b9c0de90f871587bbf6c40defc6f2`  
		Last Modified: Thu, 29 Oct 2026 17:31:07 GMT  
		Size: 30.7 KB (30695 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.11.0` - linux; arm64 variant v8

```console
$ docker pull composer@sha256:f9a0252b680e7a7fe4d19319f2e4cf6d93f9bc577008763ed09972ca1db91559
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.6 MB (77629215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f35ff59b041d24c529794643bd3a41656e59024d3c7e29e89ef27caad160a0fa`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:13:13 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:13:13 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:13:13 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:13:13 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 23:13:16 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:13:16 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:16:44 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:16:44 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:16:45 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:16:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:16:45 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:30:30 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:30:30 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:30:43 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:30:43 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:30:43 GMT
ENV COMPOSER_VERSION=2.11.0
# Thu, 29 Oct 2026 17:30:43 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:30:43 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:30:43 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:30:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:30:43 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ab96d4a471bafc26cb4609f5785273f51fa52727219feb41098a0655b7658aa`  
		Last Modified: Wed, 21 Oct 2026 23:16:53 GMT  
		Size: 3.5 MB (3500755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e20eb32fc8542481a4e72dbf0c37a7e126b93272dc1e00b90581d62087c5e76`  
		Last Modified: Wed, 21 Oct 2026 23:16:37 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bff1f2144e6df91e63a5b8246cf332533431fe69e26df8d7f18ee88976ad954b`  
		Last Modified: Wed, 21 Oct 2026 23:16:37 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04dec9fd6d8b70aa38749bc013fed907c2d3c675e9061ade9625f6ca2d14eb7a`  
		Last Modified: Wed, 21 Oct 2026 23:16:53 GMT  
		Size: 14.6 MB (14577831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634514a3c9cca89834cf85309c526c8b3239f295a232ce77e6bcebe71ead3a02`  
		Last Modified: Wed, 21 Oct 2026 23:16:38 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0710d863a911e052326baf681756dce2ae1f5e08b99c85010e313334afa0b8fe`  
		Last Modified: Wed, 21 Oct 2026 23:16:53 GMT  
		Size: 22.1 MB (22088277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1122b3f336c096b4a94452448cc32afb1980871b367f4925b881483999830585`  
		Last Modified: Wed, 21 Oct 2026 23:16:52 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d55afb5318bd77aff94bca26afbb7ea6f7bf1afc7e68c5611fac7e8d1bc6ad`  
		Last Modified: Wed, 21 Oct 2026 23:16:53 GMT  
		Size: 22.2 KB (22159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbed5be2d973f35addb37f6c81535640e32d136e6c209c894cde33ce739cdb49`  
		Last Modified: Thu, 29 Oct 2026 17:30:54 GMT  
		Size: 32.2 MB (32161852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dce8f775ab4a2a9794239e7511ec3a0654ae826b8e0521f5930017dbd492a56f`  
		Last Modified: Thu, 29 Oct 2026 17:30:53 GMT  
		Size: 258.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a71ef0b8df688bae2ae638d0631435deff2746b5b424051f0f55d1a5e6b39ed`  
		Last Modified: Thu, 29 Oct 2026 17:30:53 GMT  
		Size: 1.1 MB (1083004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fab9d4539c170c2ac1e7da95fb9eda3abe1bb51e422c527c88cf01a5a311fd9`  
		Last Modified: Thu, 29 Oct 2026 17:30:54 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cf0800d1ef522f85f450c05a078924f8c66793d2dc07ca2c770a6c4d178196f`  
		Last Modified: Thu, 29 Oct 2026 17:30:55 GMT  
		Size: 92.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.11.0` - unknown; unknown

```console
$ docker pull composer@sha256:262f089c5932f187820ef34320a16b70151fef5bde04bc8d5423c17c6be9e90d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:068e37674b6b2d77c1f36e609f851761eda36adabd4d439e1a8be663d0ee738f`

```dockerfile
```

-	Layers:
	-	`sha256:a6cb07329a4e471ac0ad157daf50edee4b30ceab8584ac883f3af5504fae8bcd`  
		Last Modified: Thu, 29 Oct 2026 17:30:53 GMT  
		Size: 2.2 MB (2181027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35861f873bf939a2329c2a26b7d42cb3c55a96bd60f5b56f5724665423397949`  
		Last Modified: Thu, 29 Oct 2026 17:30:53 GMT  
		Size: 30.7 KB (30723 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.11.0` - linux; 386

```console
$ docker pull composer@sha256:c428b310fb802f219534fc5faf24ac0e43cf6efc233d462f602ab1f983f0950d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.8 MB (78819731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53fce2ad576a6302b365198b0c0a06f036cdf725ae6a7e7e7fecfe1dbdd9f809`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 21 Oct 2026 22:50:43 GMT
ADD alpine-minirootfs-3.24.3-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:50:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:13:13 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:13:13 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:13:13 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:13:13 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 23:13:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:13:18 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:16:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:16:41 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:16:41 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:16:41 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:16:41 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:29:52 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:29:52 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:30:05 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:30:05 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:30:05 GMT
ENV COMPOSER_VERSION=2.11.0
# Thu, 29 Oct 2026 17:30:05 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:30:05 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:30:05 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:30:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:30:05 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:f89afe85a29e874c0bc6d49b09150af4f08fbc4e6db82e7870677ef76977c07d`  
		Last Modified: Wed, 21 Oct 2026 22:50:49 GMT  
		Size: 3.7 MB (3678996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90ab361813d0997c5956c46b9c4ea156280d4dcd71d38ca46d3331e3eec0d1b3`  
		Last Modified: Wed, 21 Oct 2026 23:16:49 GMT  
		Size: 3.5 MB (3524290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdeb61fe97e7f8c8cd86e9a1db1dcccf56a7a9fb75084e974785b13d42a4df58`  
		Last Modified: Wed, 21 Oct 2026 23:16:44 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bff1f2144e6df91e63a5b8246cf332533431fe69e26df8d7f18ee88976ad954b`  
		Last Modified: Wed, 21 Oct 2026 23:16:37 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:037030204c9a0cd7860b02f5621cae6c1ec61a5a2ad3fd2b56b077c4be4381c2`  
		Last Modified: Wed, 21 Oct 2026 23:16:50 GMT  
		Size: 14.6 MB (14577825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11c65f33ab044b67b2dfcf45d46cfa8cac26aa1db0259b1e5aa92381bd9ee998`  
		Last Modified: Wed, 21 Oct 2026 23:16:49 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80691052feb5efdf9fd906dee8ac4f3be3172c1c188cd1b56fa061fcd37c8764`  
		Last Modified: Wed, 21 Oct 2026 23:16:50 GMT  
		Size: 23.4 MB (23384278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c8ef2140f6fd7bc9d64d3a3a96c30b190ed438a16ac9edd87987dbbe08b1fd3`  
		Last Modified: Wed, 21 Oct 2026 23:16:50 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a778e09088262a247914f0c3db8a642de7710967a500727f9f00476356d45dd`  
		Last Modified: Wed, 21 Oct 2026 23:16:50 GMT  
		Size: 22.3 KB (22341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac3fbcd85934d967cda395612affadb73b79006a7cea140c5d8b5bbba1a912cf`  
		Last Modified: Thu, 29 Oct 2026 17:30:15 GMT  
		Size: 32.5 MB (32530480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1efb8e1626c554cdef0e559cc778505c1a143194134c29cc50c0a22338aa12b9`  
		Last Modified: Thu, 29 Oct 2026 17:30:14 GMT  
		Size: 259.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022412a6f26362dfb96c53e9e5a747e4a5d216b1514d4c0dcbc77c16e661b865`  
		Last Modified: Thu, 29 Oct 2026 17:30:14 GMT  
		Size: 1.1 MB (1096669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c42f7583028a0cc1ad93a29d6ba0c6c20e6b7686f92e6a4b51a585aaa717f79`  
		Last Modified: Thu, 29 Oct 2026 17:30:14 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d937ecbaf6418c5b517bf1394c98bc8e9c8eef2509a9e153ae234b5e2db48e11`  
		Last Modified: Thu, 29 Oct 2026 17:30:16 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.11.0` - unknown; unknown

```console
$ docker pull composer@sha256:487570753bcd8f8c0d2e47ff32697804339290861eecdb36819469637b085124
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3732dcdc96a924912e5a5e4b21fb42ea8f7909d9128a00afa8a5ccc6180af5cd`

```dockerfile
```

-	Layers:
	-	`sha256:6715fd717c8b54a598b673e3f3eb4a49953c56c0ff60dc30d71fe3687d958659`  
		Last Modified: Thu, 29 Oct 2026 17:30:14 GMT  
		Size: 2.2 MB (2181317 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1456ea96a94a055c6f914a394f87d3adb70a48517647732166c83cd66177d828`  
		Last Modified: Thu, 29 Oct 2026 17:30:14 GMT  
		Size: 30.6 KB (30553 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.11.0` - linux; ppc64le

```console
$ docker pull composer@sha256:84b15d61992b9f045390476d4ace121239c4d6801cf931426ace18152f8935db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.3 MB (79345831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7d104bd06c24f46df61e79fe921eaf37b9aedf2f739416a450669a0054fa666`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 10:41:08 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 22 Oct 2026 10:41:08 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 22 Oct 2026 10:41:08 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 22 Oct 2026 10:41:08 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 22 Oct 2026 10:41:10 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 22 Oct 2026 10:41:10 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_VERSION=8.5.12
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Thu, 22 Oct 2026 10:58:03 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 22 Oct 2026 10:58:03 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 11:04:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 22 Oct 2026 11:04:42 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 11:04:44 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 22 Oct 2026 11:04:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 22 Oct 2026 11:04:44 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:29:36 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:29:37 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:30:22 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:30:22 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:30:22 GMT
ENV COMPOSER_VERSION=2.11.0
# Thu, 29 Oct 2026 17:30:22 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:30:23 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:30:23 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:30:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:30:23 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34960f353c419102a4e6aa8def25e776b62fc861c2c7f3498ae163f83c42a913`  
		Last Modified: Thu, 22 Oct 2026 10:45:49 GMT  
		Size: 3.7 MB (3665469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc8b6dad17e9a4de16850dd156812ecc0a368713613a848e61da65fc704edbe`  
		Last Modified: Thu, 22 Oct 2026 10:45:48 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9180d692f4fcd0b027b940ab4548e62ecdbfcd62b8438a632e69b2299aacdcd`  
		Last Modified: Thu, 22 Oct 2026 10:45:48 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed005116498b48ae5fb54d7e5bdb983c0af7f680ab5f96a9af7e62e19c268c64`  
		Last Modified: Thu, 22 Oct 2026 11:05:23 GMT  
		Size: 14.6 MB (14577836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5b947ba4505c12d11d5511f4a89c2874eeda46e7503f8af574594f6a83690ef`  
		Last Modified: Thu, 22 Oct 2026 11:05:22 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5273c4824064374eca4303b43014f08be9f99280099f840ee4679b254144d64`  
		Last Modified: Thu, 22 Oct 2026 11:05:23 GMT  
		Size: 23.0 MB (23028687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f81004a0da47bf741288eabcbcf2ac176bc1cffc637ad8554706ad4d111108`  
		Last Modified: Thu, 22 Oct 2026 11:05:22 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c7e2b7ed5a28fea078ad8264e59a9ca084f211368fe02a849dba03fb7d32daa`  
		Last Modified: Thu, 22 Oct 2026 11:05:23 GMT  
		Size: 22.2 KB (22178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2b0957b71d7d4ad0abe8cac2c658929a70ac811658a8fd94b73a607aa56d927`  
		Last Modified: Thu, 29 Oct 2026 17:30:52 GMT  
		Size: 33.1 MB (33135684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc707c814f6ccf6274528f7cbdc8a047daaebb51e8d81820d4a3ca4eb39e27f0`  
		Last Modified: Thu, 29 Oct 2026 17:30:51 GMT  
		Size: 260.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35b0ebfab45fa166c61625fa23bd2e8409c1cd298df18714b176c5a3d48f403c`  
		Last Modified: Thu, 29 Oct 2026 17:30:51 GMT  
		Size: 1.1 MB (1090291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdadbb2226fe1f0cfc0711d2542ca11857ecd17bca3b3a5fb4032d2fde15f162`  
		Last Modified: Thu, 29 Oct 2026 17:30:51 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3907b9485e65baf437f23343b5c10fc98b63f92ed666122ac6554de6606c090`  
		Last Modified: Thu, 29 Oct 2026 17:30:52 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.11.0` - unknown; unknown

```console
$ docker pull composer@sha256:5f175eb0823caceeacd090cfadf6b2f5ec351697780cb7a7ed81606268888c8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e72e4dc086c51745566abdc704ca9561f1239d688efffd941f2215b2cd354f7`

```dockerfile
```

-	Layers:
	-	`sha256:1c4df9f37086974b2e16130441d9d01d5a5c93386b8e0786f9fb9323a54ebbaf`  
		Last Modified: Thu, 29 Oct 2026 17:30:51 GMT  
		Size: 2.2 MB (2181376 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5fb8c347f8a361f71e9d3d7314d1f29077826fc436a1bdd40238b059da6a3e3`  
		Last Modified: Thu, 29 Oct 2026 17:30:50 GMT  
		Size: 30.6 KB (30637 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.11.0` - linux; s390x

```console
$ docker pull composer@sha256:d5a086e312cf93494465dd450b01b0a1a6dc5676638e82b8695e5fd8229bed6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.8 MB (77826917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad61071e371650c28015669e637fa033f709d1f7b248fe85c3cc59a10432898`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:20:23 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:20:23 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:20:23 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:20:23 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 23:21:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:21:51 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:25:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:25:41 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:25:42 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:25:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:25:42 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:29:36 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:29:37 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:29:57 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:29:57 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:29:57 GMT
ENV COMPOSER_VERSION=2.11.0
# Thu, 29 Oct 2026 17:29:57 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:29:58 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:29:59 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:29:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:29:59 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3994947cd88d28cfb3f991c5b6fd75edffe6f7e091429cad77f8db61869091f`  
		Last Modified: Wed, 21 Oct 2026 23:24:22 GMT  
		Size: 3.7 MB (3683873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:187dd63caa64ac1d5888e1f101c2c414d74d260eef5fc095e9dc6dbb374f7267`  
		Last Modified: Wed, 21 Oct 2026 23:24:21 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:428c8b641892350c28dd8dc3645e567eb63ac63033b1d7e5e28f1a6b6bf3670e`  
		Last Modified: Wed, 21 Oct 2026 23:24:21 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dad3e2711e594137e332b0b8d206cc1ca16f454e8205de6bf3f1053fa4856557`  
		Last Modified: Wed, 21 Oct 2026 23:25:54 GMT  
		Size: 14.6 MB (14577842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ecc9de14cbfddefd10b5b12025384105b6fcfd3288c1bfe5f156560e839f6fb`  
		Last Modified: Wed, 21 Oct 2026 23:25:54 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f74c95f00b7275ee5e9eb1564dd340bf6b9bdfdf5827a48aa756c780a8d2792e`  
		Last Modified: Wed, 21 Oct 2026 23:25:54 GMT  
		Size: 21.7 MB (21742396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34c0db3041505705d6ed118114ccaf6c9d8f46e852555eee7afbaca8eb7c20f6`  
		Last Modified: Wed, 21 Oct 2026 23:25:53 GMT  
		Size: 2.4 KB (2442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c00b5eab2e06d4e48cca5a4774e319d8ad4a2ebd14148c4c964ff1e659610c`  
		Last Modified: Wed, 21 Oct 2026 23:25:55 GMT  
		Size: 22.1 KB (22132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:004dea91dfd2ea6b46667f58973690fc57366ea82b570234a6fed19149c48611`  
		Last Modified: Thu, 29 Oct 2026 17:30:27 GMT  
		Size: 33.0 MB (32988671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eb5cd95d8cb3fdc952b0c0a9be4224a576eb630da18c0c96bf9ef0f72e9ca42`  
		Last Modified: Thu, 29 Oct 2026 17:30:26 GMT  
		Size: 260.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecdd34b3ab48b900aacea486fc84423abb645ce5440f149cd0ebd81de2838ce3`  
		Last Modified: Thu, 29 Oct 2026 17:30:26 GMT  
		Size: 1.1 MB (1087450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cca4ae567647f5d3dfac677ee075d6345dfd6f7bbb7440b15a05c824f71cedb`  
		Last Modified: Thu, 29 Oct 2026 17:30:26 GMT  
		Size: 415.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78d0c2860d06593a40f07ea535d170d88064742c3645fdb6a67f053a87879c0f`  
		Last Modified: Thu, 29 Oct 2026 17:30:25 GMT  
		Size: 92.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.11.0` - unknown; unknown

```console
$ docker pull composer@sha256:7c817aa3fc7e7925e50091e9b3c2b87ddcf768958fb86c3ae3164ed7ecf53995
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:649abc8eccf5690c0e4f38a2546e3cedda4fb3139abcc643af05ea31c3bc9a1c`

```dockerfile
```

-	Layers:
	-	`sha256:2649e690cc5e96d99076e9d8ea264757096604f2b922518c82d44d7350ca3c71`  
		Last Modified: Thu, 29 Oct 2026 17:30:26 GMT  
		Size: 2.2 MB (2180784 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ffc554f713937193a56b13d9e6845b065484f348f9e33ec242c0e8b2b11bce86`  
		Last Modified: Thu, 29 Oct 2026 17:30:25 GMT  
		Size: 30.6 KB (30588 bytes)  
		MIME: application/vnd.in-toto+json

## `composer:2.2`

```console
$ docker pull composer@sha256:bbb696a91c80c01268f3c3b758187e7c831e0ca70f4a0b379a2362ab4e0dce85
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

### `composer:2.2` - linux; amd64

```console
$ docker pull composer@sha256:7b3bb58b781664e6fb11a1b320413437b83e5984f60c0a0505773c4abaefea48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.7 MB (77681626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dac69edb5173eb41f292180839be18323eaeca5632d1685d4c05f66e333052fb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 22:47:39 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 22:47:39 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 22:47:39 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 22:47:39 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 22:47:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 22:47:41 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:51:04 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 22:51:04 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:51:05 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 22:51:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 22:51:05 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:30:48 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:30:48 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:31:30 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:31:30 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:31:30 GMT
ENV COMPOSER_VERSION=2.2.31
# Thu, 29 Oct 2026 17:31:30 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:31:30 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:31:30 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:31:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:31:30 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:376608520fec13724c5434a1ded7eb9031a39b655141a2e04968e0fbe586fdbc`  
		Last Modified: Wed, 21 Oct 2026 22:51:13 GMT  
		Size: 3.5 MB (3490552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c8980f3dbe0d688f813899b22c18938c913dd1fa4ea8b5432c84db8af5299c5`  
		Last Modified: Wed, 21 Oct 2026 22:51:13 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a137d44a72ff85dcecc5762b37ebe8661a17e4798f7cf59d124c8098d9e928`  
		Last Modified: Wed, 21 Oct 2026 22:51:13 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:445b9af79994b4888ee58cb173cc36114acdef2a015f895661e43602c1e9ed38`  
		Last Modified: Wed, 21 Oct 2026 22:51:14 GMT  
		Size: 14.6 MB (14577842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:885fc261a1a10bba4027457db8b8108658f2ce839cc0442070db12eb475c6632`  
		Last Modified: Wed, 21 Oct 2026 22:51:14 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc76ccfcd45bf400236f2db0f8239b29907ccaa8bb0fa42f4d4b5e115cb8cbf9`  
		Last Modified: Wed, 21 Oct 2026 22:51:15 GMT  
		Size: 22.9 MB (22905684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cda05494a4f87da8838d70692427889af18083405f03cb926211ece66107cdc`  
		Last Modified: Wed, 21 Oct 2026 22:51:15 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6044f6b455c81c7b7e479f51a06a2742bcca49eed7f0917c51c4ab0d2b9df650`  
		Last Modified: Wed, 21 Oct 2026 22:51:15 GMT  
		Size: 22.4 KB (22362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85fb19fe0e1a3a7aecdbc55a1a3ce2f1524d6a3c6f778dfd9c06233ce2f6f829`  
		Last Modified: Thu, 29 Oct 2026 17:31:12 GMT  
		Size: 32.0 MB (32028535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e1f05c8f0c423b0141b053cfb222de1c6748b984268504ee292d032975c80a0`  
		Last Modified: Thu, 29 Oct 2026 17:31:11 GMT  
		Size: 260.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38c5d08e9909b007a9f872833b7565b13534176446e3974a1b94b8333c72295b`  
		Last Modified: Thu, 29 Oct 2026 17:31:36 GMT  
		Size: 798.7 KB (798688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efb0ffcd166b9edda65256c0f025127e3b48aa33df2549ad3e0ebb015ba3442f`  
		Last Modified: Thu, 29 Oct 2026 17:31:36 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d739d50dc36dae1f0b8405f4faf19b911c9409cc65d17ffc40df78f6f1462686`  
		Last Modified: Thu, 29 Oct 2026 17:31:36 GMT  
		Size: 92.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2` - unknown; unknown

```console
$ docker pull composer@sha256:91aab6ad111e1fd6ac2008747c8dccb3f9602445c062c64ba76c0f95c30943cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63f7cd26de2d0dc824aef22024a2ae6229d17dbeadb224314bf1fece908e7165`

```dockerfile
```

-	Layers:
	-	`sha256:bbebdf1e8429b25c213fad2295856813a9d75e136bb4f730a9f7041c1be3a2c7`  
		Last Modified: Thu, 29 Oct 2026 17:31:36 GMT  
		Size: 2.2 MB (2180932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58e4022c704256791682831cacea10dfcdb76a8da840466e6ce37e6f174ed9b7`  
		Last Modified: Thu, 29 Oct 2026 17:31:36 GMT  
		Size: 30.0 KB (29981 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.2` - linux; arm variant v6

```console
$ docker pull composer@sha256:2f7dca1557b6d8a02a3063d09f54591b1008eba39576692393e29e3e8f683c0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.0 MB (73994364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dff4ef4d68143b17fb903dcff479d912db7ba6d31b8c0fd0a4596b895882195a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:17:13 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:17:13 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:17:13 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:17:13 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 23:17:16 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:17:16 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:20:21 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:20:21 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:20:22 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:20:22 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:20:22 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:30:28 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:30:28 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:31:19 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:31:19 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:31:19 GMT
ENV COMPOSER_VERSION=2.2.31
# Thu, 29 Oct 2026 17:31:19 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:31:19 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:31:19 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:31:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:31:19 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34261f84d7ef8445bcf616905088020a73742fa8cba3a783277534f96cb919e3`  
		Last Modified: Wed, 21 Oct 2026 23:20:28 GMT  
		Size: 3.4 MB (3445779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d079375510e49850f6ce5b7baae755d73ea08962a2779737fac5cb01f8ec016`  
		Last Modified: Wed, 21 Oct 2026 23:20:28 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c51265cbeda0a655d6bda2d76d86d971d13e98f0825566cd9da799b688fe2a`  
		Last Modified: Wed, 21 Oct 2026 23:20:28 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75e0d2bfaec09bb1210bf610416028293d9e172d1ad89eb0fa9d68877fdc76a5`  
		Last Modified: Wed, 21 Oct 2026 23:20:28 GMT  
		Size: 14.6 MB (14577852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94d48ed0a90a40bd66f2fc38ebb1cd43c2776488739d1a857237bf1f9536283b`  
		Last Modified: Wed, 21 Oct 2026 23:20:29 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4e0148715c98c76112803e4e7bba388c2238925c8a8ee176f690278e8fb2825`  
		Last Modified: Wed, 21 Oct 2026 23:20:29 GMT  
		Size: 19.8 MB (19828719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:182bc95bd78f5e925cd9466a1e61d7e89937e65aa86996b0e894e34c6692a290`  
		Last Modified: Wed, 21 Oct 2026 23:20:29 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:898d0ebd89fbea4e27e9048eacb3b29f3f1758a0d29107f9220b80d08cd129cc`  
		Last Modified: Wed, 21 Oct 2026 23:20:29 GMT  
		Size: 22.1 KB (22133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f57891c8c2662dd2774d5961ee592676f16836343cd0beb00f1290e6bfe95822`  
		Last Modified: Thu, 29 Oct 2026 17:30:55 GMT  
		Size: 31.8 MB (31758658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f37b2cc9499bb61e3e1157c15291fcf9d69233e5945a85e809440686c4bcba7`  
		Last Modified: Thu, 29 Oct 2026 17:30:54 GMT  
		Size: 259.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3ad3ce52a74ceae8cea35bbd738b9024a3114c2bb98b88dc7231dc8ad330923`  
		Last Modified: Thu, 29 Oct 2026 17:31:24 GMT  
		Size: 798.1 KB (798073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ae3567b0f9218658cf669d39fac59dc80d445fa85be17752f239eba179df01d`  
		Last Modified: Thu, 29 Oct 2026 17:31:23 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acc1e7857803d64869395bddd4e321d93b9bf4091ff642ed673edbc881cc7088`  
		Last Modified: Thu, 29 Oct 2026 17:31:23 GMT  
		Size: 92.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2` - unknown; unknown

```console
$ docker pull composer@sha256:7f7468319b32e8553660d9fe5af17aab1f28a132916193eeea7c692c429a4f30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.9 KB (29855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac24118759a61cfe69e3a0f6cd9b726aed05654e02a324c39eaf486930a2e5b6`

```dockerfile
```

-	Layers:
	-	`sha256:da314f46cbb6eafd6ada3a70001f405785b31339e4274bc6bfdb8c2c453a92bc`  
		Last Modified: Thu, 29 Oct 2026 17:31:23 GMT  
		Size: 29.9 KB (29855 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.2` - linux; arm variant v7

```console
$ docker pull composer@sha256:feaf601e90fb30ddf65f03ae3fee4af75b37c8be7d378ccf62401f66832fa632
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.0 MB (70980472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3b012f8b70d73092e2f6c674afc791101f1f9f391438928ee331db6ea1627d8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:40 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:20:40 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:20:41 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:20:41 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:20:41 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 23:20:44 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:20:44 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:23:55 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:23:55 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:23:56 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:23:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:23:56 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:30:43 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:30:43 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:31:30 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:31:30 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:31:30 GMT
ENV COMPOSER_VERSION=2.2.31
# Thu, 29 Oct 2026 17:31:30 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:31:30 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:31:30 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:31:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:31:30 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce0acf9ba5220aef037466d130f7f326ab9ef0c5870793956e96251f1836efe3`  
		Last Modified: Wed, 21 Oct 2026 23:24:03 GMT  
		Size: 3.3 MB (3257820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:865067921a4c0ed209af9565b5e8d40435c227b21307684d39da57ded4474af6`  
		Last Modified: Wed, 21 Oct 2026 23:24:03 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8ba9010c2935c6ada5f0257931f104bd958a55c474c40a1fab34bf91aede0aa`  
		Last Modified: Wed, 21 Oct 2026 23:24:03 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4fa67a9851204f8bf42909cf4ffafba10dd11cec11681adc94770c22650a2a5`  
		Last Modified: Wed, 21 Oct 2026 23:24:03 GMT  
		Size: 14.6 MB (14577854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35f620c032a4750276d551ddcb4880624b877a0482d36fda0b5f34121aeb34e6`  
		Last Modified: Wed, 21 Oct 2026 23:24:04 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3abfc41d850665317cc58782f4e62b19d10ecd32c08c53d22e4d78747accd735`  
		Last Modified: Wed, 21 Oct 2026 23:24:05 GMT  
		Size: 18.7 MB (18711848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ebc848c55d1fce83940950291e534af2567abf8506be91457699fb37177e48`  
		Last Modified: Wed, 21 Oct 2026 23:24:04 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4b9053a6d68424b0181b2ae9769d4e6c1d30f41f746fefd4254f9ac384b79a0`  
		Last Modified: Wed, 21 Oct 2026 23:24:05 GMT  
		Size: 22.1 KB (22141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aec250e436276e2702f8fbad5704c5e79ef99213454fd8c379e5590ce148580`  
		Last Modified: Thu, 29 Oct 2026 17:31:08 GMT  
		Size: 30.4 MB (30350969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b08f3642912e723a82d5a3436bbeacad3549cfd5d2cdee28c9081907bf7bafa9`  
		Last Modified: Thu, 29 Oct 2026 17:31:08 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e55b9340c56d5b61ce150130a9184a6c32e8aeae52e3cd69c14a34b1e01b561f`  
		Last Modified: Thu, 29 Oct 2026 17:31:36 GMT  
		Size: 788.3 KB (788324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91a560fe44925b9f0aa357c6fde8f05354fd65bb61caa3d1656b26bcefb5b373`  
		Last Modified: Thu, 29 Oct 2026 17:31:36 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d739d50dc36dae1f0b8405f4faf19b911c9409cc65d17ffc40df78f6f1462686`  
		Last Modified: Thu, 29 Oct 2026 17:31:36 GMT  
		Size: 92.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2` - unknown; unknown

```console
$ docker pull composer@sha256:980460251123c5ba38e21b73c84a30c681c215db992f30f20fd76273699f3b7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c43feab9cc80abb4448b9fedab6eab27b0193357fd846265ccb6b58fb335e4e`

```dockerfile
```

-	Layers:
	-	`sha256:eea9d467616f5a9677d6f53425d1573bd0694a2ed5bdca8e40fa23f832cb2f16`  
		Last Modified: Thu, 29 Oct 2026 17:31:36 GMT  
		Size: 2.2 MB (2180581 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d359f3b17003b9d98f96cdc909f9e88cbb97ef4a2454d01582ddcf4296dbedc`  
		Last Modified: Thu, 29 Oct 2026 17:31:36 GMT  
		Size: 30.1 KB (30071 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.2` - linux; arm64 variant v8

```console
$ docker pull composer@sha256:84c8a7a8950e96043956d51459c26cb6067903ffbb860610864d29b8c54d9ef2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.3 MB (77343291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3123a1858f2e34acbe600dd2c5597aa294ca8dffdbfb4d5e0cadce1188d6c201`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:13:13 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:13:13 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:13:13 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:13:13 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 23:13:16 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:13:16 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:16:44 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:16:44 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:16:45 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:16:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:16:45 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:30:30 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:30:30 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:31:14 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:31:14 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:31:14 GMT
ENV COMPOSER_VERSION=2.2.31
# Thu, 29 Oct 2026 17:31:14 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:31:14 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:31:14 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:31:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:31:14 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ab96d4a471bafc26cb4609f5785273f51fa52727219feb41098a0655b7658aa`  
		Last Modified: Wed, 21 Oct 2026 23:16:53 GMT  
		Size: 3.5 MB (3500755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e20eb32fc8542481a4e72dbf0c37a7e126b93272dc1e00b90581d62087c5e76`  
		Last Modified: Wed, 21 Oct 2026 23:16:37 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bff1f2144e6df91e63a5b8246cf332533431fe69e26df8d7f18ee88976ad954b`  
		Last Modified: Wed, 21 Oct 2026 23:16:37 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04dec9fd6d8b70aa38749bc013fed907c2d3c675e9061ade9625f6ca2d14eb7a`  
		Last Modified: Wed, 21 Oct 2026 23:16:53 GMT  
		Size: 14.6 MB (14577831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634514a3c9cca89834cf85309c526c8b3239f295a232ce77e6bcebe71ead3a02`  
		Last Modified: Wed, 21 Oct 2026 23:16:38 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0710d863a911e052326baf681756dce2ae1f5e08b99c85010e313334afa0b8fe`  
		Last Modified: Wed, 21 Oct 2026 23:16:53 GMT  
		Size: 22.1 MB (22088277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1122b3f336c096b4a94452448cc32afb1980871b367f4925b881483999830585`  
		Last Modified: Wed, 21 Oct 2026 23:16:52 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d55afb5318bd77aff94bca26afbb7ea6f7bf1afc7e68c5611fac7e8d1bc6ad`  
		Last Modified: Wed, 21 Oct 2026 23:16:53 GMT  
		Size: 22.2 KB (22159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbed5be2d973f35addb37f6c81535640e32d136e6c209c894cde33ce739cdb49`  
		Last Modified: Thu, 29 Oct 2026 17:30:54 GMT  
		Size: 32.2 MB (32161852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dce8f775ab4a2a9794239e7511ec3a0654ae826b8e0521f5930017dbd492a56f`  
		Last Modified: Thu, 29 Oct 2026 17:30:53 GMT  
		Size: 258.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9306cda819801e152e85bb9c372814e6496da13cfcd289935aaa49c9a085ce4f`  
		Last Modified: Thu, 29 Oct 2026 17:31:21 GMT  
		Size: 797.1 KB (797078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c2d7d9c3c0dea5b40c3e48e6f013be03c47fe01778211b0110a86c39d546441`  
		Last Modified: Thu, 29 Oct 2026 17:31:20 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:287e11a6009c5712e28bb57fcb392f42a83ff0aaff4f6c28cb9b1f15ca2e41c9`  
		Last Modified: Thu, 29 Oct 2026 17:31:18 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2` - unknown; unknown

```console
$ docker pull composer@sha256:0be061fc6a76f76140657ffc669a4ee70d9c88cc6fb8dbad5824a1d8b364d230
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:830a94cf234ad2138817fd25b1560db5f4e86b3c598b3f3b5fb12cc1a3110adb`

```dockerfile
```

-	Layers:
	-	`sha256:e0f6931c173aa5ea524dadd14dbb13f5f29a10dc17de5e3c1f7efd284416a3d1`  
		Last Modified: Thu, 29 Oct 2026 17:31:20 GMT  
		Size: 2.2 MB (2180407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f3dae659fb0fefc7e12825c9191bc901b6de6b71a101ae58006353a9a9e6ce1`  
		Last Modified: Thu, 29 Oct 2026 17:31:20 GMT  
		Size: 30.1 KB (30089 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.2` - linux; 386

```console
$ docker pull composer@sha256:0a00a1d91643469a7764ddf4e634bfbebede9158cc39cfb2705e87842ff35942
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.5 MB (78534694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25f3bf3409dbd783cebb193d33f3570479e202996edf37abdd9a4b619dae3c15`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 21 Oct 2026 22:50:43 GMT
ADD alpine-minirootfs-3.24.3-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:50:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:13:13 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:13:13 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:13:13 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:13:13 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 23:13:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:13:18 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:16:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:16:41 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:16:41 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:16:41 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:16:41 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:29:13 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:29:13 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:29:28 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:29:28 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:29:28 GMT
ENV COMPOSER_VERSION=2.2.31
# Thu, 29 Oct 2026 17:29:28 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:29:28 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:29:28 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:29:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:29:28 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:f89afe85a29e874c0bc6d49b09150af4f08fbc4e6db82e7870677ef76977c07d`  
		Last Modified: Wed, 21 Oct 2026 22:50:49 GMT  
		Size: 3.7 MB (3678996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90ab361813d0997c5956c46b9c4ea156280d4dcd71d38ca46d3331e3eec0d1b3`  
		Last Modified: Wed, 21 Oct 2026 23:16:49 GMT  
		Size: 3.5 MB (3524290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdeb61fe97e7f8c8cd86e9a1db1dcccf56a7a9fb75084e974785b13d42a4df58`  
		Last Modified: Wed, 21 Oct 2026 23:16:44 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bff1f2144e6df91e63a5b8246cf332533431fe69e26df8d7f18ee88976ad954b`  
		Last Modified: Wed, 21 Oct 2026 23:16:37 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:037030204c9a0cd7860b02f5621cae6c1ec61a5a2ad3fd2b56b077c4be4381c2`  
		Last Modified: Wed, 21 Oct 2026 23:16:50 GMT  
		Size: 14.6 MB (14577825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11c65f33ab044b67b2dfcf45d46cfa8cac26aa1db0259b1e5aa92381bd9ee998`  
		Last Modified: Wed, 21 Oct 2026 23:16:49 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80691052feb5efdf9fd906dee8ac4f3be3172c1c188cd1b56fa061fcd37c8764`  
		Last Modified: Wed, 21 Oct 2026 23:16:50 GMT  
		Size: 23.4 MB (23384278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c8ef2140f6fd7bc9d64d3a3a96c30b190ed438a16ac9edd87987dbbe08b1fd3`  
		Last Modified: Wed, 21 Oct 2026 23:16:50 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a778e09088262a247914f0c3db8a642de7710967a500727f9f00476356d45dd`  
		Last Modified: Wed, 21 Oct 2026 23:16:50 GMT  
		Size: 22.3 KB (22341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d0b5232c254530805264cc4746f5238f02debae2fdf883d8e8d981d65ca0ccf`  
		Last Modified: Thu, 29 Oct 2026 17:29:38 GMT  
		Size: 32.5 MB (32530568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c529a5c6d5b01f9815cb52cc8d630f7eb2d1e473c96cb4dcef4069ced3c723a3`  
		Last Modified: Thu, 29 Oct 2026 17:29:37 GMT  
		Size: 258.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab694a738b18f9a1a9abc38071233d9343822487ae7c94d151b088f500e1ae96`  
		Last Modified: Thu, 29 Oct 2026 17:29:38 GMT  
		Size: 811.5 KB (811545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:539cf1d4ab09b520ba9619afdd8b0122a702634993970427d473dc12d8dcd836`  
		Last Modified: Thu, 29 Oct 2026 17:29:38 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c9e7ad70bf558adb988b93c10de78ce60b857630ba6d6644058221efaf745eb`  
		Last Modified: Thu, 29 Oct 2026 17:29:39 GMT  
		Size: 92.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2` - unknown; unknown

```console
$ docker pull composer@sha256:2f09d2e21fade6d3adce1cfbcd6464d1a30bcaab192ca56ae68fa70f09ccef72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eac227d1259f91842493644b690ab37fd5981b7acf2616d388c4c53658fec2ea`

```dockerfile
```

-	Layers:
	-	`sha256:4f99d40ec06caaedae1755aab16fbacaf02f4ae43c96044260c6b3f99ee5c7fd`  
		Last Modified: Thu, 29 Oct 2026 17:29:37 GMT  
		Size: 2.2 MB (2180731 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12322d60837bde03fc78d30512ba617ac4712ff932339903dac9fdb5988c7fa9`  
		Last Modified: Thu, 29 Oct 2026 17:29:37 GMT  
		Size: 30.0 KB (29955 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.2` - linux; ppc64le

```console
$ docker pull composer@sha256:7204fd78d5f8b65f8b0121a46aaea5871435522045187e589621d2732faeec5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.1 MB (79060170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57bcdc66f073613ca7f662aac49465d81affa5421d6f3289b6100a8c55f7ca36`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 10:41:08 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 22 Oct 2026 10:41:08 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 22 Oct 2026 10:41:08 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 22 Oct 2026 10:41:08 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 22 Oct 2026 10:41:10 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 22 Oct 2026 10:41:10 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_VERSION=8.5.12
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Thu, 22 Oct 2026 10:58:03 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 22 Oct 2026 10:58:03 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 11:04:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 22 Oct 2026 11:04:42 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 11:04:44 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 22 Oct 2026 11:04:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 22 Oct 2026 11:04:44 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:29:36 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:29:37 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:30:22 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:30:22 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:30:22 GMT
ENV COMPOSER_VERSION=2.2.31
# Thu, 29 Oct 2026 17:30:22 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:30:23 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:30:23 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:30:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:30:23 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34960f353c419102a4e6aa8def25e776b62fc861c2c7f3498ae163f83c42a913`  
		Last Modified: Thu, 22 Oct 2026 10:45:49 GMT  
		Size: 3.7 MB (3665469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc8b6dad17e9a4de16850dd156812ecc0a368713613a848e61da65fc704edbe`  
		Last Modified: Thu, 22 Oct 2026 10:45:48 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9180d692f4fcd0b027b940ab4548e62ecdbfcd62b8438a632e69b2299aacdcd`  
		Last Modified: Thu, 22 Oct 2026 10:45:48 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed005116498b48ae5fb54d7e5bdb983c0af7f680ab5f96a9af7e62e19c268c64`  
		Last Modified: Thu, 22 Oct 2026 11:05:23 GMT  
		Size: 14.6 MB (14577836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5b947ba4505c12d11d5511f4a89c2874eeda46e7503f8af574594f6a83690ef`  
		Last Modified: Thu, 22 Oct 2026 11:05:22 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5273c4824064374eca4303b43014f08be9f99280099f840ee4679b254144d64`  
		Last Modified: Thu, 22 Oct 2026 11:05:23 GMT  
		Size: 23.0 MB (23028687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f81004a0da47bf741288eabcbcf2ac176bc1cffc637ad8554706ad4d111108`  
		Last Modified: Thu, 22 Oct 2026 11:05:22 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c7e2b7ed5a28fea078ad8264e59a9ca084f211368fe02a849dba03fb7d32daa`  
		Last Modified: Thu, 22 Oct 2026 11:05:23 GMT  
		Size: 22.2 KB (22178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2b0957b71d7d4ad0abe8cac2c658929a70ac811658a8fd94b73a607aa56d927`  
		Last Modified: Thu, 29 Oct 2026 17:30:52 GMT  
		Size: 33.1 MB (33135684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc707c814f6ccf6274528f7cbdc8a047daaebb51e8d81820d4a3ca4eb39e27f0`  
		Last Modified: Thu, 29 Oct 2026 17:30:51 GMT  
		Size: 260.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71a942ad4c3b67f290b6e78ae08bbbc72a002d8944ccef8a3bb8242ba2c42905`  
		Last Modified: Thu, 29 Oct 2026 17:30:51 GMT  
		Size: 804.6 KB (804630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e31b8be61e7d2e03ae6c2eadad67b67902a4b484f2c1489349ad483ab8329f4`  
		Last Modified: Thu, 29 Oct 2026 17:30:51 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3907b9485e65baf437f23343b5c10fc98b63f92ed666122ac6554de6606c090`  
		Last Modified: Thu, 29 Oct 2026 17:30:52 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2` - unknown; unknown

```console
$ docker pull composer@sha256:e724f2b43b5b3e79bc24f111f3dfe370eca7c9184667550232246c10747e38df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6488a74e9308fabaf2a803b2e11da9738cedfc3d787d3c61a221ce762e914dd2`

```dockerfile
```

-	Layers:
	-	`sha256:eef09b52b3421831f61fc52a81d6df2836bb7e558d2713257fdc16e777ded964`  
		Last Modified: Thu, 29 Oct 2026 17:30:51 GMT  
		Size: 2.2 MB (2180768 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:395ede354654e437b4b8b2fb6fde3089f3a6212fe9918e46d31df97ab2d86610`  
		Last Modified: Thu, 29 Oct 2026 17:30:50 GMT  
		Size: 30.0 KB (30017 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.2` - linux; riscv64

```console
$ docker pull composer@sha256:c768b65f32d7fda038fa6848b0b3612c6bc10264bb0d8f27988317c0a64d838f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.0 MB (75974733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b8fa84f5cf0bbc20b474a4e9ae1b7c2be60d65fba7482f35f1c8125052a859f7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

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
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHP_VERSION=8.5.12
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Sat, 24 Oct 2026 21:26:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Sat, 24 Oct 2026 21:26:17 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 24 Oct 2026 22:31:26 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 24 Oct 2026 22:31:26 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 24 Oct 2026 22:31:30 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 24 Oct 2026 22:31:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 24 Oct 2026 22:31:30 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 04:17:19 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 04:17:20 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 04:26:12 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 04:26:12 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 04:26:12 GMT
ENV COMPOSER_VERSION=2.2.30
# Thu, 29 Oct 2026 04:26:12 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 04:26:12 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 04:26:12 GMT
WORKDIR /app
# Thu, 29 Oct 2026 04:26:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 04:26:12 GMT
CMD ["composer"]
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
	-	`sha256:6768c3a60b96d1e94f5f0ec89ff6b88f778ab6b895c2d00cf52e5e594f1b63a2`  
		Last Modified: Sat, 24 Oct 2026 22:32:52 GMT  
		Size: 14.6 MB (14577866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a375e2dcca56a7f46e843223639300f2535afa5d4449703ceb9f70b2f7c850c`  
		Last Modified: Sat, 24 Oct 2026 22:32:48 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e6d51c6bc9763928c45bc4c7f3c9e22f1958c8669a313c24eff6881bb69553f`  
		Last Modified: Sat, 24 Oct 2026 22:32:53 GMT  
		Size: 21.1 MB (21079704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27ba0ddb9e946940cc1e746066626fe028854ecd7a34de4ab1f46a5a61e5d528`  
		Last Modified: Sat, 24 Oct 2026 22:32:48 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90dbbbb063d2ea4d1265014ea29584541fa004ee62bb54094c4f8de44e090163`  
		Last Modified: Sat, 24 Oct 2026 22:32:50 GMT  
		Size: 22.2 KB (22170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75b43b25100b405ab5448dd9cbf0ced2fc5bd74966566b266070ba1424aa1fb6`  
		Last Modified: Thu, 29 Oct 2026 04:22:22 GMT  
		Size: 32.2 MB (32246017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:354267519d9a567124a67aecfbec7041b69555f7eedf4838f1b22fc30508c9a1`  
		Last Modified: Thu, 29 Oct 2026 04:22:17 GMT  
		Size: 260.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2eca807be4789fa3aeb87bdde0c10b30618213777fe2b89108d3fa2f80e2181b`  
		Last Modified: Thu, 29 Oct 2026 04:27:16 GMT  
		Size: 826.4 KB (826390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50bb79e2156816dadf330dbba2cfc45f3bd686a54dc31bf2ece8605a1e931486`  
		Last Modified: Thu, 29 Oct 2026 04:27:16 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7745846d59916c85cba79ac472a02fd8434e3801517d530526ec7f16af686d5b`  
		Last Modified: Thu, 29 Oct 2026 04:27:16 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2` - unknown; unknown

```console
$ docker pull composer@sha256:e93d26472bede32db0d41a4177f96e1eb7185851dbaa7759f2f09dc2431d2899
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2209605 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b488259e5552b94819dc0ed09a5e5a1260b3c029d24cb50004eeaee04049b472`

```dockerfile
```

-	Layers:
	-	`sha256:ec89bac27b1b7974814a2ab53cc7ee78f2b8898d253f57c3673caa0788084fe8`  
		Last Modified: Thu, 29 Oct 2026 04:27:16 GMT  
		Size: 2.2 MB (2179492 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b3a50ea4bad96f81829ae2631fd4f9d298358136979eeca569ce50dae445871`  
		Last Modified: Thu, 29 Oct 2026 04:27:15 GMT  
		Size: 30.1 KB (30113 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.2` - linux; s390x

```console
$ docker pull composer@sha256:eacb5fc50207d98f9a2f3899c10f9a12b81085fe4699322a926b097e88db4e78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.5 MB (77541159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1589808546e8f17359d638b12722fc2007225e357b0a0601a8309052a91f0980`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:20:23 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:20:23 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:20:23 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:20:23 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 23:21:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:21:51 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:25:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:25:41 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:25:42 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:25:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:25:42 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:29:36 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:29:37 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:29:58 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:29:58 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:29:58 GMT
ENV COMPOSER_VERSION=2.2.31
# Thu, 29 Oct 2026 17:29:58 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:29:58 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:29:59 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:29:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:29:59 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3994947cd88d28cfb3f991c5b6fd75edffe6f7e091429cad77f8db61869091f`  
		Last Modified: Wed, 21 Oct 2026 23:24:22 GMT  
		Size: 3.7 MB (3683873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:187dd63caa64ac1d5888e1f101c2c414d74d260eef5fc095e9dc6dbb374f7267`  
		Last Modified: Wed, 21 Oct 2026 23:24:21 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:428c8b641892350c28dd8dc3645e567eb63ac63033b1d7e5e28f1a6b6bf3670e`  
		Last Modified: Wed, 21 Oct 2026 23:24:21 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dad3e2711e594137e332b0b8d206cc1ca16f454e8205de6bf3f1053fa4856557`  
		Last Modified: Wed, 21 Oct 2026 23:25:54 GMT  
		Size: 14.6 MB (14577842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ecc9de14cbfddefd10b5b12025384105b6fcfd3288c1bfe5f156560e839f6fb`  
		Last Modified: Wed, 21 Oct 2026 23:25:54 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f74c95f00b7275ee5e9eb1564dd340bf6b9bdfdf5827a48aa756c780a8d2792e`  
		Last Modified: Wed, 21 Oct 2026 23:25:54 GMT  
		Size: 21.7 MB (21742396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34c0db3041505705d6ed118114ccaf6c9d8f46e852555eee7afbaca8eb7c20f6`  
		Last Modified: Wed, 21 Oct 2026 23:25:53 GMT  
		Size: 2.4 KB (2442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c00b5eab2e06d4e48cca5a4774e319d8ad4a2ebd14148c4c964ff1e659610c`  
		Last Modified: Wed, 21 Oct 2026 23:25:55 GMT  
		Size: 22.1 KB (22132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15512e208e3dda5ea65ba85104794352f2bbe855ff64180cc4ddae47eafa6bd`  
		Last Modified: Thu, 29 Oct 2026 17:30:25 GMT  
		Size: 33.0 MB (32988706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34e11f006a59bd35a9d549eb62cf0da822947d174dabfe900ccbf367820aff4e`  
		Last Modified: Thu, 29 Oct 2026 17:30:24 GMT  
		Size: 260.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bb5ca1ba093df565d772fdb86b3616b37a697bf3f37e5e83ac8158ec7f230a5`  
		Last Modified: Thu, 29 Oct 2026 17:30:24 GMT  
		Size: 801.7 KB (801655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f97eb1afb34b3ff062f598f06b94c1c9d8d403809d699fdd876a12506f2e98a5`  
		Last Modified: Thu, 29 Oct 2026 17:30:24 GMT  
		Size: 417.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78d0c2860d06593a40f07ea535d170d88064742c3645fdb6a67f053a87879c0f`  
		Last Modified: Thu, 29 Oct 2026 17:30:25 GMT  
		Size: 92.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2` - unknown; unknown

```console
$ docker pull composer@sha256:3dca4dd6a0d8cd9be441b4893a250bdf35f727bc7dc899bbe36b1ae9d83e096e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db119fcb0b9d1a77dbe50e06e4f6811a92560ef26b3951a15c75c31b5d900d9e`

```dockerfile
```

-	Layers:
	-	`sha256:f5472f1ff812c4eec72756f776c9f51338553db3b7fc006abd79c7c3cf2bc943`  
		Last Modified: Thu, 29 Oct 2026 17:30:24 GMT  
		Size: 2.2 MB (2180188 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37441244cbaab9f7d4e45ec43153e5250bc76c47803e134147f09483c885f8d8`  
		Last Modified: Thu, 29 Oct 2026 17:30:24 GMT  
		Size: 30.0 KB (29981 bytes)  
		MIME: application/vnd.in-toto+json

## `composer:2.2.31`

```console
$ docker pull composer@sha256:f2264745430bff9364fc6c36de317fa7deb1a3da8bcbbee9b1979d34aa442961
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 14
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
	-	linux; s390x
	-	unknown; unknown

### `composer:2.2.31` - linux; amd64

```console
$ docker pull composer@sha256:7b3bb58b781664e6fb11a1b320413437b83e5984f60c0a0505773c4abaefea48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.7 MB (77681626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dac69edb5173eb41f292180839be18323eaeca5632d1685d4c05f66e333052fb`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 22:47:39 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 22:47:39 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 22:47:39 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 22:47:39 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 22:47:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 22:47:41 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:51:04 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 22:51:04 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:51:05 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 22:51:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 22:51:05 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:30:48 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:30:48 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:31:30 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:31:30 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:31:30 GMT
ENV COMPOSER_VERSION=2.2.31
# Thu, 29 Oct 2026 17:31:30 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:31:30 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:31:30 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:31:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:31:30 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:376608520fec13724c5434a1ded7eb9031a39b655141a2e04968e0fbe586fdbc`  
		Last Modified: Wed, 21 Oct 2026 22:51:13 GMT  
		Size: 3.5 MB (3490552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c8980f3dbe0d688f813899b22c18938c913dd1fa4ea8b5432c84db8af5299c5`  
		Last Modified: Wed, 21 Oct 2026 22:51:13 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a137d44a72ff85dcecc5762b37ebe8661a17e4798f7cf59d124c8098d9e928`  
		Last Modified: Wed, 21 Oct 2026 22:51:13 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:445b9af79994b4888ee58cb173cc36114acdef2a015f895661e43602c1e9ed38`  
		Last Modified: Wed, 21 Oct 2026 22:51:14 GMT  
		Size: 14.6 MB (14577842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:885fc261a1a10bba4027457db8b8108658f2ce839cc0442070db12eb475c6632`  
		Last Modified: Wed, 21 Oct 2026 22:51:14 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc76ccfcd45bf400236f2db0f8239b29907ccaa8bb0fa42f4d4b5e115cb8cbf9`  
		Last Modified: Wed, 21 Oct 2026 22:51:15 GMT  
		Size: 22.9 MB (22905684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cda05494a4f87da8838d70692427889af18083405f03cb926211ece66107cdc`  
		Last Modified: Wed, 21 Oct 2026 22:51:15 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6044f6b455c81c7b7e479f51a06a2742bcca49eed7f0917c51c4ab0d2b9df650`  
		Last Modified: Wed, 21 Oct 2026 22:51:15 GMT  
		Size: 22.4 KB (22362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85fb19fe0e1a3a7aecdbc55a1a3ce2f1524d6a3c6f778dfd9c06233ce2f6f829`  
		Last Modified: Thu, 29 Oct 2026 17:31:12 GMT  
		Size: 32.0 MB (32028535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e1f05c8f0c423b0141b053cfb222de1c6748b984268504ee292d032975c80a0`  
		Last Modified: Thu, 29 Oct 2026 17:31:11 GMT  
		Size: 260.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38c5d08e9909b007a9f872833b7565b13534176446e3974a1b94b8333c72295b`  
		Last Modified: Thu, 29 Oct 2026 17:31:36 GMT  
		Size: 798.7 KB (798688 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:efb0ffcd166b9edda65256c0f025127e3b48aa33df2549ad3e0ebb015ba3442f`  
		Last Modified: Thu, 29 Oct 2026 17:31:36 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d739d50dc36dae1f0b8405f4faf19b911c9409cc65d17ffc40df78f6f1462686`  
		Last Modified: Thu, 29 Oct 2026 17:31:36 GMT  
		Size: 92.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2.31` - unknown; unknown

```console
$ docker pull composer@sha256:91aab6ad111e1fd6ac2008747c8dccb3f9602445c062c64ba76c0f95c30943cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210913 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63f7cd26de2d0dc824aef22024a2ae6229d17dbeadb224314bf1fece908e7165`

```dockerfile
```

-	Layers:
	-	`sha256:bbebdf1e8429b25c213fad2295856813a9d75e136bb4f730a9f7041c1be3a2c7`  
		Last Modified: Thu, 29 Oct 2026 17:31:36 GMT  
		Size: 2.2 MB (2180932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:58e4022c704256791682831cacea10dfcdb76a8da840466e6ce37e6f174ed9b7`  
		Last Modified: Thu, 29 Oct 2026 17:31:36 GMT  
		Size: 30.0 KB (29981 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.2.31` - linux; arm variant v6

```console
$ docker pull composer@sha256:2f7dca1557b6d8a02a3063d09f54591b1008eba39576692393e29e3e8f683c0e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.0 MB (73994364 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dff4ef4d68143b17fb903dcff479d912db7ba6d31b8c0fd0a4596b895882195a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:17:13 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:17:13 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:17:13 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:17:13 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 23:17:16 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:17:16 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:20:21 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:20:21 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:20:22 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:20:22 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:20:22 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:30:28 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:30:28 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:31:19 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:31:19 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:31:19 GMT
ENV COMPOSER_VERSION=2.2.31
# Thu, 29 Oct 2026 17:31:19 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:31:19 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:31:19 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:31:19 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:31:19 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34261f84d7ef8445bcf616905088020a73742fa8cba3a783277534f96cb919e3`  
		Last Modified: Wed, 21 Oct 2026 23:20:28 GMT  
		Size: 3.4 MB (3445779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d079375510e49850f6ce5b7baae755d73ea08962a2779737fac5cb01f8ec016`  
		Last Modified: Wed, 21 Oct 2026 23:20:28 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c51265cbeda0a655d6bda2d76d86d971d13e98f0825566cd9da799b688fe2a`  
		Last Modified: Wed, 21 Oct 2026 23:20:28 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75e0d2bfaec09bb1210bf610416028293d9e172d1ad89eb0fa9d68877fdc76a5`  
		Last Modified: Wed, 21 Oct 2026 23:20:28 GMT  
		Size: 14.6 MB (14577852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94d48ed0a90a40bd66f2fc38ebb1cd43c2776488739d1a857237bf1f9536283b`  
		Last Modified: Wed, 21 Oct 2026 23:20:29 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4e0148715c98c76112803e4e7bba388c2238925c8a8ee176f690278e8fb2825`  
		Last Modified: Wed, 21 Oct 2026 23:20:29 GMT  
		Size: 19.8 MB (19828719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:182bc95bd78f5e925cd9466a1e61d7e89937e65aa86996b0e894e34c6692a290`  
		Last Modified: Wed, 21 Oct 2026 23:20:29 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:898d0ebd89fbea4e27e9048eacb3b29f3f1758a0d29107f9220b80d08cd129cc`  
		Last Modified: Wed, 21 Oct 2026 23:20:29 GMT  
		Size: 22.1 KB (22133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f57891c8c2662dd2774d5961ee592676f16836343cd0beb00f1290e6bfe95822`  
		Last Modified: Thu, 29 Oct 2026 17:30:55 GMT  
		Size: 31.8 MB (31758658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f37b2cc9499bb61e3e1157c15291fcf9d69233e5945a85e809440686c4bcba7`  
		Last Modified: Thu, 29 Oct 2026 17:30:54 GMT  
		Size: 259.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3ad3ce52a74ceae8cea35bbd738b9024a3114c2bb98b88dc7231dc8ad330923`  
		Last Modified: Thu, 29 Oct 2026 17:31:24 GMT  
		Size: 798.1 KB (798073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ae3567b0f9218658cf669d39fac59dc80d445fa85be17752f239eba179df01d`  
		Last Modified: Thu, 29 Oct 2026 17:31:23 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acc1e7857803d64869395bddd4e321d93b9bf4091ff642ed673edbc881cc7088`  
		Last Modified: Thu, 29 Oct 2026 17:31:23 GMT  
		Size: 92.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2.31` - unknown; unknown

```console
$ docker pull composer@sha256:7f7468319b32e8553660d9fe5af17aab1f28a132916193eeea7c692c429a4f30
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **29.9 KB (29855 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac24118759a61cfe69e3a0f6cd9b726aed05654e02a324c39eaf486930a2e5b6`

```dockerfile
```

-	Layers:
	-	`sha256:da314f46cbb6eafd6ada3a70001f405785b31339e4274bc6bfdb8c2c453a92bc`  
		Last Modified: Thu, 29 Oct 2026 17:31:23 GMT  
		Size: 29.9 KB (29855 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.2.31` - linux; arm variant v7

```console
$ docker pull composer@sha256:feaf601e90fb30ddf65f03ae3fee4af75b37c8be7d378ccf62401f66832fa632
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.0 MB (70980472 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3b012f8b70d73092e2f6c674afc791101f1f9f391438928ee331db6ea1627d8`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:40 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:20:40 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:20:41 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:20:41 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:20:41 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 23:20:44 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:20:44 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:23:55 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:23:55 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:23:56 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:23:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:23:56 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:30:43 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:30:43 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:31:30 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:31:30 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:31:30 GMT
ENV COMPOSER_VERSION=2.2.31
# Thu, 29 Oct 2026 17:31:30 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:31:30 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:31:30 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:31:30 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:31:30 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce0acf9ba5220aef037466d130f7f326ab9ef0c5870793956e96251f1836efe3`  
		Last Modified: Wed, 21 Oct 2026 23:24:03 GMT  
		Size: 3.3 MB (3257820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:865067921a4c0ed209af9565b5e8d40435c227b21307684d39da57ded4474af6`  
		Last Modified: Wed, 21 Oct 2026 23:24:03 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8ba9010c2935c6ada5f0257931f104bd958a55c474c40a1fab34bf91aede0aa`  
		Last Modified: Wed, 21 Oct 2026 23:24:03 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4fa67a9851204f8bf42909cf4ffafba10dd11cec11681adc94770c22650a2a5`  
		Last Modified: Wed, 21 Oct 2026 23:24:03 GMT  
		Size: 14.6 MB (14577854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35f620c032a4750276d551ddcb4880624b877a0482d36fda0b5f34121aeb34e6`  
		Last Modified: Wed, 21 Oct 2026 23:24:04 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3abfc41d850665317cc58782f4e62b19d10ecd32c08c53d22e4d78747accd735`  
		Last Modified: Wed, 21 Oct 2026 23:24:05 GMT  
		Size: 18.7 MB (18711848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ebc848c55d1fce83940950291e534af2567abf8506be91457699fb37177e48`  
		Last Modified: Wed, 21 Oct 2026 23:24:04 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4b9053a6d68424b0181b2ae9769d4e6c1d30f41f746fefd4254f9ac384b79a0`  
		Last Modified: Wed, 21 Oct 2026 23:24:05 GMT  
		Size: 22.1 KB (22141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aec250e436276e2702f8fbad5704c5e79ef99213454fd8c379e5590ce148580`  
		Last Modified: Thu, 29 Oct 2026 17:31:08 GMT  
		Size: 30.4 MB (30350969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b08f3642912e723a82d5a3436bbeacad3549cfd5d2cdee28c9081907bf7bafa9`  
		Last Modified: Thu, 29 Oct 2026 17:31:08 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e55b9340c56d5b61ce150130a9184a6c32e8aeae52e3cd69c14a34b1e01b561f`  
		Last Modified: Thu, 29 Oct 2026 17:31:36 GMT  
		Size: 788.3 KB (788324 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91a560fe44925b9f0aa357c6fde8f05354fd65bb61caa3d1656b26bcefb5b373`  
		Last Modified: Thu, 29 Oct 2026 17:31:36 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d739d50dc36dae1f0b8405f4faf19b911c9409cc65d17ffc40df78f6f1462686`  
		Last Modified: Thu, 29 Oct 2026 17:31:36 GMT  
		Size: 92.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2.31` - unknown; unknown

```console
$ docker pull composer@sha256:980460251123c5ba38e21b73c84a30c681c215db992f30f20fd76273699f3b7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210652 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c43feab9cc80abb4448b9fedab6eab27b0193357fd846265ccb6b58fb335e4e`

```dockerfile
```

-	Layers:
	-	`sha256:eea9d467616f5a9677d6f53425d1573bd0694a2ed5bdca8e40fa23f832cb2f16`  
		Last Modified: Thu, 29 Oct 2026 17:31:36 GMT  
		Size: 2.2 MB (2180581 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4d359f3b17003b9d98f96cdc909f9e88cbb97ef4a2454d01582ddcf4296dbedc`  
		Last Modified: Thu, 29 Oct 2026 17:31:36 GMT  
		Size: 30.1 KB (30071 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.2.31` - linux; arm64 variant v8

```console
$ docker pull composer@sha256:84c8a7a8950e96043956d51459c26cb6067903ffbb860610864d29b8c54d9ef2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.3 MB (77343291 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3123a1858f2e34acbe600dd2c5597aa294ca8dffdbfb4d5e0cadce1188d6c201`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:13:13 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:13:13 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:13:13 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:13:13 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 23:13:16 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:13:16 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:16:44 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:16:44 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:16:45 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:16:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:16:45 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:30:30 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:30:30 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:31:14 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:31:14 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:31:14 GMT
ENV COMPOSER_VERSION=2.2.31
# Thu, 29 Oct 2026 17:31:14 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:31:14 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:31:14 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:31:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:31:14 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ab96d4a471bafc26cb4609f5785273f51fa52727219feb41098a0655b7658aa`  
		Last Modified: Wed, 21 Oct 2026 23:16:53 GMT  
		Size: 3.5 MB (3500755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e20eb32fc8542481a4e72dbf0c37a7e126b93272dc1e00b90581d62087c5e76`  
		Last Modified: Wed, 21 Oct 2026 23:16:37 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bff1f2144e6df91e63a5b8246cf332533431fe69e26df8d7f18ee88976ad954b`  
		Last Modified: Wed, 21 Oct 2026 23:16:37 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04dec9fd6d8b70aa38749bc013fed907c2d3c675e9061ade9625f6ca2d14eb7a`  
		Last Modified: Wed, 21 Oct 2026 23:16:53 GMT  
		Size: 14.6 MB (14577831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634514a3c9cca89834cf85309c526c8b3239f295a232ce77e6bcebe71ead3a02`  
		Last Modified: Wed, 21 Oct 2026 23:16:38 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0710d863a911e052326baf681756dce2ae1f5e08b99c85010e313334afa0b8fe`  
		Last Modified: Wed, 21 Oct 2026 23:16:53 GMT  
		Size: 22.1 MB (22088277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1122b3f336c096b4a94452448cc32afb1980871b367f4925b881483999830585`  
		Last Modified: Wed, 21 Oct 2026 23:16:52 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d55afb5318bd77aff94bca26afbb7ea6f7bf1afc7e68c5611fac7e8d1bc6ad`  
		Last Modified: Wed, 21 Oct 2026 23:16:53 GMT  
		Size: 22.2 KB (22159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbed5be2d973f35addb37f6c81535640e32d136e6c209c894cde33ce739cdb49`  
		Last Modified: Thu, 29 Oct 2026 17:30:54 GMT  
		Size: 32.2 MB (32161852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dce8f775ab4a2a9794239e7511ec3a0654ae826b8e0521f5930017dbd492a56f`  
		Last Modified: Thu, 29 Oct 2026 17:30:53 GMT  
		Size: 258.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9306cda819801e152e85bb9c372814e6496da13cfcd289935aaa49c9a085ce4f`  
		Last Modified: Thu, 29 Oct 2026 17:31:21 GMT  
		Size: 797.1 KB (797078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c2d7d9c3c0dea5b40c3e48e6f013be03c47fe01778211b0110a86c39d546441`  
		Last Modified: Thu, 29 Oct 2026 17:31:20 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:287e11a6009c5712e28bb57fcb392f42a83ff0aaff4f6c28cb9b1f15ca2e41c9`  
		Last Modified: Thu, 29 Oct 2026 17:31:18 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2.31` - unknown; unknown

```console
$ docker pull composer@sha256:0be061fc6a76f76140657ffc669a4ee70d9c88cc6fb8dbad5824a1d8b364d230
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210496 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:830a94cf234ad2138817fd25b1560db5f4e86b3c598b3f3b5fb12cc1a3110adb`

```dockerfile
```

-	Layers:
	-	`sha256:e0f6931c173aa5ea524dadd14dbb13f5f29a10dc17de5e3c1f7efd284416a3d1`  
		Last Modified: Thu, 29 Oct 2026 17:31:20 GMT  
		Size: 2.2 MB (2180407 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3f3dae659fb0fefc7e12825c9191bc901b6de6b71a101ae58006353a9a9e6ce1`  
		Last Modified: Thu, 29 Oct 2026 17:31:20 GMT  
		Size: 30.1 KB (30089 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.2.31` - linux; 386

```console
$ docker pull composer@sha256:0a00a1d91643469a7764ddf4e634bfbebede9158cc39cfb2705e87842ff35942
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.5 MB (78534694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:25f3bf3409dbd783cebb193d33f3570479e202996edf37abdd9a4b619dae3c15`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 21 Oct 2026 22:50:43 GMT
ADD alpine-minirootfs-3.24.3-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:50:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:13:13 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:13:13 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:13:13 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:13:13 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 23:13:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:13:18 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:16:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:16:41 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:16:41 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:16:41 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:16:41 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:29:13 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:29:13 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:29:28 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:29:28 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:29:28 GMT
ENV COMPOSER_VERSION=2.2.31
# Thu, 29 Oct 2026 17:29:28 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:29:28 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:29:28 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:29:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:29:28 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:f89afe85a29e874c0bc6d49b09150af4f08fbc4e6db82e7870677ef76977c07d`  
		Last Modified: Wed, 21 Oct 2026 22:50:49 GMT  
		Size: 3.7 MB (3678996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90ab361813d0997c5956c46b9c4ea156280d4dcd71d38ca46d3331e3eec0d1b3`  
		Last Modified: Wed, 21 Oct 2026 23:16:49 GMT  
		Size: 3.5 MB (3524290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdeb61fe97e7f8c8cd86e9a1db1dcccf56a7a9fb75084e974785b13d42a4df58`  
		Last Modified: Wed, 21 Oct 2026 23:16:44 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bff1f2144e6df91e63a5b8246cf332533431fe69e26df8d7f18ee88976ad954b`  
		Last Modified: Wed, 21 Oct 2026 23:16:37 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:037030204c9a0cd7860b02f5621cae6c1ec61a5a2ad3fd2b56b077c4be4381c2`  
		Last Modified: Wed, 21 Oct 2026 23:16:50 GMT  
		Size: 14.6 MB (14577825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11c65f33ab044b67b2dfcf45d46cfa8cac26aa1db0259b1e5aa92381bd9ee998`  
		Last Modified: Wed, 21 Oct 2026 23:16:49 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80691052feb5efdf9fd906dee8ac4f3be3172c1c188cd1b56fa061fcd37c8764`  
		Last Modified: Wed, 21 Oct 2026 23:16:50 GMT  
		Size: 23.4 MB (23384278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c8ef2140f6fd7bc9d64d3a3a96c30b190ed438a16ac9edd87987dbbe08b1fd3`  
		Last Modified: Wed, 21 Oct 2026 23:16:50 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a778e09088262a247914f0c3db8a642de7710967a500727f9f00476356d45dd`  
		Last Modified: Wed, 21 Oct 2026 23:16:50 GMT  
		Size: 22.3 KB (22341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d0b5232c254530805264cc4746f5238f02debae2fdf883d8e8d981d65ca0ccf`  
		Last Modified: Thu, 29 Oct 2026 17:29:38 GMT  
		Size: 32.5 MB (32530568 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c529a5c6d5b01f9815cb52cc8d630f7eb2d1e473c96cb4dcef4069ced3c723a3`  
		Last Modified: Thu, 29 Oct 2026 17:29:37 GMT  
		Size: 258.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab694a738b18f9a1a9abc38071233d9343822487ae7c94d151b088f500e1ae96`  
		Last Modified: Thu, 29 Oct 2026 17:29:38 GMT  
		Size: 811.5 KB (811545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:539cf1d4ab09b520ba9619afdd8b0122a702634993970427d473dc12d8dcd836`  
		Last Modified: Thu, 29 Oct 2026 17:29:38 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c9e7ad70bf558adb988b93c10de78ce60b857630ba6d6644058221efaf745eb`  
		Last Modified: Thu, 29 Oct 2026 17:29:39 GMT  
		Size: 92.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2.31` - unknown; unknown

```console
$ docker pull composer@sha256:2f09d2e21fade6d3adce1cfbcd6464d1a30bcaab192ca56ae68fa70f09ccef72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eac227d1259f91842493644b690ab37fd5981b7acf2616d388c4c53658fec2ea`

```dockerfile
```

-	Layers:
	-	`sha256:4f99d40ec06caaedae1755aab16fbacaf02f4ae43c96044260c6b3f99ee5c7fd`  
		Last Modified: Thu, 29 Oct 2026 17:29:37 GMT  
		Size: 2.2 MB (2180731 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12322d60837bde03fc78d30512ba617ac4712ff932339903dac9fdb5988c7fa9`  
		Last Modified: Thu, 29 Oct 2026 17:29:37 GMT  
		Size: 30.0 KB (29955 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.2.31` - linux; ppc64le

```console
$ docker pull composer@sha256:7204fd78d5f8b65f8b0121a46aaea5871435522045187e589621d2732faeec5f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.1 MB (79060170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57bcdc66f073613ca7f662aac49465d81affa5421d6f3289b6100a8c55f7ca36`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 10:41:08 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 22 Oct 2026 10:41:08 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 22 Oct 2026 10:41:08 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 22 Oct 2026 10:41:08 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 22 Oct 2026 10:41:10 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 22 Oct 2026 10:41:10 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_VERSION=8.5.12
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Thu, 22 Oct 2026 10:58:03 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 22 Oct 2026 10:58:03 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 11:04:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 22 Oct 2026 11:04:42 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 11:04:44 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 22 Oct 2026 11:04:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 22 Oct 2026 11:04:44 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:29:36 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:29:37 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:30:22 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:30:22 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:30:22 GMT
ENV COMPOSER_VERSION=2.2.31
# Thu, 29 Oct 2026 17:30:22 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:30:23 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:30:23 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:30:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:30:23 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34960f353c419102a4e6aa8def25e776b62fc861c2c7f3498ae163f83c42a913`  
		Last Modified: Thu, 22 Oct 2026 10:45:49 GMT  
		Size: 3.7 MB (3665469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc8b6dad17e9a4de16850dd156812ecc0a368713613a848e61da65fc704edbe`  
		Last Modified: Thu, 22 Oct 2026 10:45:48 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9180d692f4fcd0b027b940ab4548e62ecdbfcd62b8438a632e69b2299aacdcd`  
		Last Modified: Thu, 22 Oct 2026 10:45:48 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed005116498b48ae5fb54d7e5bdb983c0af7f680ab5f96a9af7e62e19c268c64`  
		Last Modified: Thu, 22 Oct 2026 11:05:23 GMT  
		Size: 14.6 MB (14577836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5b947ba4505c12d11d5511f4a89c2874eeda46e7503f8af574594f6a83690ef`  
		Last Modified: Thu, 22 Oct 2026 11:05:22 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5273c4824064374eca4303b43014f08be9f99280099f840ee4679b254144d64`  
		Last Modified: Thu, 22 Oct 2026 11:05:23 GMT  
		Size: 23.0 MB (23028687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f81004a0da47bf741288eabcbcf2ac176bc1cffc637ad8554706ad4d111108`  
		Last Modified: Thu, 22 Oct 2026 11:05:22 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c7e2b7ed5a28fea078ad8264e59a9ca084f211368fe02a849dba03fb7d32daa`  
		Last Modified: Thu, 22 Oct 2026 11:05:23 GMT  
		Size: 22.2 KB (22178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2b0957b71d7d4ad0abe8cac2c658929a70ac811658a8fd94b73a607aa56d927`  
		Last Modified: Thu, 29 Oct 2026 17:30:52 GMT  
		Size: 33.1 MB (33135684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc707c814f6ccf6274528f7cbdc8a047daaebb51e8d81820d4a3ca4eb39e27f0`  
		Last Modified: Thu, 29 Oct 2026 17:30:51 GMT  
		Size: 260.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71a942ad4c3b67f290b6e78ae08bbbc72a002d8944ccef8a3bb8242ba2c42905`  
		Last Modified: Thu, 29 Oct 2026 17:30:51 GMT  
		Size: 804.6 KB (804630 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e31b8be61e7d2e03ae6c2eadad67b67902a4b484f2c1489349ad483ab8329f4`  
		Last Modified: Thu, 29 Oct 2026 17:30:51 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3907b9485e65baf437f23343b5c10fc98b63f92ed666122ac6554de6606c090`  
		Last Modified: Thu, 29 Oct 2026 17:30:52 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2.31` - unknown; unknown

```console
$ docker pull composer@sha256:e724f2b43b5b3e79bc24f111f3dfe370eca7c9184667550232246c10747e38df
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6488a74e9308fabaf2a803b2e11da9738cedfc3d787d3c61a221ce762e914dd2`

```dockerfile
```

-	Layers:
	-	`sha256:eef09b52b3421831f61fc52a81d6df2836bb7e558d2713257fdc16e777ded964`  
		Last Modified: Thu, 29 Oct 2026 17:30:51 GMT  
		Size: 2.2 MB (2180768 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:395ede354654e437b4b8b2fb6fde3089f3a6212fe9918e46d31df97ab2d86610`  
		Last Modified: Thu, 29 Oct 2026 17:30:50 GMT  
		Size: 30.0 KB (30017 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.2.31` - linux; s390x

```console
$ docker pull composer@sha256:eacb5fc50207d98f9a2f3899c10f9a12b81085fe4699322a926b097e88db4e78
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.5 MB (77541159 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1589808546e8f17359d638b12722fc2007225e357b0a0601a8309052a91f0980`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:20:23 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:20:23 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:20:23 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:20:23 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 23:21:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:21:51 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:25:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:25:41 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:25:42 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:25:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:25:42 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:29:36 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:29:37 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:29:58 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:29:58 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:29:58 GMT
ENV COMPOSER_VERSION=2.2.31
# Thu, 29 Oct 2026 17:29:58 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:29:58 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:29:59 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:29:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:29:59 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3994947cd88d28cfb3f991c5b6fd75edffe6f7e091429cad77f8db61869091f`  
		Last Modified: Wed, 21 Oct 2026 23:24:22 GMT  
		Size: 3.7 MB (3683873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:187dd63caa64ac1d5888e1f101c2c414d74d260eef5fc095e9dc6dbb374f7267`  
		Last Modified: Wed, 21 Oct 2026 23:24:21 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:428c8b641892350c28dd8dc3645e567eb63ac63033b1d7e5e28f1a6b6bf3670e`  
		Last Modified: Wed, 21 Oct 2026 23:24:21 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dad3e2711e594137e332b0b8d206cc1ca16f454e8205de6bf3f1053fa4856557`  
		Last Modified: Wed, 21 Oct 2026 23:25:54 GMT  
		Size: 14.6 MB (14577842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ecc9de14cbfddefd10b5b12025384105b6fcfd3288c1bfe5f156560e839f6fb`  
		Last Modified: Wed, 21 Oct 2026 23:25:54 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f74c95f00b7275ee5e9eb1564dd340bf6b9bdfdf5827a48aa756c780a8d2792e`  
		Last Modified: Wed, 21 Oct 2026 23:25:54 GMT  
		Size: 21.7 MB (21742396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34c0db3041505705d6ed118114ccaf6c9d8f46e852555eee7afbaca8eb7c20f6`  
		Last Modified: Wed, 21 Oct 2026 23:25:53 GMT  
		Size: 2.4 KB (2442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c00b5eab2e06d4e48cca5a4774e319d8ad4a2ebd14148c4c964ff1e659610c`  
		Last Modified: Wed, 21 Oct 2026 23:25:55 GMT  
		Size: 22.1 KB (22132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f15512e208e3dda5ea65ba85104794352f2bbe855ff64180cc4ddae47eafa6bd`  
		Last Modified: Thu, 29 Oct 2026 17:30:25 GMT  
		Size: 33.0 MB (32988706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34e11f006a59bd35a9d549eb62cf0da822947d174dabfe900ccbf367820aff4e`  
		Last Modified: Thu, 29 Oct 2026 17:30:24 GMT  
		Size: 260.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bb5ca1ba093df565d772fdb86b3616b37a697bf3f37e5e83ac8158ec7f230a5`  
		Last Modified: Thu, 29 Oct 2026 17:30:24 GMT  
		Size: 801.7 KB (801655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f97eb1afb34b3ff062f598f06b94c1c9d8d403809d699fdd876a12506f2e98a5`  
		Last Modified: Thu, 29 Oct 2026 17:30:24 GMT  
		Size: 417.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78d0c2860d06593a40f07ea535d170d88064742c3645fdb6a67f053a87879c0f`  
		Last Modified: Thu, 29 Oct 2026 17:30:25 GMT  
		Size: 92.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2.31` - unknown; unknown

```console
$ docker pull composer@sha256:3dca4dd6a0d8cd9be441b4893a250bdf35f727bc7dc899bbe36b1ae9d83e096e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210169 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db119fcb0b9d1a77dbe50e06e4f6811a92560ef26b3951a15c75c31b5d900d9e`

```dockerfile
```

-	Layers:
	-	`sha256:f5472f1ff812c4eec72756f776c9f51338553db3b7fc006abd79c7c3cf2bc943`  
		Last Modified: Thu, 29 Oct 2026 17:30:24 GMT  
		Size: 2.2 MB (2180188 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:37441244cbaab9f7d4e45ec43153e5250bc76c47803e134147f09483c885f8d8`  
		Last Modified: Thu, 29 Oct 2026 17:30:24 GMT  
		Size: 30.0 KB (29981 bytes)  
		MIME: application/vnd.in-toto+json

## `composer:latest`

```console
$ docker pull composer@sha256:c7f68260503e3c1f0ece10bdbe84519fd98d48ba091f2c02f16ea94a7faae337
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

### `composer:latest` - linux; amd64

```console
$ docker pull composer@sha256:e86de4d29f50ca4eb982db0f1fd57a38a5019972b5697a89f75c2f551c1451a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.0 MB (77967306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75dfdea8e68c54fcb28eade4c64e069feeef2a01e4b266726ba756679450dfe1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 22:47:39 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 22:47:39 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 22:47:39 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 22:47:39 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 22:47:39 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 22:47:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 22:47:41 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:51:04 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 22:51:04 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:51:05 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 22:51:05 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 22:51:05 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:30:48 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:30:48 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:31:01 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:31:01 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:31:01 GMT
ENV COMPOSER_VERSION=2.11.0
# Thu, 29 Oct 2026 17:31:01 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:31:01 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:31:01 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:31:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:31:01 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:376608520fec13724c5434a1ded7eb9031a39b655141a2e04968e0fbe586fdbc`  
		Last Modified: Wed, 21 Oct 2026 22:51:13 GMT  
		Size: 3.5 MB (3490552 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c8980f3dbe0d688f813899b22c18938c913dd1fa4ea8b5432c84db8af5299c5`  
		Last Modified: Wed, 21 Oct 2026 22:51:13 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a137d44a72ff85dcecc5762b37ebe8661a17e4798f7cf59d124c8098d9e928`  
		Last Modified: Wed, 21 Oct 2026 22:51:13 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:445b9af79994b4888ee58cb173cc36114acdef2a015f895661e43602c1e9ed38`  
		Last Modified: Wed, 21 Oct 2026 22:51:14 GMT  
		Size: 14.6 MB (14577842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:885fc261a1a10bba4027457db8b8108658f2ce839cc0442070db12eb475c6632`  
		Last Modified: Wed, 21 Oct 2026 22:51:14 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc76ccfcd45bf400236f2db0f8239b29907ccaa8bb0fa42f4d4b5e115cb8cbf9`  
		Last Modified: Wed, 21 Oct 2026 22:51:15 GMT  
		Size: 22.9 MB (22905684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cda05494a4f87da8838d70692427889af18083405f03cb926211ece66107cdc`  
		Last Modified: Wed, 21 Oct 2026 22:51:15 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6044f6b455c81c7b7e479f51a06a2742bcca49eed7f0917c51c4ab0d2b9df650`  
		Last Modified: Wed, 21 Oct 2026 22:51:15 GMT  
		Size: 22.4 KB (22362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85fb19fe0e1a3a7aecdbc55a1a3ce2f1524d6a3c6f778dfd9c06233ce2f6f829`  
		Last Modified: Thu, 29 Oct 2026 17:31:12 GMT  
		Size: 32.0 MB (32028535 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e1f05c8f0c423b0141b053cfb222de1c6748b984268504ee292d032975c80a0`  
		Last Modified: Thu, 29 Oct 2026 17:31:11 GMT  
		Size: 260.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6396a5a72d7276167000bb9ed17aa6e2204248c59140e2b8c2b23c29b4575da4`  
		Last Modified: Thu, 29 Oct 2026 17:31:11 GMT  
		Size: 1.1 MB (1084366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b68e4d98f8f6c9eeebad55ed6dbcb0cf8a557dae91cff2f1b86f5d10444cdd1`  
		Last Modified: Thu, 29 Oct 2026 17:31:11 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ee9875c3f8400f83ce9e094c2b7e079b3420aed96e544fa622eaa71de7a637b`  
		Last Modified: Thu, 29 Oct 2026 17:31:10 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:latest` - unknown; unknown

```console
$ docker pull composer@sha256:e3079c0b68aa0ed08ad5442f7a573b7013ce31189f21e55b1935597516686968
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212117 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c81a503de224163178c1068f5a2a94e6d274352a12c2753681ce522ac85a54ee`

```dockerfile
```

-	Layers:
	-	`sha256:a2870af674ef24ffd0901b5418029e7ece458cba891bde6dc9bb23768f4b5a10`  
		Last Modified: Thu, 29 Oct 2026 17:31:11 GMT  
		Size: 2.2 MB (2181528 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46f14da6c9116c2a20ee9588fe7efc97599daa8cde603b8ac99d0ef02d4b8d5b`  
		Last Modified: Thu, 29 Oct 2026 17:31:11 GMT  
		Size: 30.6 KB (30589 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:latest` - linux; arm variant v6

```console
$ docker pull composer@sha256:6d4f617e5526affc2a276f548eeeb15a39f69c1c958a101f064c4a3b213121e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.3 MB (74279862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9705f556bbd3af5fbf5f9bc7d1a2d5e8794673291353a470bb95cd18030f42b7`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:17:13 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:17:13 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:17:13 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:17:13 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 23:17:13 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 23:17:16 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:17:16 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:20:21 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:20:21 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:20:22 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:20:22 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:20:22 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:30:28 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:30:28 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:30:46 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:30:46 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:30:46 GMT
ENV COMPOSER_VERSION=2.11.0
# Thu, 29 Oct 2026 17:30:46 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:30:46 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:30:46 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:30:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:30:46 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34261f84d7ef8445bcf616905088020a73742fa8cba3a783277534f96cb919e3`  
		Last Modified: Wed, 21 Oct 2026 23:20:28 GMT  
		Size: 3.4 MB (3445779 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d079375510e49850f6ce5b7baae755d73ea08962a2779737fac5cb01f8ec016`  
		Last Modified: Wed, 21 Oct 2026 23:20:28 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c51265cbeda0a655d6bda2d76d86d971d13e98f0825566cd9da799b688fe2a`  
		Last Modified: Wed, 21 Oct 2026 23:20:28 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75e0d2bfaec09bb1210bf610416028293d9e172d1ad89eb0fa9d68877fdc76a5`  
		Last Modified: Wed, 21 Oct 2026 23:20:28 GMT  
		Size: 14.6 MB (14577852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94d48ed0a90a40bd66f2fc38ebb1cd43c2776488739d1a857237bf1f9536283b`  
		Last Modified: Wed, 21 Oct 2026 23:20:29 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4e0148715c98c76112803e4e7bba388c2238925c8a8ee176f690278e8fb2825`  
		Last Modified: Wed, 21 Oct 2026 23:20:29 GMT  
		Size: 19.8 MB (19828719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:182bc95bd78f5e925cd9466a1e61d7e89937e65aa86996b0e894e34c6692a290`  
		Last Modified: Wed, 21 Oct 2026 23:20:29 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:898d0ebd89fbea4e27e9048eacb3b29f3f1758a0d29107f9220b80d08cd129cc`  
		Last Modified: Wed, 21 Oct 2026 23:20:29 GMT  
		Size: 22.1 KB (22133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f57891c8c2662dd2774d5961ee592676f16836343cd0beb00f1290e6bfe95822`  
		Last Modified: Thu, 29 Oct 2026 17:30:55 GMT  
		Size: 31.8 MB (31758658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f37b2cc9499bb61e3e1157c15291fcf9d69233e5945a85e809440686c4bcba7`  
		Last Modified: Thu, 29 Oct 2026 17:30:54 GMT  
		Size: 259.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c06914b7fb25f0136557c64fd9b3d7464a409e07857d340cae0bc29369c8fa05`  
		Last Modified: Thu, 29 Oct 2026 17:30:54 GMT  
		Size: 1.1 MB (1083569 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552166de2658e7936a65b7e8275a84e3eb91033952f887eb8f7881cb1f3cb77b`  
		Last Modified: Thu, 29 Oct 2026 17:30:54 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9477ba0f89e76eea4dfdc8eeb30c2192f881c4db0feb03670580307d3f6fe20`  
		Last Modified: Thu, 29 Oct 2026 17:30:55 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:latest` - unknown; unknown

```console
$ docker pull composer@sha256:de76fdeadf0a2330b19e224b27bdff82bccf51c674559efedf57e2c902b2a0b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.5 KB (30480 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3181dba55c9f8444cb0a5a4bf0e8234dac6e5d0a849ea6c0f84f56aea3d53c9f`

```dockerfile
```

-	Layers:
	-	`sha256:4b5f6e5b45638128b718c890569acde2afecf072eb73bbeb43651a5b88d708c1`  
		Last Modified: Thu, 29 Oct 2026 17:30:53 GMT  
		Size: 30.5 KB (30480 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:latest` - linux; arm variant v7

```console
$ docker pull composer@sha256:f669caebe639e48213b48345686447bec8749a6881f46fea9987e247b02f3f5e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.3 MB (71265785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c201fb900230e0e05f150d2097a2bd852aec29f0c39ca687e9fadc3041b64985`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:40 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:20:40 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:20:41 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:20:41 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:20:41 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 23:20:41 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 23:20:44 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:20:44 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:23:55 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:23:55 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:23:56 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:23:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:23:56 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:30:43 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:30:43 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:30:59 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:30:59 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:30:59 GMT
ENV COMPOSER_VERSION=2.11.0
# Thu, 29 Oct 2026 17:30:59 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:30:59 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:30:59 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:30:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:30:59 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce0acf9ba5220aef037466d130f7f326ab9ef0c5870793956e96251f1836efe3`  
		Last Modified: Wed, 21 Oct 2026 23:24:03 GMT  
		Size: 3.3 MB (3257820 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:865067921a4c0ed209af9565b5e8d40435c227b21307684d39da57ded4474af6`  
		Last Modified: Wed, 21 Oct 2026 23:24:03 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8ba9010c2935c6ada5f0257931f104bd958a55c474c40a1fab34bf91aede0aa`  
		Last Modified: Wed, 21 Oct 2026 23:24:03 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4fa67a9851204f8bf42909cf4ffafba10dd11cec11681adc94770c22650a2a5`  
		Last Modified: Wed, 21 Oct 2026 23:24:03 GMT  
		Size: 14.6 MB (14577854 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35f620c032a4750276d551ddcb4880624b877a0482d36fda0b5f34121aeb34e6`  
		Last Modified: Wed, 21 Oct 2026 23:24:04 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3abfc41d850665317cc58782f4e62b19d10ecd32c08c53d22e4d78747accd735`  
		Last Modified: Wed, 21 Oct 2026 23:24:05 GMT  
		Size: 18.7 MB (18711848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38ebc848c55d1fce83940950291e534af2567abf8506be91457699fb37177e48`  
		Last Modified: Wed, 21 Oct 2026 23:24:04 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4b9053a6d68424b0181b2ae9769d4e6c1d30f41f746fefd4254f9ac384b79a0`  
		Last Modified: Wed, 21 Oct 2026 23:24:05 GMT  
		Size: 22.1 KB (22141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aec250e436276e2702f8fbad5704c5e79ef99213454fd8c379e5590ce148580`  
		Last Modified: Thu, 29 Oct 2026 17:31:08 GMT  
		Size: 30.4 MB (30350969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b08f3642912e723a82d5a3436bbeacad3549cfd5d2cdee28c9081907bf7bafa9`  
		Last Modified: Thu, 29 Oct 2026 17:31:08 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc4c12954a2c69714a6026738f60f9c43b1eea159fb86531685d7fe6f04122de`  
		Last Modified: Thu, 29 Oct 2026 17:31:08 GMT  
		Size: 1.1 MB (1073637 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97f099795c9f3ffe89383586004a668892dcf6b125437b7ede57ab7966ca5e45`  
		Last Modified: Thu, 29 Oct 2026 17:31:08 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb70b5c51ba68fa875c2d33664ccd7b39a23982aa399a627973f6900bb52d5bb`  
		Last Modified: Thu, 29 Oct 2026 17:31:09 GMT  
		Size: 92.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:latest` - unknown; unknown

```console
$ docker pull composer@sha256:06b08aa69c0f1cac931cdc30c0e75240c892ba1acc7923bf4986d38226b8a26a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211888 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a0a29043ab7e9f3e20ba5ad7c09586b789b2d90feaa8dc4b6e2834ba2ac18e1`

```dockerfile
```

-	Layers:
	-	`sha256:614634f76c05b0eea54197069aa01665b1265e857cf784267cf81b9f9bc51761`  
		Last Modified: Thu, 29 Oct 2026 17:31:08 GMT  
		Size: 2.2 MB (2181193 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4c8802450a6d5b79c3a87fd55db2eb9b6e8b9c0de90f871587bbf6c40defc6f2`  
		Last Modified: Thu, 29 Oct 2026 17:31:07 GMT  
		Size: 30.7 KB (30695 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:latest` - linux; arm64 variant v8

```console
$ docker pull composer@sha256:f9a0252b680e7a7fe4d19319f2e4cf6d93f9bc577008763ed09972ca1db91559
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.6 MB (77629215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f35ff59b041d24c529794643bd3a41656e59024d3c7e29e89ef27caad160a0fa`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:13:13 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:13:13 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:13:13 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:13:13 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 23:13:16 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:13:16 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:16:44 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:16:44 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:16:45 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:16:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:16:45 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:30:30 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:30:30 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:30:43 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:30:43 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:30:43 GMT
ENV COMPOSER_VERSION=2.11.0
# Thu, 29 Oct 2026 17:30:43 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:30:43 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:30:43 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:30:43 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:30:43 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ab96d4a471bafc26cb4609f5785273f51fa52727219feb41098a0655b7658aa`  
		Last Modified: Wed, 21 Oct 2026 23:16:53 GMT  
		Size: 3.5 MB (3500755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e20eb32fc8542481a4e72dbf0c37a7e126b93272dc1e00b90581d62087c5e76`  
		Last Modified: Wed, 21 Oct 2026 23:16:37 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bff1f2144e6df91e63a5b8246cf332533431fe69e26df8d7f18ee88976ad954b`  
		Last Modified: Wed, 21 Oct 2026 23:16:37 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04dec9fd6d8b70aa38749bc013fed907c2d3c675e9061ade9625f6ca2d14eb7a`  
		Last Modified: Wed, 21 Oct 2026 23:16:53 GMT  
		Size: 14.6 MB (14577831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:634514a3c9cca89834cf85309c526c8b3239f295a232ce77e6bcebe71ead3a02`  
		Last Modified: Wed, 21 Oct 2026 23:16:38 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0710d863a911e052326baf681756dce2ae1f5e08b99c85010e313334afa0b8fe`  
		Last Modified: Wed, 21 Oct 2026 23:16:53 GMT  
		Size: 22.1 MB (22088277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1122b3f336c096b4a94452448cc32afb1980871b367f4925b881483999830585`  
		Last Modified: Wed, 21 Oct 2026 23:16:52 GMT  
		Size: 2.4 KB (2446 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2d55afb5318bd77aff94bca26afbb7ea6f7bf1afc7e68c5611fac7e8d1bc6ad`  
		Last Modified: Wed, 21 Oct 2026 23:16:53 GMT  
		Size: 22.2 KB (22159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbed5be2d973f35addb37f6c81535640e32d136e6c209c894cde33ce739cdb49`  
		Last Modified: Thu, 29 Oct 2026 17:30:54 GMT  
		Size: 32.2 MB (32161852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dce8f775ab4a2a9794239e7511ec3a0654ae826b8e0521f5930017dbd492a56f`  
		Last Modified: Thu, 29 Oct 2026 17:30:53 GMT  
		Size: 258.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a71ef0b8df688bae2ae638d0631435deff2746b5b424051f0f55d1a5e6b39ed`  
		Last Modified: Thu, 29 Oct 2026 17:30:53 GMT  
		Size: 1.1 MB (1083004 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fab9d4539c170c2ac1e7da95fb9eda3abe1bb51e422c527c88cf01a5a311fd9`  
		Last Modified: Thu, 29 Oct 2026 17:30:54 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cf0800d1ef522f85f450c05a078924f8c66793d2dc07ca2c770a6c4d178196f`  
		Last Modified: Thu, 29 Oct 2026 17:30:55 GMT  
		Size: 92.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:latest` - unknown; unknown

```console
$ docker pull composer@sha256:262f089c5932f187820ef34320a16b70151fef5bde04bc8d5423c17c6be9e90d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211750 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:068e37674b6b2d77c1f36e609f851761eda36adabd4d439e1a8be663d0ee738f`

```dockerfile
```

-	Layers:
	-	`sha256:a6cb07329a4e471ac0ad157daf50edee4b30ceab8584ac883f3af5504fae8bcd`  
		Last Modified: Thu, 29 Oct 2026 17:30:53 GMT  
		Size: 2.2 MB (2181027 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:35861f873bf939a2329c2a26b7d42cb3c55a96bd60f5b56f5724665423397949`  
		Last Modified: Thu, 29 Oct 2026 17:30:53 GMT  
		Size: 30.7 KB (30723 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:latest` - linux; 386

```console
$ docker pull composer@sha256:c428b310fb802f219534fc5faf24ac0e43cf6efc233d462f602ab1f983f0950d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.8 MB (78819731 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:53fce2ad576a6302b365198b0c0a06f036cdf725ae6a7e7e7fecfe1dbdd9f809`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 21 Oct 2026 22:50:43 GMT
ADD alpine-minirootfs-3.24.3-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:50:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:13:13 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:13:13 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:13:13 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:13:13 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 23:13:13 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 23:13:18 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:13:18 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:16:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:16:41 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:16:41 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:16:41 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:16:41 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:29:52 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:29:52 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:30:05 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:30:05 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:30:05 GMT
ENV COMPOSER_VERSION=2.11.0
# Thu, 29 Oct 2026 17:30:05 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:30:05 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:30:05 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:30:05 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:30:05 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:f89afe85a29e874c0bc6d49b09150af4f08fbc4e6db82e7870677ef76977c07d`  
		Last Modified: Wed, 21 Oct 2026 22:50:49 GMT  
		Size: 3.7 MB (3678996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90ab361813d0997c5956c46b9c4ea156280d4dcd71d38ca46d3331e3eec0d1b3`  
		Last Modified: Wed, 21 Oct 2026 23:16:49 GMT  
		Size: 3.5 MB (3524290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdeb61fe97e7f8c8cd86e9a1db1dcccf56a7a9fb75084e974785b13d42a4df58`  
		Last Modified: Wed, 21 Oct 2026 23:16:44 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bff1f2144e6df91e63a5b8246cf332533431fe69e26df8d7f18ee88976ad954b`  
		Last Modified: Wed, 21 Oct 2026 23:16:37 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:037030204c9a0cd7860b02f5621cae6c1ec61a5a2ad3fd2b56b077c4be4381c2`  
		Last Modified: Wed, 21 Oct 2026 23:16:50 GMT  
		Size: 14.6 MB (14577825 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11c65f33ab044b67b2dfcf45d46cfa8cac26aa1db0259b1e5aa92381bd9ee998`  
		Last Modified: Wed, 21 Oct 2026 23:16:49 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80691052feb5efdf9fd906dee8ac4f3be3172c1c188cd1b56fa061fcd37c8764`  
		Last Modified: Wed, 21 Oct 2026 23:16:50 GMT  
		Size: 23.4 MB (23384278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c8ef2140f6fd7bc9d64d3a3a96c30b190ed438a16ac9edd87987dbbe08b1fd3`  
		Last Modified: Wed, 21 Oct 2026 23:16:50 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a778e09088262a247914f0c3db8a642de7710967a500727f9f00476356d45dd`  
		Last Modified: Wed, 21 Oct 2026 23:16:50 GMT  
		Size: 22.3 KB (22341 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac3fbcd85934d967cda395612affadb73b79006a7cea140c5d8b5bbba1a912cf`  
		Last Modified: Thu, 29 Oct 2026 17:30:15 GMT  
		Size: 32.5 MB (32530480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1efb8e1626c554cdef0e559cc778505c1a143194134c29cc50c0a22338aa12b9`  
		Last Modified: Thu, 29 Oct 2026 17:30:14 GMT  
		Size: 259.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:022412a6f26362dfb96c53e9e5a747e4a5d216b1514d4c0dcbc77c16e661b865`  
		Last Modified: Thu, 29 Oct 2026 17:30:14 GMT  
		Size: 1.1 MB (1096669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c42f7583028a0cc1ad93a29d6ba0c6c20e6b7686f92e6a4b51a585aaa717f79`  
		Last Modified: Thu, 29 Oct 2026 17:30:14 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d937ecbaf6418c5b517bf1394c98bc8e9c8eef2509a9e153ae234b5e2db48e11`  
		Last Modified: Thu, 29 Oct 2026 17:30:16 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:latest` - unknown; unknown

```console
$ docker pull composer@sha256:487570753bcd8f8c0d2e47ff32697804339290861eecdb36819469637b085124
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211870 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3732dcdc96a924912e5a5e4b21fb42ea8f7909d9128a00afa8a5ccc6180af5cd`

```dockerfile
```

-	Layers:
	-	`sha256:6715fd717c8b54a598b673e3f3eb4a49953c56c0ff60dc30d71fe3687d958659`  
		Last Modified: Thu, 29 Oct 2026 17:30:14 GMT  
		Size: 2.2 MB (2181317 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1456ea96a94a055c6f914a394f87d3adb70a48517647732166c83cd66177d828`  
		Last Modified: Thu, 29 Oct 2026 17:30:14 GMT  
		Size: 30.6 KB (30553 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:latest` - linux; ppc64le

```console
$ docker pull composer@sha256:84b15d61992b9f045390476d4ace121239c4d6801cf931426ace18152f8935db
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.3 MB (79345831 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7d104bd06c24f46df61e79fe921eaf37b9aedf2f739416a450669a0054fa666`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Thu, 22 Oct 2026 02:45:14 GMT
ADD alpine-minirootfs-3.24.3-ppc64le.tar.gz / # buildkit
# Thu, 22 Oct 2026 02:45:14 GMT
CMD ["/bin/sh"]
# Thu, 22 Oct 2026 10:41:08 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 22 Oct 2026 10:41:08 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 22 Oct 2026 10:41:08 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 22 Oct 2026 10:41:08 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 22 Oct 2026 10:41:10 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 22 Oct 2026 10:41:10 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_VERSION=8.5.12
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Thu, 22 Oct 2026 10:58:03 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 22 Oct 2026 10:58:03 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 11:04:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 22 Oct 2026 11:04:42 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 11:04:44 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 22 Oct 2026 11:04:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 22 Oct 2026 11:04:44 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:29:36 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:29:37 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:30:22 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:30:22 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:30:22 GMT
ENV COMPOSER_VERSION=2.11.0
# Thu, 29 Oct 2026 17:30:22 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:30:23 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:30:23 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:30:23 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:30:23 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:728471849cc01302688ff7a09ad468af8cc8bc8a93620b78513c28269284715c`  
		Last Modified: Thu, 22 Oct 2026 02:45:42 GMT  
		Size: 3.8 MB (3820822 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34960f353c419102a4e6aa8def25e776b62fc861c2c7f3498ae163f83c42a913`  
		Last Modified: Thu, 22 Oct 2026 10:45:49 GMT  
		Size: 3.7 MB (3665469 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ddc8b6dad17e9a4de16850dd156812ecc0a368713613a848e61da65fc704edbe`  
		Last Modified: Thu, 22 Oct 2026 10:45:48 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9180d692f4fcd0b027b940ab4548e62ecdbfcd62b8438a632e69b2299aacdcd`  
		Last Modified: Thu, 22 Oct 2026 10:45:48 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed005116498b48ae5fb54d7e5bdb983c0af7f680ab5f96a9af7e62e19c268c64`  
		Last Modified: Thu, 22 Oct 2026 11:05:23 GMT  
		Size: 14.6 MB (14577836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5b947ba4505c12d11d5511f4a89c2874eeda46e7503f8af574594f6a83690ef`  
		Last Modified: Thu, 22 Oct 2026 11:05:22 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5273c4824064374eca4303b43014f08be9f99280099f840ee4679b254144d64`  
		Last Modified: Thu, 22 Oct 2026 11:05:23 GMT  
		Size: 23.0 MB (23028687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2f81004a0da47bf741288eabcbcf2ac176bc1cffc637ad8554706ad4d111108`  
		Last Modified: Thu, 22 Oct 2026 11:05:22 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c7e2b7ed5a28fea078ad8264e59a9ca084f211368fe02a849dba03fb7d32daa`  
		Last Modified: Thu, 22 Oct 2026 11:05:23 GMT  
		Size: 22.2 KB (22178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2b0957b71d7d4ad0abe8cac2c658929a70ac811658a8fd94b73a607aa56d927`  
		Last Modified: Thu, 29 Oct 2026 17:30:52 GMT  
		Size: 33.1 MB (33135684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc707c814f6ccf6274528f7cbdc8a047daaebb51e8d81820d4a3ca4eb39e27f0`  
		Last Modified: Thu, 29 Oct 2026 17:30:51 GMT  
		Size: 260.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35b0ebfab45fa166c61625fa23bd2e8409c1cd298df18714b176c5a3d48f403c`  
		Last Modified: Thu, 29 Oct 2026 17:30:51 GMT  
		Size: 1.1 MB (1090291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdadbb2226fe1f0cfc0711d2542ca11857ecd17bca3b3a5fb4032d2fde15f162`  
		Last Modified: Thu, 29 Oct 2026 17:30:51 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3907b9485e65baf437f23343b5c10fc98b63f92ed666122ac6554de6606c090`  
		Last Modified: Thu, 29 Oct 2026 17:30:52 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:latest` - unknown; unknown

```console
$ docker pull composer@sha256:5f175eb0823caceeacd090cfadf6b2f5ec351697780cb7a7ed81606268888c8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2212013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e72e4dc086c51745566abdc704ca9561f1239d688efffd941f2215b2cd354f7`

```dockerfile
```

-	Layers:
	-	`sha256:1c4df9f37086974b2e16130441d9d01d5a5c93386b8e0786f9fb9323a54ebbaf`  
		Last Modified: Thu, 29 Oct 2026 17:30:51 GMT  
		Size: 2.2 MB (2181376 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b5fb8c347f8a361f71e9d3d7314d1f29077826fc436a1bdd40238b059da6a3e3`  
		Last Modified: Thu, 29 Oct 2026 17:30:50 GMT  
		Size: 30.6 KB (30637 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:latest` - linux; riscv64

```console
$ docker pull composer@sha256:e6d3961eaef409a8425cb992665e1d48202c4a8f1cb967ac5e226131cc211db0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.2 MB (76229575 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ebc6f7f98dab21e81a2403cdfaee8202aa0482f24320966f39a8f17deb68d3c5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

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
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHP_VERSION=8.5.12
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Sat, 24 Oct 2026 21:26:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Sat, 24 Oct 2026 21:26:17 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 24 Oct 2026 22:31:26 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 24 Oct 2026 22:31:26 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 24 Oct 2026 22:31:30 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 24 Oct 2026 22:31:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 24 Oct 2026 22:31:30 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 04:17:19 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 04:17:20 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 04:20:41 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 04:20:41 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 04:20:41 GMT
ENV COMPOSER_VERSION=2.10.3
# Thu, 29 Oct 2026 04:20:41 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 04:20:41 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 04:20:41 GMT
WORKDIR /app
# Thu, 29 Oct 2026 04:20:41 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 04:20:41 GMT
CMD ["composer"]
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
	-	`sha256:6768c3a60b96d1e94f5f0ec89ff6b88f778ab6b895c2d00cf52e5e594f1b63a2`  
		Last Modified: Sat, 24 Oct 2026 22:32:52 GMT  
		Size: 14.6 MB (14577866 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a375e2dcca56a7f46e843223639300f2535afa5d4449703ceb9f70b2f7c850c`  
		Last Modified: Sat, 24 Oct 2026 22:32:48 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e6d51c6bc9763928c45bc4c7f3c9e22f1958c8669a313c24eff6881bb69553f`  
		Last Modified: Sat, 24 Oct 2026 22:32:53 GMT  
		Size: 21.1 MB (21079704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27ba0ddb9e946940cc1e746066626fe028854ecd7a34de4ab1f46a5a61e5d528`  
		Last Modified: Sat, 24 Oct 2026 22:32:48 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90dbbbb063d2ea4d1265014ea29584541fa004ee62bb54094c4f8de44e090163`  
		Last Modified: Sat, 24 Oct 2026 22:32:50 GMT  
		Size: 22.2 KB (22170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75b43b25100b405ab5448dd9cbf0ced2fc5bd74966566b266070ba1424aa1fb6`  
		Last Modified: Thu, 29 Oct 2026 04:22:22 GMT  
		Size: 32.2 MB (32246017 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:354267519d9a567124a67aecfbec7041b69555f7eedf4838f1b22fc30508c9a1`  
		Last Modified: Thu, 29 Oct 2026 04:22:17 GMT  
		Size: 260.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75a5e15f19c2084dc57af02a5f30456085d5408dc816ce7a2c1bc7601a534acd`  
		Last Modified: Thu, 29 Oct 2026 04:22:17 GMT  
		Size: 1.1 MB (1081233 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2f3e99fd36e2dc2c9e911d4319ca11a1af1fafa8dd1ee2d356dd14a71ba7052`  
		Last Modified: Thu, 29 Oct 2026 04:22:17 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1644f3a96c860c6807fd02566017f19a9dee7108f28fc7cef7515aa54cedda0`  
		Last Modified: Thu, 29 Oct 2026 04:21:27 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:latest` - unknown; unknown

```console
$ docker pull composer@sha256:a4b7749335c633f19367f8f2eb56727d731f31b3a7b76647a72f8f405085a86b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210834 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b7858f5cc167c2e94bf6baef08d5166c856d974fd80882afe0e31d19295948f`

```dockerfile
```

-	Layers:
	-	`sha256:8cb4a8dc0ca7269f97e4c97964b5cbdc5238e1617345d316bc3dfed8f874ade5`  
		Last Modified: Thu, 29 Oct 2026 04:22:17 GMT  
		Size: 2.2 MB (2180100 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:45a646af8bee972c980726b0574fc2eccbf3a875f01b303456b1df04f02e2743`  
		Last Modified: Thu, 29 Oct 2026 04:22:17 GMT  
		Size: 30.7 KB (30734 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:latest` - linux; s390x

```console
$ docker pull composer@sha256:d5a086e312cf93494465dd450b01b0a1a6dc5676638e82b8695e5fd8229bed6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.8 MB (77826917 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ad61071e371650c28015669e637fa033f709d1f7b248fe85c3cc59a10432898`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Wed, 21 Oct 2026 22:34:15 GMT
ADD alpine-minirootfs-3.24.3-s390x.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:34:15 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:20:23 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:20:23 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:20:23 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:20:23 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_VERSION=8.5.12
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.12.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.12.tar.xz.asc
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_SHA256=08bc2eba2a588654ade1357174aa646b761556c862dda0678345ee29ed481209
# Wed, 21 Oct 2026 23:21:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:21:51 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:25:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:25:41 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:25:42 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:25:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:25:42 GMT
CMD ["php" "-a"]
# Thu, 29 Oct 2026 17:29:36 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 29 Oct 2026 17:29:37 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 29 Oct 2026 17:29:57 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 29 Oct 2026 17:29:57 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 29 Oct 2026 17:29:57 GMT
ENV COMPOSER_VERSION=2.11.0
# Thu, 29 Oct 2026 17:29:57 GMT
RUN set -eux ;   apk add --no-cache --virtual .build-deps     $PHPIZE_DEPS     bzip2-dev     libzip-dev   ;   docker-php-ext-install -j "$(nproc)"     bz2     zip   ;   runDeps="$(     scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions       | tr ',' '\n'       | sort -u       | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'   )" ;   apk add --no-cache --virtual .composer-phpext-rundeps $runDeps ;   apk del --no-network .build-deps ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 29 Oct 2026 17:29:58 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 29 Oct 2026 17:29:59 GMT
WORKDIR /app
# Thu, 29 Oct 2026 17:29:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 29 Oct 2026 17:29:59 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:2272b0c2085ed29d31c21595617f773cb42db2e52c3b366debca9d4689770412`  
		Last Modified: Wed, 21 Oct 2026 22:34:25 GMT  
		Size: 3.7 MB (3719710 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3994947cd88d28cfb3f991c5b6fd75edffe6f7e091429cad77f8db61869091f`  
		Last Modified: Wed, 21 Oct 2026 23:24:22 GMT  
		Size: 3.7 MB (3683873 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:187dd63caa64ac1d5888e1f101c2c414d74d260eef5fc095e9dc6dbb374f7267`  
		Last Modified: Wed, 21 Oct 2026 23:24:21 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:428c8b641892350c28dd8dc3645e567eb63ac63033b1d7e5e28f1a6b6bf3670e`  
		Last Modified: Wed, 21 Oct 2026 23:24:21 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dad3e2711e594137e332b0b8d206cc1ca16f454e8205de6bf3f1053fa4856557`  
		Last Modified: Wed, 21 Oct 2026 23:25:54 GMT  
		Size: 14.6 MB (14577842 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ecc9de14cbfddefd10b5b12025384105b6fcfd3288c1bfe5f156560e839f6fb`  
		Last Modified: Wed, 21 Oct 2026 23:25:54 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f74c95f00b7275ee5e9eb1564dd340bf6b9bdfdf5827a48aa756c780a8d2792e`  
		Last Modified: Wed, 21 Oct 2026 23:25:54 GMT  
		Size: 21.7 MB (21742396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34c0db3041505705d6ed118114ccaf6c9d8f46e852555eee7afbaca8eb7c20f6`  
		Last Modified: Wed, 21 Oct 2026 23:25:53 GMT  
		Size: 2.4 KB (2442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b8c00b5eab2e06d4e48cca5a4774e319d8ad4a2ebd14148c4c964ff1e659610c`  
		Last Modified: Wed, 21 Oct 2026 23:25:55 GMT  
		Size: 22.1 KB (22132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:004dea91dfd2ea6b46667f58973690fc57366ea82b570234a6fed19149c48611`  
		Last Modified: Thu, 29 Oct 2026 17:30:27 GMT  
		Size: 33.0 MB (32988671 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eb5cd95d8cb3fdc952b0c0a9be4224a576eb630da18c0c96bf9ef0f72e9ca42`  
		Last Modified: Thu, 29 Oct 2026 17:30:26 GMT  
		Size: 260.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecdd34b3ab48b900aacea486fc84423abb645ce5440f149cd0ebd81de2838ce3`  
		Last Modified: Thu, 29 Oct 2026 17:30:26 GMT  
		Size: 1.1 MB (1087450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cca4ae567647f5d3dfac677ee075d6345dfd6f7bbb7440b15a05c824f71cedb`  
		Last Modified: Thu, 29 Oct 2026 17:30:26 GMT  
		Size: 415.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78d0c2860d06593a40f07ea535d170d88064742c3645fdb6a67f053a87879c0f`  
		Last Modified: Thu, 29 Oct 2026 17:30:25 GMT  
		Size: 92.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:latest` - unknown; unknown

```console
$ docker pull composer@sha256:7c817aa3fc7e7925e50091e9b3c2b87ddcf768958fb86c3ae3164ed7ecf53995
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:649abc8eccf5690c0e4f38a2546e3cedda4fb3139abcc643af05ea31c3bc9a1c`

```dockerfile
```

-	Layers:
	-	`sha256:2649e690cc5e96d99076e9d8ea264757096604f2b922518c82d44d7350ca3c71`  
		Last Modified: Thu, 29 Oct 2026 17:30:26 GMT  
		Size: 2.2 MB (2180784 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ffc554f713937193a56b13d9e6845b065484f348f9e33ec242c0e8b2b11bce86`  
		Last Modified: Thu, 29 Oct 2026 17:30:25 GMT  
		Size: 30.6 KB (30588 bytes)  
		MIME: application/vnd.in-toto+json
