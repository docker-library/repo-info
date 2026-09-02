<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `composer`

-	[`composer:2`](#composer2)
-	[`composer:2.10`](#composer210)
-	[`composer:2.10.3`](#composer2103)
-	[`composer:2.2`](#composer22)
-	[`composer:2.2.30`](#composer2230)
-	[`composer:latest`](#composerlatest)

## `composer:2`

```console
$ docker pull composer@sha256:8fa35f42911ff8bbee92aa37d781de6799168d4a0535ac6991f1b250bc2e0245
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
$ docker pull composer@sha256:0baf37e7f495f1c42cee6bdd9cf3e00e9435f193b512529e7c484d66c623773f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80167512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:204816b1c5b657cd8fe31ae0bca3daecdd370633c1a3952f6101860003ac8798`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 31 Aug 2026 19:12:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 31 Aug 2026 19:12:30 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 31 Aug 2026 19:12:30 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 31 Aug 2026 19:12:30 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_VERSION=8.5.10
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:12:33 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 31 Aug 2026 19:12:33 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:15:52 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 31 Aug 2026 19:15:52 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:15:53 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 31 Aug 2026 19:15:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 31 Aug 2026 19:15:53 GMT
CMD ["php" "-a"]
# Tue, 01 Sep 2026 21:45:56 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Tue, 01 Sep 2026 21:45:56 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:46:13 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:46:13 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:46:13 GMT
ENV COMPOSER_VERSION=2.10.3
# Tue, 01 Sep 2026 21:46:13 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:46:13 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:46:13 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:46:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:46:13 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8abfc15eb16e089ac0133588fc40e22868d0a07ccb1423d919804826c244bc9`  
		Last Modified: Mon, 31 Aug 2026 19:16:01 GMT  
		Size: 5.9 MB (5947457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd56ccb5211768a4e9e7ab043b8bb6f6c7b8f784c82338845b7cbf4b960c5c0c`  
		Last Modified: Mon, 31 Aug 2026 19:16:01 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61db10a066345ea6e76c588074ce538251b06050b519e3c73fd56021208db4a`  
		Last Modified: Mon, 31 Aug 2026 19:16:01 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a4613157ae3c90a66f322e617856593fda2e67d4f1e5e05696f1e93d7df6d32`  
		Last Modified: Mon, 31 Aug 2026 19:16:01 GMT  
		Size: 14.5 MB (14479187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2272599fb31695cff110b58d8b4222e7bf2b64b0abc4b4d59f2fa85e28f8cb0`  
		Last Modified: Mon, 31 Aug 2026 19:16:02 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3610922f636b31a392b957e7e7981d79bbf81f580b02013b34e4dca07d9c6e3d`  
		Last Modified: Mon, 31 Aug 2026 19:16:03 GMT  
		Size: 22.8 MB (22826438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23dc07157ef7d1dce21c40c9f43b30a69091e050123f90622d23b8578347cdb2`  
		Last Modified: Mon, 31 Aug 2026 19:16:02 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd58bb537f66a30a752d312bf1d5328e3970e9920f52af34fff4446481dfd221`  
		Last Modified: Mon, 31 Aug 2026 19:16:03 GMT  
		Size: 22.4 KB (22363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc8ae5cf961dc76a2f3ac4c799d76f32ec53afe34b16276a50c09952c5c3063`  
		Last Modified: Tue, 01 Sep 2026 21:46:23 GMT  
		Size: 32.0 MB (31957584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96a258d35ff873f2ecbbc52802b3c615ed94daee67860f7c9541958addec583d`  
		Last Modified: Tue, 01 Sep 2026 21:46:22 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2b224c93474b6222e5db7cc1c356eaf33b0a66486b70e47d15bb17baf5c113a`  
		Last Modified: Tue, 01 Sep 2026 21:46:22 GMT  
		Size: 1.1 MB (1083241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a747bac1a2637ae25dc98d65afa1fd0d343e529f1145b18c8e6b55b41938f0fe`  
		Last Modified: Tue, 01 Sep 2026 21:46:22 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1f5a0519ae078a357e650fb3f19e0f64c14b0b9279f23887f6bfa5c27c55425`  
		Last Modified: Tue, 01 Sep 2026 21:46:23 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2` - unknown; unknown

```console
$ docker pull composer@sha256:b9d81bbd198906c8cdae257319bad4394a3c9d7aa90948b274630903b1a8d381
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:830dcf9a863639247547bea8329ecccede6589a455decd01d4eef626e56bbefc`

```dockerfile
```

-	Layers:
	-	`sha256:51125b5527e381319805d02c5e501547cf7f6b31e567ce33c8f9f9ca043fd4b6`  
		Last Modified: Tue, 01 Sep 2026 21:46:22 GMT  
		Size: 2.2 MB (2181272 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16a52fabfe585b256604dfdcd9893eb6341fd9abcad906421f99c115beefdea3`  
		Last Modified: Tue, 01 Sep 2026 21:46:22 GMT  
		Size: 30.7 KB (30686 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2` - linux; arm variant v6

```console
$ docker pull composer@sha256:25e34d9a4dd89c8c7fc46adb513cd26c68bf976a059d35551cde7003fdea0daa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76127050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28cb8d3c2d88277db4f47cbe5a03e80960110be1e71795f1f1a662262d603b2a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 31 Aug 2026 19:04:31 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 31 Aug 2026 19:04:31 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 31 Aug 2026 19:04:31 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 31 Aug 2026 19:04:31 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_VERSION=8.5.10
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:04:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 31 Aug 2026 19:04:35 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:07:46 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 31 Aug 2026 19:07:46 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:07:47 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 31 Aug 2026 19:07:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 31 Aug 2026 19:07:47 GMT
CMD ["php" "-a"]
# Tue, 01 Sep 2026 21:45:14 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Tue, 01 Sep 2026 21:45:14 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:45:37 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:45:37 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:45:37 GMT
ENV COMPOSER_VERSION=2.10.3
# Tue, 01 Sep 2026 21:45:37 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:45:37 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:45:37 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:45:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:45:37 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:922ee89636e901fea2f5c487f74705079723794fb301264e988f16a67f52c53c`  
		Last Modified: Mon, 31 Aug 2026 19:07:53 GMT  
		Size: 5.5 MB (5537245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a058619bc927a491b96333ecf230846a23db58050c4fca62da7fab53aeaea035`  
		Last Modified: Mon, 31 Aug 2026 19:07:53 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fc0018a069a278dffd6f0cd484fc34e8f95df4f1d2f896f3264f21d917b9b5f`  
		Last Modified: Mon, 31 Aug 2026 19:07:53 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52cfb90d07aa96268c728b7a5ae182ad853d5f758f8b5822cd20e7f3a135339f`  
		Last Modified: Mon, 31 Aug 2026 19:07:54 GMT  
		Size: 14.5 MB (14479193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:993cb026ef05d536fbe556b746608fd69906cc9d2769dbe905b44ea02b5faad7`  
		Last Modified: Mon, 31 Aug 2026 19:07:54 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35f1752063083542501b1767e44871ad504f0ad0675452bac779d1c0d1c78956`  
		Last Modified: Mon, 31 Aug 2026 19:07:55 GMT  
		Size: 19.8 MB (19775411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e44d436d8a4ace17d0f64920016c18446e363640c08dd2e12b14f33b7c1c58e`  
		Last Modified: Mon, 31 Aug 2026 19:07:55 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a0f8762a6b11e5cfadcef85a63d529fc8e43af4ca5c9de3b76205b4c40fbbc1`  
		Last Modified: Mon, 31 Aug 2026 19:07:55 GMT  
		Size: 22.2 KB (22160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fc0b3db5c735311873e3cdc1fc7125a1ad4ac78698b452168a9a5f133cdcf1d`  
		Last Modified: Tue, 01 Sep 2026 21:45:45 GMT  
		Size: 31.7 MB (31671139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f561ca495f0168e58acb17dd162ab13a0bf508a5768dce9683d575881472021`  
		Last Modified: Tue, 01 Sep 2026 21:45:44 GMT  
		Size: 256.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad71437d15083dc3375815e9df8be92ee309e8ccd34f96e0e874a45e71460702`  
		Last Modified: Tue, 01 Sep 2026 21:45:44 GMT  
		Size: 1.1 MB (1083599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a860e9231d40d4131609817d59a11fc9f4f8924bdfb9f046f4a3311d0ed18255`  
		Last Modified: Tue, 01 Sep 2026 21:45:44 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3728486dac85639caeef6ff2e4a6de014e1193052f701e8245723f81bd40db21`  
		Last Modified: Tue, 01 Sep 2026 21:45:45 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2` - unknown; unknown

```console
$ docker pull composer@sha256:d088d0cd162077d88388b5db109cedcd709edf4174f49577267aa247e19201f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 KB (30576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b739aba602b07544b2f8b062c081e17aca54de390b3c88b8726077e885fa56`

```dockerfile
```

-	Layers:
	-	`sha256:bc744e6db37eb4725bc66299d4a076e30500c21ee0c63e626a44d20ba3df5e7f`  
		Last Modified: Tue, 01 Sep 2026 21:45:44 GMT  
		Size: 30.6 KB (30576 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2` - linux; arm variant v7

```console
$ docker pull composer@sha256:52d59c54177687e3a7a5d5ff91e13305dc4748a59e556f4bd44eecf0dbd73d18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (72956366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86c1a306b2a9137c60620f9218f1293ed27052ab0251b80ee320404115560b03`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 31 Aug 2026 19:13:44 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 31 Aug 2026 19:13:44 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 31 Aug 2026 19:13:44 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 31 Aug 2026 19:13:44 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_VERSION=8.5.10
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:13:48 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 31 Aug 2026 19:13:48 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:16:58 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 31 Aug 2026 19:16:58 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:16:58 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 31 Aug 2026 19:16:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 31 Aug 2026 19:16:58 GMT
CMD ["php" "-a"]
# Tue, 01 Sep 2026 21:46:11 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Tue, 01 Sep 2026 21:46:11 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:46:32 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:46:32 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:46:32 GMT
ENV COMPOSER_VERSION=2.10.3
# Tue, 01 Sep 2026 21:46:32 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:46:32 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:46:32 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:46:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:46:32 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47ec0186e8849bf6342857812c1be1ccbdcb4db7ae18275463b438b1b99fbc51`  
		Last Modified: Mon, 31 Aug 2026 19:17:05 GMT  
		Size: 5.2 MB (5185962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5085bab6afc0997d6dc08c9fb4e317283fc16eaf5587150865d4462cb18c06f3`  
		Last Modified: Mon, 31 Aug 2026 19:17:05 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b15a16ac3a9196b8c604e86c81cb93a69e70a33202a2e65205a003888f649ce`  
		Last Modified: Mon, 31 Aug 2026 19:17:05 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda25bba34254f5e409ab619746da7c0fe654f8cd8d3e5db679cd28f7ce539a9`  
		Last Modified: Mon, 31 Aug 2026 19:17:06 GMT  
		Size: 14.5 MB (14479201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f9271c657f30ec1784501ded1f343add3b628dbe3e1b773f1924061e43a0705`  
		Last Modified: Mon, 31 Aug 2026 19:17:06 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdfaf4840f022148001355960af137ef272bd044f70bd88a8d7ca8693db79bf8`  
		Last Modified: Mon, 31 Aug 2026 19:17:07 GMT  
		Size: 18.7 MB (18654299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1f90a49a1e427b1aee6f1e10e3e96443aabfef5ff7b744004b60d00ab328d70`  
		Last Modified: Mon, 31 Aug 2026 19:17:06 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:254b0043e8bfa4a61897d6a4a95691e4f7daef36d1a9f1ac5488a0097d1ab7ab`  
		Last Modified: Mon, 31 Aug 2026 19:17:07 GMT  
		Size: 22.2 KB (22165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552275889b70bd2706127ef42992457424550094aaed5a450752e863add21d8f`  
		Last Modified: Tue, 01 Sep 2026 21:46:42 GMT  
		Size: 30.3 MB (30275456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0fbb1cd8b16678f061fd023cb088bbb6b54ee533df3d05e3fa6f2affc676228`  
		Last Modified: Tue, 01 Sep 2026 21:46:41 GMT  
		Size: 256.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:431aab51a51c5915e0c043b1e619e05f38936295374c9e98bf07a9a4e9b255e3`  
		Last Modified: Tue, 01 Sep 2026 21:46:41 GMT  
		Size: 1.1 MB (1073817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d67ea02a4da3fcf65ca09dcaeaf26414d92355b02cbebcf3f3a895b3c2f5c8eb`  
		Last Modified: Tue, 01 Sep 2026 21:46:41 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af01a889e80fbdc2241b85badef91a215ddf6f46bcbdb20110b1fb0dbc1dde5d`  
		Last Modified: Tue, 01 Sep 2026 21:46:42 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2` - unknown; unknown

```console
$ docker pull composer@sha256:f6dcbb0020e1ad7242a0475c972a3f2b42983a2133061bfb2551927de5cc8fb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74be4c56d9e95a154081c522fa603a82becb612b39135714da32eb194240e63c`

```dockerfile
```

-	Layers:
	-	`sha256:30a5df5f95fdaf8ba4464b27320ce618e580b36314e34840d0e41ef87ef94b26`  
		Last Modified: Tue, 01 Sep 2026 21:46:41 GMT  
		Size: 2.2 MB (2180937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8a4ad508a1202c0017828d8b73360d56cf45e924d650cacc671d7e12d61ee8c`  
		Last Modified: Tue, 01 Sep 2026 21:46:41 GMT  
		Size: 30.8 KB (30792 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2` - linux; arm64 variant v8

```console
$ docker pull composer@sha256:70fe4b445fcdb28265da58cc5da155b8d64a5d583e66467e4e3d294bdb3d26ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80129281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bb69f1ebfc8275e3244e9adcc5129686f1fe7c272ba97a4c7ff514097a77450`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 31 Aug 2026 19:29:31 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 31 Aug 2026 19:29:31 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 31 Aug 2026 19:29:31 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 31 Aug 2026 19:29:31 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_VERSION=8.5.10
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:29:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 31 Aug 2026 19:29:34 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:32:55 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 31 Aug 2026 19:32:55 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:32:56 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 31 Aug 2026 19:32:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 31 Aug 2026 19:32:56 GMT
CMD ["php" "-a"]
# Tue, 01 Sep 2026 21:46:09 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Tue, 01 Sep 2026 21:46:09 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:46:28 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:46:28 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:46:28 GMT
ENV COMPOSER_VERSION=2.10.3
# Tue, 01 Sep 2026 21:46:28 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:46:28 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:46:28 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:46:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:46:28 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:984940d617d48d359815b38cb24c1f97c743e5fde096eac2bd6a7267b2111fa0`  
		Last Modified: Mon, 31 Aug 2026 19:33:04 GMT  
		Size: 6.3 MB (6257367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49cb5444430bc375da584793ca4f5ce67d09374e39f8b3b6612011797f52c009`  
		Last Modified: Mon, 31 Aug 2026 19:33:03 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4079740af5f25fa1205d7f1877400e1f5a6a66e0115cf47ee8f3547a3f3dbe7d`  
		Last Modified: Mon, 31 Aug 2026 19:33:03 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30d3a65159185a3265f510470cd22cdd3d492558d2f959a357b372ec889ee3d7`  
		Last Modified: Mon, 31 Aug 2026 19:33:04 GMT  
		Size: 14.5 MB (14479183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4adcbc802a6f40856dec178bafed6859d616898e928da0babd491597452f558b`  
		Last Modified: Mon, 31 Aug 2026 19:33:04 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb074f6cb93c5759763b582c40a57dc3b2035d70e29a3497cfd86dc152da96b`  
		Last Modified: Mon, 31 Aug 2026 19:33:05 GMT  
		Size: 22.0 MB (22002481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adc6e3e84771ea1ace5629d7a232ed7de5ea7a43aa1301d47f35d3ebb77b7a58`  
		Last Modified: Mon, 31 Aug 2026 19:33:05 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23e9c376283cad827910e85adfc17ccd299916351991d29896a368d01fae7faa`  
		Last Modified: Mon, 31 Aug 2026 19:33:05 GMT  
		Size: 22.2 KB (22202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fcef3e1436547055f6b81b293ac562e677a38192b228bd5f8f3897908e9e09e`  
		Last Modified: Tue, 01 Sep 2026 21:46:39 GMT  
		Size: 32.1 MB (32097846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4656bab49cbdb0b41d0d4400a06c0dceb551c2ac3a9b4f9525a9838c338be48`  
		Last Modified: Tue, 01 Sep 2026 21:46:38 GMT  
		Size: 259.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26ecfba2f4021c3830f605037b16ef04ed906a953de8aa3785fc3f9cf3ad12b7`  
		Last Modified: Tue, 01 Sep 2026 21:46:38 GMT  
		Size: 1.1 MB (1082308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96a39e14ea49c5bfefbf591d9a12a4b889afc6270e90de049e2b29637c1e493e`  
		Last Modified: Tue, 01 Sep 2026 21:46:38 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a886d5026bf0ec344eb77e3d4492d0c34468da7fb0fa87b70d1fa5327c3509e`  
		Last Modified: Tue, 01 Sep 2026 21:46:39 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2` - unknown; unknown

```console
$ docker pull composer@sha256:f4b97ec624613bdd71a98697a371e9f32ce89518341be62f5ff34c941dd02b45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e440886cae31c1c1b1d665aac08fa697e9b0d1b1cf34b8d7b482ddb498b4db7`

```dockerfile
```

-	Layers:
	-	`sha256:7a430e5698a335ebfcd0c68ba9fb28450af8a7d695faa8cd77023b1b5247c65a`  
		Last Modified: Tue, 01 Sep 2026 21:46:38 GMT  
		Size: 2.2 MB (2180771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98e8396ddad0550a1dd6a2cb6d24b67914c094acc59de1ab3bb5744ceb743cbf`  
		Last Modified: Tue, 01 Sep 2026 21:46:38 GMT  
		Size: 30.8 KB (30820 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2` - linux; 386

```console
$ docker pull composer@sha256:e93870949a1ff2f4e68377e736ce702c9bba9bf438eca02295e34fb40c7fa7cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80816341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85c29a1dd77629e5be8ccc09bd188cc496d438c9f489e00e30bc4c9d572ab7e9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 31 Aug 2026 19:05:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 31 Aug 2026 19:05:54 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 31 Aug 2026 19:05:54 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 31 Aug 2026 19:05:54 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_VERSION=8.5.10
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:05:57 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 31 Aug 2026 19:05:57 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:09:13 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 31 Aug 2026 19:09:13 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:09:14 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 31 Aug 2026 19:09:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 31 Aug 2026 19:09:14 GMT
CMD ["php" "-a"]
# Tue, 01 Sep 2026 21:45:45 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Tue, 01 Sep 2026 21:45:45 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:46:02 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:46:02 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:46:02 GMT
ENV COMPOSER_VERSION=2.10.3
# Tue, 01 Sep 2026 21:46:02 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:46:02 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:46:02 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:46:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:46:02 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38c550a21e0e25a500dd32e0c46f5e52b968214cdd1b1af018dac40a548fbedf`  
		Last Modified: Mon, 31 Aug 2026 19:09:22 GMT  
		Size: 5.8 MB (5793468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94c99880dc6dfa808b4cd1594e9c79c17746af44cb07100fa96588d4490e947f`  
		Last Modified: Mon, 31 Aug 2026 19:09:22 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a671bd089267098e6599ca92afbb1f13f32c925ac58baa864c73c70d5a64090a`  
		Last Modified: Mon, 31 Aug 2026 19:09:21 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64b86c50e53b0c123faabab45a3f06977972b0fdca3c5343e8a44c0ac330b06a`  
		Last Modified: Mon, 31 Aug 2026 19:09:23 GMT  
		Size: 14.5 MB (14479180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6983adc90c1459f0c9aeff6f0bb3fa21dcf3b4dbf1094c7e58b4eb88471b816`  
		Last Modified: Mon, 31 Aug 2026 19:09:23 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9b348ad7874760602d66e9ea26f6be2c0ef69fe7b3508d88b1f2e154362c14b`  
		Last Modified: Mon, 31 Aug 2026 19:09:24 GMT  
		Size: 23.3 MB (23278191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:782b9f03463f82f20404dc3e64643dffc65b397a6777c5c0e1b9368cb8778bfe`  
		Last Modified: Mon, 31 Aug 2026 19:09:23 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e335de470f1224722633cff72f7fa130b41cd6d7da51aa29ddca03de8f4d548c`  
		Last Modified: Mon, 31 Aug 2026 19:09:25 GMT  
		Size: 22.4 KB (22384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6205afce2fc70ff7d6d5724244577add1a652d9bcc95786bdb34a4770f4f84ec`  
		Last Modified: Tue, 01 Sep 2026 21:46:13 GMT  
		Size: 32.5 MB (32472646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:637b9cf907c5f64e88b11e6fbd8be8e62c19a87cdde37a9c152fde3e6cb04047`  
		Last Modified: Tue, 01 Sep 2026 21:46:12 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:091e1986d6236368bb01349ab95e6755563fda97c88926f7ac431afa6ffda485`  
		Last Modified: Tue, 01 Sep 2026 21:46:12 GMT  
		Size: 1.1 MB (1095476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d399f8e49a174703593540d55dc3df1be7cb6fc3c69e4a956ab8e0615c45c83`  
		Last Modified: Tue, 01 Sep 2026 21:46:12 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ea5509112623045dbc4299ca8afccadb4dbd40fa7e9893503dbab2d9c4dacba`  
		Last Modified: Tue, 01 Sep 2026 21:46:13 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2` - unknown; unknown

```console
$ docker pull composer@sha256:af8c1247947c8e09946dc11dd6e563ff532e8c653e4eba0413617e914a893ec7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6371c0be508364b6ec9b6e9513547653a37a47d82ffa0d06427a5f6f0ab2d54c`

```dockerfile
```

-	Layers:
	-	`sha256:6d60910c9a729bcdc3c3871574e0a7a2aed9e01479b5cf990db0c9dc3848540b`  
		Last Modified: Tue, 01 Sep 2026 21:46:12 GMT  
		Size: 2.2 MB (2181061 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13c6cc9f45f7d58b0ced2feca50631f1740542b618664b645ea0af53e95e4954`  
		Last Modified: Tue, 01 Sep 2026 21:46:12 GMT  
		Size: 30.6 KB (30650 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2` - linux; ppc64le

```console
$ docker pull composer@sha256:c444a1292576887ce2772814011672115a035b7d5cc5afd3d2b4e0e6f0d88140
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81402265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7adfac50196b39a2d614dc1704fa0bc0c445289f6368f765e92526c233a4a9c5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

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
# Mon, 31 Aug 2026 20:53:44 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:53:44 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:45:25 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:45:25 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:45:25 GMT
ENV COMPOSER_VERSION=2.10.3
# Tue, 01 Sep 2026 21:45:25 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:45:26 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:45:26 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:45:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:45:26 GMT
CMD ["composer"]
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
	-	`sha256:2aab4bf4a081a48a0966800ab21cde1a512803dc2f996d78e3bb853fc98db6b8`  
		Last Modified: Mon, 31 Aug 2026 20:54:36 GMT  
		Size: 33.1 MB (33065362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2b28058a535ea2a40e17040db6b7c2b932d626c3f23c5902507609674922c03`  
		Last Modified: Mon, 31 Aug 2026 20:54:35 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba0e3174e64a18a401c8139b57a18af5c35fd5ee71a267bda81ac24dd8319c1`  
		Last Modified: Tue, 01 Sep 2026 21:45:48 GMT  
		Size: 1.1 MB (1089467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cd6177323c354578618d1b1a54bf199c08eb6782c5485fae1dd3c199c5796a1`  
		Last Modified: Tue, 01 Sep 2026 21:45:48 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ab64b6814f7b0026d1166fb6e156c076726cc00c2d82847808142bf0b2ee83d`  
		Last Modified: Tue, 01 Sep 2026 21:45:48 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2` - unknown; unknown

```console
$ docker pull composer@sha256:589156411a1375f2070258855e4c47d7a776af9f57e712620055ab28d513da58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ad54e65b069ec9ce26499c40b609b5c29a726e8d7ebdef8c80011b89395b071`

```dockerfile
```

-	Layers:
	-	`sha256:cb2c1f82e57d34a44eb33ffaeee961698f79163ee04a124dad452a25f5036377`  
		Last Modified: Tue, 01 Sep 2026 21:45:47 GMT  
		Size: 2.2 MB (2181120 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e26be227119b6d6682533f3b2f9bf40ffaba351208a1ca8508b47a3f478ad3f9`  
		Last Modified: Tue, 01 Sep 2026 21:45:47 GMT  
		Size: 30.7 KB (30734 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2` - linux; riscv64

```console
$ docker pull composer@sha256:6d5cee02dbd8b9783b13f230a3a9d3dd6ec1fe3f11573526cd73747b2e1cd857
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.5 MB (76541741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7ecd91a09ec93884df3606cb480c0c9ff84b23dc47637a7d8c402e3fdb18a8e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

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
ENV PHP_VERSION=8.5.9
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.9.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.9.tar.xz.asc
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_SHA256=0db7855f25bcd0ab1d592cdb35e284d6f6a5d2ae0f6f621122e364cc39b708f4
# Fri, 31 Jul 2026 15:38:43 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Fri, 31 Jul 2026 15:38:43 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:39:28 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 31 Jul 2026 16:39:28 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:39:33 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 31 Jul 2026 16:39:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 31 Jul 2026 16:39:33 GMT
CMD ["php" "-a"]
# Sun, 02 Aug 2026 10:55:39 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Sun, 02 Aug 2026 10:55:39 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Sun, 02 Aug 2026 10:58:55 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Sun, 02 Aug 2026 10:58:55 GMT
ENV COMPOSER_HOME=/tmp
# Sun, 02 Aug 2026 10:58:55 GMT
ENV COMPOSER_VERSION=2.10.2
# Sun, 02 Aug 2026 10:58:55 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Sun, 02 Aug 2026 10:58:55 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Sun, 02 Aug 2026 10:58:55 GMT
WORKDIR /app
# Sun, 02 Aug 2026 10:58:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 02 Aug 2026 10:58:55 GMT
CMD ["composer"]
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
	-	`sha256:a7df51e776d51b2c750565c684f30f4e06d10bc1259d74f1b631d6003d171e4b`  
		Last Modified: Fri, 31 Jul 2026 16:40:43 GMT  
		Size: 14.4 MB (14442258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3f96528e027eab4a684a72c0207e130ea36c05cb028c2922950d4da17bd89a3`  
		Last Modified: Fri, 31 Jul 2026 16:40:39 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f18160cc91e034e63bc4a72b9c1db1836d0d67b9474a0153348bfeecac1ca89d`  
		Last Modified: Fri, 31 Jul 2026 16:40:44 GMT  
		Size: 21.7 MB (21652533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:025f594674f41dd999ecbad66590b9827993dae0622ea94f865d56c349694fc2`  
		Last Modified: Fri, 31 Jul 2026 16:40:39 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af8860925b8736ecd5d8f6f30145567d508cfae3ad6134d3c365e0a88f49a8a9`  
		Last Modified: Fri, 31 Jul 2026 16:40:41 GMT  
		Size: 22.2 KB (22200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b1545ecdc4b4bdbd394e5907c38eb8ead7ecd7808723855cd3c176b9b0bb9d9`  
		Last Modified: Sun, 02 Aug 2026 11:00:33 GMT  
		Size: 32.2 MB (32161169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:069078bd1756a3fa0258ffe97461e01a39daa92ca4a890f0ef80ef1f14e2e4bf`  
		Last Modified: Sun, 02 Aug 2026 11:00:28 GMT  
		Size: 258.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6054ae93a79d698f5002e599e9d543691f10607558d9170cd3c6b67f84b4a3b4`  
		Last Modified: Sun, 02 Aug 2026 11:00:28 GMT  
		Size: 1.1 MB (1079653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f20d9c4dbfe26850b409cad6daf392dda93b635fbb13eb6f3090a330a9c1ea9d`  
		Last Modified: Sun, 02 Aug 2026 11:00:28 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ac9668cf042ce9dd288eddcd2dcfde1c8895ec5a0cd0a70ffb754ccaf12500e`  
		Last Modified: Sun, 02 Aug 2026 11:00:30 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2` - unknown; unknown

```console
$ docker pull composer@sha256:cd48bf7c1669fdba253563bc3dfef898adec9639ec36a648cc8c1c4516a56e3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76d8d99a36f2f20f119df967161af2053c5e41b92e04cb149c08d532fc3c71fa`

```dockerfile
```

-	Layers:
	-	`sha256:6f09c18c9bfe350afa7cd352f79f8b716408f8cccdde705bc7495d23299a694d`  
		Last Modified: Sun, 02 Aug 2026 11:00:28 GMT  
		Size: 2.2 MB (2180738 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce590558e20578bb76edb3d5395dff43300d07530b967b8f8467d945a4b37ba2`  
		Last Modified: Sun, 02 Aug 2026 11:00:27 GMT  
		Size: 30.7 KB (30725 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2` - linux; s390x

```console
$ docker pull composer@sha256:0fe91c1bec8b2a7c90e3b21cfa99dad7dd958fed8b9fea6697d771c41c4906ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79811770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36a8d4f70dad8578dcb15dafb5f32d55a3fb2a10754434ebe680f9c808ac580c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

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
# Tue, 01 Sep 2026 21:44:29 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Tue, 01 Sep 2026 21:44:29 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:44:49 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:44:49 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:44:49 GMT
ENV COMPOSER_VERSION=2.10.3
# Tue, 01 Sep 2026 21:44:49 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:44:50 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:44:50 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:44:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:44:50 GMT
CMD ["composer"]
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
	-	`sha256:6e692e9f384c488bd3f34ea4c5b20a8d4bce1e3257dbef6dee1f8617af78536f`  
		Last Modified: Tue, 01 Sep 2026 21:45:06 GMT  
		Size: 32.9 MB (32926127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12d3286804e5db7a7b5007ebcfe298bda1830a9f667c563e76e396e9d2144930`  
		Last Modified: Tue, 01 Sep 2026 21:45:05 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e575922f8362fe1bd82fcc01f1ef3183fc9d31a9cb9712382b6bcd89a302c1d`  
		Last Modified: Tue, 01 Sep 2026 21:45:05 GMT  
		Size: 1.1 MB (1086337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0de73cae5e8d4aef169c3bc618ca3892da413c0896e84d71a07a436185c8a039`  
		Last Modified: Tue, 01 Sep 2026 21:45:05 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aab672307fe69b715bd5171c2d950d005183ed0659204e02e241e27d0f25294`  
		Last Modified: Tue, 01 Sep 2026 21:45:03 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2` - unknown; unknown

```console
$ docker pull composer@sha256:9a062f5998b0d9a462a4c6be44d6ea00cd39689d8fab880ae93f5c07d7d837b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbf3635e55d959c0042ad6d67c9afc722985e1737357144fe9ffcafdb9a079ab`

```dockerfile
```

-	Layers:
	-	`sha256:a7b64a23141a7cc687f961ae67dcb5c790af7dcd98343c0dadcf5bf88471d067`  
		Last Modified: Tue, 01 Sep 2026 21:45:05 GMT  
		Size: 2.2 MB (2180528 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64bdf96792033049543d2a20ac4bd0942a2119358915ff7ed44fdb00ebb081fe`  
		Last Modified: Tue, 01 Sep 2026 21:45:05 GMT  
		Size: 30.7 KB (30686 bytes)  
		MIME: application/vnd.in-toto+json

## `composer:2.10`

```console
$ docker pull composer@sha256:8fa35f42911ff8bbee92aa37d781de6799168d4a0535ac6991f1b250bc2e0245
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

### `composer:2.10` - linux; amd64

```console
$ docker pull composer@sha256:0baf37e7f495f1c42cee6bdd9cf3e00e9435f193b512529e7c484d66c623773f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80167512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:204816b1c5b657cd8fe31ae0bca3daecdd370633c1a3952f6101860003ac8798`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 31 Aug 2026 19:12:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 31 Aug 2026 19:12:30 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 31 Aug 2026 19:12:30 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 31 Aug 2026 19:12:30 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_VERSION=8.5.10
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:12:33 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 31 Aug 2026 19:12:33 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:15:52 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 31 Aug 2026 19:15:52 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:15:53 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 31 Aug 2026 19:15:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 31 Aug 2026 19:15:53 GMT
CMD ["php" "-a"]
# Tue, 01 Sep 2026 21:45:56 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Tue, 01 Sep 2026 21:45:56 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:46:13 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:46:13 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:46:13 GMT
ENV COMPOSER_VERSION=2.10.3
# Tue, 01 Sep 2026 21:46:13 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:46:13 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:46:13 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:46:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:46:13 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8abfc15eb16e089ac0133588fc40e22868d0a07ccb1423d919804826c244bc9`  
		Last Modified: Mon, 31 Aug 2026 19:16:01 GMT  
		Size: 5.9 MB (5947457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd56ccb5211768a4e9e7ab043b8bb6f6c7b8f784c82338845b7cbf4b960c5c0c`  
		Last Modified: Mon, 31 Aug 2026 19:16:01 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61db10a066345ea6e76c588074ce538251b06050b519e3c73fd56021208db4a`  
		Last Modified: Mon, 31 Aug 2026 19:16:01 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a4613157ae3c90a66f322e617856593fda2e67d4f1e5e05696f1e93d7df6d32`  
		Last Modified: Mon, 31 Aug 2026 19:16:01 GMT  
		Size: 14.5 MB (14479187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2272599fb31695cff110b58d8b4222e7bf2b64b0abc4b4d59f2fa85e28f8cb0`  
		Last Modified: Mon, 31 Aug 2026 19:16:02 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3610922f636b31a392b957e7e7981d79bbf81f580b02013b34e4dca07d9c6e3d`  
		Last Modified: Mon, 31 Aug 2026 19:16:03 GMT  
		Size: 22.8 MB (22826438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23dc07157ef7d1dce21c40c9f43b30a69091e050123f90622d23b8578347cdb2`  
		Last Modified: Mon, 31 Aug 2026 19:16:02 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd58bb537f66a30a752d312bf1d5328e3970e9920f52af34fff4446481dfd221`  
		Last Modified: Mon, 31 Aug 2026 19:16:03 GMT  
		Size: 22.4 KB (22363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc8ae5cf961dc76a2f3ac4c799d76f32ec53afe34b16276a50c09952c5c3063`  
		Last Modified: Tue, 01 Sep 2026 21:46:23 GMT  
		Size: 32.0 MB (31957584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96a258d35ff873f2ecbbc52802b3c615ed94daee67860f7c9541958addec583d`  
		Last Modified: Tue, 01 Sep 2026 21:46:22 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2b224c93474b6222e5db7cc1c356eaf33b0a66486b70e47d15bb17baf5c113a`  
		Last Modified: Tue, 01 Sep 2026 21:46:22 GMT  
		Size: 1.1 MB (1083241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a747bac1a2637ae25dc98d65afa1fd0d343e529f1145b18c8e6b55b41938f0fe`  
		Last Modified: Tue, 01 Sep 2026 21:46:22 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1f5a0519ae078a357e650fb3f19e0f64c14b0b9279f23887f6bfa5c27c55425`  
		Last Modified: Tue, 01 Sep 2026 21:46:23 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.10` - unknown; unknown

```console
$ docker pull composer@sha256:b9d81bbd198906c8cdae257319bad4394a3c9d7aa90948b274630903b1a8d381
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:830dcf9a863639247547bea8329ecccede6589a455decd01d4eef626e56bbefc`

```dockerfile
```

-	Layers:
	-	`sha256:51125b5527e381319805d02c5e501547cf7f6b31e567ce33c8f9f9ca043fd4b6`  
		Last Modified: Tue, 01 Sep 2026 21:46:22 GMT  
		Size: 2.2 MB (2181272 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16a52fabfe585b256604dfdcd9893eb6341fd9abcad906421f99c115beefdea3`  
		Last Modified: Tue, 01 Sep 2026 21:46:22 GMT  
		Size: 30.7 KB (30686 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.10` - linux; arm variant v6

```console
$ docker pull composer@sha256:25e34d9a4dd89c8c7fc46adb513cd26c68bf976a059d35551cde7003fdea0daa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76127050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28cb8d3c2d88277db4f47cbe5a03e80960110be1e71795f1f1a662262d603b2a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 31 Aug 2026 19:04:31 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 31 Aug 2026 19:04:31 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 31 Aug 2026 19:04:31 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 31 Aug 2026 19:04:31 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_VERSION=8.5.10
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:04:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 31 Aug 2026 19:04:35 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:07:46 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 31 Aug 2026 19:07:46 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:07:47 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 31 Aug 2026 19:07:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 31 Aug 2026 19:07:47 GMT
CMD ["php" "-a"]
# Tue, 01 Sep 2026 21:45:14 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Tue, 01 Sep 2026 21:45:14 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:45:37 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:45:37 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:45:37 GMT
ENV COMPOSER_VERSION=2.10.3
# Tue, 01 Sep 2026 21:45:37 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:45:37 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:45:37 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:45:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:45:37 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:922ee89636e901fea2f5c487f74705079723794fb301264e988f16a67f52c53c`  
		Last Modified: Mon, 31 Aug 2026 19:07:53 GMT  
		Size: 5.5 MB (5537245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a058619bc927a491b96333ecf230846a23db58050c4fca62da7fab53aeaea035`  
		Last Modified: Mon, 31 Aug 2026 19:07:53 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fc0018a069a278dffd6f0cd484fc34e8f95df4f1d2f896f3264f21d917b9b5f`  
		Last Modified: Mon, 31 Aug 2026 19:07:53 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52cfb90d07aa96268c728b7a5ae182ad853d5f758f8b5822cd20e7f3a135339f`  
		Last Modified: Mon, 31 Aug 2026 19:07:54 GMT  
		Size: 14.5 MB (14479193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:993cb026ef05d536fbe556b746608fd69906cc9d2769dbe905b44ea02b5faad7`  
		Last Modified: Mon, 31 Aug 2026 19:07:54 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35f1752063083542501b1767e44871ad504f0ad0675452bac779d1c0d1c78956`  
		Last Modified: Mon, 31 Aug 2026 19:07:55 GMT  
		Size: 19.8 MB (19775411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e44d436d8a4ace17d0f64920016c18446e363640c08dd2e12b14f33b7c1c58e`  
		Last Modified: Mon, 31 Aug 2026 19:07:55 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a0f8762a6b11e5cfadcef85a63d529fc8e43af4ca5c9de3b76205b4c40fbbc1`  
		Last Modified: Mon, 31 Aug 2026 19:07:55 GMT  
		Size: 22.2 KB (22160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fc0b3db5c735311873e3cdc1fc7125a1ad4ac78698b452168a9a5f133cdcf1d`  
		Last Modified: Tue, 01 Sep 2026 21:45:45 GMT  
		Size: 31.7 MB (31671139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f561ca495f0168e58acb17dd162ab13a0bf508a5768dce9683d575881472021`  
		Last Modified: Tue, 01 Sep 2026 21:45:44 GMT  
		Size: 256.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad71437d15083dc3375815e9df8be92ee309e8ccd34f96e0e874a45e71460702`  
		Last Modified: Tue, 01 Sep 2026 21:45:44 GMT  
		Size: 1.1 MB (1083599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a860e9231d40d4131609817d59a11fc9f4f8924bdfb9f046f4a3311d0ed18255`  
		Last Modified: Tue, 01 Sep 2026 21:45:44 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3728486dac85639caeef6ff2e4a6de014e1193052f701e8245723f81bd40db21`  
		Last Modified: Tue, 01 Sep 2026 21:45:45 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.10` - unknown; unknown

```console
$ docker pull composer@sha256:d088d0cd162077d88388b5db109cedcd709edf4174f49577267aa247e19201f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 KB (30576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b739aba602b07544b2f8b062c081e17aca54de390b3c88b8726077e885fa56`

```dockerfile
```

-	Layers:
	-	`sha256:bc744e6db37eb4725bc66299d4a076e30500c21ee0c63e626a44d20ba3df5e7f`  
		Last Modified: Tue, 01 Sep 2026 21:45:44 GMT  
		Size: 30.6 KB (30576 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.10` - linux; arm variant v7

```console
$ docker pull composer@sha256:52d59c54177687e3a7a5d5ff91e13305dc4748a59e556f4bd44eecf0dbd73d18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (72956366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86c1a306b2a9137c60620f9218f1293ed27052ab0251b80ee320404115560b03`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 31 Aug 2026 19:13:44 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 31 Aug 2026 19:13:44 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 31 Aug 2026 19:13:44 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 31 Aug 2026 19:13:44 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_VERSION=8.5.10
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:13:48 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 31 Aug 2026 19:13:48 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:16:58 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 31 Aug 2026 19:16:58 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:16:58 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 31 Aug 2026 19:16:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 31 Aug 2026 19:16:58 GMT
CMD ["php" "-a"]
# Tue, 01 Sep 2026 21:46:11 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Tue, 01 Sep 2026 21:46:11 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:46:32 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:46:32 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:46:32 GMT
ENV COMPOSER_VERSION=2.10.3
# Tue, 01 Sep 2026 21:46:32 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:46:32 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:46:32 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:46:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:46:32 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47ec0186e8849bf6342857812c1be1ccbdcb4db7ae18275463b438b1b99fbc51`  
		Last Modified: Mon, 31 Aug 2026 19:17:05 GMT  
		Size: 5.2 MB (5185962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5085bab6afc0997d6dc08c9fb4e317283fc16eaf5587150865d4462cb18c06f3`  
		Last Modified: Mon, 31 Aug 2026 19:17:05 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b15a16ac3a9196b8c604e86c81cb93a69e70a33202a2e65205a003888f649ce`  
		Last Modified: Mon, 31 Aug 2026 19:17:05 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda25bba34254f5e409ab619746da7c0fe654f8cd8d3e5db679cd28f7ce539a9`  
		Last Modified: Mon, 31 Aug 2026 19:17:06 GMT  
		Size: 14.5 MB (14479201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f9271c657f30ec1784501ded1f343add3b628dbe3e1b773f1924061e43a0705`  
		Last Modified: Mon, 31 Aug 2026 19:17:06 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdfaf4840f022148001355960af137ef272bd044f70bd88a8d7ca8693db79bf8`  
		Last Modified: Mon, 31 Aug 2026 19:17:07 GMT  
		Size: 18.7 MB (18654299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1f90a49a1e427b1aee6f1e10e3e96443aabfef5ff7b744004b60d00ab328d70`  
		Last Modified: Mon, 31 Aug 2026 19:17:06 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:254b0043e8bfa4a61897d6a4a95691e4f7daef36d1a9f1ac5488a0097d1ab7ab`  
		Last Modified: Mon, 31 Aug 2026 19:17:07 GMT  
		Size: 22.2 KB (22165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552275889b70bd2706127ef42992457424550094aaed5a450752e863add21d8f`  
		Last Modified: Tue, 01 Sep 2026 21:46:42 GMT  
		Size: 30.3 MB (30275456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0fbb1cd8b16678f061fd023cb088bbb6b54ee533df3d05e3fa6f2affc676228`  
		Last Modified: Tue, 01 Sep 2026 21:46:41 GMT  
		Size: 256.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:431aab51a51c5915e0c043b1e619e05f38936295374c9e98bf07a9a4e9b255e3`  
		Last Modified: Tue, 01 Sep 2026 21:46:41 GMT  
		Size: 1.1 MB (1073817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d67ea02a4da3fcf65ca09dcaeaf26414d92355b02cbebcf3f3a895b3c2f5c8eb`  
		Last Modified: Tue, 01 Sep 2026 21:46:41 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af01a889e80fbdc2241b85badef91a215ddf6f46bcbdb20110b1fb0dbc1dde5d`  
		Last Modified: Tue, 01 Sep 2026 21:46:42 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.10` - unknown; unknown

```console
$ docker pull composer@sha256:f6dcbb0020e1ad7242a0475c972a3f2b42983a2133061bfb2551927de5cc8fb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74be4c56d9e95a154081c522fa603a82becb612b39135714da32eb194240e63c`

```dockerfile
```

-	Layers:
	-	`sha256:30a5df5f95fdaf8ba4464b27320ce618e580b36314e34840d0e41ef87ef94b26`  
		Last Modified: Tue, 01 Sep 2026 21:46:41 GMT  
		Size: 2.2 MB (2180937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8a4ad508a1202c0017828d8b73360d56cf45e924d650cacc671d7e12d61ee8c`  
		Last Modified: Tue, 01 Sep 2026 21:46:41 GMT  
		Size: 30.8 KB (30792 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.10` - linux; arm64 variant v8

```console
$ docker pull composer@sha256:70fe4b445fcdb28265da58cc5da155b8d64a5d583e66467e4e3d294bdb3d26ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80129281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bb69f1ebfc8275e3244e9adcc5129686f1fe7c272ba97a4c7ff514097a77450`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 31 Aug 2026 19:29:31 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 31 Aug 2026 19:29:31 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 31 Aug 2026 19:29:31 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 31 Aug 2026 19:29:31 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_VERSION=8.5.10
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:29:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 31 Aug 2026 19:29:34 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:32:55 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 31 Aug 2026 19:32:55 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:32:56 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 31 Aug 2026 19:32:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 31 Aug 2026 19:32:56 GMT
CMD ["php" "-a"]
# Tue, 01 Sep 2026 21:46:09 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Tue, 01 Sep 2026 21:46:09 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:46:28 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:46:28 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:46:28 GMT
ENV COMPOSER_VERSION=2.10.3
# Tue, 01 Sep 2026 21:46:28 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:46:28 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:46:28 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:46:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:46:28 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:984940d617d48d359815b38cb24c1f97c743e5fde096eac2bd6a7267b2111fa0`  
		Last Modified: Mon, 31 Aug 2026 19:33:04 GMT  
		Size: 6.3 MB (6257367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49cb5444430bc375da584793ca4f5ce67d09374e39f8b3b6612011797f52c009`  
		Last Modified: Mon, 31 Aug 2026 19:33:03 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4079740af5f25fa1205d7f1877400e1f5a6a66e0115cf47ee8f3547a3f3dbe7d`  
		Last Modified: Mon, 31 Aug 2026 19:33:03 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30d3a65159185a3265f510470cd22cdd3d492558d2f959a357b372ec889ee3d7`  
		Last Modified: Mon, 31 Aug 2026 19:33:04 GMT  
		Size: 14.5 MB (14479183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4adcbc802a6f40856dec178bafed6859d616898e928da0babd491597452f558b`  
		Last Modified: Mon, 31 Aug 2026 19:33:04 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb074f6cb93c5759763b582c40a57dc3b2035d70e29a3497cfd86dc152da96b`  
		Last Modified: Mon, 31 Aug 2026 19:33:05 GMT  
		Size: 22.0 MB (22002481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adc6e3e84771ea1ace5629d7a232ed7de5ea7a43aa1301d47f35d3ebb77b7a58`  
		Last Modified: Mon, 31 Aug 2026 19:33:05 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23e9c376283cad827910e85adfc17ccd299916351991d29896a368d01fae7faa`  
		Last Modified: Mon, 31 Aug 2026 19:33:05 GMT  
		Size: 22.2 KB (22202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fcef3e1436547055f6b81b293ac562e677a38192b228bd5f8f3897908e9e09e`  
		Last Modified: Tue, 01 Sep 2026 21:46:39 GMT  
		Size: 32.1 MB (32097846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4656bab49cbdb0b41d0d4400a06c0dceb551c2ac3a9b4f9525a9838c338be48`  
		Last Modified: Tue, 01 Sep 2026 21:46:38 GMT  
		Size: 259.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26ecfba2f4021c3830f605037b16ef04ed906a953de8aa3785fc3f9cf3ad12b7`  
		Last Modified: Tue, 01 Sep 2026 21:46:38 GMT  
		Size: 1.1 MB (1082308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96a39e14ea49c5bfefbf591d9a12a4b889afc6270e90de049e2b29637c1e493e`  
		Last Modified: Tue, 01 Sep 2026 21:46:38 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a886d5026bf0ec344eb77e3d4492d0c34468da7fb0fa87b70d1fa5327c3509e`  
		Last Modified: Tue, 01 Sep 2026 21:46:39 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.10` - unknown; unknown

```console
$ docker pull composer@sha256:f4b97ec624613bdd71a98697a371e9f32ce89518341be62f5ff34c941dd02b45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e440886cae31c1c1b1d665aac08fa697e9b0d1b1cf34b8d7b482ddb498b4db7`

```dockerfile
```

-	Layers:
	-	`sha256:7a430e5698a335ebfcd0c68ba9fb28450af8a7d695faa8cd77023b1b5247c65a`  
		Last Modified: Tue, 01 Sep 2026 21:46:38 GMT  
		Size: 2.2 MB (2180771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98e8396ddad0550a1dd6a2cb6d24b67914c094acc59de1ab3bb5744ceb743cbf`  
		Last Modified: Tue, 01 Sep 2026 21:46:38 GMT  
		Size: 30.8 KB (30820 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.10` - linux; 386

```console
$ docker pull composer@sha256:e93870949a1ff2f4e68377e736ce702c9bba9bf438eca02295e34fb40c7fa7cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80816341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85c29a1dd77629e5be8ccc09bd188cc496d438c9f489e00e30bc4c9d572ab7e9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 31 Aug 2026 19:05:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 31 Aug 2026 19:05:54 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 31 Aug 2026 19:05:54 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 31 Aug 2026 19:05:54 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_VERSION=8.5.10
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:05:57 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 31 Aug 2026 19:05:57 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:09:13 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 31 Aug 2026 19:09:13 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:09:14 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 31 Aug 2026 19:09:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 31 Aug 2026 19:09:14 GMT
CMD ["php" "-a"]
# Tue, 01 Sep 2026 21:45:45 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Tue, 01 Sep 2026 21:45:45 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:46:02 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:46:02 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:46:02 GMT
ENV COMPOSER_VERSION=2.10.3
# Tue, 01 Sep 2026 21:46:02 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:46:02 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:46:02 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:46:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:46:02 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38c550a21e0e25a500dd32e0c46f5e52b968214cdd1b1af018dac40a548fbedf`  
		Last Modified: Mon, 31 Aug 2026 19:09:22 GMT  
		Size: 5.8 MB (5793468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94c99880dc6dfa808b4cd1594e9c79c17746af44cb07100fa96588d4490e947f`  
		Last Modified: Mon, 31 Aug 2026 19:09:22 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a671bd089267098e6599ca92afbb1f13f32c925ac58baa864c73c70d5a64090a`  
		Last Modified: Mon, 31 Aug 2026 19:09:21 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64b86c50e53b0c123faabab45a3f06977972b0fdca3c5343e8a44c0ac330b06a`  
		Last Modified: Mon, 31 Aug 2026 19:09:23 GMT  
		Size: 14.5 MB (14479180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6983adc90c1459f0c9aeff6f0bb3fa21dcf3b4dbf1094c7e58b4eb88471b816`  
		Last Modified: Mon, 31 Aug 2026 19:09:23 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9b348ad7874760602d66e9ea26f6be2c0ef69fe7b3508d88b1f2e154362c14b`  
		Last Modified: Mon, 31 Aug 2026 19:09:24 GMT  
		Size: 23.3 MB (23278191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:782b9f03463f82f20404dc3e64643dffc65b397a6777c5c0e1b9368cb8778bfe`  
		Last Modified: Mon, 31 Aug 2026 19:09:23 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e335de470f1224722633cff72f7fa130b41cd6d7da51aa29ddca03de8f4d548c`  
		Last Modified: Mon, 31 Aug 2026 19:09:25 GMT  
		Size: 22.4 KB (22384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6205afce2fc70ff7d6d5724244577add1a652d9bcc95786bdb34a4770f4f84ec`  
		Last Modified: Tue, 01 Sep 2026 21:46:13 GMT  
		Size: 32.5 MB (32472646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:637b9cf907c5f64e88b11e6fbd8be8e62c19a87cdde37a9c152fde3e6cb04047`  
		Last Modified: Tue, 01 Sep 2026 21:46:12 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:091e1986d6236368bb01349ab95e6755563fda97c88926f7ac431afa6ffda485`  
		Last Modified: Tue, 01 Sep 2026 21:46:12 GMT  
		Size: 1.1 MB (1095476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d399f8e49a174703593540d55dc3df1be7cb6fc3c69e4a956ab8e0615c45c83`  
		Last Modified: Tue, 01 Sep 2026 21:46:12 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ea5509112623045dbc4299ca8afccadb4dbd40fa7e9893503dbab2d9c4dacba`  
		Last Modified: Tue, 01 Sep 2026 21:46:13 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.10` - unknown; unknown

```console
$ docker pull composer@sha256:af8c1247947c8e09946dc11dd6e563ff532e8c653e4eba0413617e914a893ec7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6371c0be508364b6ec9b6e9513547653a37a47d82ffa0d06427a5f6f0ab2d54c`

```dockerfile
```

-	Layers:
	-	`sha256:6d60910c9a729bcdc3c3871574e0a7a2aed9e01479b5cf990db0c9dc3848540b`  
		Last Modified: Tue, 01 Sep 2026 21:46:12 GMT  
		Size: 2.2 MB (2181061 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13c6cc9f45f7d58b0ced2feca50631f1740542b618664b645ea0af53e95e4954`  
		Last Modified: Tue, 01 Sep 2026 21:46:12 GMT  
		Size: 30.6 KB (30650 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.10` - linux; ppc64le

```console
$ docker pull composer@sha256:c444a1292576887ce2772814011672115a035b7d5cc5afd3d2b4e0e6f0d88140
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81402265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7adfac50196b39a2d614dc1704fa0bc0c445289f6368f765e92526c233a4a9c5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

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
# Mon, 31 Aug 2026 20:53:44 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:53:44 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:45:25 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:45:25 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:45:25 GMT
ENV COMPOSER_VERSION=2.10.3
# Tue, 01 Sep 2026 21:45:25 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:45:26 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:45:26 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:45:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:45:26 GMT
CMD ["composer"]
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
	-	`sha256:2aab4bf4a081a48a0966800ab21cde1a512803dc2f996d78e3bb853fc98db6b8`  
		Last Modified: Mon, 31 Aug 2026 20:54:36 GMT  
		Size: 33.1 MB (33065362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2b28058a535ea2a40e17040db6b7c2b932d626c3f23c5902507609674922c03`  
		Last Modified: Mon, 31 Aug 2026 20:54:35 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba0e3174e64a18a401c8139b57a18af5c35fd5ee71a267bda81ac24dd8319c1`  
		Last Modified: Tue, 01 Sep 2026 21:45:48 GMT  
		Size: 1.1 MB (1089467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cd6177323c354578618d1b1a54bf199c08eb6782c5485fae1dd3c199c5796a1`  
		Last Modified: Tue, 01 Sep 2026 21:45:48 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ab64b6814f7b0026d1166fb6e156c076726cc00c2d82847808142bf0b2ee83d`  
		Last Modified: Tue, 01 Sep 2026 21:45:48 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.10` - unknown; unknown

```console
$ docker pull composer@sha256:589156411a1375f2070258855e4c47d7a776af9f57e712620055ab28d513da58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ad54e65b069ec9ce26499c40b609b5c29a726e8d7ebdef8c80011b89395b071`

```dockerfile
```

-	Layers:
	-	`sha256:cb2c1f82e57d34a44eb33ffaeee961698f79163ee04a124dad452a25f5036377`  
		Last Modified: Tue, 01 Sep 2026 21:45:47 GMT  
		Size: 2.2 MB (2181120 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e26be227119b6d6682533f3b2f9bf40ffaba351208a1ca8508b47a3f478ad3f9`  
		Last Modified: Tue, 01 Sep 2026 21:45:47 GMT  
		Size: 30.7 KB (30734 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.10` - linux; riscv64

```console
$ docker pull composer@sha256:6d5cee02dbd8b9783b13f230a3a9d3dd6ec1fe3f11573526cd73747b2e1cd857
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.5 MB (76541741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7ecd91a09ec93884df3606cb480c0c9ff84b23dc47637a7d8c402e3fdb18a8e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

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
ENV PHP_VERSION=8.5.9
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.9.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.9.tar.xz.asc
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_SHA256=0db7855f25bcd0ab1d592cdb35e284d6f6a5d2ae0f6f621122e364cc39b708f4
# Fri, 31 Jul 2026 15:38:43 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Fri, 31 Jul 2026 15:38:43 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:39:28 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 31 Jul 2026 16:39:28 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:39:33 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 31 Jul 2026 16:39:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 31 Jul 2026 16:39:33 GMT
CMD ["php" "-a"]
# Sun, 02 Aug 2026 10:55:39 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Sun, 02 Aug 2026 10:55:39 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Sun, 02 Aug 2026 10:58:55 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Sun, 02 Aug 2026 10:58:55 GMT
ENV COMPOSER_HOME=/tmp
# Sun, 02 Aug 2026 10:58:55 GMT
ENV COMPOSER_VERSION=2.10.2
# Sun, 02 Aug 2026 10:58:55 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Sun, 02 Aug 2026 10:58:55 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Sun, 02 Aug 2026 10:58:55 GMT
WORKDIR /app
# Sun, 02 Aug 2026 10:58:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 02 Aug 2026 10:58:55 GMT
CMD ["composer"]
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
	-	`sha256:a7df51e776d51b2c750565c684f30f4e06d10bc1259d74f1b631d6003d171e4b`  
		Last Modified: Fri, 31 Jul 2026 16:40:43 GMT  
		Size: 14.4 MB (14442258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3f96528e027eab4a684a72c0207e130ea36c05cb028c2922950d4da17bd89a3`  
		Last Modified: Fri, 31 Jul 2026 16:40:39 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f18160cc91e034e63bc4a72b9c1db1836d0d67b9474a0153348bfeecac1ca89d`  
		Last Modified: Fri, 31 Jul 2026 16:40:44 GMT  
		Size: 21.7 MB (21652533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:025f594674f41dd999ecbad66590b9827993dae0622ea94f865d56c349694fc2`  
		Last Modified: Fri, 31 Jul 2026 16:40:39 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af8860925b8736ecd5d8f6f30145567d508cfae3ad6134d3c365e0a88f49a8a9`  
		Last Modified: Fri, 31 Jul 2026 16:40:41 GMT  
		Size: 22.2 KB (22200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b1545ecdc4b4bdbd394e5907c38eb8ead7ecd7808723855cd3c176b9b0bb9d9`  
		Last Modified: Sun, 02 Aug 2026 11:00:33 GMT  
		Size: 32.2 MB (32161169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:069078bd1756a3fa0258ffe97461e01a39daa92ca4a890f0ef80ef1f14e2e4bf`  
		Last Modified: Sun, 02 Aug 2026 11:00:28 GMT  
		Size: 258.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6054ae93a79d698f5002e599e9d543691f10607558d9170cd3c6b67f84b4a3b4`  
		Last Modified: Sun, 02 Aug 2026 11:00:28 GMT  
		Size: 1.1 MB (1079653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f20d9c4dbfe26850b409cad6daf392dda93b635fbb13eb6f3090a330a9c1ea9d`  
		Last Modified: Sun, 02 Aug 2026 11:00:28 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ac9668cf042ce9dd288eddcd2dcfde1c8895ec5a0cd0a70ffb754ccaf12500e`  
		Last Modified: Sun, 02 Aug 2026 11:00:30 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.10` - unknown; unknown

```console
$ docker pull composer@sha256:cd48bf7c1669fdba253563bc3dfef898adec9639ec36a648cc8c1c4516a56e3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76d8d99a36f2f20f119df967161af2053c5e41b92e04cb149c08d532fc3c71fa`

```dockerfile
```

-	Layers:
	-	`sha256:6f09c18c9bfe350afa7cd352f79f8b716408f8cccdde705bc7495d23299a694d`  
		Last Modified: Sun, 02 Aug 2026 11:00:28 GMT  
		Size: 2.2 MB (2180738 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce590558e20578bb76edb3d5395dff43300d07530b967b8f8467d945a4b37ba2`  
		Last Modified: Sun, 02 Aug 2026 11:00:27 GMT  
		Size: 30.7 KB (30725 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.10` - linux; s390x

```console
$ docker pull composer@sha256:0fe91c1bec8b2a7c90e3b21cfa99dad7dd958fed8b9fea6697d771c41c4906ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79811770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36a8d4f70dad8578dcb15dafb5f32d55a3fb2a10754434ebe680f9c808ac580c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

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
# Tue, 01 Sep 2026 21:44:29 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Tue, 01 Sep 2026 21:44:29 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:44:49 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:44:49 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:44:49 GMT
ENV COMPOSER_VERSION=2.10.3
# Tue, 01 Sep 2026 21:44:49 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:44:50 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:44:50 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:44:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:44:50 GMT
CMD ["composer"]
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
	-	`sha256:6e692e9f384c488bd3f34ea4c5b20a8d4bce1e3257dbef6dee1f8617af78536f`  
		Last Modified: Tue, 01 Sep 2026 21:45:06 GMT  
		Size: 32.9 MB (32926127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12d3286804e5db7a7b5007ebcfe298bda1830a9f667c563e76e396e9d2144930`  
		Last Modified: Tue, 01 Sep 2026 21:45:05 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e575922f8362fe1bd82fcc01f1ef3183fc9d31a9cb9712382b6bcd89a302c1d`  
		Last Modified: Tue, 01 Sep 2026 21:45:05 GMT  
		Size: 1.1 MB (1086337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0de73cae5e8d4aef169c3bc618ca3892da413c0896e84d71a07a436185c8a039`  
		Last Modified: Tue, 01 Sep 2026 21:45:05 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aab672307fe69b715bd5171c2d950d005183ed0659204e02e241e27d0f25294`  
		Last Modified: Tue, 01 Sep 2026 21:45:03 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.10` - unknown; unknown

```console
$ docker pull composer@sha256:9a062f5998b0d9a462a4c6be44d6ea00cd39689d8fab880ae93f5c07d7d837b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbf3635e55d959c0042ad6d67c9afc722985e1737357144fe9ffcafdb9a079ab`

```dockerfile
```

-	Layers:
	-	`sha256:a7b64a23141a7cc687f961ae67dcb5c790af7dcd98343c0dadcf5bf88471d067`  
		Last Modified: Tue, 01 Sep 2026 21:45:05 GMT  
		Size: 2.2 MB (2180528 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64bdf96792033049543d2a20ac4bd0942a2119358915ff7ed44fdb00ebb081fe`  
		Last Modified: Tue, 01 Sep 2026 21:45:05 GMT  
		Size: 30.7 KB (30686 bytes)  
		MIME: application/vnd.in-toto+json

## `composer:2.10.3`

```console
$ docker pull composer@sha256:4d045ea9f71d5d111a95e608400da61d187e487adf9eaf2dfe068998a8d4f584
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

### `composer:2.10.3` - linux; amd64

```console
$ docker pull composer@sha256:0baf37e7f495f1c42cee6bdd9cf3e00e9435f193b512529e7c484d66c623773f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80167512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:204816b1c5b657cd8fe31ae0bca3daecdd370633c1a3952f6101860003ac8798`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 31 Aug 2026 19:12:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 31 Aug 2026 19:12:30 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 31 Aug 2026 19:12:30 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 31 Aug 2026 19:12:30 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_VERSION=8.5.10
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:12:33 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 31 Aug 2026 19:12:33 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:15:52 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 31 Aug 2026 19:15:52 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:15:53 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 31 Aug 2026 19:15:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 31 Aug 2026 19:15:53 GMT
CMD ["php" "-a"]
# Tue, 01 Sep 2026 21:45:56 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Tue, 01 Sep 2026 21:45:56 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:46:13 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:46:13 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:46:13 GMT
ENV COMPOSER_VERSION=2.10.3
# Tue, 01 Sep 2026 21:46:13 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:46:13 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:46:13 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:46:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:46:13 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8abfc15eb16e089ac0133588fc40e22868d0a07ccb1423d919804826c244bc9`  
		Last Modified: Mon, 31 Aug 2026 19:16:01 GMT  
		Size: 5.9 MB (5947457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd56ccb5211768a4e9e7ab043b8bb6f6c7b8f784c82338845b7cbf4b960c5c0c`  
		Last Modified: Mon, 31 Aug 2026 19:16:01 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61db10a066345ea6e76c588074ce538251b06050b519e3c73fd56021208db4a`  
		Last Modified: Mon, 31 Aug 2026 19:16:01 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a4613157ae3c90a66f322e617856593fda2e67d4f1e5e05696f1e93d7df6d32`  
		Last Modified: Mon, 31 Aug 2026 19:16:01 GMT  
		Size: 14.5 MB (14479187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2272599fb31695cff110b58d8b4222e7bf2b64b0abc4b4d59f2fa85e28f8cb0`  
		Last Modified: Mon, 31 Aug 2026 19:16:02 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3610922f636b31a392b957e7e7981d79bbf81f580b02013b34e4dca07d9c6e3d`  
		Last Modified: Mon, 31 Aug 2026 19:16:03 GMT  
		Size: 22.8 MB (22826438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23dc07157ef7d1dce21c40c9f43b30a69091e050123f90622d23b8578347cdb2`  
		Last Modified: Mon, 31 Aug 2026 19:16:02 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd58bb537f66a30a752d312bf1d5328e3970e9920f52af34fff4446481dfd221`  
		Last Modified: Mon, 31 Aug 2026 19:16:03 GMT  
		Size: 22.4 KB (22363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc8ae5cf961dc76a2f3ac4c799d76f32ec53afe34b16276a50c09952c5c3063`  
		Last Modified: Tue, 01 Sep 2026 21:46:23 GMT  
		Size: 32.0 MB (31957584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96a258d35ff873f2ecbbc52802b3c615ed94daee67860f7c9541958addec583d`  
		Last Modified: Tue, 01 Sep 2026 21:46:22 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2b224c93474b6222e5db7cc1c356eaf33b0a66486b70e47d15bb17baf5c113a`  
		Last Modified: Tue, 01 Sep 2026 21:46:22 GMT  
		Size: 1.1 MB (1083241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a747bac1a2637ae25dc98d65afa1fd0d343e529f1145b18c8e6b55b41938f0fe`  
		Last Modified: Tue, 01 Sep 2026 21:46:22 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1f5a0519ae078a357e650fb3f19e0f64c14b0b9279f23887f6bfa5c27c55425`  
		Last Modified: Tue, 01 Sep 2026 21:46:23 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.10.3` - unknown; unknown

```console
$ docker pull composer@sha256:b9d81bbd198906c8cdae257319bad4394a3c9d7aa90948b274630903b1a8d381
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:830dcf9a863639247547bea8329ecccede6589a455decd01d4eef626e56bbefc`

```dockerfile
```

-	Layers:
	-	`sha256:51125b5527e381319805d02c5e501547cf7f6b31e567ce33c8f9f9ca043fd4b6`  
		Last Modified: Tue, 01 Sep 2026 21:46:22 GMT  
		Size: 2.2 MB (2181272 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16a52fabfe585b256604dfdcd9893eb6341fd9abcad906421f99c115beefdea3`  
		Last Modified: Tue, 01 Sep 2026 21:46:22 GMT  
		Size: 30.7 KB (30686 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.10.3` - linux; arm variant v6

```console
$ docker pull composer@sha256:25e34d9a4dd89c8c7fc46adb513cd26c68bf976a059d35551cde7003fdea0daa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76127050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28cb8d3c2d88277db4f47cbe5a03e80960110be1e71795f1f1a662262d603b2a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 31 Aug 2026 19:04:31 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 31 Aug 2026 19:04:31 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 31 Aug 2026 19:04:31 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 31 Aug 2026 19:04:31 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_VERSION=8.5.10
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:04:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 31 Aug 2026 19:04:35 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:07:46 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 31 Aug 2026 19:07:46 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:07:47 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 31 Aug 2026 19:07:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 31 Aug 2026 19:07:47 GMT
CMD ["php" "-a"]
# Tue, 01 Sep 2026 21:45:14 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Tue, 01 Sep 2026 21:45:14 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:45:37 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:45:37 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:45:37 GMT
ENV COMPOSER_VERSION=2.10.3
# Tue, 01 Sep 2026 21:45:37 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:45:37 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:45:37 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:45:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:45:37 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:922ee89636e901fea2f5c487f74705079723794fb301264e988f16a67f52c53c`  
		Last Modified: Mon, 31 Aug 2026 19:07:53 GMT  
		Size: 5.5 MB (5537245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a058619bc927a491b96333ecf230846a23db58050c4fca62da7fab53aeaea035`  
		Last Modified: Mon, 31 Aug 2026 19:07:53 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fc0018a069a278dffd6f0cd484fc34e8f95df4f1d2f896f3264f21d917b9b5f`  
		Last Modified: Mon, 31 Aug 2026 19:07:53 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52cfb90d07aa96268c728b7a5ae182ad853d5f758f8b5822cd20e7f3a135339f`  
		Last Modified: Mon, 31 Aug 2026 19:07:54 GMT  
		Size: 14.5 MB (14479193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:993cb026ef05d536fbe556b746608fd69906cc9d2769dbe905b44ea02b5faad7`  
		Last Modified: Mon, 31 Aug 2026 19:07:54 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35f1752063083542501b1767e44871ad504f0ad0675452bac779d1c0d1c78956`  
		Last Modified: Mon, 31 Aug 2026 19:07:55 GMT  
		Size: 19.8 MB (19775411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e44d436d8a4ace17d0f64920016c18446e363640c08dd2e12b14f33b7c1c58e`  
		Last Modified: Mon, 31 Aug 2026 19:07:55 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a0f8762a6b11e5cfadcef85a63d529fc8e43af4ca5c9de3b76205b4c40fbbc1`  
		Last Modified: Mon, 31 Aug 2026 19:07:55 GMT  
		Size: 22.2 KB (22160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fc0b3db5c735311873e3cdc1fc7125a1ad4ac78698b452168a9a5f133cdcf1d`  
		Last Modified: Tue, 01 Sep 2026 21:45:45 GMT  
		Size: 31.7 MB (31671139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f561ca495f0168e58acb17dd162ab13a0bf508a5768dce9683d575881472021`  
		Last Modified: Tue, 01 Sep 2026 21:45:44 GMT  
		Size: 256.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad71437d15083dc3375815e9df8be92ee309e8ccd34f96e0e874a45e71460702`  
		Last Modified: Tue, 01 Sep 2026 21:45:44 GMT  
		Size: 1.1 MB (1083599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a860e9231d40d4131609817d59a11fc9f4f8924bdfb9f046f4a3311d0ed18255`  
		Last Modified: Tue, 01 Sep 2026 21:45:44 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3728486dac85639caeef6ff2e4a6de014e1193052f701e8245723f81bd40db21`  
		Last Modified: Tue, 01 Sep 2026 21:45:45 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.10.3` - unknown; unknown

```console
$ docker pull composer@sha256:d088d0cd162077d88388b5db109cedcd709edf4174f49577267aa247e19201f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 KB (30576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b739aba602b07544b2f8b062c081e17aca54de390b3c88b8726077e885fa56`

```dockerfile
```

-	Layers:
	-	`sha256:bc744e6db37eb4725bc66299d4a076e30500c21ee0c63e626a44d20ba3df5e7f`  
		Last Modified: Tue, 01 Sep 2026 21:45:44 GMT  
		Size: 30.6 KB (30576 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.10.3` - linux; arm variant v7

```console
$ docker pull composer@sha256:52d59c54177687e3a7a5d5ff91e13305dc4748a59e556f4bd44eecf0dbd73d18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (72956366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86c1a306b2a9137c60620f9218f1293ed27052ab0251b80ee320404115560b03`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 31 Aug 2026 19:13:44 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 31 Aug 2026 19:13:44 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 31 Aug 2026 19:13:44 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 31 Aug 2026 19:13:44 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_VERSION=8.5.10
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:13:48 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 31 Aug 2026 19:13:48 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:16:58 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 31 Aug 2026 19:16:58 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:16:58 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 31 Aug 2026 19:16:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 31 Aug 2026 19:16:58 GMT
CMD ["php" "-a"]
# Tue, 01 Sep 2026 21:46:11 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Tue, 01 Sep 2026 21:46:11 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:46:32 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:46:32 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:46:32 GMT
ENV COMPOSER_VERSION=2.10.3
# Tue, 01 Sep 2026 21:46:32 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:46:32 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:46:32 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:46:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:46:32 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47ec0186e8849bf6342857812c1be1ccbdcb4db7ae18275463b438b1b99fbc51`  
		Last Modified: Mon, 31 Aug 2026 19:17:05 GMT  
		Size: 5.2 MB (5185962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5085bab6afc0997d6dc08c9fb4e317283fc16eaf5587150865d4462cb18c06f3`  
		Last Modified: Mon, 31 Aug 2026 19:17:05 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b15a16ac3a9196b8c604e86c81cb93a69e70a33202a2e65205a003888f649ce`  
		Last Modified: Mon, 31 Aug 2026 19:17:05 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda25bba34254f5e409ab619746da7c0fe654f8cd8d3e5db679cd28f7ce539a9`  
		Last Modified: Mon, 31 Aug 2026 19:17:06 GMT  
		Size: 14.5 MB (14479201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f9271c657f30ec1784501ded1f343add3b628dbe3e1b773f1924061e43a0705`  
		Last Modified: Mon, 31 Aug 2026 19:17:06 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdfaf4840f022148001355960af137ef272bd044f70bd88a8d7ca8693db79bf8`  
		Last Modified: Mon, 31 Aug 2026 19:17:07 GMT  
		Size: 18.7 MB (18654299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1f90a49a1e427b1aee6f1e10e3e96443aabfef5ff7b744004b60d00ab328d70`  
		Last Modified: Mon, 31 Aug 2026 19:17:06 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:254b0043e8bfa4a61897d6a4a95691e4f7daef36d1a9f1ac5488a0097d1ab7ab`  
		Last Modified: Mon, 31 Aug 2026 19:17:07 GMT  
		Size: 22.2 KB (22165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552275889b70bd2706127ef42992457424550094aaed5a450752e863add21d8f`  
		Last Modified: Tue, 01 Sep 2026 21:46:42 GMT  
		Size: 30.3 MB (30275456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0fbb1cd8b16678f061fd023cb088bbb6b54ee533df3d05e3fa6f2affc676228`  
		Last Modified: Tue, 01 Sep 2026 21:46:41 GMT  
		Size: 256.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:431aab51a51c5915e0c043b1e619e05f38936295374c9e98bf07a9a4e9b255e3`  
		Last Modified: Tue, 01 Sep 2026 21:46:41 GMT  
		Size: 1.1 MB (1073817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d67ea02a4da3fcf65ca09dcaeaf26414d92355b02cbebcf3f3a895b3c2f5c8eb`  
		Last Modified: Tue, 01 Sep 2026 21:46:41 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af01a889e80fbdc2241b85badef91a215ddf6f46bcbdb20110b1fb0dbc1dde5d`  
		Last Modified: Tue, 01 Sep 2026 21:46:42 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.10.3` - unknown; unknown

```console
$ docker pull composer@sha256:f6dcbb0020e1ad7242a0475c972a3f2b42983a2133061bfb2551927de5cc8fb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74be4c56d9e95a154081c522fa603a82becb612b39135714da32eb194240e63c`

```dockerfile
```

-	Layers:
	-	`sha256:30a5df5f95fdaf8ba4464b27320ce618e580b36314e34840d0e41ef87ef94b26`  
		Last Modified: Tue, 01 Sep 2026 21:46:41 GMT  
		Size: 2.2 MB (2180937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8a4ad508a1202c0017828d8b73360d56cf45e924d650cacc671d7e12d61ee8c`  
		Last Modified: Tue, 01 Sep 2026 21:46:41 GMT  
		Size: 30.8 KB (30792 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.10.3` - linux; arm64 variant v8

```console
$ docker pull composer@sha256:70fe4b445fcdb28265da58cc5da155b8d64a5d583e66467e4e3d294bdb3d26ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80129281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bb69f1ebfc8275e3244e9adcc5129686f1fe7c272ba97a4c7ff514097a77450`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 31 Aug 2026 19:29:31 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 31 Aug 2026 19:29:31 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 31 Aug 2026 19:29:31 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 31 Aug 2026 19:29:31 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_VERSION=8.5.10
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:29:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 31 Aug 2026 19:29:34 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:32:55 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 31 Aug 2026 19:32:55 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:32:56 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 31 Aug 2026 19:32:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 31 Aug 2026 19:32:56 GMT
CMD ["php" "-a"]
# Tue, 01 Sep 2026 21:46:09 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Tue, 01 Sep 2026 21:46:09 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:46:28 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:46:28 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:46:28 GMT
ENV COMPOSER_VERSION=2.10.3
# Tue, 01 Sep 2026 21:46:28 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:46:28 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:46:28 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:46:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:46:28 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:984940d617d48d359815b38cb24c1f97c743e5fde096eac2bd6a7267b2111fa0`  
		Last Modified: Mon, 31 Aug 2026 19:33:04 GMT  
		Size: 6.3 MB (6257367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49cb5444430bc375da584793ca4f5ce67d09374e39f8b3b6612011797f52c009`  
		Last Modified: Mon, 31 Aug 2026 19:33:03 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4079740af5f25fa1205d7f1877400e1f5a6a66e0115cf47ee8f3547a3f3dbe7d`  
		Last Modified: Mon, 31 Aug 2026 19:33:03 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30d3a65159185a3265f510470cd22cdd3d492558d2f959a357b372ec889ee3d7`  
		Last Modified: Mon, 31 Aug 2026 19:33:04 GMT  
		Size: 14.5 MB (14479183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4adcbc802a6f40856dec178bafed6859d616898e928da0babd491597452f558b`  
		Last Modified: Mon, 31 Aug 2026 19:33:04 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb074f6cb93c5759763b582c40a57dc3b2035d70e29a3497cfd86dc152da96b`  
		Last Modified: Mon, 31 Aug 2026 19:33:05 GMT  
		Size: 22.0 MB (22002481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adc6e3e84771ea1ace5629d7a232ed7de5ea7a43aa1301d47f35d3ebb77b7a58`  
		Last Modified: Mon, 31 Aug 2026 19:33:05 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23e9c376283cad827910e85adfc17ccd299916351991d29896a368d01fae7faa`  
		Last Modified: Mon, 31 Aug 2026 19:33:05 GMT  
		Size: 22.2 KB (22202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fcef3e1436547055f6b81b293ac562e677a38192b228bd5f8f3897908e9e09e`  
		Last Modified: Tue, 01 Sep 2026 21:46:39 GMT  
		Size: 32.1 MB (32097846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4656bab49cbdb0b41d0d4400a06c0dceb551c2ac3a9b4f9525a9838c338be48`  
		Last Modified: Tue, 01 Sep 2026 21:46:38 GMT  
		Size: 259.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26ecfba2f4021c3830f605037b16ef04ed906a953de8aa3785fc3f9cf3ad12b7`  
		Last Modified: Tue, 01 Sep 2026 21:46:38 GMT  
		Size: 1.1 MB (1082308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96a39e14ea49c5bfefbf591d9a12a4b889afc6270e90de049e2b29637c1e493e`  
		Last Modified: Tue, 01 Sep 2026 21:46:38 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a886d5026bf0ec344eb77e3d4492d0c34468da7fb0fa87b70d1fa5327c3509e`  
		Last Modified: Tue, 01 Sep 2026 21:46:39 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.10.3` - unknown; unknown

```console
$ docker pull composer@sha256:f4b97ec624613bdd71a98697a371e9f32ce89518341be62f5ff34c941dd02b45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e440886cae31c1c1b1d665aac08fa697e9b0d1b1cf34b8d7b482ddb498b4db7`

```dockerfile
```

-	Layers:
	-	`sha256:7a430e5698a335ebfcd0c68ba9fb28450af8a7d695faa8cd77023b1b5247c65a`  
		Last Modified: Tue, 01 Sep 2026 21:46:38 GMT  
		Size: 2.2 MB (2180771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98e8396ddad0550a1dd6a2cb6d24b67914c094acc59de1ab3bb5744ceb743cbf`  
		Last Modified: Tue, 01 Sep 2026 21:46:38 GMT  
		Size: 30.8 KB (30820 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.10.3` - linux; 386

```console
$ docker pull composer@sha256:e93870949a1ff2f4e68377e736ce702c9bba9bf438eca02295e34fb40c7fa7cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80816341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85c29a1dd77629e5be8ccc09bd188cc496d438c9f489e00e30bc4c9d572ab7e9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 31 Aug 2026 19:05:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 31 Aug 2026 19:05:54 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 31 Aug 2026 19:05:54 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 31 Aug 2026 19:05:54 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_VERSION=8.5.10
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:05:57 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 31 Aug 2026 19:05:57 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:09:13 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 31 Aug 2026 19:09:13 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:09:14 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 31 Aug 2026 19:09:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 31 Aug 2026 19:09:14 GMT
CMD ["php" "-a"]
# Tue, 01 Sep 2026 21:45:45 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Tue, 01 Sep 2026 21:45:45 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:46:02 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:46:02 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:46:02 GMT
ENV COMPOSER_VERSION=2.10.3
# Tue, 01 Sep 2026 21:46:02 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:46:02 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:46:02 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:46:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:46:02 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38c550a21e0e25a500dd32e0c46f5e52b968214cdd1b1af018dac40a548fbedf`  
		Last Modified: Mon, 31 Aug 2026 19:09:22 GMT  
		Size: 5.8 MB (5793468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94c99880dc6dfa808b4cd1594e9c79c17746af44cb07100fa96588d4490e947f`  
		Last Modified: Mon, 31 Aug 2026 19:09:22 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a671bd089267098e6599ca92afbb1f13f32c925ac58baa864c73c70d5a64090a`  
		Last Modified: Mon, 31 Aug 2026 19:09:21 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64b86c50e53b0c123faabab45a3f06977972b0fdca3c5343e8a44c0ac330b06a`  
		Last Modified: Mon, 31 Aug 2026 19:09:23 GMT  
		Size: 14.5 MB (14479180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6983adc90c1459f0c9aeff6f0bb3fa21dcf3b4dbf1094c7e58b4eb88471b816`  
		Last Modified: Mon, 31 Aug 2026 19:09:23 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9b348ad7874760602d66e9ea26f6be2c0ef69fe7b3508d88b1f2e154362c14b`  
		Last Modified: Mon, 31 Aug 2026 19:09:24 GMT  
		Size: 23.3 MB (23278191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:782b9f03463f82f20404dc3e64643dffc65b397a6777c5c0e1b9368cb8778bfe`  
		Last Modified: Mon, 31 Aug 2026 19:09:23 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e335de470f1224722633cff72f7fa130b41cd6d7da51aa29ddca03de8f4d548c`  
		Last Modified: Mon, 31 Aug 2026 19:09:25 GMT  
		Size: 22.4 KB (22384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6205afce2fc70ff7d6d5724244577add1a652d9bcc95786bdb34a4770f4f84ec`  
		Last Modified: Tue, 01 Sep 2026 21:46:13 GMT  
		Size: 32.5 MB (32472646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:637b9cf907c5f64e88b11e6fbd8be8e62c19a87cdde37a9c152fde3e6cb04047`  
		Last Modified: Tue, 01 Sep 2026 21:46:12 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:091e1986d6236368bb01349ab95e6755563fda97c88926f7ac431afa6ffda485`  
		Last Modified: Tue, 01 Sep 2026 21:46:12 GMT  
		Size: 1.1 MB (1095476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d399f8e49a174703593540d55dc3df1be7cb6fc3c69e4a956ab8e0615c45c83`  
		Last Modified: Tue, 01 Sep 2026 21:46:12 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ea5509112623045dbc4299ca8afccadb4dbd40fa7e9893503dbab2d9c4dacba`  
		Last Modified: Tue, 01 Sep 2026 21:46:13 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.10.3` - unknown; unknown

```console
$ docker pull composer@sha256:af8c1247947c8e09946dc11dd6e563ff532e8c653e4eba0413617e914a893ec7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6371c0be508364b6ec9b6e9513547653a37a47d82ffa0d06427a5f6f0ab2d54c`

```dockerfile
```

-	Layers:
	-	`sha256:6d60910c9a729bcdc3c3871574e0a7a2aed9e01479b5cf990db0c9dc3848540b`  
		Last Modified: Tue, 01 Sep 2026 21:46:12 GMT  
		Size: 2.2 MB (2181061 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13c6cc9f45f7d58b0ced2feca50631f1740542b618664b645ea0af53e95e4954`  
		Last Modified: Tue, 01 Sep 2026 21:46:12 GMT  
		Size: 30.6 KB (30650 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.10.3` - linux; ppc64le

```console
$ docker pull composer@sha256:c444a1292576887ce2772814011672115a035b7d5cc5afd3d2b4e0e6f0d88140
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81402265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7adfac50196b39a2d614dc1704fa0bc0c445289f6368f765e92526c233a4a9c5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

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
# Mon, 31 Aug 2026 20:53:44 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:53:44 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:45:25 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:45:25 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:45:25 GMT
ENV COMPOSER_VERSION=2.10.3
# Tue, 01 Sep 2026 21:45:25 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:45:26 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:45:26 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:45:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:45:26 GMT
CMD ["composer"]
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
	-	`sha256:2aab4bf4a081a48a0966800ab21cde1a512803dc2f996d78e3bb853fc98db6b8`  
		Last Modified: Mon, 31 Aug 2026 20:54:36 GMT  
		Size: 33.1 MB (33065362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2b28058a535ea2a40e17040db6b7c2b932d626c3f23c5902507609674922c03`  
		Last Modified: Mon, 31 Aug 2026 20:54:35 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba0e3174e64a18a401c8139b57a18af5c35fd5ee71a267bda81ac24dd8319c1`  
		Last Modified: Tue, 01 Sep 2026 21:45:48 GMT  
		Size: 1.1 MB (1089467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cd6177323c354578618d1b1a54bf199c08eb6782c5485fae1dd3c199c5796a1`  
		Last Modified: Tue, 01 Sep 2026 21:45:48 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ab64b6814f7b0026d1166fb6e156c076726cc00c2d82847808142bf0b2ee83d`  
		Last Modified: Tue, 01 Sep 2026 21:45:48 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.10.3` - unknown; unknown

```console
$ docker pull composer@sha256:589156411a1375f2070258855e4c47d7a776af9f57e712620055ab28d513da58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ad54e65b069ec9ce26499c40b609b5c29a726e8d7ebdef8c80011b89395b071`

```dockerfile
```

-	Layers:
	-	`sha256:cb2c1f82e57d34a44eb33ffaeee961698f79163ee04a124dad452a25f5036377`  
		Last Modified: Tue, 01 Sep 2026 21:45:47 GMT  
		Size: 2.2 MB (2181120 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e26be227119b6d6682533f3b2f9bf40ffaba351208a1ca8508b47a3f478ad3f9`  
		Last Modified: Tue, 01 Sep 2026 21:45:47 GMT  
		Size: 30.7 KB (30734 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.10.3` - linux; s390x

```console
$ docker pull composer@sha256:0fe91c1bec8b2a7c90e3b21cfa99dad7dd958fed8b9fea6697d771c41c4906ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79811770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36a8d4f70dad8578dcb15dafb5f32d55a3fb2a10754434ebe680f9c808ac580c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

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
# Tue, 01 Sep 2026 21:44:29 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Tue, 01 Sep 2026 21:44:29 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:44:49 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:44:49 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:44:49 GMT
ENV COMPOSER_VERSION=2.10.3
# Tue, 01 Sep 2026 21:44:49 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:44:50 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:44:50 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:44:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:44:50 GMT
CMD ["composer"]
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
	-	`sha256:6e692e9f384c488bd3f34ea4c5b20a8d4bce1e3257dbef6dee1f8617af78536f`  
		Last Modified: Tue, 01 Sep 2026 21:45:06 GMT  
		Size: 32.9 MB (32926127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12d3286804e5db7a7b5007ebcfe298bda1830a9f667c563e76e396e9d2144930`  
		Last Modified: Tue, 01 Sep 2026 21:45:05 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e575922f8362fe1bd82fcc01f1ef3183fc9d31a9cb9712382b6bcd89a302c1d`  
		Last Modified: Tue, 01 Sep 2026 21:45:05 GMT  
		Size: 1.1 MB (1086337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0de73cae5e8d4aef169c3bc618ca3892da413c0896e84d71a07a436185c8a039`  
		Last Modified: Tue, 01 Sep 2026 21:45:05 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aab672307fe69b715bd5171c2d950d005183ed0659204e02e241e27d0f25294`  
		Last Modified: Tue, 01 Sep 2026 21:45:03 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.10.3` - unknown; unknown

```console
$ docker pull composer@sha256:9a062f5998b0d9a462a4c6be44d6ea00cd39689d8fab880ae93f5c07d7d837b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbf3635e55d959c0042ad6d67c9afc722985e1737357144fe9ffcafdb9a079ab`

```dockerfile
```

-	Layers:
	-	`sha256:a7b64a23141a7cc687f961ae67dcb5c790af7dcd98343c0dadcf5bf88471d067`  
		Last Modified: Tue, 01 Sep 2026 21:45:05 GMT  
		Size: 2.2 MB (2180528 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64bdf96792033049543d2a20ac4bd0942a2119358915ff7ed44fdb00ebb081fe`  
		Last Modified: Tue, 01 Sep 2026 21:45:05 GMT  
		Size: 30.7 KB (30686 bytes)  
		MIME: application/vnd.in-toto+json

## `composer:2.2`

```console
$ docker pull composer@sha256:3709882b17a67c0e887212453e5531a4d2f646e15da28458f044a606e59776f4
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
$ docker pull composer@sha256:8d693d1c82e80bda69b8e2e0fca5eaaba1c16ed603f27e88b34242fe053d0c24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.9 MB (79912701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cd5dc336c772a40b783a36404c780d37f5159080a253ab6a3b12a6682eb9b48`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 31 Aug 2026 19:12:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 31 Aug 2026 19:12:30 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 31 Aug 2026 19:12:30 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 31 Aug 2026 19:12:30 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_VERSION=8.5.10
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:12:33 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 31 Aug 2026 19:12:33 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:15:52 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 31 Aug 2026 19:15:52 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:15:53 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 31 Aug 2026 19:15:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 31 Aug 2026 19:15:53 GMT
CMD ["php" "-a"]
# Tue, 01 Sep 2026 21:45:56 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Tue, 01 Sep 2026 21:45:56 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:46:45 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:46:45 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:46:45 GMT
ENV COMPOSER_VERSION=2.2.30
# Tue, 01 Sep 2026 21:46:45 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:46:45 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:46:45 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:46:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:46:45 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8abfc15eb16e089ac0133588fc40e22868d0a07ccb1423d919804826c244bc9`  
		Last Modified: Mon, 31 Aug 2026 19:16:01 GMT  
		Size: 5.9 MB (5947457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd56ccb5211768a4e9e7ab043b8bb6f6c7b8f784c82338845b7cbf4b960c5c0c`  
		Last Modified: Mon, 31 Aug 2026 19:16:01 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61db10a066345ea6e76c588074ce538251b06050b519e3c73fd56021208db4a`  
		Last Modified: Mon, 31 Aug 2026 19:16:01 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a4613157ae3c90a66f322e617856593fda2e67d4f1e5e05696f1e93d7df6d32`  
		Last Modified: Mon, 31 Aug 2026 19:16:01 GMT  
		Size: 14.5 MB (14479187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2272599fb31695cff110b58d8b4222e7bf2b64b0abc4b4d59f2fa85e28f8cb0`  
		Last Modified: Mon, 31 Aug 2026 19:16:02 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3610922f636b31a392b957e7e7981d79bbf81f580b02013b34e4dca07d9c6e3d`  
		Last Modified: Mon, 31 Aug 2026 19:16:03 GMT  
		Size: 22.8 MB (22826438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23dc07157ef7d1dce21c40c9f43b30a69091e050123f90622d23b8578347cdb2`  
		Last Modified: Mon, 31 Aug 2026 19:16:02 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd58bb537f66a30a752d312bf1d5328e3970e9920f52af34fff4446481dfd221`  
		Last Modified: Mon, 31 Aug 2026 19:16:03 GMT  
		Size: 22.4 KB (22363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc8ae5cf961dc76a2f3ac4c799d76f32ec53afe34b16276a50c09952c5c3063`  
		Last Modified: Tue, 01 Sep 2026 21:46:23 GMT  
		Size: 32.0 MB (31957584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96a258d35ff873f2ecbbc52802b3c615ed94daee67860f7c9541958addec583d`  
		Last Modified: Tue, 01 Sep 2026 21:46:22 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:378452e8d0560b737432d45e3fddebd47e033b3eec0dfda55694ff7fd337b1ef`  
		Last Modified: Tue, 01 Sep 2026 21:46:51 GMT  
		Size: 828.4 KB (828430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe4dd2c1aa3e537664c76b579c2a34f490b9f0e77ce2d931778757810243fc35`  
		Last Modified: Tue, 01 Sep 2026 21:46:51 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:096273c5ee70e48d5cbcb1bff61e1e50fe9dd5af0970236043a40da217669844`  
		Last Modified: Tue, 01 Sep 2026 21:46:51 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2` - unknown; unknown

```console
$ docker pull composer@sha256:b50dd595fcbe4b20626a4721d3a084481dff29fb2b78826db82d9626b98287b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4a4ced591f9907075cb421496d39b2b4b776e733899f1e2630d6ea5e9a51494`

```dockerfile
```

-	Layers:
	-	`sha256:0cc3e22f49f07bf7a42e3f23df034cc4e0608151cefabc7aecc4ceaddfb98816`  
		Last Modified: Tue, 01 Sep 2026 21:46:51 GMT  
		Size: 2.2 MB (2180676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d74a4de6a524b2f1dd91be9e03db06d960985fa705a136becb95a6b84ab0f14d`  
		Last Modified: Tue, 01 Sep 2026 21:46:51 GMT  
		Size: 30.1 KB (30077 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.2` - linux; arm variant v6

```console
$ docker pull composer@sha256:ce7866756e1eb3e60e5d766e81425aca60bcaf14535a2334a746b1f212004c57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.9 MB (75872450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcfd51847860e9795ba799b0f7387169b72f7cf5625bf6b902455010a6b47056`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 31 Aug 2026 19:04:31 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 31 Aug 2026 19:04:31 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 31 Aug 2026 19:04:31 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 31 Aug 2026 19:04:31 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_VERSION=8.5.10
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:04:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 31 Aug 2026 19:04:35 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:07:46 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 31 Aug 2026 19:07:46 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:07:47 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 31 Aug 2026 19:07:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 31 Aug 2026 19:07:47 GMT
CMD ["php" "-a"]
# Tue, 01 Sep 2026 21:45:16 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Tue, 01 Sep 2026 21:45:16 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:45:39 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:45:39 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:45:39 GMT
ENV COMPOSER_VERSION=2.2.30
# Tue, 01 Sep 2026 21:45:39 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:45:39 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:45:39 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:45:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:45:39 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:922ee89636e901fea2f5c487f74705079723794fb301264e988f16a67f52c53c`  
		Last Modified: Mon, 31 Aug 2026 19:07:53 GMT  
		Size: 5.5 MB (5537245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a058619bc927a491b96333ecf230846a23db58050c4fca62da7fab53aeaea035`  
		Last Modified: Mon, 31 Aug 2026 19:07:53 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fc0018a069a278dffd6f0cd484fc34e8f95df4f1d2f896f3264f21d917b9b5f`  
		Last Modified: Mon, 31 Aug 2026 19:07:53 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52cfb90d07aa96268c728b7a5ae182ad853d5f758f8b5822cd20e7f3a135339f`  
		Last Modified: Mon, 31 Aug 2026 19:07:54 GMT  
		Size: 14.5 MB (14479193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:993cb026ef05d536fbe556b746608fd69906cc9d2769dbe905b44ea02b5faad7`  
		Last Modified: Mon, 31 Aug 2026 19:07:54 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35f1752063083542501b1767e44871ad504f0ad0675452bac779d1c0d1c78956`  
		Last Modified: Mon, 31 Aug 2026 19:07:55 GMT  
		Size: 19.8 MB (19775411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e44d436d8a4ace17d0f64920016c18446e363640c08dd2e12b14f33b7c1c58e`  
		Last Modified: Mon, 31 Aug 2026 19:07:55 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a0f8762a6b11e5cfadcef85a63d529fc8e43af4ca5c9de3b76205b4c40fbbc1`  
		Last Modified: Mon, 31 Aug 2026 19:07:55 GMT  
		Size: 22.2 KB (22160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd87c6a0984d6354cb54a4deeff402933779e9929ebc3304f60545c813449fc6`  
		Last Modified: Tue, 01 Sep 2026 21:45:47 GMT  
		Size: 31.7 MB (31671005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2294796b07f1df212b5460401dffdd5b5e668ccbc51de903071cb0a6bdfd1cfa`  
		Last Modified: Tue, 01 Sep 2026 21:45:46 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a493760cb5b0b11bc750d6afcd90d781e16983ba0750f57acff4dedbc27fd71`  
		Last Modified: Tue, 01 Sep 2026 21:45:46 GMT  
		Size: 829.1 KB (829131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a65d71a0c88b6aeb4bb1ec17a209514f68aeaf3be72994d45458969a342f080`  
		Last Modified: Tue, 01 Sep 2026 21:45:46 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:030b726e5e05e10fb639356c240300f19b28915875a1ef3131d84bc05a620647`  
		Last Modified: Tue, 01 Sep 2026 21:45:48 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2` - unknown; unknown

```console
$ docker pull composer@sha256:60e0eb7a3d90f827f1021f267406a7b929cfac54637d6592b2bec707c41cb6b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.0 KB (29953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ada78647525d9d8ffa92dfff08e388a98cc7eaa876dfa86bfa2da5ffa9e29519`

```dockerfile
```

-	Layers:
	-	`sha256:bbf3ace2c2f3ec1592d5436e680db675913183360aa9b3b52960394110c4dbbc`  
		Last Modified: Tue, 01 Sep 2026 21:45:46 GMT  
		Size: 30.0 KB (29953 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.2` - linux; arm variant v7

```console
$ docker pull composer@sha256:3d2b8416d528ece962d3978ff6c743e354a086e4add63dff5154af8094202954
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.7 MB (72701829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6190feead762dfefc017d468e95585d33f61e7eb6d08262a085dea3022de5d33`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 31 Aug 2026 19:13:44 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 31 Aug 2026 19:13:44 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 31 Aug 2026 19:13:44 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 31 Aug 2026 19:13:44 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_VERSION=8.5.10
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:13:48 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 31 Aug 2026 19:13:48 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:16:58 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 31 Aug 2026 19:16:58 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:16:58 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 31 Aug 2026 19:16:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 31 Aug 2026 19:16:58 GMT
CMD ["php" "-a"]
# Tue, 01 Sep 2026 21:46:12 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Tue, 01 Sep 2026 21:46:12 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:46:34 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:46:34 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:46:34 GMT
ENV COMPOSER_VERSION=2.2.30
# Tue, 01 Sep 2026 21:46:34 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:46:34 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:46:34 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:46:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:46:34 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47ec0186e8849bf6342857812c1be1ccbdcb4db7ae18275463b438b1b99fbc51`  
		Last Modified: Mon, 31 Aug 2026 19:17:05 GMT  
		Size: 5.2 MB (5185962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5085bab6afc0997d6dc08c9fb4e317283fc16eaf5587150865d4462cb18c06f3`  
		Last Modified: Mon, 31 Aug 2026 19:17:05 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b15a16ac3a9196b8c604e86c81cb93a69e70a33202a2e65205a003888f649ce`  
		Last Modified: Mon, 31 Aug 2026 19:17:05 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda25bba34254f5e409ab619746da7c0fe654f8cd8d3e5db679cd28f7ce539a9`  
		Last Modified: Mon, 31 Aug 2026 19:17:06 GMT  
		Size: 14.5 MB (14479201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f9271c657f30ec1784501ded1f343add3b628dbe3e1b773f1924061e43a0705`  
		Last Modified: Mon, 31 Aug 2026 19:17:06 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdfaf4840f022148001355960af137ef272bd044f70bd88a8d7ca8693db79bf8`  
		Last Modified: Mon, 31 Aug 2026 19:17:07 GMT  
		Size: 18.7 MB (18654299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1f90a49a1e427b1aee6f1e10e3e96443aabfef5ff7b744004b60d00ab328d70`  
		Last Modified: Mon, 31 Aug 2026 19:17:06 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:254b0043e8bfa4a61897d6a4a95691e4f7daef36d1a9f1ac5488a0097d1ab7ab`  
		Last Modified: Mon, 31 Aug 2026 19:17:07 GMT  
		Size: 22.2 KB (22165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e456f5775646cde61bc40a60c0a735d277d7d1e05db6fc19f7e55f2d4be5d38`  
		Last Modified: Tue, 01 Sep 2026 21:46:44 GMT  
		Size: 30.3 MB (30275510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80c1e1d3df81ecca4eada77fb039a5da05172acd74adcbdd424e5acf8e7c1115`  
		Last Modified: Tue, 01 Sep 2026 21:46:44 GMT  
		Size: 258.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66c5813de2b7b02a122c14f1c034834526dd71b583eb40c3f5c385da6700bcd`  
		Last Modified: Tue, 01 Sep 2026 21:46:44 GMT  
		Size: 819.2 KB (819226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b218188bf5f38e6ef9dc2207f524fb0fb9011005009eb2fccf453f70d7814a72`  
		Last Modified: Tue, 01 Sep 2026 21:46:44 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ddedde3c7862af28af19d88b6d91ea836c7c184c339c0d56489485d64b8bf74`  
		Last Modified: Tue, 01 Sep 2026 21:46:45 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2` - unknown; unknown

```console
$ docker pull composer@sha256:5e5d54621a1f23e8ccdd3077009724c9b735d1357e589b961a462b38b0aff4a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b245d273025970690c3e6e4f8db380b37cc74bb37863dcaa7153b32fb7166ce4`

```dockerfile
```

-	Layers:
	-	`sha256:b32494fb1b1212c41ab2f44450c3caf2bd8591d1fb8e76554b6b5f3b3e8af447`  
		Last Modified: Tue, 01 Sep 2026 21:46:43 GMT  
		Size: 2.2 MB (2180325 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2178cb8f1daa30d1ed14e1267ee7e4e4f55fc216f5144c93504738363f61e54`  
		Last Modified: Tue, 01 Sep 2026 21:46:43 GMT  
		Size: 30.2 KB (30168 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.2` - linux; arm64 variant v8

```console
$ docker pull composer@sha256:c77ce08065252d3d7c9cdb3c97529326973c0abc611a61e65fb91682fe19be3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.9 MB (79874341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5a3acdda92702974458d32af2202b24ac452a9f1130e27f811c953060aced33`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 31 Aug 2026 19:29:31 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 31 Aug 2026 19:29:31 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 31 Aug 2026 19:29:31 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 31 Aug 2026 19:29:31 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_VERSION=8.5.10
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:29:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 31 Aug 2026 19:29:34 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:32:55 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 31 Aug 2026 19:32:55 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:32:56 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 31 Aug 2026 19:32:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 31 Aug 2026 19:32:56 GMT
CMD ["php" "-a"]
# Tue, 01 Sep 2026 21:46:09 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Tue, 01 Sep 2026 21:46:09 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:47:03 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:47:03 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:47:03 GMT
ENV COMPOSER_VERSION=2.2.30
# Tue, 01 Sep 2026 21:47:03 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:47:03 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:47:03 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:47:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:47:03 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:984940d617d48d359815b38cb24c1f97c743e5fde096eac2bd6a7267b2111fa0`  
		Last Modified: Mon, 31 Aug 2026 19:33:04 GMT  
		Size: 6.3 MB (6257367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49cb5444430bc375da584793ca4f5ce67d09374e39f8b3b6612011797f52c009`  
		Last Modified: Mon, 31 Aug 2026 19:33:03 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4079740af5f25fa1205d7f1877400e1f5a6a66e0115cf47ee8f3547a3f3dbe7d`  
		Last Modified: Mon, 31 Aug 2026 19:33:03 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30d3a65159185a3265f510470cd22cdd3d492558d2f959a357b372ec889ee3d7`  
		Last Modified: Mon, 31 Aug 2026 19:33:04 GMT  
		Size: 14.5 MB (14479183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4adcbc802a6f40856dec178bafed6859d616898e928da0babd491597452f558b`  
		Last Modified: Mon, 31 Aug 2026 19:33:04 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb074f6cb93c5759763b582c40a57dc3b2035d70e29a3497cfd86dc152da96b`  
		Last Modified: Mon, 31 Aug 2026 19:33:05 GMT  
		Size: 22.0 MB (22002481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adc6e3e84771ea1ace5629d7a232ed7de5ea7a43aa1301d47f35d3ebb77b7a58`  
		Last Modified: Mon, 31 Aug 2026 19:33:05 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23e9c376283cad827910e85adfc17ccd299916351991d29896a368d01fae7faa`  
		Last Modified: Mon, 31 Aug 2026 19:33:05 GMT  
		Size: 22.2 KB (22202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fcef3e1436547055f6b81b293ac562e677a38192b228bd5f8f3897908e9e09e`  
		Last Modified: Tue, 01 Sep 2026 21:46:39 GMT  
		Size: 32.1 MB (32097846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4656bab49cbdb0b41d0d4400a06c0dceb551c2ac3a9b4f9525a9838c338be48`  
		Last Modified: Tue, 01 Sep 2026 21:46:38 GMT  
		Size: 259.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebfccb19188958aedd864f85e0b89db602c9fcbadd8ead0b5d8dfbe45842c654`  
		Last Modified: Tue, 01 Sep 2026 21:47:10 GMT  
		Size: 827.4 KB (827367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce9bccc07f6efde2a89fa45a33026e6d670f06e87c76f05f55f3b06be5c978b3`  
		Last Modified: Tue, 01 Sep 2026 21:47:09 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf23bc9d73c054ad8624cb9afd567ffed89a27fd41823d92b69fad7ef2445f37`  
		Last Modified: Tue, 01 Sep 2026 21:47:09 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2` - unknown; unknown

```console
$ docker pull composer@sha256:78243afa896a94bc8335efd629f90f46f943971a4ccad38b8f9b5a2447035007
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41d34a8548742125ed71440fe6a10fc020fa7d9f8614f39f9c7bc72e95954dd5`

```dockerfile
```

-	Layers:
	-	`sha256:93b7996c17a5a27b656b69a1739a8af2a21bf978867af7b669835127830de0ea`  
		Last Modified: Tue, 01 Sep 2026 21:47:09 GMT  
		Size: 2.2 MB (2180151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6655264b658ab73d9867f2b211cb9dde3b6034dfbd81fe7faa1196a7df5f31b`  
		Last Modified: Tue, 01 Sep 2026 21:47:09 GMT  
		Size: 30.2 KB (30187 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.2` - linux; 386

```console
$ docker pull composer@sha256:e2a83c0d24a000899ec531b1cfcfbcc964fc70d5cd05f5c691474eb5ccfa35bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80562074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cb3e60315822d3205d9a78e1fde50eb257ff42a5514bc925e8cdc0eb4af40ef`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 31 Aug 2026 19:05:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 31 Aug 2026 19:05:54 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 31 Aug 2026 19:05:54 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 31 Aug 2026 19:05:54 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_VERSION=8.5.10
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:05:57 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 31 Aug 2026 19:05:57 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:09:13 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 31 Aug 2026 19:09:13 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:09:14 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 31 Aug 2026 19:09:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 31 Aug 2026 19:09:14 GMT
CMD ["php" "-a"]
# Tue, 01 Sep 2026 21:45:45 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Tue, 01 Sep 2026 21:45:45 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:46:36 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:46:36 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:46:36 GMT
ENV COMPOSER_VERSION=2.2.30
# Tue, 01 Sep 2026 21:46:36 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:46:36 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:46:36 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:46:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:46:36 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38c550a21e0e25a500dd32e0c46f5e52b968214cdd1b1af018dac40a548fbedf`  
		Last Modified: Mon, 31 Aug 2026 19:09:22 GMT  
		Size: 5.8 MB (5793468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94c99880dc6dfa808b4cd1594e9c79c17746af44cb07100fa96588d4490e947f`  
		Last Modified: Mon, 31 Aug 2026 19:09:22 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a671bd089267098e6599ca92afbb1f13f32c925ac58baa864c73c70d5a64090a`  
		Last Modified: Mon, 31 Aug 2026 19:09:21 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64b86c50e53b0c123faabab45a3f06977972b0fdca3c5343e8a44c0ac330b06a`  
		Last Modified: Mon, 31 Aug 2026 19:09:23 GMT  
		Size: 14.5 MB (14479180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6983adc90c1459f0c9aeff6f0bb3fa21dcf3b4dbf1094c7e58b4eb88471b816`  
		Last Modified: Mon, 31 Aug 2026 19:09:23 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9b348ad7874760602d66e9ea26f6be2c0ef69fe7b3508d88b1f2e154362c14b`  
		Last Modified: Mon, 31 Aug 2026 19:09:24 GMT  
		Size: 23.3 MB (23278191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:782b9f03463f82f20404dc3e64643dffc65b397a6777c5c0e1b9368cb8778bfe`  
		Last Modified: Mon, 31 Aug 2026 19:09:23 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e335de470f1224722633cff72f7fa130b41cd6d7da51aa29ddca03de8f4d548c`  
		Last Modified: Mon, 31 Aug 2026 19:09:25 GMT  
		Size: 22.4 KB (22384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6205afce2fc70ff7d6d5724244577add1a652d9bcc95786bdb34a4770f4f84ec`  
		Last Modified: Tue, 01 Sep 2026 21:46:13 GMT  
		Size: 32.5 MB (32472646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:637b9cf907c5f64e88b11e6fbd8be8e62c19a87cdde37a9c152fde3e6cb04047`  
		Last Modified: Tue, 01 Sep 2026 21:46:12 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb5952f06fc4c0ed4fa02388c915fd6f0f9fc718d66f298f26e01fc87ce162e4`  
		Last Modified: Tue, 01 Sep 2026 21:46:42 GMT  
		Size: 841.2 KB (841209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bff8b5eaf94936d57d5123ac824208582564a42085154a7d8f375f3c312c773b`  
		Last Modified: Tue, 01 Sep 2026 21:46:42 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2e9bdc1e13dfd88a6364aad3ff839861239d4d86a2fc39790c519175709d32b`  
		Last Modified: Tue, 01 Sep 2026 21:46:42 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2` - unknown; unknown

```console
$ docker pull composer@sha256:6c82fa7bb1b279a3ad7790d5740ebffdf8446ae4272e6b832dc73dfdfcc94e04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eeca11c2be50d6d65c173a7e2b016ae015ad5432fcdbd1ebc77cdb1dfeb0bfe`

```dockerfile
```

-	Layers:
	-	`sha256:f603e10d08653c30828955b57952f67ce9c6a2af2b7097f34fc9a9f8a51fe8c5`  
		Last Modified: Tue, 01 Sep 2026 21:46:42 GMT  
		Size: 2.2 MB (2180475 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d6262cf5e9504566e45e9037605d7edf252c594d0c17cf864950da9cae77b7b`  
		Last Modified: Tue, 01 Sep 2026 21:46:41 GMT  
		Size: 30.1 KB (30052 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.2` - linux; ppc64le

```console
$ docker pull composer@sha256:dd4cc9ecb5cd8f30c8b25994128cae0d0473f061214a4462c6cc293a4fefae24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.1 MB (81147603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c415dae4f62c5b2bf80cbc9a0411accae69d0be96c12e51b1856b97a72f8d64`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

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
# Mon, 31 Aug 2026 20:53:44 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:53:44 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:45:25 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:45:25 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:45:25 GMT
ENV COMPOSER_VERSION=2.2.30
# Tue, 01 Sep 2026 21:45:25 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:45:26 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:45:26 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:45:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:45:26 GMT
CMD ["composer"]
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
	-	`sha256:2aab4bf4a081a48a0966800ab21cde1a512803dc2f996d78e3bb853fc98db6b8`  
		Last Modified: Mon, 31 Aug 2026 20:54:36 GMT  
		Size: 33.1 MB (33065362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2b28058a535ea2a40e17040db6b7c2b932d626c3f23c5902507609674922c03`  
		Last Modified: Mon, 31 Aug 2026 20:54:35 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1eb13d26b007d8a521f5cb00a09aa8abe7984196e01b7348137ec77026f2342`  
		Last Modified: Tue, 01 Sep 2026 21:45:48 GMT  
		Size: 834.8 KB (834803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d429ba6630aea31e6be5093ffce9737c78be2957b2312ae22c724c03df8ec73c`  
		Last Modified: Tue, 01 Sep 2026 21:45:48 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ab64b6814f7b0026d1166fb6e156c076726cc00c2d82847808142bf0b2ee83d`  
		Last Modified: Tue, 01 Sep 2026 21:45:48 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2` - unknown; unknown

```console
$ docker pull composer@sha256:ba38d4fd3361e1fa149363e8dd443466fc093e1caa38055860a89e30cc85fd0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f742a1aa8000e689132b50216a9d2d1e186e9faabc1e17d64959d26009039a2`

```dockerfile
```

-	Layers:
	-	`sha256:58f055deaa5326659de3ae95c7deedd095128413915c0ff5fadd05d0aa0361ad`  
		Last Modified: Tue, 01 Sep 2026 21:45:47 GMT  
		Size: 2.2 MB (2180512 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e111adb90710d922b2316cc4ebfd685c98175962fe7d5ee5df9da71855e0432`  
		Last Modified: Tue, 01 Sep 2026 21:45:47 GMT  
		Size: 30.1 KB (30114 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.2` - linux; riscv64

```console
$ docker pull composer@sha256:dfec691a3f4e2d67511fb961b6be5618096ae4e27c794d4086408e96a764973a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.3 MB (76286923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:175b7339380fadbbd978c77181b1906600ffd520eb5af24363d3bec60aa6f1a5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

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
ENV PHP_VERSION=8.5.9
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.9.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.9.tar.xz.asc
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_SHA256=0db7855f25bcd0ab1d592cdb35e284d6f6a5d2ae0f6f621122e364cc39b708f4
# Fri, 31 Jul 2026 15:38:43 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Fri, 31 Jul 2026 15:38:43 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:39:28 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 31 Jul 2026 16:39:28 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:39:33 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 31 Jul 2026 16:39:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 31 Jul 2026 16:39:33 GMT
CMD ["php" "-a"]
# Sun, 02 Aug 2026 10:55:39 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Sun, 02 Aug 2026 10:55:39 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Sun, 02 Aug 2026 11:04:13 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Sun, 02 Aug 2026 11:04:13 GMT
ENV COMPOSER_HOME=/tmp
# Sun, 02 Aug 2026 11:04:13 GMT
ENV COMPOSER_VERSION=2.2.29
# Sun, 02 Aug 2026 11:04:13 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Sun, 02 Aug 2026 11:04:13 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Sun, 02 Aug 2026 11:04:13 GMT
WORKDIR /app
# Sun, 02 Aug 2026 11:04:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 02 Aug 2026 11:04:13 GMT
CMD ["composer"]
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
	-	`sha256:a7df51e776d51b2c750565c684f30f4e06d10bc1259d74f1b631d6003d171e4b`  
		Last Modified: Fri, 31 Jul 2026 16:40:43 GMT  
		Size: 14.4 MB (14442258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3f96528e027eab4a684a72c0207e130ea36c05cb028c2922950d4da17bd89a3`  
		Last Modified: Fri, 31 Jul 2026 16:40:39 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f18160cc91e034e63bc4a72b9c1db1836d0d67b9474a0153348bfeecac1ca89d`  
		Last Modified: Fri, 31 Jul 2026 16:40:44 GMT  
		Size: 21.7 MB (21652533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:025f594674f41dd999ecbad66590b9827993dae0622ea94f865d56c349694fc2`  
		Last Modified: Fri, 31 Jul 2026 16:40:39 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af8860925b8736ecd5d8f6f30145567d508cfae3ad6134d3c365e0a88f49a8a9`  
		Last Modified: Fri, 31 Jul 2026 16:40:41 GMT  
		Size: 22.2 KB (22200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b1545ecdc4b4bdbd394e5907c38eb8ead7ecd7808723855cd3c176b9b0bb9d9`  
		Last Modified: Sun, 02 Aug 2026 11:00:33 GMT  
		Size: 32.2 MB (32161169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:069078bd1756a3fa0258ffe97461e01a39daa92ca4a890f0ef80ef1f14e2e4bf`  
		Last Modified: Sun, 02 Aug 2026 11:00:28 GMT  
		Size: 258.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cce6824dbddcf65e2a40ef9ed568fe189154a52b328ab2c7527d36ec5f2263fb`  
		Last Modified: Sun, 02 Aug 2026 11:05:16 GMT  
		Size: 824.8 KB (824838 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c846436afe201d11720dfc66a00360b44ccdc817ee4bc7bef0bdbf9ca04b6ef`  
		Last Modified: Sun, 02 Aug 2026 11:05:16 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86f02935dd01d2406b99a7dffa3333706c57d373cd863f61d1addd73c3d6b3f7`  
		Last Modified: Sun, 02 Aug 2026 11:05:16 GMT  
		Size: 91.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2` - unknown; unknown

```console
$ docker pull composer@sha256:220613994f61eadfbdac02ecc881b89f1c90c5b73601e0d652aa6e1e8acc075c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210235 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:648e9c53c444780da190f39208d20993eaa457c3bd02f132472c7cd4940a9717`

```dockerfile
```

-	Layers:
	-	`sha256:14072746993172e9272c07411d9e465d6984092efff8e10932907a873d6925ea`  
		Last Modified: Sun, 02 Aug 2026 11:05:16 GMT  
		Size: 2.2 MB (2180130 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d234783a31fe0c18cc7a800ad6e6daa321c72354cc26342f9194918e347064d4`  
		Last Modified: Sun, 02 Aug 2026 11:05:15 GMT  
		Size: 30.1 KB (30105 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.2` - linux; s390x

```console
$ docker pull composer@sha256:71866ebd38c23497c9ddf90cd08728efc3ef4392cc93becae8383ae2be8cea81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79556630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95bcad9cc7b084a9d16e7bf7fce0f0fc44b8508d3070909edbc21f87540997a0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

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
# Mon, 31 Aug 2026 20:14:31 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:14:31 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:44:50 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:44:50 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:44:50 GMT
ENV COMPOSER_VERSION=2.2.30
# Tue, 01 Sep 2026 21:44:50 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:44:50 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:44:50 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:44:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:44:50 GMT
CMD ["composer"]
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
	-	`sha256:4f7800916e1a0f5d412e56cb8f39c97028445975957d06de36e1960620678edf`  
		Last Modified: Mon, 31 Aug 2026 20:15:10 GMT  
		Size: 32.9 MB (32925605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0100f1914c0689db6f12c5eef7ae88301e33a367b4232c97fa41ad71ca2bb6dd`  
		Last Modified: Mon, 31 Aug 2026 20:15:09 GMT  
		Size: 258.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbd322496d247052f25071c6f3b32a2f9ae23847103abacc5d0f65f0ad930e0f`  
		Last Modified: Tue, 01 Sep 2026 21:45:03 GMT  
		Size: 831.7 KB (831718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8c0c55d44d179404d3af1de5c3ecc76375aabe48202980823823ff5297eac8b`  
		Last Modified: Tue, 01 Sep 2026 21:45:03 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aab672307fe69b715bd5171c2d950d005183ed0659204e02e241e27d0f25294`  
		Last Modified: Tue, 01 Sep 2026 21:45:03 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2` - unknown; unknown

```console
$ docker pull composer@sha256:83eb08a073d4dc8000053c315f0f2b3bc1dc683dc56358e947f833151c5d7475
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e9ed9630d08634bacbc5b90a1756702fd92747241098419a02fe9ea5ce0e84a`

```dockerfile
```

-	Layers:
	-	`sha256:98481ebc582fced01113c87e10322ef90f298a0a63b742ee62e6deccaba77116`  
		Last Modified: Tue, 01 Sep 2026 21:45:03 GMT  
		Size: 2.2 MB (2179932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a1b0c29ad2b2c9ac90062115e21f542d6a3b8069c013b6a6986541e267b79f9`  
		Last Modified: Tue, 01 Sep 2026 21:45:03 GMT  
		Size: 30.1 KB (30078 bytes)  
		MIME: application/vnd.in-toto+json

## `composer:2.2.30`

```console
$ docker pull composer@sha256:cb48091c951e5e52b15f199a79c08b7b41d80906138e2c09a3460f38d24b1307
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

### `composer:2.2.30` - linux; amd64

```console
$ docker pull composer@sha256:8d693d1c82e80bda69b8e2e0fca5eaaba1c16ed603f27e88b34242fe053d0c24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.9 MB (79912701 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4cd5dc336c772a40b783a36404c780d37f5159080a253ab6a3b12a6682eb9b48`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 31 Aug 2026 19:12:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 31 Aug 2026 19:12:30 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 31 Aug 2026 19:12:30 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 31 Aug 2026 19:12:30 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_VERSION=8.5.10
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:12:33 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 31 Aug 2026 19:12:33 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:15:52 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 31 Aug 2026 19:15:52 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:15:53 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 31 Aug 2026 19:15:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 31 Aug 2026 19:15:53 GMT
CMD ["php" "-a"]
# Tue, 01 Sep 2026 21:45:56 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Tue, 01 Sep 2026 21:45:56 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:46:45 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:46:45 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:46:45 GMT
ENV COMPOSER_VERSION=2.2.30
# Tue, 01 Sep 2026 21:46:45 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:46:45 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:46:45 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:46:45 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:46:45 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8abfc15eb16e089ac0133588fc40e22868d0a07ccb1423d919804826c244bc9`  
		Last Modified: Mon, 31 Aug 2026 19:16:01 GMT  
		Size: 5.9 MB (5947457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd56ccb5211768a4e9e7ab043b8bb6f6c7b8f784c82338845b7cbf4b960c5c0c`  
		Last Modified: Mon, 31 Aug 2026 19:16:01 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61db10a066345ea6e76c588074ce538251b06050b519e3c73fd56021208db4a`  
		Last Modified: Mon, 31 Aug 2026 19:16:01 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a4613157ae3c90a66f322e617856593fda2e67d4f1e5e05696f1e93d7df6d32`  
		Last Modified: Mon, 31 Aug 2026 19:16:01 GMT  
		Size: 14.5 MB (14479187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2272599fb31695cff110b58d8b4222e7bf2b64b0abc4b4d59f2fa85e28f8cb0`  
		Last Modified: Mon, 31 Aug 2026 19:16:02 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3610922f636b31a392b957e7e7981d79bbf81f580b02013b34e4dca07d9c6e3d`  
		Last Modified: Mon, 31 Aug 2026 19:16:03 GMT  
		Size: 22.8 MB (22826438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23dc07157ef7d1dce21c40c9f43b30a69091e050123f90622d23b8578347cdb2`  
		Last Modified: Mon, 31 Aug 2026 19:16:02 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd58bb537f66a30a752d312bf1d5328e3970e9920f52af34fff4446481dfd221`  
		Last Modified: Mon, 31 Aug 2026 19:16:03 GMT  
		Size: 22.4 KB (22363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc8ae5cf961dc76a2f3ac4c799d76f32ec53afe34b16276a50c09952c5c3063`  
		Last Modified: Tue, 01 Sep 2026 21:46:23 GMT  
		Size: 32.0 MB (31957584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96a258d35ff873f2ecbbc52802b3c615ed94daee67860f7c9541958addec583d`  
		Last Modified: Tue, 01 Sep 2026 21:46:22 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:378452e8d0560b737432d45e3fddebd47e033b3eec0dfda55694ff7fd337b1ef`  
		Last Modified: Tue, 01 Sep 2026 21:46:51 GMT  
		Size: 828.4 KB (828430 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe4dd2c1aa3e537664c76b579c2a34f490b9f0e77ce2d931778757810243fc35`  
		Last Modified: Tue, 01 Sep 2026 21:46:51 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:096273c5ee70e48d5cbcb1bff61e1e50fe9dd5af0970236043a40da217669844`  
		Last Modified: Tue, 01 Sep 2026 21:46:51 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2.30` - unknown; unknown

```console
$ docker pull composer@sha256:b50dd595fcbe4b20626a4721d3a084481dff29fb2b78826db82d9626b98287b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4a4ced591f9907075cb421496d39b2b4b776e733899f1e2630d6ea5e9a51494`

```dockerfile
```

-	Layers:
	-	`sha256:0cc3e22f49f07bf7a42e3f23df034cc4e0608151cefabc7aecc4ceaddfb98816`  
		Last Modified: Tue, 01 Sep 2026 21:46:51 GMT  
		Size: 2.2 MB (2180676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d74a4de6a524b2f1dd91be9e03db06d960985fa705a136becb95a6b84ab0f14d`  
		Last Modified: Tue, 01 Sep 2026 21:46:51 GMT  
		Size: 30.1 KB (30077 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.2.30` - linux; arm variant v6

```console
$ docker pull composer@sha256:ce7866756e1eb3e60e5d766e81425aca60bcaf14535a2334a746b1f212004c57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.9 MB (75872450 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dcfd51847860e9795ba799b0f7387169b72f7cf5625bf6b902455010a6b47056`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 31 Aug 2026 19:04:31 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 31 Aug 2026 19:04:31 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 31 Aug 2026 19:04:31 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 31 Aug 2026 19:04:31 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_VERSION=8.5.10
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:04:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 31 Aug 2026 19:04:35 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:07:46 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 31 Aug 2026 19:07:46 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:07:47 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 31 Aug 2026 19:07:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 31 Aug 2026 19:07:47 GMT
CMD ["php" "-a"]
# Tue, 01 Sep 2026 21:45:16 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Tue, 01 Sep 2026 21:45:16 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:45:39 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:45:39 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:45:39 GMT
ENV COMPOSER_VERSION=2.2.30
# Tue, 01 Sep 2026 21:45:39 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:45:39 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:45:39 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:45:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:45:39 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:922ee89636e901fea2f5c487f74705079723794fb301264e988f16a67f52c53c`  
		Last Modified: Mon, 31 Aug 2026 19:07:53 GMT  
		Size: 5.5 MB (5537245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a058619bc927a491b96333ecf230846a23db58050c4fca62da7fab53aeaea035`  
		Last Modified: Mon, 31 Aug 2026 19:07:53 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fc0018a069a278dffd6f0cd484fc34e8f95df4f1d2f896f3264f21d917b9b5f`  
		Last Modified: Mon, 31 Aug 2026 19:07:53 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52cfb90d07aa96268c728b7a5ae182ad853d5f758f8b5822cd20e7f3a135339f`  
		Last Modified: Mon, 31 Aug 2026 19:07:54 GMT  
		Size: 14.5 MB (14479193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:993cb026ef05d536fbe556b746608fd69906cc9d2769dbe905b44ea02b5faad7`  
		Last Modified: Mon, 31 Aug 2026 19:07:54 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35f1752063083542501b1767e44871ad504f0ad0675452bac779d1c0d1c78956`  
		Last Modified: Mon, 31 Aug 2026 19:07:55 GMT  
		Size: 19.8 MB (19775411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e44d436d8a4ace17d0f64920016c18446e363640c08dd2e12b14f33b7c1c58e`  
		Last Modified: Mon, 31 Aug 2026 19:07:55 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a0f8762a6b11e5cfadcef85a63d529fc8e43af4ca5c9de3b76205b4c40fbbc1`  
		Last Modified: Mon, 31 Aug 2026 19:07:55 GMT  
		Size: 22.2 KB (22160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd87c6a0984d6354cb54a4deeff402933779e9929ebc3304f60545c813449fc6`  
		Last Modified: Tue, 01 Sep 2026 21:45:47 GMT  
		Size: 31.7 MB (31671005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2294796b07f1df212b5460401dffdd5b5e668ccbc51de903071cb0a6bdfd1cfa`  
		Last Modified: Tue, 01 Sep 2026 21:45:46 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a493760cb5b0b11bc750d6afcd90d781e16983ba0750f57acff4dedbc27fd71`  
		Last Modified: Tue, 01 Sep 2026 21:45:46 GMT  
		Size: 829.1 KB (829131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a65d71a0c88b6aeb4bb1ec17a209514f68aeaf3be72994d45458969a342f080`  
		Last Modified: Tue, 01 Sep 2026 21:45:46 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:030b726e5e05e10fb639356c240300f19b28915875a1ef3131d84bc05a620647`  
		Last Modified: Tue, 01 Sep 2026 21:45:48 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2.30` - unknown; unknown

```console
$ docker pull composer@sha256:60e0eb7a3d90f827f1021f267406a7b929cfac54637d6592b2bec707c41cb6b6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.0 KB (29953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ada78647525d9d8ffa92dfff08e388a98cc7eaa876dfa86bfa2da5ffa9e29519`

```dockerfile
```

-	Layers:
	-	`sha256:bbf3ace2c2f3ec1592d5436e680db675913183360aa9b3b52960394110c4dbbc`  
		Last Modified: Tue, 01 Sep 2026 21:45:46 GMT  
		Size: 30.0 KB (29953 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.2.30` - linux; arm variant v7

```console
$ docker pull composer@sha256:3d2b8416d528ece962d3978ff6c743e354a086e4add63dff5154af8094202954
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.7 MB (72701829 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6190feead762dfefc017d468e95585d33f61e7eb6d08262a085dea3022de5d33`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 31 Aug 2026 19:13:44 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 31 Aug 2026 19:13:44 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 31 Aug 2026 19:13:44 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 31 Aug 2026 19:13:44 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_VERSION=8.5.10
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:13:48 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 31 Aug 2026 19:13:48 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:16:58 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 31 Aug 2026 19:16:58 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:16:58 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 31 Aug 2026 19:16:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 31 Aug 2026 19:16:58 GMT
CMD ["php" "-a"]
# Tue, 01 Sep 2026 21:46:12 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Tue, 01 Sep 2026 21:46:12 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:46:34 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:46:34 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:46:34 GMT
ENV COMPOSER_VERSION=2.2.30
# Tue, 01 Sep 2026 21:46:34 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:46:34 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:46:34 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:46:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:46:34 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47ec0186e8849bf6342857812c1be1ccbdcb4db7ae18275463b438b1b99fbc51`  
		Last Modified: Mon, 31 Aug 2026 19:17:05 GMT  
		Size: 5.2 MB (5185962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5085bab6afc0997d6dc08c9fb4e317283fc16eaf5587150865d4462cb18c06f3`  
		Last Modified: Mon, 31 Aug 2026 19:17:05 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b15a16ac3a9196b8c604e86c81cb93a69e70a33202a2e65205a003888f649ce`  
		Last Modified: Mon, 31 Aug 2026 19:17:05 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda25bba34254f5e409ab619746da7c0fe654f8cd8d3e5db679cd28f7ce539a9`  
		Last Modified: Mon, 31 Aug 2026 19:17:06 GMT  
		Size: 14.5 MB (14479201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f9271c657f30ec1784501ded1f343add3b628dbe3e1b773f1924061e43a0705`  
		Last Modified: Mon, 31 Aug 2026 19:17:06 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdfaf4840f022148001355960af137ef272bd044f70bd88a8d7ca8693db79bf8`  
		Last Modified: Mon, 31 Aug 2026 19:17:07 GMT  
		Size: 18.7 MB (18654299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1f90a49a1e427b1aee6f1e10e3e96443aabfef5ff7b744004b60d00ab328d70`  
		Last Modified: Mon, 31 Aug 2026 19:17:06 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:254b0043e8bfa4a61897d6a4a95691e4f7daef36d1a9f1ac5488a0097d1ab7ab`  
		Last Modified: Mon, 31 Aug 2026 19:17:07 GMT  
		Size: 22.2 KB (22165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2e456f5775646cde61bc40a60c0a735d277d7d1e05db6fc19f7e55f2d4be5d38`  
		Last Modified: Tue, 01 Sep 2026 21:46:44 GMT  
		Size: 30.3 MB (30275510 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80c1e1d3df81ecca4eada77fb039a5da05172acd74adcbdd424e5acf8e7c1115`  
		Last Modified: Tue, 01 Sep 2026 21:46:44 GMT  
		Size: 258.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f66c5813de2b7b02a122c14f1c034834526dd71b583eb40c3f5c385da6700bcd`  
		Last Modified: Tue, 01 Sep 2026 21:46:44 GMT  
		Size: 819.2 KB (819226 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b218188bf5f38e6ef9dc2207f524fb0fb9011005009eb2fccf453f70d7814a72`  
		Last Modified: Tue, 01 Sep 2026 21:46:44 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ddedde3c7862af28af19d88b6d91ea836c7c184c339c0d56489485d64b8bf74`  
		Last Modified: Tue, 01 Sep 2026 21:46:45 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2.30` - unknown; unknown

```console
$ docker pull composer@sha256:5e5d54621a1f23e8ccdd3077009724c9b735d1357e589b961a462b38b0aff4a9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b245d273025970690c3e6e4f8db380b37cc74bb37863dcaa7153b32fb7166ce4`

```dockerfile
```

-	Layers:
	-	`sha256:b32494fb1b1212c41ab2f44450c3caf2bd8591d1fb8e76554b6b5f3b3e8af447`  
		Last Modified: Tue, 01 Sep 2026 21:46:43 GMT  
		Size: 2.2 MB (2180325 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f2178cb8f1daa30d1ed14e1267ee7e4e4f55fc216f5144c93504738363f61e54`  
		Last Modified: Tue, 01 Sep 2026 21:46:43 GMT  
		Size: 30.2 KB (30168 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.2.30` - linux; arm64 variant v8

```console
$ docker pull composer@sha256:c77ce08065252d3d7c9cdb3c97529326973c0abc611a61e65fb91682fe19be3d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.9 MB (79874341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5a3acdda92702974458d32af2202b24ac452a9f1130e27f811c953060aced33`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 31 Aug 2026 19:29:31 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 31 Aug 2026 19:29:31 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 31 Aug 2026 19:29:31 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 31 Aug 2026 19:29:31 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_VERSION=8.5.10
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:29:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 31 Aug 2026 19:29:34 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:32:55 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 31 Aug 2026 19:32:55 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:32:56 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 31 Aug 2026 19:32:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 31 Aug 2026 19:32:56 GMT
CMD ["php" "-a"]
# Tue, 01 Sep 2026 21:46:09 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Tue, 01 Sep 2026 21:46:09 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:47:03 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:47:03 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:47:03 GMT
ENV COMPOSER_VERSION=2.2.30
# Tue, 01 Sep 2026 21:47:03 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:47:03 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:47:03 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:47:03 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:47:03 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:984940d617d48d359815b38cb24c1f97c743e5fde096eac2bd6a7267b2111fa0`  
		Last Modified: Mon, 31 Aug 2026 19:33:04 GMT  
		Size: 6.3 MB (6257367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49cb5444430bc375da584793ca4f5ce67d09374e39f8b3b6612011797f52c009`  
		Last Modified: Mon, 31 Aug 2026 19:33:03 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4079740af5f25fa1205d7f1877400e1f5a6a66e0115cf47ee8f3547a3f3dbe7d`  
		Last Modified: Mon, 31 Aug 2026 19:33:03 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30d3a65159185a3265f510470cd22cdd3d492558d2f959a357b372ec889ee3d7`  
		Last Modified: Mon, 31 Aug 2026 19:33:04 GMT  
		Size: 14.5 MB (14479183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4adcbc802a6f40856dec178bafed6859d616898e928da0babd491597452f558b`  
		Last Modified: Mon, 31 Aug 2026 19:33:04 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb074f6cb93c5759763b582c40a57dc3b2035d70e29a3497cfd86dc152da96b`  
		Last Modified: Mon, 31 Aug 2026 19:33:05 GMT  
		Size: 22.0 MB (22002481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adc6e3e84771ea1ace5629d7a232ed7de5ea7a43aa1301d47f35d3ebb77b7a58`  
		Last Modified: Mon, 31 Aug 2026 19:33:05 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23e9c376283cad827910e85adfc17ccd299916351991d29896a368d01fae7faa`  
		Last Modified: Mon, 31 Aug 2026 19:33:05 GMT  
		Size: 22.2 KB (22202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fcef3e1436547055f6b81b293ac562e677a38192b228bd5f8f3897908e9e09e`  
		Last Modified: Tue, 01 Sep 2026 21:46:39 GMT  
		Size: 32.1 MB (32097846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4656bab49cbdb0b41d0d4400a06c0dceb551c2ac3a9b4f9525a9838c338be48`  
		Last Modified: Tue, 01 Sep 2026 21:46:38 GMT  
		Size: 259.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebfccb19188958aedd864f85e0b89db602c9fcbadd8ead0b5d8dfbe45842c654`  
		Last Modified: Tue, 01 Sep 2026 21:47:10 GMT  
		Size: 827.4 KB (827367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce9bccc07f6efde2a89fa45a33026e6d670f06e87c76f05f55f3b06be5c978b3`  
		Last Modified: Tue, 01 Sep 2026 21:47:09 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf23bc9d73c054ad8624cb9afd567ffed89a27fd41823d92b69fad7ef2445f37`  
		Last Modified: Tue, 01 Sep 2026 21:47:09 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2.30` - unknown; unknown

```console
$ docker pull composer@sha256:78243afa896a94bc8335efd629f90f46f943971a4ccad38b8f9b5a2447035007
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210338 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:41d34a8548742125ed71440fe6a10fc020fa7d9f8614f39f9c7bc72e95954dd5`

```dockerfile
```

-	Layers:
	-	`sha256:93b7996c17a5a27b656b69a1739a8af2a21bf978867af7b669835127830de0ea`  
		Last Modified: Tue, 01 Sep 2026 21:47:09 GMT  
		Size: 2.2 MB (2180151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6655264b658ab73d9867f2b211cb9dde3b6034dfbd81fe7faa1196a7df5f31b`  
		Last Modified: Tue, 01 Sep 2026 21:47:09 GMT  
		Size: 30.2 KB (30187 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.2.30` - linux; 386

```console
$ docker pull composer@sha256:e2a83c0d24a000899ec531b1cfcfbcc964fc70d5cd05f5c691474eb5ccfa35bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80562074 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7cb3e60315822d3205d9a78e1fde50eb257ff42a5514bc925e8cdc0eb4af40ef`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 31 Aug 2026 19:05:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 31 Aug 2026 19:05:54 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 31 Aug 2026 19:05:54 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 31 Aug 2026 19:05:54 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_VERSION=8.5.10
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:05:57 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 31 Aug 2026 19:05:57 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:09:13 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 31 Aug 2026 19:09:13 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:09:14 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 31 Aug 2026 19:09:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 31 Aug 2026 19:09:14 GMT
CMD ["php" "-a"]
# Tue, 01 Sep 2026 21:45:45 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Tue, 01 Sep 2026 21:45:45 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:46:36 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:46:36 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:46:36 GMT
ENV COMPOSER_VERSION=2.2.30
# Tue, 01 Sep 2026 21:46:36 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:46:36 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:46:36 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:46:36 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:46:36 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38c550a21e0e25a500dd32e0c46f5e52b968214cdd1b1af018dac40a548fbedf`  
		Last Modified: Mon, 31 Aug 2026 19:09:22 GMT  
		Size: 5.8 MB (5793468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94c99880dc6dfa808b4cd1594e9c79c17746af44cb07100fa96588d4490e947f`  
		Last Modified: Mon, 31 Aug 2026 19:09:22 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a671bd089267098e6599ca92afbb1f13f32c925ac58baa864c73c70d5a64090a`  
		Last Modified: Mon, 31 Aug 2026 19:09:21 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64b86c50e53b0c123faabab45a3f06977972b0fdca3c5343e8a44c0ac330b06a`  
		Last Modified: Mon, 31 Aug 2026 19:09:23 GMT  
		Size: 14.5 MB (14479180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6983adc90c1459f0c9aeff6f0bb3fa21dcf3b4dbf1094c7e58b4eb88471b816`  
		Last Modified: Mon, 31 Aug 2026 19:09:23 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9b348ad7874760602d66e9ea26f6be2c0ef69fe7b3508d88b1f2e154362c14b`  
		Last Modified: Mon, 31 Aug 2026 19:09:24 GMT  
		Size: 23.3 MB (23278191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:782b9f03463f82f20404dc3e64643dffc65b397a6777c5c0e1b9368cb8778bfe`  
		Last Modified: Mon, 31 Aug 2026 19:09:23 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e335de470f1224722633cff72f7fa130b41cd6d7da51aa29ddca03de8f4d548c`  
		Last Modified: Mon, 31 Aug 2026 19:09:25 GMT  
		Size: 22.4 KB (22384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6205afce2fc70ff7d6d5724244577add1a652d9bcc95786bdb34a4770f4f84ec`  
		Last Modified: Tue, 01 Sep 2026 21:46:13 GMT  
		Size: 32.5 MB (32472646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:637b9cf907c5f64e88b11e6fbd8be8e62c19a87cdde37a9c152fde3e6cb04047`  
		Last Modified: Tue, 01 Sep 2026 21:46:12 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb5952f06fc4c0ed4fa02388c915fd6f0f9fc718d66f298f26e01fc87ce162e4`  
		Last Modified: Tue, 01 Sep 2026 21:46:42 GMT  
		Size: 841.2 KB (841209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bff8b5eaf94936d57d5123ac824208582564a42085154a7d8f375f3c312c773b`  
		Last Modified: Tue, 01 Sep 2026 21:46:42 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2e9bdc1e13dfd88a6364aad3ff839861239d4d86a2fc39790c519175709d32b`  
		Last Modified: Tue, 01 Sep 2026 21:46:42 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2.30` - unknown; unknown

```console
$ docker pull composer@sha256:6c82fa7bb1b279a3ad7790d5740ebffdf8446ae4272e6b832dc73dfdfcc94e04
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1eeca11c2be50d6d65c173a7e2b016ae015ad5432fcdbd1ebc77cdb1dfeb0bfe`

```dockerfile
```

-	Layers:
	-	`sha256:f603e10d08653c30828955b57952f67ce9c6a2af2b7097f34fc9a9f8a51fe8c5`  
		Last Modified: Tue, 01 Sep 2026 21:46:42 GMT  
		Size: 2.2 MB (2180475 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5d6262cf5e9504566e45e9037605d7edf252c594d0c17cf864950da9cae77b7b`  
		Last Modified: Tue, 01 Sep 2026 21:46:41 GMT  
		Size: 30.1 KB (30052 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.2.30` - linux; ppc64le

```console
$ docker pull composer@sha256:dd4cc9ecb5cd8f30c8b25994128cae0d0473f061214a4462c6cc293a4fefae24
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.1 MB (81147603 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c415dae4f62c5b2bf80cbc9a0411accae69d0be96c12e51b1856b97a72f8d64`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

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
# Mon, 31 Aug 2026 20:53:44 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:53:44 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:45:25 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:45:25 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:45:25 GMT
ENV COMPOSER_VERSION=2.2.30
# Tue, 01 Sep 2026 21:45:25 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:45:26 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:45:26 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:45:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:45:26 GMT
CMD ["composer"]
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
	-	`sha256:2aab4bf4a081a48a0966800ab21cde1a512803dc2f996d78e3bb853fc98db6b8`  
		Last Modified: Mon, 31 Aug 2026 20:54:36 GMT  
		Size: 33.1 MB (33065362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2b28058a535ea2a40e17040db6b7c2b932d626c3f23c5902507609674922c03`  
		Last Modified: Mon, 31 Aug 2026 20:54:35 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1eb13d26b007d8a521f5cb00a09aa8abe7984196e01b7348137ec77026f2342`  
		Last Modified: Tue, 01 Sep 2026 21:45:48 GMT  
		Size: 834.8 KB (834803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d429ba6630aea31e6be5093ffce9737c78be2957b2312ae22c724c03df8ec73c`  
		Last Modified: Tue, 01 Sep 2026 21:45:48 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ab64b6814f7b0026d1166fb6e156c076726cc00c2d82847808142bf0b2ee83d`  
		Last Modified: Tue, 01 Sep 2026 21:45:48 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2.30` - unknown; unknown

```console
$ docker pull composer@sha256:ba38d4fd3361e1fa149363e8dd443466fc093e1caa38055860a89e30cc85fd0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f742a1aa8000e689132b50216a9d2d1e186e9faabc1e17d64959d26009039a2`

```dockerfile
```

-	Layers:
	-	`sha256:58f055deaa5326659de3ae95c7deedd095128413915c0ff5fadd05d0aa0361ad`  
		Last Modified: Tue, 01 Sep 2026 21:45:47 GMT  
		Size: 2.2 MB (2180512 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9e111adb90710d922b2316cc4ebfd685c98175962fe7d5ee5df9da71855e0432`  
		Last Modified: Tue, 01 Sep 2026 21:45:47 GMT  
		Size: 30.1 KB (30114 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.2.30` - linux; s390x

```console
$ docker pull composer@sha256:71866ebd38c23497c9ddf90cd08728efc3ef4392cc93becae8383ae2be8cea81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79556630 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95bcad9cc7b084a9d16e7bf7fce0f0fc44b8508d3070909edbc21f87540997a0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

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
# Mon, 31 Aug 2026 20:14:31 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:14:31 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:44:50 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:44:50 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:44:50 GMT
ENV COMPOSER_VERSION=2.2.30
# Tue, 01 Sep 2026 21:44:50 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:44:50 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:44:50 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:44:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:44:50 GMT
CMD ["composer"]
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
	-	`sha256:4f7800916e1a0f5d412e56cb8f39c97028445975957d06de36e1960620678edf`  
		Last Modified: Mon, 31 Aug 2026 20:15:10 GMT  
		Size: 32.9 MB (32925605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0100f1914c0689db6f12c5eef7ae88301e33a367b4232c97fa41ad71ca2bb6dd`  
		Last Modified: Mon, 31 Aug 2026 20:15:09 GMT  
		Size: 258.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbd322496d247052f25071c6f3b32a2f9ae23847103abacc5d0f65f0ad930e0f`  
		Last Modified: Tue, 01 Sep 2026 21:45:03 GMT  
		Size: 831.7 KB (831718 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8c0c55d44d179404d3af1de5c3ecc76375aabe48202980823823ff5297eac8b`  
		Last Modified: Tue, 01 Sep 2026 21:45:03 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aab672307fe69b715bd5171c2d950d005183ed0659204e02e241e27d0f25294`  
		Last Modified: Tue, 01 Sep 2026 21:45:03 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2.30` - unknown; unknown

```console
$ docker pull composer@sha256:83eb08a073d4dc8000053c315f0f2b3bc1dc683dc56358e947f833151c5d7475
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e9ed9630d08634bacbc5b90a1756702fd92747241098419a02fe9ea5ce0e84a`

```dockerfile
```

-	Layers:
	-	`sha256:98481ebc582fced01113c87e10322ef90f298a0a63b742ee62e6deccaba77116`  
		Last Modified: Tue, 01 Sep 2026 21:45:03 GMT  
		Size: 2.2 MB (2179932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7a1b0c29ad2b2c9ac90062115e21f542d6a3b8069c013b6a6986541e267b79f9`  
		Last Modified: Tue, 01 Sep 2026 21:45:03 GMT  
		Size: 30.1 KB (30078 bytes)  
		MIME: application/vnd.in-toto+json

## `composer:latest`

```console
$ docker pull composer@sha256:8fa35f42911ff8bbee92aa37d781de6799168d4a0535ac6991f1b250bc2e0245
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
$ docker pull composer@sha256:0baf37e7f495f1c42cee6bdd9cf3e00e9435f193b512529e7c484d66c623773f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80167512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:204816b1c5b657cd8fe31ae0bca3daecdd370633c1a3952f6101860003ac8798`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 31 Aug 2026 19:12:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 31 Aug 2026 19:12:30 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 31 Aug 2026 19:12:30 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 31 Aug 2026 19:12:30 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_VERSION=8.5.10
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Mon, 31 Aug 2026 19:12:30 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:12:33 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 31 Aug 2026 19:12:33 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:15:52 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 31 Aug 2026 19:15:52 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:15:53 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 31 Aug 2026 19:15:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 31 Aug 2026 19:15:53 GMT
CMD ["php" "-a"]
# Tue, 01 Sep 2026 21:45:56 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Tue, 01 Sep 2026 21:45:56 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:46:13 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:46:13 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:46:13 GMT
ENV COMPOSER_VERSION=2.10.3
# Tue, 01 Sep 2026 21:46:13 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:46:13 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:46:13 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:46:13 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:46:13 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e8abfc15eb16e089ac0133588fc40e22868d0a07ccb1423d919804826c244bc9`  
		Last Modified: Mon, 31 Aug 2026 19:16:01 GMT  
		Size: 5.9 MB (5947457 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd56ccb5211768a4e9e7ab043b8bb6f6c7b8f784c82338845b7cbf4b960c5c0c`  
		Last Modified: Mon, 31 Aug 2026 19:16:01 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c61db10a066345ea6e76c588074ce538251b06050b519e3c73fd56021208db4a`  
		Last Modified: Mon, 31 Aug 2026 19:16:01 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a4613157ae3c90a66f322e617856593fda2e67d4f1e5e05696f1e93d7df6d32`  
		Last Modified: Mon, 31 Aug 2026 19:16:01 GMT  
		Size: 14.5 MB (14479187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2272599fb31695cff110b58d8b4222e7bf2b64b0abc4b4d59f2fa85e28f8cb0`  
		Last Modified: Mon, 31 Aug 2026 19:16:02 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3610922f636b31a392b957e7e7981d79bbf81f580b02013b34e4dca07d9c6e3d`  
		Last Modified: Mon, 31 Aug 2026 19:16:03 GMT  
		Size: 22.8 MB (22826438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23dc07157ef7d1dce21c40c9f43b30a69091e050123f90622d23b8578347cdb2`  
		Last Modified: Mon, 31 Aug 2026 19:16:02 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd58bb537f66a30a752d312bf1d5328e3970e9920f52af34fff4446481dfd221`  
		Last Modified: Mon, 31 Aug 2026 19:16:03 GMT  
		Size: 22.4 KB (22363 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4dc8ae5cf961dc76a2f3ac4c799d76f32ec53afe34b16276a50c09952c5c3063`  
		Last Modified: Tue, 01 Sep 2026 21:46:23 GMT  
		Size: 32.0 MB (31957584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96a258d35ff873f2ecbbc52802b3c615ed94daee67860f7c9541958addec583d`  
		Last Modified: Tue, 01 Sep 2026 21:46:22 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2b224c93474b6222e5db7cc1c356eaf33b0a66486b70e47d15bb17baf5c113a`  
		Last Modified: Tue, 01 Sep 2026 21:46:22 GMT  
		Size: 1.1 MB (1083241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a747bac1a2637ae25dc98d65afa1fd0d343e529f1145b18c8e6b55b41938f0fe`  
		Last Modified: Tue, 01 Sep 2026 21:46:22 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1f5a0519ae078a357e650fb3f19e0f64c14b0b9279f23887f6bfa5c27c55425`  
		Last Modified: Tue, 01 Sep 2026 21:46:23 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:latest` - unknown; unknown

```console
$ docker pull composer@sha256:b9d81bbd198906c8cdae257319bad4394a3c9d7aa90948b274630903b1a8d381
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:830dcf9a863639247547bea8329ecccede6589a455decd01d4eef626e56bbefc`

```dockerfile
```

-	Layers:
	-	`sha256:51125b5527e381319805d02c5e501547cf7f6b31e567ce33c8f9f9ca043fd4b6`  
		Last Modified: Tue, 01 Sep 2026 21:46:22 GMT  
		Size: 2.2 MB (2181272 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:16a52fabfe585b256604dfdcd9893eb6341fd9abcad906421f99c115beefdea3`  
		Last Modified: Tue, 01 Sep 2026 21:46:22 GMT  
		Size: 30.7 KB (30686 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:latest` - linux; arm variant v6

```console
$ docker pull composer@sha256:25e34d9a4dd89c8c7fc46adb513cd26c68bf976a059d35551cde7003fdea0daa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76127050 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28cb8d3c2d88277db4f47cbe5a03e80960110be1e71795f1f1a662262d603b2a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 31 Aug 2026 19:04:31 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 31 Aug 2026 19:04:31 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 31 Aug 2026 19:04:31 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 31 Aug 2026 19:04:31 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_VERSION=8.5.10
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Mon, 31 Aug 2026 19:04:31 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:04:35 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 31 Aug 2026 19:04:35 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:07:46 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 31 Aug 2026 19:07:46 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:07:47 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 31 Aug 2026 19:07:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 31 Aug 2026 19:07:47 GMT
CMD ["php" "-a"]
# Tue, 01 Sep 2026 21:45:14 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Tue, 01 Sep 2026 21:45:14 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:45:37 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:45:37 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:45:37 GMT
ENV COMPOSER_VERSION=2.10.3
# Tue, 01 Sep 2026 21:45:37 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:45:37 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:45:37 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:45:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:45:37 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:922ee89636e901fea2f5c487f74705079723794fb301264e988f16a67f52c53c`  
		Last Modified: Mon, 31 Aug 2026 19:07:53 GMT  
		Size: 5.5 MB (5537245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a058619bc927a491b96333ecf230846a23db58050c4fca62da7fab53aeaea035`  
		Last Modified: Mon, 31 Aug 2026 19:07:53 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fc0018a069a278dffd6f0cd484fc34e8f95df4f1d2f896f3264f21d917b9b5f`  
		Last Modified: Mon, 31 Aug 2026 19:07:53 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52cfb90d07aa96268c728b7a5ae182ad853d5f758f8b5822cd20e7f3a135339f`  
		Last Modified: Mon, 31 Aug 2026 19:07:54 GMT  
		Size: 14.5 MB (14479193 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:993cb026ef05d536fbe556b746608fd69906cc9d2769dbe905b44ea02b5faad7`  
		Last Modified: Mon, 31 Aug 2026 19:07:54 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35f1752063083542501b1767e44871ad504f0ad0675452bac779d1c0d1c78956`  
		Last Modified: Mon, 31 Aug 2026 19:07:55 GMT  
		Size: 19.8 MB (19775411 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e44d436d8a4ace17d0f64920016c18446e363640c08dd2e12b14f33b7c1c58e`  
		Last Modified: Mon, 31 Aug 2026 19:07:55 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a0f8762a6b11e5cfadcef85a63d529fc8e43af4ca5c9de3b76205b4c40fbbc1`  
		Last Modified: Mon, 31 Aug 2026 19:07:55 GMT  
		Size: 22.2 KB (22160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fc0b3db5c735311873e3cdc1fc7125a1ad4ac78698b452168a9a5f133cdcf1d`  
		Last Modified: Tue, 01 Sep 2026 21:45:45 GMT  
		Size: 31.7 MB (31671139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f561ca495f0168e58acb17dd162ab13a0bf508a5768dce9683d575881472021`  
		Last Modified: Tue, 01 Sep 2026 21:45:44 GMT  
		Size: 256.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad71437d15083dc3375815e9df8be92ee309e8ccd34f96e0e874a45e71460702`  
		Last Modified: Tue, 01 Sep 2026 21:45:44 GMT  
		Size: 1.1 MB (1083599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a860e9231d40d4131609817d59a11fc9f4f8924bdfb9f046f4a3311d0ed18255`  
		Last Modified: Tue, 01 Sep 2026 21:45:44 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3728486dac85639caeef6ff2e4a6de014e1193052f701e8245723f81bd40db21`  
		Last Modified: Tue, 01 Sep 2026 21:45:45 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:latest` - unknown; unknown

```console
$ docker pull composer@sha256:d088d0cd162077d88388b5db109cedcd709edf4174f49577267aa247e19201f9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 KB (30576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14b739aba602b07544b2f8b062c081e17aca54de390b3c88b8726077e885fa56`

```dockerfile
```

-	Layers:
	-	`sha256:bc744e6db37eb4725bc66299d4a076e30500c21ee0c63e626a44d20ba3df5e7f`  
		Last Modified: Tue, 01 Sep 2026 21:45:44 GMT  
		Size: 30.6 KB (30576 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:latest` - linux; arm variant v7

```console
$ docker pull composer@sha256:52d59c54177687e3a7a5d5ff91e13305dc4748a59e556f4bd44eecf0dbd73d18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (72956366 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86c1a306b2a9137c60620f9218f1293ed27052ab0251b80ee320404115560b03`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 31 Aug 2026 19:13:44 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 31 Aug 2026 19:13:44 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 31 Aug 2026 19:13:44 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 31 Aug 2026 19:13:44 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_VERSION=8.5.10
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Mon, 31 Aug 2026 19:13:44 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:13:48 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 31 Aug 2026 19:13:48 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:16:58 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 31 Aug 2026 19:16:58 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:16:58 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 31 Aug 2026 19:16:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 31 Aug 2026 19:16:58 GMT
CMD ["php" "-a"]
# Tue, 01 Sep 2026 21:46:11 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Tue, 01 Sep 2026 21:46:11 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:46:32 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:46:32 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:46:32 GMT
ENV COMPOSER_VERSION=2.10.3
# Tue, 01 Sep 2026 21:46:32 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:46:32 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:46:32 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:46:32 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:46:32 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47ec0186e8849bf6342857812c1be1ccbdcb4db7ae18275463b438b1b99fbc51`  
		Last Modified: Mon, 31 Aug 2026 19:17:05 GMT  
		Size: 5.2 MB (5185962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5085bab6afc0997d6dc08c9fb4e317283fc16eaf5587150865d4462cb18c06f3`  
		Last Modified: Mon, 31 Aug 2026 19:17:05 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9b15a16ac3a9196b8c604e86c81cb93a69e70a33202a2e65205a003888f649ce`  
		Last Modified: Mon, 31 Aug 2026 19:17:05 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cda25bba34254f5e409ab619746da7c0fe654f8cd8d3e5db679cd28f7ce539a9`  
		Last Modified: Mon, 31 Aug 2026 19:17:06 GMT  
		Size: 14.5 MB (14479201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f9271c657f30ec1784501ded1f343add3b628dbe3e1b773f1924061e43a0705`  
		Last Modified: Mon, 31 Aug 2026 19:17:06 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdfaf4840f022148001355960af137ef272bd044f70bd88a8d7ca8693db79bf8`  
		Last Modified: Mon, 31 Aug 2026 19:17:07 GMT  
		Size: 18.7 MB (18654299 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1f90a49a1e427b1aee6f1e10e3e96443aabfef5ff7b744004b60d00ab328d70`  
		Last Modified: Mon, 31 Aug 2026 19:17:06 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:254b0043e8bfa4a61897d6a4a95691e4f7daef36d1a9f1ac5488a0097d1ab7ab`  
		Last Modified: Mon, 31 Aug 2026 19:17:07 GMT  
		Size: 22.2 KB (22165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:552275889b70bd2706127ef42992457424550094aaed5a450752e863add21d8f`  
		Last Modified: Tue, 01 Sep 2026 21:46:42 GMT  
		Size: 30.3 MB (30275456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0fbb1cd8b16678f061fd023cb088bbb6b54ee533df3d05e3fa6f2affc676228`  
		Last Modified: Tue, 01 Sep 2026 21:46:41 GMT  
		Size: 256.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:431aab51a51c5915e0c043b1e619e05f38936295374c9e98bf07a9a4e9b255e3`  
		Last Modified: Tue, 01 Sep 2026 21:46:41 GMT  
		Size: 1.1 MB (1073817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d67ea02a4da3fcf65ca09dcaeaf26414d92355b02cbebcf3f3a895b3c2f5c8eb`  
		Last Modified: Tue, 01 Sep 2026 21:46:41 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af01a889e80fbdc2241b85badef91a215ddf6f46bcbdb20110b1fb0dbc1dde5d`  
		Last Modified: Tue, 01 Sep 2026 21:46:42 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:latest` - unknown; unknown

```console
$ docker pull composer@sha256:f6dcbb0020e1ad7242a0475c972a3f2b42983a2133061bfb2551927de5cc8fb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211729 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74be4c56d9e95a154081c522fa603a82becb612b39135714da32eb194240e63c`

```dockerfile
```

-	Layers:
	-	`sha256:30a5df5f95fdaf8ba4464b27320ce618e580b36314e34840d0e41ef87ef94b26`  
		Last Modified: Tue, 01 Sep 2026 21:46:41 GMT  
		Size: 2.2 MB (2180937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b8a4ad508a1202c0017828d8b73360d56cf45e924d650cacc671d7e12d61ee8c`  
		Last Modified: Tue, 01 Sep 2026 21:46:41 GMT  
		Size: 30.8 KB (30792 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:latest` - linux; arm64 variant v8

```console
$ docker pull composer@sha256:70fe4b445fcdb28265da58cc5da155b8d64a5d583e66467e4e3d294bdb3d26ce
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80129281 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2bb69f1ebfc8275e3244e9adcc5129686f1fe7c272ba97a4c7ff514097a77450`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 31 Aug 2026 19:29:31 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 31 Aug 2026 19:29:31 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 31 Aug 2026 19:29:31 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 31 Aug 2026 19:29:31 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_VERSION=8.5.10
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Mon, 31 Aug 2026 19:29:31 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:29:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 31 Aug 2026 19:29:34 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:32:55 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 31 Aug 2026 19:32:55 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:32:56 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 31 Aug 2026 19:32:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 31 Aug 2026 19:32:56 GMT
CMD ["php" "-a"]
# Tue, 01 Sep 2026 21:46:09 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Tue, 01 Sep 2026 21:46:09 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:46:28 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:46:28 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:46:28 GMT
ENV COMPOSER_VERSION=2.10.3
# Tue, 01 Sep 2026 21:46:28 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:46:28 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:46:28 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:46:28 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:46:28 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:984940d617d48d359815b38cb24c1f97c743e5fde096eac2bd6a7267b2111fa0`  
		Last Modified: Mon, 31 Aug 2026 19:33:04 GMT  
		Size: 6.3 MB (6257367 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49cb5444430bc375da584793ca4f5ce67d09374e39f8b3b6612011797f52c009`  
		Last Modified: Mon, 31 Aug 2026 19:33:03 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4079740af5f25fa1205d7f1877400e1f5a6a66e0115cf47ee8f3547a3f3dbe7d`  
		Last Modified: Mon, 31 Aug 2026 19:33:03 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30d3a65159185a3265f510470cd22cdd3d492558d2f959a357b372ec889ee3d7`  
		Last Modified: Mon, 31 Aug 2026 19:33:04 GMT  
		Size: 14.5 MB (14479183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4adcbc802a6f40856dec178bafed6859d616898e928da0babd491597452f558b`  
		Last Modified: Mon, 31 Aug 2026 19:33:04 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2cb074f6cb93c5759763b582c40a57dc3b2035d70e29a3497cfd86dc152da96b`  
		Last Modified: Mon, 31 Aug 2026 19:33:05 GMT  
		Size: 22.0 MB (22002481 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adc6e3e84771ea1ace5629d7a232ed7de5ea7a43aa1301d47f35d3ebb77b7a58`  
		Last Modified: Mon, 31 Aug 2026 19:33:05 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23e9c376283cad827910e85adfc17ccd299916351991d29896a368d01fae7faa`  
		Last Modified: Mon, 31 Aug 2026 19:33:05 GMT  
		Size: 22.2 KB (22202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0fcef3e1436547055f6b81b293ac562e677a38192b228bd5f8f3897908e9e09e`  
		Last Modified: Tue, 01 Sep 2026 21:46:39 GMT  
		Size: 32.1 MB (32097846 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4656bab49cbdb0b41d0d4400a06c0dceb551c2ac3a9b4f9525a9838c338be48`  
		Last Modified: Tue, 01 Sep 2026 21:46:38 GMT  
		Size: 259.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26ecfba2f4021c3830f605037b16ef04ed906a953de8aa3785fc3f9cf3ad12b7`  
		Last Modified: Tue, 01 Sep 2026 21:46:38 GMT  
		Size: 1.1 MB (1082308 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96a39e14ea49c5bfefbf591d9a12a4b889afc6270e90de049e2b29637c1e493e`  
		Last Modified: Tue, 01 Sep 2026 21:46:38 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a886d5026bf0ec344eb77e3d4492d0c34468da7fb0fa87b70d1fa5327c3509e`  
		Last Modified: Tue, 01 Sep 2026 21:46:39 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:latest` - unknown; unknown

```console
$ docker pull composer@sha256:f4b97ec624613bdd71a98697a371e9f32ce89518341be62f5ff34c941dd02b45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7e440886cae31c1c1b1d665aac08fa697e9b0d1b1cf34b8d7b482ddb498b4db7`

```dockerfile
```

-	Layers:
	-	`sha256:7a430e5698a335ebfcd0c68ba9fb28450af8a7d695faa8cd77023b1b5247c65a`  
		Last Modified: Tue, 01 Sep 2026 21:46:38 GMT  
		Size: 2.2 MB (2180771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98e8396ddad0550a1dd6a2cb6d24b67914c094acc59de1ab3bb5744ceb743cbf`  
		Last Modified: Tue, 01 Sep 2026 21:46:38 GMT  
		Size: 30.8 KB (30820 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:latest` - linux; 386

```console
$ docker pull composer@sha256:e93870949a1ff2f4e68377e736ce702c9bba9bf438eca02295e34fb40c7fa7cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80816341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:85c29a1dd77629e5be8ccc09bd188cc496d438c9f489e00e30bc4c9d572ab7e9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Mon, 31 Aug 2026 19:05:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Mon, 31 Aug 2026 19:05:54 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Mon, 31 Aug 2026 19:05:54 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Mon, 31 Aug 2026 19:05:54 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_VERSION=8.5.10
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Mon, 31 Aug 2026 19:05:54 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Mon, 31 Aug 2026 19:05:57 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 31 Aug 2026 19:05:57 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:09:13 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 31 Aug 2026 19:09:13 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 31 Aug 2026 19:09:14 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 31 Aug 2026 19:09:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 31 Aug 2026 19:09:14 GMT
CMD ["php" "-a"]
# Tue, 01 Sep 2026 21:45:45 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Tue, 01 Sep 2026 21:45:45 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:46:02 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:46:02 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:46:02 GMT
ENV COMPOSER_VERSION=2.10.3
# Tue, 01 Sep 2026 21:46:02 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:46:02 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:46:02 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:46:02 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:46:02 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38c550a21e0e25a500dd32e0c46f5e52b968214cdd1b1af018dac40a548fbedf`  
		Last Modified: Mon, 31 Aug 2026 19:09:22 GMT  
		Size: 5.8 MB (5793468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94c99880dc6dfa808b4cd1594e9c79c17746af44cb07100fa96588d4490e947f`  
		Last Modified: Mon, 31 Aug 2026 19:09:22 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a671bd089267098e6599ca92afbb1f13f32c925ac58baa864c73c70d5a64090a`  
		Last Modified: Mon, 31 Aug 2026 19:09:21 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64b86c50e53b0c123faabab45a3f06977972b0fdca3c5343e8a44c0ac330b06a`  
		Last Modified: Mon, 31 Aug 2026 19:09:23 GMT  
		Size: 14.5 MB (14479180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6983adc90c1459f0c9aeff6f0bb3fa21dcf3b4dbf1094c7e58b4eb88471b816`  
		Last Modified: Mon, 31 Aug 2026 19:09:23 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9b348ad7874760602d66e9ea26f6be2c0ef69fe7b3508d88b1f2e154362c14b`  
		Last Modified: Mon, 31 Aug 2026 19:09:24 GMT  
		Size: 23.3 MB (23278191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:782b9f03463f82f20404dc3e64643dffc65b397a6777c5c0e1b9368cb8778bfe`  
		Last Modified: Mon, 31 Aug 2026 19:09:23 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e335de470f1224722633cff72f7fa130b41cd6d7da51aa29ddca03de8f4d548c`  
		Last Modified: Mon, 31 Aug 2026 19:09:25 GMT  
		Size: 22.4 KB (22384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6205afce2fc70ff7d6d5724244577add1a652d9bcc95786bdb34a4770f4f84ec`  
		Last Modified: Tue, 01 Sep 2026 21:46:13 GMT  
		Size: 32.5 MB (32472646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:637b9cf907c5f64e88b11e6fbd8be8e62c19a87cdde37a9c152fde3e6cb04047`  
		Last Modified: Tue, 01 Sep 2026 21:46:12 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:091e1986d6236368bb01349ab95e6755563fda97c88926f7ac431afa6ffda485`  
		Last Modified: Tue, 01 Sep 2026 21:46:12 GMT  
		Size: 1.1 MB (1095476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d399f8e49a174703593540d55dc3df1be7cb6fc3c69e4a956ab8e0615c45c83`  
		Last Modified: Tue, 01 Sep 2026 21:46:12 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ea5509112623045dbc4299ca8afccadb4dbd40fa7e9893503dbab2d9c4dacba`  
		Last Modified: Tue, 01 Sep 2026 21:46:13 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:latest` - unknown; unknown

```console
$ docker pull composer@sha256:af8c1247947c8e09946dc11dd6e563ff532e8c653e4eba0413617e914a893ec7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6371c0be508364b6ec9b6e9513547653a37a47d82ffa0d06427a5f6f0ab2d54c`

```dockerfile
```

-	Layers:
	-	`sha256:6d60910c9a729bcdc3c3871574e0a7a2aed9e01479b5cf990db0c9dc3848540b`  
		Last Modified: Tue, 01 Sep 2026 21:46:12 GMT  
		Size: 2.2 MB (2181061 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:13c6cc9f45f7d58b0ced2feca50631f1740542b618664b645ea0af53e95e4954`  
		Last Modified: Tue, 01 Sep 2026 21:46:12 GMT  
		Size: 30.6 KB (30650 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:latest` - linux; ppc64le

```console
$ docker pull composer@sha256:c444a1292576887ce2772814011672115a035b7d5cc5afd3d2b4e0e6f0d88140
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81402265 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7adfac50196b39a2d614dc1704fa0bc0c445289f6368f765e92526c233a4a9c5`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

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
# Mon, 31 Aug 2026 20:53:44 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:53:44 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:45:25 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:45:25 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:45:25 GMT
ENV COMPOSER_VERSION=2.10.3
# Tue, 01 Sep 2026 21:45:25 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:45:26 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:45:26 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:45:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:45:26 GMT
CMD ["composer"]
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
	-	`sha256:2aab4bf4a081a48a0966800ab21cde1a512803dc2f996d78e3bb853fc98db6b8`  
		Last Modified: Mon, 31 Aug 2026 20:54:36 GMT  
		Size: 33.1 MB (33065362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2b28058a535ea2a40e17040db6b7c2b932d626c3f23c5902507609674922c03`  
		Last Modified: Mon, 31 Aug 2026 20:54:35 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fba0e3174e64a18a401c8139b57a18af5c35fd5ee71a267bda81ac24dd8319c1`  
		Last Modified: Tue, 01 Sep 2026 21:45:48 GMT  
		Size: 1.1 MB (1089467 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cd6177323c354578618d1b1a54bf199c08eb6782c5485fae1dd3c199c5796a1`  
		Last Modified: Tue, 01 Sep 2026 21:45:48 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ab64b6814f7b0026d1166fb6e156c076726cc00c2d82847808142bf0b2ee83d`  
		Last Modified: Tue, 01 Sep 2026 21:45:48 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:latest` - unknown; unknown

```console
$ docker pull composer@sha256:589156411a1375f2070258855e4c47d7a776af9f57e712620055ab28d513da58
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ad54e65b069ec9ce26499c40b609b5c29a726e8d7ebdef8c80011b89395b071`

```dockerfile
```

-	Layers:
	-	`sha256:cb2c1f82e57d34a44eb33ffaeee961698f79163ee04a124dad452a25f5036377`  
		Last Modified: Tue, 01 Sep 2026 21:45:47 GMT  
		Size: 2.2 MB (2181120 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e26be227119b6d6682533f3b2f9bf40ffaba351208a1ca8508b47a3f478ad3f9`  
		Last Modified: Tue, 01 Sep 2026 21:45:47 GMT  
		Size: 30.7 KB (30734 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:latest` - linux; riscv64

```console
$ docker pull composer@sha256:6d5cee02dbd8b9783b13f230a3a9d3dd6ec1fe3f11573526cd73747b2e1cd857
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.5 MB (76541741 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d7ecd91a09ec93884df3606cb480c0c9ff84b23dc47637a7d8c402e3fdb18a8e`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

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
ENV PHP_VERSION=8.5.9
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.9.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.9.tar.xz.asc
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_SHA256=0db7855f25bcd0ab1d592cdb35e284d6f6a5d2ae0f6f621122e364cc39b708f4
# Fri, 31 Jul 2026 15:38:43 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Fri, 31 Jul 2026 15:38:43 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:39:28 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 31 Jul 2026 16:39:28 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 16:39:33 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 31 Jul 2026 16:39:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 31 Jul 2026 16:39:33 GMT
CMD ["php" "-a"]
# Sun, 02 Aug 2026 10:55:39 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Sun, 02 Aug 2026 10:55:39 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Sun, 02 Aug 2026 10:58:55 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Sun, 02 Aug 2026 10:58:55 GMT
ENV COMPOSER_HOME=/tmp
# Sun, 02 Aug 2026 10:58:55 GMT
ENV COMPOSER_VERSION=2.10.2
# Sun, 02 Aug 2026 10:58:55 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Sun, 02 Aug 2026 10:58:55 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Sun, 02 Aug 2026 10:58:55 GMT
WORKDIR /app
# Sun, 02 Aug 2026 10:58:55 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Sun, 02 Aug 2026 10:58:55 GMT
CMD ["composer"]
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
	-	`sha256:a7df51e776d51b2c750565c684f30f4e06d10bc1259d74f1b631d6003d171e4b`  
		Last Modified: Fri, 31 Jul 2026 16:40:43 GMT  
		Size: 14.4 MB (14442258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3f96528e027eab4a684a72c0207e130ea36c05cb028c2922950d4da17bd89a3`  
		Last Modified: Fri, 31 Jul 2026 16:40:39 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f18160cc91e034e63bc4a72b9c1db1836d0d67b9474a0153348bfeecac1ca89d`  
		Last Modified: Fri, 31 Jul 2026 16:40:44 GMT  
		Size: 21.7 MB (21652533 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:025f594674f41dd999ecbad66590b9827993dae0622ea94f865d56c349694fc2`  
		Last Modified: Fri, 31 Jul 2026 16:40:39 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af8860925b8736ecd5d8f6f30145567d508cfae3ad6134d3c365e0a88f49a8a9`  
		Last Modified: Fri, 31 Jul 2026 16:40:41 GMT  
		Size: 22.2 KB (22200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b1545ecdc4b4bdbd394e5907c38eb8ead7ecd7808723855cd3c176b9b0bb9d9`  
		Last Modified: Sun, 02 Aug 2026 11:00:33 GMT  
		Size: 32.2 MB (32161169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:069078bd1756a3fa0258ffe97461e01a39daa92ca4a890f0ef80ef1f14e2e4bf`  
		Last Modified: Sun, 02 Aug 2026 11:00:28 GMT  
		Size: 258.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6054ae93a79d698f5002e599e9d543691f10607558d9170cd3c6b67f84b4a3b4`  
		Last Modified: Sun, 02 Aug 2026 11:00:28 GMT  
		Size: 1.1 MB (1079653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f20d9c4dbfe26850b409cad6daf392dda93b635fbb13eb6f3090a330a9c1ea9d`  
		Last Modified: Sun, 02 Aug 2026 11:00:28 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ac9668cf042ce9dd288eddcd2dcfde1c8895ec5a0cd0a70ffb754ccaf12500e`  
		Last Modified: Sun, 02 Aug 2026 11:00:30 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:latest` - unknown; unknown

```console
$ docker pull composer@sha256:cd48bf7c1669fdba253563bc3dfef898adec9639ec36a648cc8c1c4516a56e3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211463 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:76d8d99a36f2f20f119df967161af2053c5e41b92e04cb149c08d532fc3c71fa`

```dockerfile
```

-	Layers:
	-	`sha256:6f09c18c9bfe350afa7cd352f79f8b716408f8cccdde705bc7495d23299a694d`  
		Last Modified: Sun, 02 Aug 2026 11:00:28 GMT  
		Size: 2.2 MB (2180738 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ce590558e20578bb76edb3d5395dff43300d07530b967b8f8467d945a4b37ba2`  
		Last Modified: Sun, 02 Aug 2026 11:00:27 GMT  
		Size: 30.7 KB (30725 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:latest` - linux; s390x

```console
$ docker pull composer@sha256:0fe91c1bec8b2a7c90e3b21cfa99dad7dd958fed8b9fea6697d771c41c4906ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79811770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:36a8d4f70dad8578dcb15dafb5f32d55a3fb2a10754434ebe680f9c808ac580c`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

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
# Tue, 01 Sep 2026 21:44:29 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Tue, 01 Sep 2026 21:44:29 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 01 Sep 2026 21:44:49 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 01 Sep 2026 21:44:49 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 01 Sep 2026 21:44:49 GMT
ENV COMPOSER_VERSION=2.10.3
# Tue, 01 Sep 2026 21:44:49 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 01 Sep 2026 21:44:50 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 01 Sep 2026 21:44:50 GMT
WORKDIR /app
# Tue, 01 Sep 2026 21:44:50 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 01 Sep 2026 21:44:50 GMT
CMD ["composer"]
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
	-	`sha256:6e692e9f384c488bd3f34ea4c5b20a8d4bce1e3257dbef6dee1f8617af78536f`  
		Last Modified: Tue, 01 Sep 2026 21:45:06 GMT  
		Size: 32.9 MB (32926127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12d3286804e5db7a7b5007ebcfe298bda1830a9f667c563e76e396e9d2144930`  
		Last Modified: Tue, 01 Sep 2026 21:45:05 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e575922f8362fe1bd82fcc01f1ef3183fc9d31a9cb9712382b6bcd89a302c1d`  
		Last Modified: Tue, 01 Sep 2026 21:45:05 GMT  
		Size: 1.1 MB (1086337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0de73cae5e8d4aef169c3bc618ca3892da413c0896e84d71a07a436185c8a039`  
		Last Modified: Tue, 01 Sep 2026 21:45:05 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7aab672307fe69b715bd5171c2d950d005183ed0659204e02e241e27d0f25294`  
		Last Modified: Tue, 01 Sep 2026 21:45:03 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:latest` - unknown; unknown

```console
$ docker pull composer@sha256:9a062f5998b0d9a462a4c6be44d6ea00cd39689d8fab880ae93f5c07d7d837b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbf3635e55d959c0042ad6d67c9afc722985e1737357144fe9ffcafdb9a079ab`

```dockerfile
```

-	Layers:
	-	`sha256:a7b64a23141a7cc687f961ae67dcb5c790af7dcd98343c0dadcf5bf88471d067`  
		Last Modified: Tue, 01 Sep 2026 21:45:05 GMT  
		Size: 2.2 MB (2180528 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:64bdf96792033049543d2a20ac4bd0942a2119358915ff7ed44fdb00ebb081fe`  
		Last Modified: Tue, 01 Sep 2026 21:45:05 GMT  
		Size: 30.7 KB (30686 bytes)  
		MIME: application/vnd.in-toto+json
