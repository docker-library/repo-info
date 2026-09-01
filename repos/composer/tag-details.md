<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `composer`

-	[`composer:2`](#composer2)
-	[`composer:2.10`](#composer210)
-	[`composer:2.10.2`](#composer2102)
-	[`composer:2.2`](#composer22)
-	[`composer:2.2.29`](#composer2229)
-	[`composer:latest`](#composerlatest)

## `composer:2`

```console
$ docker pull composer@sha256:d020706319701a44468968321dccd0fce6620190159a7a9ec195d78e6e971c71
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
$ docker pull composer@sha256:14c8664aefd7cbf544c6a0cc04025f1ee174200020b2847019985facc53f5794
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80166207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6be6463748878c9142ed712d76729c78dafcd41cea4b872eaafbb15bfd8f033`
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
# Mon, 31 Aug 2026 20:32:44 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:32:44 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Mon, 31 Aug 2026 20:33:00 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:33:00 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:33:00 GMT
ENV COMPOSER_VERSION=2.10.2
# Mon, 31 Aug 2026 20:33:00 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:33:00 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:33:00 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:33:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:33:00 GMT
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
	-	`sha256:56ed4aca8dec5a2282bedc13398e48251df5063dba7215021da4f6bffce9e698`  
		Last Modified: Mon, 31 Aug 2026 20:33:10 GMT  
		Size: 32.0 MB (31956882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:185bcd89196eeaa7f9ce0ec66c9458557d6f2b17e8e6cc36072761e528f1bc8b`  
		Last Modified: Mon, 31 Aug 2026 20:33:10 GMT  
		Size: 256.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab6acc32ba007a179dff4122a89d7e37949f3efa8c5be52868ddbe8576611706`  
		Last Modified: Mon, 31 Aug 2026 20:33:10 GMT  
		Size: 1.1 MB (1082638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869f165dda2b2a2efb06cd901cd0d8a8f8b9c84c6d221e99637fd1cebbaf4b13`  
		Last Modified: Mon, 31 Aug 2026 20:33:10 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0679e3ee32c6194f4eca78000e6589434781f71324dbc6602530ae94e8a88a57`  
		Last Modified: Mon, 31 Aug 2026 20:33:11 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2` - unknown; unknown

```console
$ docker pull composer@sha256:ac059f83f650cc10e913bc0fd36308756c58b0b6f21c812429c85dcc9b94e3f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84758cd73eb21d75b46a191d224f462a0458841e644c184dd06edee46c289f71`

```dockerfile
```

-	Layers:
	-	`sha256:4b6391cf2c3c4b54c8ef73095bb68a53151a696ed208eb04c435e3859513e572`  
		Last Modified: Mon, 31 Aug 2026 20:33:09 GMT  
		Size: 2.2 MB (2181272 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a9a8ecce870df0b27811db245a00c11ba70b3bd88b7b837b576d2864601b6e5`  
		Last Modified: Mon, 31 Aug 2026 20:33:09 GMT  
		Size: 30.7 KB (30686 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2` - linux; arm variant v6

```console
$ docker pull composer@sha256:d6e4968fb1c8291b4d849939841528268bca8ce3f0973d5eedef332d35e23adb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76126206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cdb0683206eef840e58fde71d7bec0d25f531105c931528e8cd96e486c0adf7`
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
# Mon, 31 Aug 2026 20:13:24 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:13:24 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Mon, 31 Aug 2026 20:13:46 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:13:46 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:13:46 GMT
ENV COMPOSER_VERSION=2.10.2
# Mon, 31 Aug 2026 20:13:46 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:13:46 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:13:46 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:13:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:13:46 GMT
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
	-	`sha256:732843856e507ba08625d86430b434aac21ef1e37832885420bf3d2d9ba5311f`  
		Last Modified: Mon, 31 Aug 2026 20:13:54 GMT  
		Size: 31.7 MB (31670791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3621a0092474cc5d489cd1a1e579d23aa5f44073019bcfcffecda182d95faa9`  
		Last Modified: Mon, 31 Aug 2026 20:13:53 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f77aea3e5f657c3b36ed840d5141a63f07249e007af9b045abb27fe9cc0a98`  
		Last Modified: Mon, 31 Aug 2026 20:13:53 GMT  
		Size: 1.1 MB (1083103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd46579f21b9fa80dac4931176370b610f94425d54adbd11ee7613abce9743e5`  
		Last Modified: Mon, 31 Aug 2026 20:13:53 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3781556ed6bb9d27eaea30c56f74aa1160b24119ed6145172f4ca061e7309835`  
		Last Modified: Mon, 31 Aug 2026 20:13:54 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2` - unknown; unknown

```console
$ docker pull composer@sha256:7d9391e0314bf029dba9aae8d0e6d3f662e8b5c51d28033e9ee6ad3c249561da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 KB (30577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e6507fabb5b6569cac6e1f3a8a1ae240f5bf070c5446f86fc75f1db9e78b4e1`

```dockerfile
```

-	Layers:
	-	`sha256:b2e5a0fe81caf2236640b8c8e307b8beeacb044b483abe6ac6b4135165e0a30d`  
		Last Modified: Mon, 31 Aug 2026 20:13:53 GMT  
		Size: 30.6 KB (30577 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2` - linux; arm variant v7

```console
$ docker pull composer@sha256:ef50c0c23a4b0b3a97c4f7d5592378028be67e6441d1e4ac5160fe620e1f2b41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (72955853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9111fd3cabd503ed2a4225ee15422723047e9cf35ccb703932b1cd8b6de83b23`
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
# Mon, 31 Aug 2026 20:15:56 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:15:56 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Mon, 31 Aug 2026 20:16:17 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:16:17 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:16:17 GMT
ENV COMPOSER_VERSION=2.10.2
# Mon, 31 Aug 2026 20:16:17 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:16:17 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:16:17 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:16:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:16:17 GMT
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
	-	`sha256:990659a70ee443fb25230283c473d83dd6410a56b58bd50bc11312f573118519`  
		Last Modified: Mon, 31 Aug 2026 20:16:26 GMT  
		Size: 30.3 MB (30275444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12fedb9ee26e12c08a04b43131f6e6198dceeb17aa93d948734c2ead6af54b72`  
		Last Modified: Mon, 31 Aug 2026 20:16:26 GMT  
		Size: 256.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55c2efdc4d2b68ca319d5267867ef2647a27e8b45609ecc3afe69c1fa8094f25`  
		Last Modified: Mon, 31 Aug 2026 20:16:26 GMT  
		Size: 1.1 MB (1073318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:975134d4226fea8b8a75d542ddf3faf9a192da13641aef37e7cd68426aa873a9`  
		Last Modified: Mon, 31 Aug 2026 20:16:25 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70526f80794e0875454a049004c79de945c58391959ca1f3118f0413d664a20a`  
		Last Modified: Mon, 31 Aug 2026 20:16:27 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2` - unknown; unknown

```console
$ docker pull composer@sha256:46e3a3dc8a0ff7a7c0f59107cc55444356061c51768a2ec6b32c2d752dc627f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e112508cd616560b530ac5f859b9c2d9e69581b25bb525d75b37375fe73af89`

```dockerfile
```

-	Layers:
	-	`sha256:9d54607bbf85c03a53bc10341ea2edfedea67d52f9fc0c80ea64fe8d31ebe20d`  
		Last Modified: Mon, 31 Aug 2026 20:16:25 GMT  
		Size: 2.2 MB (2180937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1851dab1d1eaf4b856224af2b3c2ae777208bc8226c51d979b1c7bf2e8e6a9a`  
		Last Modified: Mon, 31 Aug 2026 20:16:25 GMT  
		Size: 30.8 KB (30791 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2` - linux; arm64 variant v8

```console
$ docker pull composer@sha256:8240452f0023959559a1adad7208cfcfa6ac7cd8d7a12906c9ac92dc25bbadf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80128994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac1153768ddea9762a2e28b5ee0df2697965640ecf135ffaf20bf9aae9ab2391`
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
# Mon, 31 Aug 2026 20:13:22 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:13:22 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Mon, 31 Aug 2026 20:13:40 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:13:40 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:13:40 GMT
ENV COMPOSER_VERSION=2.10.2
# Mon, 31 Aug 2026 20:13:40 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:13:40 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:13:40 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:13:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:13:40 GMT
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
	-	`sha256:de0875996647edaf458d035b633ede336969bce0ace62a33d669c6e88bc7ba87`  
		Last Modified: Mon, 31 Aug 2026 20:13:51 GMT  
		Size: 32.1 MB (32098181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1254538e66419de4fd020cbf26e095ca165e4d3b9ad7f5ad32acb37ece7c2822`  
		Last Modified: Mon, 31 Aug 2026 20:13:50 GMT  
		Size: 259.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f70cad300e277786d4e0b6c3c9b5039cea397ce33aff7d1219cc599be1520d51`  
		Last Modified: Mon, 31 Aug 2026 20:13:51 GMT  
		Size: 1.1 MB (1081687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5f60572f84e6fe0901b1bdad939968df1223b71638f138744cb8361e206bc37`  
		Last Modified: Mon, 31 Aug 2026 20:13:51 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd2498f157797d0e02f36aa74e9b32bd261b6cfd5be4ffa519320204df78e20`  
		Last Modified: Mon, 31 Aug 2026 20:13:52 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2` - unknown; unknown

```console
$ docker pull composer@sha256:8dd08b2e96ccb7942d9caaa4bbe4a5f6158174e8d16665fe3afa1db0912323ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e29a1def9adb97767889aa593423d5a50f29ef7c901598d3470dd407ef0d884a`

```dockerfile
```

-	Layers:
	-	`sha256:45250a044fb679a9e21cd8270891a84674bdf2645e7e0d91da3ac288fb1aa05f`  
		Last Modified: Mon, 31 Aug 2026 20:13:50 GMT  
		Size: 2.2 MB (2180771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d33a865be734ba4f41caf7ededf714503b9d72e34660e3c0f0adbc6ae783c7e`  
		Last Modified: Mon, 31 Aug 2026 20:13:50 GMT  
		Size: 30.8 KB (30820 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2` - linux; 386

```console
$ docker pull composer@sha256:6532d411879016b32b9f75185f2968f5ee85dfa64eba0e7be80c7d6da53871bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80814787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7522d6c612843a77fd7ede18515a31effe5dfe90aeae43a48ee2257d10ba33f3`
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
# Mon, 31 Aug 2026 20:14:12 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:14:12 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Mon, 31 Aug 2026 20:14:28 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:14:28 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:14:28 GMT
ENV COMPOSER_VERSION=2.10.2
# Mon, 31 Aug 2026 20:14:28 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:14:29 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:14:29 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:14:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:14:29 GMT
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
	-	`sha256:8d4e9d549366e9bab044cd55e3a194a7b3d60ac88b2a98abd2967940d8e8e419`  
		Last Modified: Mon, 31 Aug 2026 20:14:39 GMT  
		Size: 32.5 MB (32471648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0885fe8e4271333a3de76a63907da174dc22f019460570fb194517b41211e087`  
		Last Modified: Mon, 31 Aug 2026 20:14:38 GMT  
		Size: 254.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e1d7dc64ccd5d2cd67410d703d55a4f9ca3ea4a4cb2ed790d83af4b8b8c4657`  
		Last Modified: Mon, 31 Aug 2026 20:14:38 GMT  
		Size: 1.1 MB (1094925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70f76680e8bd226184f7429d89ecd1147bdba38508f308997e2bb3064c7534e3`  
		Last Modified: Mon, 31 Aug 2026 20:14:38 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dc96cb30d1ec910bd2601cd880c5724f4ccb1e07b704525d018ca547e4e8e3a`  
		Last Modified: Mon, 31 Aug 2026 20:14:40 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2` - unknown; unknown

```console
$ docker pull composer@sha256:82ca5ff8a4863b495d1a86e3416a32eaed595a03ad1a693d390a622f589b9509
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1606e8c754654718241952fc955e89445377e953802e1bdf429288a12ae2664b`

```dockerfile
```

-	Layers:
	-	`sha256:ae59ba8fbf4adf354f2ba2e8b0ff16886ebe771303e8835411d701ff57568c1d`  
		Last Modified: Mon, 31 Aug 2026 20:14:38 GMT  
		Size: 2.2 MB (2181061 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6db5218f97687931645f2c0a0176b64ed09b85287967ff17d931041e2be132b2`  
		Last Modified: Mon, 31 Aug 2026 20:14:38 GMT  
		Size: 30.6 KB (30650 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2` - linux; ppc64le

```console
$ docker pull composer@sha256:b9c31c76fa46b2ddcd9575d5ec507e822acbe9c0f3f3302c8dfef858fa20e598
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81401761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:166cb3bf4e2bd0907241c62e23f2aa8cc7362e26445ab5eeb4d6f216c433c33a`
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
# Mon, 31 Aug 2026 20:54:17 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:54:17 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:54:17 GMT
ENV COMPOSER_VERSION=2.10.2
# Mon, 31 Aug 2026 20:54:17 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:54:17 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:54:17 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:54:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:54:17 GMT
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
	-	`sha256:442704e8042f822f073201eede8e13dd18866ef2febc0afd45bd95927a7485c0`  
		Last Modified: Mon, 31 Aug 2026 20:54:35 GMT  
		Size: 1.1 MB (1088963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:288f367807ca5563ba3270c6cd79a541b6faf15ce5462829927d7d161d7f0949`  
		Last Modified: Mon, 31 Aug 2026 20:54:35 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d62d6c6156f4e3a9fa549b6a1de31617ee5c2974db2004e49d383fa1b3f9ae6c`  
		Last Modified: Mon, 31 Aug 2026 20:54:36 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2` - unknown; unknown

```console
$ docker pull composer@sha256:281359da52cd71873e80350edc6861d0afa34aa943abab463a254ba346aceb36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da24c63bc79e5bce703fa897cae26fc1a5a5ff66f14a3f243e51c9a6709d6b09`

```dockerfile
```

-	Layers:
	-	`sha256:28559eef83bdd2da7197fe23efff45ae4128a14a623e12fdc487cab5dbc1478f`  
		Last Modified: Mon, 31 Aug 2026 20:54:35 GMT  
		Size: 2.2 MB (2181120 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bf6a85e88bfddd8179de8a81c2d81d5f8c8b651cf3969667027862b58c22bea`  
		Last Modified: Mon, 31 Aug 2026 20:54:34 GMT  
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
$ docker pull composer@sha256:ff86a5f2472a1179654f66122772394bb945f5def87b2c5b58aa757b6bd59588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79810723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f661ae9b0b71290c39f2d90d0f27e91842951b988db2647e8b2d1c48af00306`
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
# Mon, 31 Aug 2026 20:14:53 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:14:53 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:14:53 GMT
ENV COMPOSER_VERSION=2.10.2
# Mon, 31 Aug 2026 20:14:53 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:14:54 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:14:54 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:14:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:14:54 GMT
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
	-	`sha256:3a5ba72f831ba892eb5fdc8331a5a48a6e6b703f9304de452438ba6175555f61`  
		Last Modified: Mon, 31 Aug 2026 20:15:09 GMT  
		Size: 1.1 MB (1085810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a1155121232268560e2651139a68908eca4ffb9a2fd40e820a3473f99e8731b`  
		Last Modified: Mon, 31 Aug 2026 20:15:09 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ae1675e5c9284df60839fa4aac045f51779c2ab02a44548949d54a76b05115`  
		Last Modified: Mon, 31 Aug 2026 20:15:00 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2` - unknown; unknown

```console
$ docker pull composer@sha256:7b38471130353827139ab4be24015590be4a88953848f6e794e97439b7af1f89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:398169e5e99d350f5f59918ace4586a70b696568f5a26a5490fdd5a6c5939605`

```dockerfile
```

-	Layers:
	-	`sha256:866d403c6158813596c5792265f6a05a272f3b323647b0d9e349496e0afb75d5`  
		Last Modified: Mon, 31 Aug 2026 20:15:09 GMT  
		Size: 2.2 MB (2180528 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c705c17875a5ab9091ab67a3bfae42bfd4074da24330f6584293774849da1f6`  
		Last Modified: Mon, 31 Aug 2026 20:15:09 GMT  
		Size: 30.7 KB (30686 bytes)  
		MIME: application/vnd.in-toto+json

## `composer:2.10`

```console
$ docker pull composer@sha256:d020706319701a44468968321dccd0fce6620190159a7a9ec195d78e6e971c71
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
$ docker pull composer@sha256:14c8664aefd7cbf544c6a0cc04025f1ee174200020b2847019985facc53f5794
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80166207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6be6463748878c9142ed712d76729c78dafcd41cea4b872eaafbb15bfd8f033`
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
# Mon, 31 Aug 2026 20:32:44 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:32:44 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Mon, 31 Aug 2026 20:33:00 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:33:00 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:33:00 GMT
ENV COMPOSER_VERSION=2.10.2
# Mon, 31 Aug 2026 20:33:00 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:33:00 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:33:00 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:33:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:33:00 GMT
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
	-	`sha256:56ed4aca8dec5a2282bedc13398e48251df5063dba7215021da4f6bffce9e698`  
		Last Modified: Mon, 31 Aug 2026 20:33:10 GMT  
		Size: 32.0 MB (31956882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:185bcd89196eeaa7f9ce0ec66c9458557d6f2b17e8e6cc36072761e528f1bc8b`  
		Last Modified: Mon, 31 Aug 2026 20:33:10 GMT  
		Size: 256.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab6acc32ba007a179dff4122a89d7e37949f3efa8c5be52868ddbe8576611706`  
		Last Modified: Mon, 31 Aug 2026 20:33:10 GMT  
		Size: 1.1 MB (1082638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869f165dda2b2a2efb06cd901cd0d8a8f8b9c84c6d221e99637fd1cebbaf4b13`  
		Last Modified: Mon, 31 Aug 2026 20:33:10 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0679e3ee32c6194f4eca78000e6589434781f71324dbc6602530ae94e8a88a57`  
		Last Modified: Mon, 31 Aug 2026 20:33:11 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.10` - unknown; unknown

```console
$ docker pull composer@sha256:ac059f83f650cc10e913bc0fd36308756c58b0b6f21c812429c85dcc9b94e3f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84758cd73eb21d75b46a191d224f462a0458841e644c184dd06edee46c289f71`

```dockerfile
```

-	Layers:
	-	`sha256:4b6391cf2c3c4b54c8ef73095bb68a53151a696ed208eb04c435e3859513e572`  
		Last Modified: Mon, 31 Aug 2026 20:33:09 GMT  
		Size: 2.2 MB (2181272 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a9a8ecce870df0b27811db245a00c11ba70b3bd88b7b837b576d2864601b6e5`  
		Last Modified: Mon, 31 Aug 2026 20:33:09 GMT  
		Size: 30.7 KB (30686 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.10` - linux; arm variant v6

```console
$ docker pull composer@sha256:d6e4968fb1c8291b4d849939841528268bca8ce3f0973d5eedef332d35e23adb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76126206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cdb0683206eef840e58fde71d7bec0d25f531105c931528e8cd96e486c0adf7`
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
# Mon, 31 Aug 2026 20:13:24 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:13:24 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Mon, 31 Aug 2026 20:13:46 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:13:46 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:13:46 GMT
ENV COMPOSER_VERSION=2.10.2
# Mon, 31 Aug 2026 20:13:46 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:13:46 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:13:46 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:13:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:13:46 GMT
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
	-	`sha256:732843856e507ba08625d86430b434aac21ef1e37832885420bf3d2d9ba5311f`  
		Last Modified: Mon, 31 Aug 2026 20:13:54 GMT  
		Size: 31.7 MB (31670791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3621a0092474cc5d489cd1a1e579d23aa5f44073019bcfcffecda182d95faa9`  
		Last Modified: Mon, 31 Aug 2026 20:13:53 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f77aea3e5f657c3b36ed840d5141a63f07249e007af9b045abb27fe9cc0a98`  
		Last Modified: Mon, 31 Aug 2026 20:13:53 GMT  
		Size: 1.1 MB (1083103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd46579f21b9fa80dac4931176370b610f94425d54adbd11ee7613abce9743e5`  
		Last Modified: Mon, 31 Aug 2026 20:13:53 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3781556ed6bb9d27eaea30c56f74aa1160b24119ed6145172f4ca061e7309835`  
		Last Modified: Mon, 31 Aug 2026 20:13:54 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.10` - unknown; unknown

```console
$ docker pull composer@sha256:7d9391e0314bf029dba9aae8d0e6d3f662e8b5c51d28033e9ee6ad3c249561da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 KB (30577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e6507fabb5b6569cac6e1f3a8a1ae240f5bf070c5446f86fc75f1db9e78b4e1`

```dockerfile
```

-	Layers:
	-	`sha256:b2e5a0fe81caf2236640b8c8e307b8beeacb044b483abe6ac6b4135165e0a30d`  
		Last Modified: Mon, 31 Aug 2026 20:13:53 GMT  
		Size: 30.6 KB (30577 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.10` - linux; arm variant v7

```console
$ docker pull composer@sha256:ef50c0c23a4b0b3a97c4f7d5592378028be67e6441d1e4ac5160fe620e1f2b41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (72955853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9111fd3cabd503ed2a4225ee15422723047e9cf35ccb703932b1cd8b6de83b23`
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
# Mon, 31 Aug 2026 20:15:56 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:15:56 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Mon, 31 Aug 2026 20:16:17 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:16:17 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:16:17 GMT
ENV COMPOSER_VERSION=2.10.2
# Mon, 31 Aug 2026 20:16:17 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:16:17 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:16:17 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:16:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:16:17 GMT
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
	-	`sha256:990659a70ee443fb25230283c473d83dd6410a56b58bd50bc11312f573118519`  
		Last Modified: Mon, 31 Aug 2026 20:16:26 GMT  
		Size: 30.3 MB (30275444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12fedb9ee26e12c08a04b43131f6e6198dceeb17aa93d948734c2ead6af54b72`  
		Last Modified: Mon, 31 Aug 2026 20:16:26 GMT  
		Size: 256.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55c2efdc4d2b68ca319d5267867ef2647a27e8b45609ecc3afe69c1fa8094f25`  
		Last Modified: Mon, 31 Aug 2026 20:16:26 GMT  
		Size: 1.1 MB (1073318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:975134d4226fea8b8a75d542ddf3faf9a192da13641aef37e7cd68426aa873a9`  
		Last Modified: Mon, 31 Aug 2026 20:16:25 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70526f80794e0875454a049004c79de945c58391959ca1f3118f0413d664a20a`  
		Last Modified: Mon, 31 Aug 2026 20:16:27 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.10` - unknown; unknown

```console
$ docker pull composer@sha256:46e3a3dc8a0ff7a7c0f59107cc55444356061c51768a2ec6b32c2d752dc627f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e112508cd616560b530ac5f859b9c2d9e69581b25bb525d75b37375fe73af89`

```dockerfile
```

-	Layers:
	-	`sha256:9d54607bbf85c03a53bc10341ea2edfedea67d52f9fc0c80ea64fe8d31ebe20d`  
		Last Modified: Mon, 31 Aug 2026 20:16:25 GMT  
		Size: 2.2 MB (2180937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1851dab1d1eaf4b856224af2b3c2ae777208bc8226c51d979b1c7bf2e8e6a9a`  
		Last Modified: Mon, 31 Aug 2026 20:16:25 GMT  
		Size: 30.8 KB (30791 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.10` - linux; arm64 variant v8

```console
$ docker pull composer@sha256:8240452f0023959559a1adad7208cfcfa6ac7cd8d7a12906c9ac92dc25bbadf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80128994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac1153768ddea9762a2e28b5ee0df2697965640ecf135ffaf20bf9aae9ab2391`
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
# Mon, 31 Aug 2026 20:13:22 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:13:22 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Mon, 31 Aug 2026 20:13:40 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:13:40 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:13:40 GMT
ENV COMPOSER_VERSION=2.10.2
# Mon, 31 Aug 2026 20:13:40 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:13:40 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:13:40 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:13:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:13:40 GMT
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
	-	`sha256:de0875996647edaf458d035b633ede336969bce0ace62a33d669c6e88bc7ba87`  
		Last Modified: Mon, 31 Aug 2026 20:13:51 GMT  
		Size: 32.1 MB (32098181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1254538e66419de4fd020cbf26e095ca165e4d3b9ad7f5ad32acb37ece7c2822`  
		Last Modified: Mon, 31 Aug 2026 20:13:50 GMT  
		Size: 259.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f70cad300e277786d4e0b6c3c9b5039cea397ce33aff7d1219cc599be1520d51`  
		Last Modified: Mon, 31 Aug 2026 20:13:51 GMT  
		Size: 1.1 MB (1081687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5f60572f84e6fe0901b1bdad939968df1223b71638f138744cb8361e206bc37`  
		Last Modified: Mon, 31 Aug 2026 20:13:51 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd2498f157797d0e02f36aa74e9b32bd261b6cfd5be4ffa519320204df78e20`  
		Last Modified: Mon, 31 Aug 2026 20:13:52 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.10` - unknown; unknown

```console
$ docker pull composer@sha256:8dd08b2e96ccb7942d9caaa4bbe4a5f6158174e8d16665fe3afa1db0912323ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e29a1def9adb97767889aa593423d5a50f29ef7c901598d3470dd407ef0d884a`

```dockerfile
```

-	Layers:
	-	`sha256:45250a044fb679a9e21cd8270891a84674bdf2645e7e0d91da3ac288fb1aa05f`  
		Last Modified: Mon, 31 Aug 2026 20:13:50 GMT  
		Size: 2.2 MB (2180771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d33a865be734ba4f41caf7ededf714503b9d72e34660e3c0f0adbc6ae783c7e`  
		Last Modified: Mon, 31 Aug 2026 20:13:50 GMT  
		Size: 30.8 KB (30820 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.10` - linux; 386

```console
$ docker pull composer@sha256:6532d411879016b32b9f75185f2968f5ee85dfa64eba0e7be80c7d6da53871bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80814787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7522d6c612843a77fd7ede18515a31effe5dfe90aeae43a48ee2257d10ba33f3`
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
# Mon, 31 Aug 2026 20:14:12 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:14:12 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Mon, 31 Aug 2026 20:14:28 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:14:28 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:14:28 GMT
ENV COMPOSER_VERSION=2.10.2
# Mon, 31 Aug 2026 20:14:28 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:14:29 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:14:29 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:14:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:14:29 GMT
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
	-	`sha256:8d4e9d549366e9bab044cd55e3a194a7b3d60ac88b2a98abd2967940d8e8e419`  
		Last Modified: Mon, 31 Aug 2026 20:14:39 GMT  
		Size: 32.5 MB (32471648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0885fe8e4271333a3de76a63907da174dc22f019460570fb194517b41211e087`  
		Last Modified: Mon, 31 Aug 2026 20:14:38 GMT  
		Size: 254.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e1d7dc64ccd5d2cd67410d703d55a4f9ca3ea4a4cb2ed790d83af4b8b8c4657`  
		Last Modified: Mon, 31 Aug 2026 20:14:38 GMT  
		Size: 1.1 MB (1094925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70f76680e8bd226184f7429d89ecd1147bdba38508f308997e2bb3064c7534e3`  
		Last Modified: Mon, 31 Aug 2026 20:14:38 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dc96cb30d1ec910bd2601cd880c5724f4ccb1e07b704525d018ca547e4e8e3a`  
		Last Modified: Mon, 31 Aug 2026 20:14:40 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.10` - unknown; unknown

```console
$ docker pull composer@sha256:82ca5ff8a4863b495d1a86e3416a32eaed595a03ad1a693d390a622f589b9509
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1606e8c754654718241952fc955e89445377e953802e1bdf429288a12ae2664b`

```dockerfile
```

-	Layers:
	-	`sha256:ae59ba8fbf4adf354f2ba2e8b0ff16886ebe771303e8835411d701ff57568c1d`  
		Last Modified: Mon, 31 Aug 2026 20:14:38 GMT  
		Size: 2.2 MB (2181061 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6db5218f97687931645f2c0a0176b64ed09b85287967ff17d931041e2be132b2`  
		Last Modified: Mon, 31 Aug 2026 20:14:38 GMT  
		Size: 30.6 KB (30650 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.10` - linux; ppc64le

```console
$ docker pull composer@sha256:b9c31c76fa46b2ddcd9575d5ec507e822acbe9c0f3f3302c8dfef858fa20e598
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81401761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:166cb3bf4e2bd0907241c62e23f2aa8cc7362e26445ab5eeb4d6f216c433c33a`
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
# Mon, 31 Aug 2026 20:54:17 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:54:17 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:54:17 GMT
ENV COMPOSER_VERSION=2.10.2
# Mon, 31 Aug 2026 20:54:17 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:54:17 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:54:17 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:54:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:54:17 GMT
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
	-	`sha256:442704e8042f822f073201eede8e13dd18866ef2febc0afd45bd95927a7485c0`  
		Last Modified: Mon, 31 Aug 2026 20:54:35 GMT  
		Size: 1.1 MB (1088963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:288f367807ca5563ba3270c6cd79a541b6faf15ce5462829927d7d161d7f0949`  
		Last Modified: Mon, 31 Aug 2026 20:54:35 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d62d6c6156f4e3a9fa549b6a1de31617ee5c2974db2004e49d383fa1b3f9ae6c`  
		Last Modified: Mon, 31 Aug 2026 20:54:36 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.10` - unknown; unknown

```console
$ docker pull composer@sha256:281359da52cd71873e80350edc6861d0afa34aa943abab463a254ba346aceb36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da24c63bc79e5bce703fa897cae26fc1a5a5ff66f14a3f243e51c9a6709d6b09`

```dockerfile
```

-	Layers:
	-	`sha256:28559eef83bdd2da7197fe23efff45ae4128a14a623e12fdc487cab5dbc1478f`  
		Last Modified: Mon, 31 Aug 2026 20:54:35 GMT  
		Size: 2.2 MB (2181120 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bf6a85e88bfddd8179de8a81c2d81d5f8c8b651cf3969667027862b58c22bea`  
		Last Modified: Mon, 31 Aug 2026 20:54:34 GMT  
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
$ docker pull composer@sha256:ff86a5f2472a1179654f66122772394bb945f5def87b2c5b58aa757b6bd59588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79810723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f661ae9b0b71290c39f2d90d0f27e91842951b988db2647e8b2d1c48af00306`
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
# Mon, 31 Aug 2026 20:14:53 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:14:53 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:14:53 GMT
ENV COMPOSER_VERSION=2.10.2
# Mon, 31 Aug 2026 20:14:53 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:14:54 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:14:54 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:14:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:14:54 GMT
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
	-	`sha256:3a5ba72f831ba892eb5fdc8331a5a48a6e6b703f9304de452438ba6175555f61`  
		Last Modified: Mon, 31 Aug 2026 20:15:09 GMT  
		Size: 1.1 MB (1085810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a1155121232268560e2651139a68908eca4ffb9a2fd40e820a3473f99e8731b`  
		Last Modified: Mon, 31 Aug 2026 20:15:09 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ae1675e5c9284df60839fa4aac045f51779c2ab02a44548949d54a76b05115`  
		Last Modified: Mon, 31 Aug 2026 20:15:00 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.10` - unknown; unknown

```console
$ docker pull composer@sha256:7b38471130353827139ab4be24015590be4a88953848f6e794e97439b7af1f89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:398169e5e99d350f5f59918ace4586a70b696568f5a26a5490fdd5a6c5939605`

```dockerfile
```

-	Layers:
	-	`sha256:866d403c6158813596c5792265f6a05a272f3b323647b0d9e349496e0afb75d5`  
		Last Modified: Mon, 31 Aug 2026 20:15:09 GMT  
		Size: 2.2 MB (2180528 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c705c17875a5ab9091ab67a3bfae42bfd4074da24330f6584293774849da1f6`  
		Last Modified: Mon, 31 Aug 2026 20:15:09 GMT  
		Size: 30.7 KB (30686 bytes)  
		MIME: application/vnd.in-toto+json

## `composer:2.10.2`

```console
$ docker pull composer@sha256:d020706319701a44468968321dccd0fce6620190159a7a9ec195d78e6e971c71
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

### `composer:2.10.2` - linux; amd64

```console
$ docker pull composer@sha256:14c8664aefd7cbf544c6a0cc04025f1ee174200020b2847019985facc53f5794
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80166207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6be6463748878c9142ed712d76729c78dafcd41cea4b872eaafbb15bfd8f033`
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
# Mon, 31 Aug 2026 20:32:44 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:32:44 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Mon, 31 Aug 2026 20:33:00 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:33:00 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:33:00 GMT
ENV COMPOSER_VERSION=2.10.2
# Mon, 31 Aug 2026 20:33:00 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:33:00 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:33:00 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:33:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:33:00 GMT
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
	-	`sha256:56ed4aca8dec5a2282bedc13398e48251df5063dba7215021da4f6bffce9e698`  
		Last Modified: Mon, 31 Aug 2026 20:33:10 GMT  
		Size: 32.0 MB (31956882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:185bcd89196eeaa7f9ce0ec66c9458557d6f2b17e8e6cc36072761e528f1bc8b`  
		Last Modified: Mon, 31 Aug 2026 20:33:10 GMT  
		Size: 256.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab6acc32ba007a179dff4122a89d7e37949f3efa8c5be52868ddbe8576611706`  
		Last Modified: Mon, 31 Aug 2026 20:33:10 GMT  
		Size: 1.1 MB (1082638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869f165dda2b2a2efb06cd901cd0d8a8f8b9c84c6d221e99637fd1cebbaf4b13`  
		Last Modified: Mon, 31 Aug 2026 20:33:10 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0679e3ee32c6194f4eca78000e6589434781f71324dbc6602530ae94e8a88a57`  
		Last Modified: Mon, 31 Aug 2026 20:33:11 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.10.2` - unknown; unknown

```console
$ docker pull composer@sha256:ac059f83f650cc10e913bc0fd36308756c58b0b6f21c812429c85dcc9b94e3f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84758cd73eb21d75b46a191d224f462a0458841e644c184dd06edee46c289f71`

```dockerfile
```

-	Layers:
	-	`sha256:4b6391cf2c3c4b54c8ef73095bb68a53151a696ed208eb04c435e3859513e572`  
		Last Modified: Mon, 31 Aug 2026 20:33:09 GMT  
		Size: 2.2 MB (2181272 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a9a8ecce870df0b27811db245a00c11ba70b3bd88b7b837b576d2864601b6e5`  
		Last Modified: Mon, 31 Aug 2026 20:33:09 GMT  
		Size: 30.7 KB (30686 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.10.2` - linux; arm variant v6

```console
$ docker pull composer@sha256:d6e4968fb1c8291b4d849939841528268bca8ce3f0973d5eedef332d35e23adb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76126206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cdb0683206eef840e58fde71d7bec0d25f531105c931528e8cd96e486c0adf7`
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
# Mon, 31 Aug 2026 20:13:24 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:13:24 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Mon, 31 Aug 2026 20:13:46 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:13:46 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:13:46 GMT
ENV COMPOSER_VERSION=2.10.2
# Mon, 31 Aug 2026 20:13:46 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:13:46 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:13:46 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:13:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:13:46 GMT
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
	-	`sha256:732843856e507ba08625d86430b434aac21ef1e37832885420bf3d2d9ba5311f`  
		Last Modified: Mon, 31 Aug 2026 20:13:54 GMT  
		Size: 31.7 MB (31670791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3621a0092474cc5d489cd1a1e579d23aa5f44073019bcfcffecda182d95faa9`  
		Last Modified: Mon, 31 Aug 2026 20:13:53 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f77aea3e5f657c3b36ed840d5141a63f07249e007af9b045abb27fe9cc0a98`  
		Last Modified: Mon, 31 Aug 2026 20:13:53 GMT  
		Size: 1.1 MB (1083103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd46579f21b9fa80dac4931176370b610f94425d54adbd11ee7613abce9743e5`  
		Last Modified: Mon, 31 Aug 2026 20:13:53 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3781556ed6bb9d27eaea30c56f74aa1160b24119ed6145172f4ca061e7309835`  
		Last Modified: Mon, 31 Aug 2026 20:13:54 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.10.2` - unknown; unknown

```console
$ docker pull composer@sha256:7d9391e0314bf029dba9aae8d0e6d3f662e8b5c51d28033e9ee6ad3c249561da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 KB (30577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e6507fabb5b6569cac6e1f3a8a1ae240f5bf070c5446f86fc75f1db9e78b4e1`

```dockerfile
```

-	Layers:
	-	`sha256:b2e5a0fe81caf2236640b8c8e307b8beeacb044b483abe6ac6b4135165e0a30d`  
		Last Modified: Mon, 31 Aug 2026 20:13:53 GMT  
		Size: 30.6 KB (30577 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.10.2` - linux; arm variant v7

```console
$ docker pull composer@sha256:ef50c0c23a4b0b3a97c4f7d5592378028be67e6441d1e4ac5160fe620e1f2b41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (72955853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9111fd3cabd503ed2a4225ee15422723047e9cf35ccb703932b1cd8b6de83b23`
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
# Mon, 31 Aug 2026 20:15:56 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:15:56 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Mon, 31 Aug 2026 20:16:17 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:16:17 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:16:17 GMT
ENV COMPOSER_VERSION=2.10.2
# Mon, 31 Aug 2026 20:16:17 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:16:17 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:16:17 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:16:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:16:17 GMT
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
	-	`sha256:990659a70ee443fb25230283c473d83dd6410a56b58bd50bc11312f573118519`  
		Last Modified: Mon, 31 Aug 2026 20:16:26 GMT  
		Size: 30.3 MB (30275444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12fedb9ee26e12c08a04b43131f6e6198dceeb17aa93d948734c2ead6af54b72`  
		Last Modified: Mon, 31 Aug 2026 20:16:26 GMT  
		Size: 256.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55c2efdc4d2b68ca319d5267867ef2647a27e8b45609ecc3afe69c1fa8094f25`  
		Last Modified: Mon, 31 Aug 2026 20:16:26 GMT  
		Size: 1.1 MB (1073318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:975134d4226fea8b8a75d542ddf3faf9a192da13641aef37e7cd68426aa873a9`  
		Last Modified: Mon, 31 Aug 2026 20:16:25 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70526f80794e0875454a049004c79de945c58391959ca1f3118f0413d664a20a`  
		Last Modified: Mon, 31 Aug 2026 20:16:27 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.10.2` - unknown; unknown

```console
$ docker pull composer@sha256:46e3a3dc8a0ff7a7c0f59107cc55444356061c51768a2ec6b32c2d752dc627f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e112508cd616560b530ac5f859b9c2d9e69581b25bb525d75b37375fe73af89`

```dockerfile
```

-	Layers:
	-	`sha256:9d54607bbf85c03a53bc10341ea2edfedea67d52f9fc0c80ea64fe8d31ebe20d`  
		Last Modified: Mon, 31 Aug 2026 20:16:25 GMT  
		Size: 2.2 MB (2180937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1851dab1d1eaf4b856224af2b3c2ae777208bc8226c51d979b1c7bf2e8e6a9a`  
		Last Modified: Mon, 31 Aug 2026 20:16:25 GMT  
		Size: 30.8 KB (30791 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.10.2` - linux; arm64 variant v8

```console
$ docker pull composer@sha256:8240452f0023959559a1adad7208cfcfa6ac7cd8d7a12906c9ac92dc25bbadf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80128994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac1153768ddea9762a2e28b5ee0df2697965640ecf135ffaf20bf9aae9ab2391`
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
# Mon, 31 Aug 2026 20:13:22 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:13:22 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Mon, 31 Aug 2026 20:13:40 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:13:40 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:13:40 GMT
ENV COMPOSER_VERSION=2.10.2
# Mon, 31 Aug 2026 20:13:40 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:13:40 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:13:40 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:13:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:13:40 GMT
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
	-	`sha256:de0875996647edaf458d035b633ede336969bce0ace62a33d669c6e88bc7ba87`  
		Last Modified: Mon, 31 Aug 2026 20:13:51 GMT  
		Size: 32.1 MB (32098181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1254538e66419de4fd020cbf26e095ca165e4d3b9ad7f5ad32acb37ece7c2822`  
		Last Modified: Mon, 31 Aug 2026 20:13:50 GMT  
		Size: 259.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f70cad300e277786d4e0b6c3c9b5039cea397ce33aff7d1219cc599be1520d51`  
		Last Modified: Mon, 31 Aug 2026 20:13:51 GMT  
		Size: 1.1 MB (1081687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5f60572f84e6fe0901b1bdad939968df1223b71638f138744cb8361e206bc37`  
		Last Modified: Mon, 31 Aug 2026 20:13:51 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd2498f157797d0e02f36aa74e9b32bd261b6cfd5be4ffa519320204df78e20`  
		Last Modified: Mon, 31 Aug 2026 20:13:52 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.10.2` - unknown; unknown

```console
$ docker pull composer@sha256:8dd08b2e96ccb7942d9caaa4bbe4a5f6158174e8d16665fe3afa1db0912323ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e29a1def9adb97767889aa593423d5a50f29ef7c901598d3470dd407ef0d884a`

```dockerfile
```

-	Layers:
	-	`sha256:45250a044fb679a9e21cd8270891a84674bdf2645e7e0d91da3ac288fb1aa05f`  
		Last Modified: Mon, 31 Aug 2026 20:13:50 GMT  
		Size: 2.2 MB (2180771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d33a865be734ba4f41caf7ededf714503b9d72e34660e3c0f0adbc6ae783c7e`  
		Last Modified: Mon, 31 Aug 2026 20:13:50 GMT  
		Size: 30.8 KB (30820 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.10.2` - linux; 386

```console
$ docker pull composer@sha256:6532d411879016b32b9f75185f2968f5ee85dfa64eba0e7be80c7d6da53871bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80814787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7522d6c612843a77fd7ede18515a31effe5dfe90aeae43a48ee2257d10ba33f3`
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
# Mon, 31 Aug 2026 20:14:12 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:14:12 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Mon, 31 Aug 2026 20:14:28 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:14:28 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:14:28 GMT
ENV COMPOSER_VERSION=2.10.2
# Mon, 31 Aug 2026 20:14:28 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:14:29 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:14:29 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:14:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:14:29 GMT
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
	-	`sha256:8d4e9d549366e9bab044cd55e3a194a7b3d60ac88b2a98abd2967940d8e8e419`  
		Last Modified: Mon, 31 Aug 2026 20:14:39 GMT  
		Size: 32.5 MB (32471648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0885fe8e4271333a3de76a63907da174dc22f019460570fb194517b41211e087`  
		Last Modified: Mon, 31 Aug 2026 20:14:38 GMT  
		Size: 254.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e1d7dc64ccd5d2cd67410d703d55a4f9ca3ea4a4cb2ed790d83af4b8b8c4657`  
		Last Modified: Mon, 31 Aug 2026 20:14:38 GMT  
		Size: 1.1 MB (1094925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70f76680e8bd226184f7429d89ecd1147bdba38508f308997e2bb3064c7534e3`  
		Last Modified: Mon, 31 Aug 2026 20:14:38 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dc96cb30d1ec910bd2601cd880c5724f4ccb1e07b704525d018ca547e4e8e3a`  
		Last Modified: Mon, 31 Aug 2026 20:14:40 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.10.2` - unknown; unknown

```console
$ docker pull composer@sha256:82ca5ff8a4863b495d1a86e3416a32eaed595a03ad1a693d390a622f589b9509
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1606e8c754654718241952fc955e89445377e953802e1bdf429288a12ae2664b`

```dockerfile
```

-	Layers:
	-	`sha256:ae59ba8fbf4adf354f2ba2e8b0ff16886ebe771303e8835411d701ff57568c1d`  
		Last Modified: Mon, 31 Aug 2026 20:14:38 GMT  
		Size: 2.2 MB (2181061 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6db5218f97687931645f2c0a0176b64ed09b85287967ff17d931041e2be132b2`  
		Last Modified: Mon, 31 Aug 2026 20:14:38 GMT  
		Size: 30.6 KB (30650 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.10.2` - linux; ppc64le

```console
$ docker pull composer@sha256:b9c31c76fa46b2ddcd9575d5ec507e822acbe9c0f3f3302c8dfef858fa20e598
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81401761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:166cb3bf4e2bd0907241c62e23f2aa8cc7362e26445ab5eeb4d6f216c433c33a`
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
# Mon, 31 Aug 2026 20:54:17 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:54:17 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:54:17 GMT
ENV COMPOSER_VERSION=2.10.2
# Mon, 31 Aug 2026 20:54:17 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:54:17 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:54:17 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:54:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:54:17 GMT
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
	-	`sha256:442704e8042f822f073201eede8e13dd18866ef2febc0afd45bd95927a7485c0`  
		Last Modified: Mon, 31 Aug 2026 20:54:35 GMT  
		Size: 1.1 MB (1088963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:288f367807ca5563ba3270c6cd79a541b6faf15ce5462829927d7d161d7f0949`  
		Last Modified: Mon, 31 Aug 2026 20:54:35 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d62d6c6156f4e3a9fa549b6a1de31617ee5c2974db2004e49d383fa1b3f9ae6c`  
		Last Modified: Mon, 31 Aug 2026 20:54:36 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.10.2` - unknown; unknown

```console
$ docker pull composer@sha256:281359da52cd71873e80350edc6861d0afa34aa943abab463a254ba346aceb36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da24c63bc79e5bce703fa897cae26fc1a5a5ff66f14a3f243e51c9a6709d6b09`

```dockerfile
```

-	Layers:
	-	`sha256:28559eef83bdd2da7197fe23efff45ae4128a14a623e12fdc487cab5dbc1478f`  
		Last Modified: Mon, 31 Aug 2026 20:54:35 GMT  
		Size: 2.2 MB (2181120 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bf6a85e88bfddd8179de8a81c2d81d5f8c8b651cf3969667027862b58c22bea`  
		Last Modified: Mon, 31 Aug 2026 20:54:34 GMT  
		Size: 30.7 KB (30734 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.10.2` - linux; riscv64

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

### `composer:2.10.2` - unknown; unknown

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

### `composer:2.10.2` - linux; s390x

```console
$ docker pull composer@sha256:ff86a5f2472a1179654f66122772394bb945f5def87b2c5b58aa757b6bd59588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79810723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f661ae9b0b71290c39f2d90d0f27e91842951b988db2647e8b2d1c48af00306`
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
# Mon, 31 Aug 2026 20:14:53 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:14:53 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:14:53 GMT
ENV COMPOSER_VERSION=2.10.2
# Mon, 31 Aug 2026 20:14:53 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:14:54 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:14:54 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:14:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:14:54 GMT
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
	-	`sha256:3a5ba72f831ba892eb5fdc8331a5a48a6e6b703f9304de452438ba6175555f61`  
		Last Modified: Mon, 31 Aug 2026 20:15:09 GMT  
		Size: 1.1 MB (1085810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a1155121232268560e2651139a68908eca4ffb9a2fd40e820a3473f99e8731b`  
		Last Modified: Mon, 31 Aug 2026 20:15:09 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ae1675e5c9284df60839fa4aac045f51779c2ab02a44548949d54a76b05115`  
		Last Modified: Mon, 31 Aug 2026 20:15:00 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.10.2` - unknown; unknown

```console
$ docker pull composer@sha256:7b38471130353827139ab4be24015590be4a88953848f6e794e97439b7af1f89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:398169e5e99d350f5f59918ace4586a70b696568f5a26a5490fdd5a6c5939605`

```dockerfile
```

-	Layers:
	-	`sha256:866d403c6158813596c5792265f6a05a272f3b323647b0d9e349496e0afb75d5`  
		Last Modified: Mon, 31 Aug 2026 20:15:09 GMT  
		Size: 2.2 MB (2180528 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c705c17875a5ab9091ab67a3bfae42bfd4074da24330f6584293774849da1f6`  
		Last Modified: Mon, 31 Aug 2026 20:15:09 GMT  
		Size: 30.7 KB (30686 bytes)  
		MIME: application/vnd.in-toto+json

## `composer:2.2`

```console
$ docker pull composer@sha256:4cc470f81d0a4958213a7870fa61b185cb0652a3fa4291829f89fc87cfae6f26
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
$ docker pull composer@sha256:4c62cfa61c693d1163d3ada838412d98e50ae1e473162269184223a6811972c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.9 MB (79911307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba114be585a725b7833b4720e17156d1fd766829cca2bbba8363e43b8edf830d`
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
# Mon, 31 Aug 2026 20:32:52 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:32:52 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Mon, 31 Aug 2026 20:33:09 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:33:09 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:33:09 GMT
ENV COMPOSER_VERSION=2.2.29
# Mon, 31 Aug 2026 20:33:09 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:33:09 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:33:09 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:33:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:33:09 GMT
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
	-	`sha256:747f079c17268bd8c634b93ce495eb5c602ab57d1332b938af0c460019ec4244`  
		Last Modified: Mon, 31 Aug 2026 20:33:19 GMT  
		Size: 32.0 MB (31956766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4edfb1669e9a0ea14672f1df2295211313b445b26c66be38cf6aa721cc1022e7`  
		Last Modified: Mon, 31 Aug 2026 20:33:19 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d04ebba66b3c618c0e0a153d343eace33b08dbc38c6ed6a5987b89033955e4cc`  
		Last Modified: Mon, 31 Aug 2026 20:33:19 GMT  
		Size: 827.9 KB (827853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:933b3661d9252485efd1dcc20d11861e8dda212cc3c9f35edeb902fd0c076824`  
		Last Modified: Mon, 31 Aug 2026 20:33:18 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fe343fc628393187c147641bd0b4f201e60d936c5715ee1cae1e4ed418860d2`  
		Last Modified: Mon, 31 Aug 2026 20:33:20 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2` - unknown; unknown

```console
$ docker pull composer@sha256:671b7c8c0c3429f999b5dd2ecce924585222439e768ede7acabfeb383c36aa18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f86b1cf30a36dcbe13405a06d4e40c432fb60f879674d545066eb16611dc7e7`

```dockerfile
```

-	Layers:
	-	`sha256:5d286af9547ede5670ef524ecbcc45b2b47c39b78f05a6c91fd1c6b263f8b7af`  
		Last Modified: Mon, 31 Aug 2026 20:33:18 GMT  
		Size: 2.2 MB (2180676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b4ff76b4dfc2149a334dafb651b6ee485c3f1659c3aa0159e624f02516f6787`  
		Last Modified: Mon, 31 Aug 2026 20:33:19 GMT  
		Size: 30.1 KB (30077 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.2` - linux; arm variant v6

```console
$ docker pull composer@sha256:c660a34f12145598f808a47bb0d688b9c2ab97da6375bba2fc9b7fd344495269
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.9 MB (75871919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7917d528b65144c44b49e19937de14f9ebf7d534da8a2c72a9cd604174b60162`
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
# Mon, 31 Aug 2026 20:14:25 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:14:25 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Mon, 31 Aug 2026 20:14:48 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:14:48 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:14:48 GMT
ENV COMPOSER_VERSION=2.2.29
# Mon, 31 Aug 2026 20:14:48 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:14:48 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:14:48 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:14:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:14:48 GMT
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
	-	`sha256:93358cf9c509511f4bf942dd2c5b6efe89386d530e64501abfbae46de91b99f1`  
		Last Modified: Mon, 31 Aug 2026 20:14:56 GMT  
		Size: 31.7 MB (31671066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:481d375b6eb193c21899fc8fc2c48012c688c81627a754cbdffd16029ef06822`  
		Last Modified: Mon, 31 Aug 2026 20:14:55 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e74339a75179e62a0536f3200cef3ef2c72ea2e86a45728078808bf5f3f0a3be`  
		Last Modified: Mon, 31 Aug 2026 20:14:55 GMT  
		Size: 828.5 KB (828541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cea3e632063704746f7dc28b0272e43f6ebbb5145595b45025b1bcb8e31960c`  
		Last Modified: Mon, 31 Aug 2026 20:14:55 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d7bad9762205df2eb9a751e38dee5e1786e551a99c9529864115dcbed721878`  
		Last Modified: Mon, 31 Aug 2026 20:14:56 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2` - unknown; unknown

```console
$ docker pull composer@sha256:05340b64963c2daa64268a53a6a279e82bab2fd500a7a3766dfafbb586baaaca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.0 KB (29953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09d46d050b964bd67396b3f2ab835f601e29c4284ce11a7c7e1d4d0e51b96115`

```dockerfile
```

-	Layers:
	-	`sha256:78f613a6be030be2df1a35c891d4656f5e58c23765832985a970ae69f2663203`  
		Last Modified: Mon, 31 Aug 2026 20:14:55 GMT  
		Size: 30.0 KB (29953 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.2` - linux; arm variant v7

```console
$ docker pull composer@sha256:bab10173c15e9d406389d4748ffda2940b3a835351c0ad01c7c192ea4506babf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.7 MB (72701302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccc5ec615c0c364f1f219add68794f50ff0b63b6fd6e06a9124bc5e0db206cd3`
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
# Mon, 31 Aug 2026 20:15:57 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:15:57 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Mon, 31 Aug 2026 20:16:17 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:16:17 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:16:17 GMT
ENV COMPOSER_VERSION=2.2.29
# Mon, 31 Aug 2026 20:16:17 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:16:17 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:16:17 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:16:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:16:17 GMT
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
	-	`sha256:ed13a2ef61655ab6eb04ffec097555bb8fd7a7f4f7844273c2a06831c393016a`  
		Last Modified: Mon, 31 Aug 2026 20:16:27 GMT  
		Size: 30.3 MB (30275586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d4629eeaba2117fa9a8b9fc5ede1f6a9ebcaeb3f0fcad2cd7a8d57d0ae9558c`  
		Last Modified: Mon, 31 Aug 2026 20:16:26 GMT  
		Size: 256.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4ed642a99224a12206ac6f579ab91cc00ea28f0eb7375cc46918ac86cde4be3`  
		Last Modified: Mon, 31 Aug 2026 20:16:26 GMT  
		Size: 818.6 KB (818625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5efca1d016d72616d49657762b42e478a1ba25697e11aa739156cc50315b1e92`  
		Last Modified: Mon, 31 Aug 2026 20:16:26 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70526f80794e0875454a049004c79de945c58391959ca1f3118f0413d664a20a`  
		Last Modified: Mon, 31 Aug 2026 20:16:27 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2` - unknown; unknown

```console
$ docker pull composer@sha256:e7234be75f27661b7244e15cfdec5424402295ed31a9b20b93c4cc42197134ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e38a9ce14a9f33deb62d7e77dc06906f1febee499172d202ab4184c09c2a8fcf`

```dockerfile
```

-	Layers:
	-	`sha256:041cdb19597ed81b0bc1249e8c4eb076dfe28fb0d1d2442d90d803a58d10ba99`  
		Last Modified: Mon, 31 Aug 2026 20:16:26 GMT  
		Size: 2.2 MB (2180325 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38cc46a4e5a32c035d6fc7576c94005135548b1e9e0e2a349fb48cc75a03db84`  
		Last Modified: Mon, 31 Aug 2026 20:16:26 GMT  
		Size: 30.2 KB (30168 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.2` - linux; arm64 variant v8

```console
$ docker pull composer@sha256:19cdeeef9cbcf491caa878cbd9ff31e0cfe72ee61f647138f1ddebe7bb3fd56e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.9 MB (79873947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8681a50803dc7000ea984ab91bbb4cc5587e35fc4cde4104e71ff2f2ba4b72a3`
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
# Mon, 31 Aug 2026 20:12:55 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:12:55 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Mon, 31 Aug 2026 20:13:14 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:13:14 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:13:14 GMT
ENV COMPOSER_VERSION=2.2.29
# Mon, 31 Aug 2026 20:13:14 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:13:14 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:13:14 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:13:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:13:14 GMT
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
	-	`sha256:95682e1bfa35c3de883c211f5190ba430157594e8a83f4bbb40cfdbb3605db77`  
		Last Modified: Mon, 31 Aug 2026 20:13:24 GMT  
		Size: 32.1 MB (32098110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19cc3c411776026057bbf0f3d83484b47f22840474299487d0c1fc303a53621d`  
		Last Modified: Mon, 31 Aug 2026 20:13:23 GMT  
		Size: 258.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67d908fee1e07f3145a6a56e7844810c18602be8151cd9725ed63fb98ee4bb68`  
		Last Modified: Mon, 31 Aug 2026 20:13:24 GMT  
		Size: 826.7 KB (826712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a90d3f6e47a3c288001926d7b9a641b779f282dbd09c72fa0f0590ac1099c2`  
		Last Modified: Mon, 31 Aug 2026 20:13:23 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5e028dcbc82a05950bc13a29bc9a757afc7b45af1a4f7ea0e73da29b52327ef`  
		Last Modified: Mon, 31 Aug 2026 20:13:25 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2` - unknown; unknown

```console
$ docker pull composer@sha256:6c033cba2b711b3c269927af8d0aefc370390b875fa8010586863bb903160fad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:714cb47f52cea13691f05a994326b3e694afc2ac2621b60c323fa3b9264aaa34`

```dockerfile
```

-	Layers:
	-	`sha256:12829f8940cd86a18de7059813f38e1daebe0567403bf81681aabae4ae68adbe`  
		Last Modified: Mon, 31 Aug 2026 20:13:23 GMT  
		Size: 2.2 MB (2180151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:930e0a84d3638e78a99e75e9354951c2d3c738229c7d5fba9861dc76a29a750c`  
		Last Modified: Mon, 31 Aug 2026 20:13:23 GMT  
		Size: 30.2 KB (30188 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.2` - linux; 386

```console
$ docker pull composer@sha256:7a6f34b7b974939c0ac2d47fba409bc823b874fb36ab9f291a3d150bf21be38a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80560189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e453b1edcced3345dd73948afad5e601089d44d405d9ac21a2fd0868f83ac39`
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
# Mon, 31 Aug 2026 20:14:21 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:14:22 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Mon, 31 Aug 2026 20:14:37 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:14:37 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:14:37 GMT
ENV COMPOSER_VERSION=2.2.29
# Mon, 31 Aug 2026 20:14:37 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:14:37 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:14:37 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:14:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:14:37 GMT
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
	-	`sha256:d98d7a29142208882b949232c29a37e18d72156c0a19044b16aea8fc8ba59569`  
		Last Modified: Mon, 31 Aug 2026 20:14:47 GMT  
		Size: 32.5 MB (32471230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af8e21c280bae4252bec004caa803b0caf818e1bbca05ba9135b7502c34b1503`  
		Last Modified: Mon, 31 Aug 2026 20:14:46 GMT  
		Size: 255.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42b500282ed74b2a8f303072184037ab7c2e76164e02d721e19d4f8e7c825616`  
		Last Modified: Mon, 31 Aug 2026 20:14:47 GMT  
		Size: 840.7 KB (840747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3b1412d03f9efcbd8af51391f9eec8da7bf6a7a0e6d1c873cc9b895de82654f`  
		Last Modified: Mon, 31 Aug 2026 20:14:47 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:147340fe04fc79334cfc61e6ff4eefa0f7d498ba382366a2ab6a444bc56c691e`  
		Last Modified: Mon, 31 Aug 2026 20:14:48 GMT  
		Size: 91.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2` - unknown; unknown

```console
$ docker pull composer@sha256:f162bf9de8a6970cf91105a0f8175f34cee680a7af6b09099f0b6b3e1787094a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae05a1c38df7c3a8de330f1f4ac79e34e144281e3022c5a3a3c0ae3d1c3b3dcd`

```dockerfile
```

-	Layers:
	-	`sha256:780985db7f787afd7433ef9665fdb5b8d0a4e5d7a32cacc7b3cce667036a0805`  
		Last Modified: Mon, 31 Aug 2026 20:14:46 GMT  
		Size: 2.2 MB (2180475 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d36eec698558927b25b01e34236b2fb90cdb37db00f2f63adbc2a66f58d75df`  
		Last Modified: Mon, 31 Aug 2026 20:14:46 GMT  
		Size: 30.1 KB (30052 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.2` - linux; ppc64le

```console
$ docker pull composer@sha256:68d2ce1f72f19a2bbcf50fd60f467e063a45b5196438570c4c2e859bad9b6c93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.1 MB (81146905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e80e8c43debe122a260395ec081fffaa4ff0d4fdd0b462ddeb6dc11861675ea2`
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
# Mon, 31 Aug 2026 20:54:53 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:54:53 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:54:53 GMT
ENV COMPOSER_VERSION=2.2.29
# Mon, 31 Aug 2026 20:54:53 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:54:54 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:54:54 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:54:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:54:54 GMT
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
	-	`sha256:869a830626515051817969fcb52f4338b60434ca437e25169a304b280f506a40`  
		Last Modified: Mon, 31 Aug 2026 20:55:09 GMT  
		Size: 834.1 KB (834107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6309f79edf41c51df14ac462373373f5e535c99ea615481ded2a1d7f6cdc911`  
		Last Modified: Mon, 31 Aug 2026 20:55:09 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eabaf940ec01f4d6344f4f87deff44e8381f052dda57a4997408cd724c7e4712`  
		Last Modified: Mon, 31 Aug 2026 20:55:09 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2` - unknown; unknown

```console
$ docker pull composer@sha256:49f98b70fe38c47ec39906a9435ffed9b989285173f65715cf28f476b3ce73ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:345555bd449ca875dd1ea4cee6298cdee466558a149c462d520300cfe2f92c06`

```dockerfile
```

-	Layers:
	-	`sha256:e2c10fb6b670858ad8e230d61213880e47f67ad56df69ed383d7a68406c93c6b`  
		Last Modified: Mon, 31 Aug 2026 20:55:09 GMT  
		Size: 2.2 MB (2180512 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dde10f02e84244c6666d93f0dae419752fac563cafccad9f901475050117e03a`  
		Last Modified: Mon, 31 Aug 2026 20:55:09 GMT  
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
$ docker pull composer@sha256:52fb61d3c485931857d71e8cb18e72de013c25432dcf9541b9b4adb24234ba75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79555985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a15cd941e5fdd1c568774faf2c622b7e76619a8d53456302dbad864b8d019bc`
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
# Mon, 31 Aug 2026 20:14:53 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:14:53 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:14:53 GMT
ENV COMPOSER_VERSION=2.2.29
# Mon, 31 Aug 2026 20:14:53 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:14:53 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:14:53 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:14:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:14:53 GMT
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
	-	`sha256:b408cc77b381ae5610bd65f3758e9598de9293dc4e5a498c7789bc5dcfdc6738`  
		Last Modified: Mon, 31 Aug 2026 20:15:09 GMT  
		Size: 831.1 KB (831074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10918ca84617dc76a823ce4610ff0d620fca6acae90aeee6437300f6580b750d`  
		Last Modified: Mon, 31 Aug 2026 20:15:09 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7280f397609ed70ba359e97640e940342966dbf412f250ba9c83c071e25dc775`  
		Last Modified: Mon, 31 Aug 2026 20:15:01 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2` - unknown; unknown

```console
$ docker pull composer@sha256:abd4b9d2cfba7eb405b039e287513096d306f0f57946df373a51e9129f1db2bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbfbe691845bb9d86a48a0d35d9d338fc5faba9f3a4fdee8df20d1f93ee239a6`

```dockerfile
```

-	Layers:
	-	`sha256:24e770f215e00f7ac257647e0afcfd743e57b0ba8b74022288045247de888254`  
		Last Modified: Mon, 31 Aug 2026 20:15:10 GMT  
		Size: 2.2 MB (2179932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67fbf90956cb14cf3702f37bfb53625e2fe157d666d8078af504955f3d31585d`  
		Last Modified: Mon, 31 Aug 2026 20:15:09 GMT  
		Size: 30.1 KB (30078 bytes)  
		MIME: application/vnd.in-toto+json

## `composer:2.2.29`

```console
$ docker pull composer@sha256:4cc470f81d0a4958213a7870fa61b185cb0652a3fa4291829f89fc87cfae6f26
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

### `composer:2.2.29` - linux; amd64

```console
$ docker pull composer@sha256:4c62cfa61c693d1163d3ada838412d98e50ae1e473162269184223a6811972c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.9 MB (79911307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba114be585a725b7833b4720e17156d1fd766829cca2bbba8363e43b8edf830d`
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
# Mon, 31 Aug 2026 20:32:52 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:32:52 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Mon, 31 Aug 2026 20:33:09 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:33:09 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:33:09 GMT
ENV COMPOSER_VERSION=2.2.29
# Mon, 31 Aug 2026 20:33:09 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:33:09 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:33:09 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:33:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:33:09 GMT
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
	-	`sha256:747f079c17268bd8c634b93ce495eb5c602ab57d1332b938af0c460019ec4244`  
		Last Modified: Mon, 31 Aug 2026 20:33:19 GMT  
		Size: 32.0 MB (31956766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4edfb1669e9a0ea14672f1df2295211313b445b26c66be38cf6aa721cc1022e7`  
		Last Modified: Mon, 31 Aug 2026 20:33:19 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d04ebba66b3c618c0e0a153d343eace33b08dbc38c6ed6a5987b89033955e4cc`  
		Last Modified: Mon, 31 Aug 2026 20:33:19 GMT  
		Size: 827.9 KB (827853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:933b3661d9252485efd1dcc20d11861e8dda212cc3c9f35edeb902fd0c076824`  
		Last Modified: Mon, 31 Aug 2026 20:33:18 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fe343fc628393187c147641bd0b4f201e60d936c5715ee1cae1e4ed418860d2`  
		Last Modified: Mon, 31 Aug 2026 20:33:20 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2.29` - unknown; unknown

```console
$ docker pull composer@sha256:671b7c8c0c3429f999b5dd2ecce924585222439e768ede7acabfeb383c36aa18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210753 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2f86b1cf30a36dcbe13405a06d4e40c432fb60f879674d545066eb16611dc7e7`

```dockerfile
```

-	Layers:
	-	`sha256:5d286af9547ede5670ef524ecbcc45b2b47c39b78f05a6c91fd1c6b263f8b7af`  
		Last Modified: Mon, 31 Aug 2026 20:33:18 GMT  
		Size: 2.2 MB (2180676 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5b4ff76b4dfc2149a334dafb651b6ee485c3f1659c3aa0159e624f02516f6787`  
		Last Modified: Mon, 31 Aug 2026 20:33:19 GMT  
		Size: 30.1 KB (30077 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.2.29` - linux; arm variant v6

```console
$ docker pull composer@sha256:c660a34f12145598f808a47bb0d688b9c2ab97da6375bba2fc9b7fd344495269
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.9 MB (75871919 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7917d528b65144c44b49e19937de14f9ebf7d534da8a2c72a9cd604174b60162`
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
# Mon, 31 Aug 2026 20:14:25 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:14:25 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Mon, 31 Aug 2026 20:14:48 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:14:48 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:14:48 GMT
ENV COMPOSER_VERSION=2.2.29
# Mon, 31 Aug 2026 20:14:48 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:14:48 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:14:48 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:14:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:14:48 GMT
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
	-	`sha256:93358cf9c509511f4bf942dd2c5b6efe89386d530e64501abfbae46de91b99f1`  
		Last Modified: Mon, 31 Aug 2026 20:14:56 GMT  
		Size: 31.7 MB (31671066 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:481d375b6eb193c21899fc8fc2c48012c688c81627a754cbdffd16029ef06822`  
		Last Modified: Mon, 31 Aug 2026 20:14:55 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e74339a75179e62a0536f3200cef3ef2c72ea2e86a45728078808bf5f3f0a3be`  
		Last Modified: Mon, 31 Aug 2026 20:14:55 GMT  
		Size: 828.5 KB (828541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cea3e632063704746f7dc28b0272e43f6ebbb5145595b45025b1bcb8e31960c`  
		Last Modified: Mon, 31 Aug 2026 20:14:55 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d7bad9762205df2eb9a751e38dee5e1786e551a99c9529864115dcbed721878`  
		Last Modified: Mon, 31 Aug 2026 20:14:56 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2.29` - unknown; unknown

```console
$ docker pull composer@sha256:05340b64963c2daa64268a53a6a279e82bab2fd500a7a3766dfafbb586baaaca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.0 KB (29953 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:09d46d050b964bd67396b3f2ab835f601e29c4284ce11a7c7e1d4d0e51b96115`

```dockerfile
```

-	Layers:
	-	`sha256:78f613a6be030be2df1a35c891d4656f5e58c23765832985a970ae69f2663203`  
		Last Modified: Mon, 31 Aug 2026 20:14:55 GMT  
		Size: 30.0 KB (29953 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.2.29` - linux; arm variant v7

```console
$ docker pull composer@sha256:bab10173c15e9d406389d4748ffda2940b3a835351c0ad01c7c192ea4506babf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.7 MB (72701302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccc5ec615c0c364f1f219add68794f50ff0b63b6fd6e06a9124bc5e0db206cd3`
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
# Mon, 31 Aug 2026 20:15:57 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:15:57 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Mon, 31 Aug 2026 20:16:17 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:16:17 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:16:17 GMT
ENV COMPOSER_VERSION=2.2.29
# Mon, 31 Aug 2026 20:16:17 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:16:17 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:16:17 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:16:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:16:17 GMT
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
	-	`sha256:ed13a2ef61655ab6eb04ffec097555bb8fd7a7f4f7844273c2a06831c393016a`  
		Last Modified: Mon, 31 Aug 2026 20:16:27 GMT  
		Size: 30.3 MB (30275586 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d4629eeaba2117fa9a8b9fc5ede1f6a9ebcaeb3f0fcad2cd7a8d57d0ae9558c`  
		Last Modified: Mon, 31 Aug 2026 20:16:26 GMT  
		Size: 256.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4ed642a99224a12206ac6f579ab91cc00ea28f0eb7375cc46918ac86cde4be3`  
		Last Modified: Mon, 31 Aug 2026 20:16:26 GMT  
		Size: 818.6 KB (818625 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5efca1d016d72616d49657762b42e478a1ba25697e11aa739156cc50315b1e92`  
		Last Modified: Mon, 31 Aug 2026 20:16:26 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70526f80794e0875454a049004c79de945c58391959ca1f3118f0413d664a20a`  
		Last Modified: Mon, 31 Aug 2026 20:16:27 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2.29` - unknown; unknown

```console
$ docker pull composer@sha256:e7234be75f27661b7244e15cfdec5424402295ed31a9b20b93c4cc42197134ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e38a9ce14a9f33deb62d7e77dc06906f1febee499172d202ab4184c09c2a8fcf`

```dockerfile
```

-	Layers:
	-	`sha256:041cdb19597ed81b0bc1249e8c4eb076dfe28fb0d1d2442d90d803a58d10ba99`  
		Last Modified: Mon, 31 Aug 2026 20:16:26 GMT  
		Size: 2.2 MB (2180325 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:38cc46a4e5a32c035d6fc7576c94005135548b1e9e0e2a349fb48cc75a03db84`  
		Last Modified: Mon, 31 Aug 2026 20:16:26 GMT  
		Size: 30.2 KB (30168 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.2.29` - linux; arm64 variant v8

```console
$ docker pull composer@sha256:19cdeeef9cbcf491caa878cbd9ff31e0cfe72ee61f647138f1ddebe7bb3fd56e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.9 MB (79873947 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8681a50803dc7000ea984ab91bbb4cc5587e35fc4cde4104e71ff2f2ba4b72a3`
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
# Mon, 31 Aug 2026 20:12:55 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:12:55 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Mon, 31 Aug 2026 20:13:14 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:13:14 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:13:14 GMT
ENV COMPOSER_VERSION=2.2.29
# Mon, 31 Aug 2026 20:13:14 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:13:14 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:13:14 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:13:14 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:13:14 GMT
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
	-	`sha256:95682e1bfa35c3de883c211f5190ba430157594e8a83f4bbb40cfdbb3605db77`  
		Last Modified: Mon, 31 Aug 2026 20:13:24 GMT  
		Size: 32.1 MB (32098110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19cc3c411776026057bbf0f3d83484b47f22840474299487d0c1fc303a53621d`  
		Last Modified: Mon, 31 Aug 2026 20:13:23 GMT  
		Size: 258.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67d908fee1e07f3145a6a56e7844810c18602be8151cd9725ed63fb98ee4bb68`  
		Last Modified: Mon, 31 Aug 2026 20:13:24 GMT  
		Size: 826.7 KB (826712 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87a90d3f6e47a3c288001926d7b9a641b779f282dbd09c72fa0f0590ac1099c2`  
		Last Modified: Mon, 31 Aug 2026 20:13:23 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5e028dcbc82a05950bc13a29bc9a757afc7b45af1a4f7ea0e73da29b52327ef`  
		Last Modified: Mon, 31 Aug 2026 20:13:25 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2.29` - unknown; unknown

```console
$ docker pull composer@sha256:6c033cba2b711b3c269927af8d0aefc370390b875fa8010586863bb903160fad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210339 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:714cb47f52cea13691f05a994326b3e694afc2ac2621b60c323fa3b9264aaa34`

```dockerfile
```

-	Layers:
	-	`sha256:12829f8940cd86a18de7059813f38e1daebe0567403bf81681aabae4ae68adbe`  
		Last Modified: Mon, 31 Aug 2026 20:13:23 GMT  
		Size: 2.2 MB (2180151 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:930e0a84d3638e78a99e75e9354951c2d3c738229c7d5fba9861dc76a29a750c`  
		Last Modified: Mon, 31 Aug 2026 20:13:23 GMT  
		Size: 30.2 KB (30188 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.2.29` - linux; 386

```console
$ docker pull composer@sha256:7a6f34b7b974939c0ac2d47fba409bc823b874fb36ab9f291a3d150bf21be38a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.6 MB (80560189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e453b1edcced3345dd73948afad5e601089d44d405d9ac21a2fd0868f83ac39`
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
# Mon, 31 Aug 2026 20:14:21 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:14:22 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Mon, 31 Aug 2026 20:14:37 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:14:37 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:14:37 GMT
ENV COMPOSER_VERSION=2.2.29
# Mon, 31 Aug 2026 20:14:37 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:14:37 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:14:37 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:14:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:14:37 GMT
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
	-	`sha256:d98d7a29142208882b949232c29a37e18d72156c0a19044b16aea8fc8ba59569`  
		Last Modified: Mon, 31 Aug 2026 20:14:47 GMT  
		Size: 32.5 MB (32471230 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af8e21c280bae4252bec004caa803b0caf818e1bbca05ba9135b7502c34b1503`  
		Last Modified: Mon, 31 Aug 2026 20:14:46 GMT  
		Size: 255.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42b500282ed74b2a8f303072184037ab7c2e76164e02d721e19d4f8e7c825616`  
		Last Modified: Mon, 31 Aug 2026 20:14:47 GMT  
		Size: 840.7 KB (840747 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3b1412d03f9efcbd8af51391f9eec8da7bf6a7a0e6d1c873cc9b895de82654f`  
		Last Modified: Mon, 31 Aug 2026 20:14:47 GMT  
		Size: 418.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:147340fe04fc79334cfc61e6ff4eefa0f7d498ba382366a2ab6a444bc56c691e`  
		Last Modified: Mon, 31 Aug 2026 20:14:48 GMT  
		Size: 91.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2.29` - unknown; unknown

```console
$ docker pull composer@sha256:f162bf9de8a6970cf91105a0f8175f34cee680a7af6b09099f0b6b3e1787094a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210527 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae05a1c38df7c3a8de330f1f4ac79e34e144281e3022c5a3a3c0ae3d1c3b3dcd`

```dockerfile
```

-	Layers:
	-	`sha256:780985db7f787afd7433ef9665fdb5b8d0a4e5d7a32cacc7b3cce667036a0805`  
		Last Modified: Mon, 31 Aug 2026 20:14:46 GMT  
		Size: 2.2 MB (2180475 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d36eec698558927b25b01e34236b2fb90cdb37db00f2f63adbc2a66f58d75df`  
		Last Modified: Mon, 31 Aug 2026 20:14:46 GMT  
		Size: 30.1 KB (30052 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.2.29` - linux; ppc64le

```console
$ docker pull composer@sha256:68d2ce1f72f19a2bbcf50fd60f467e063a45b5196438570c4c2e859bad9b6c93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.1 MB (81146905 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e80e8c43debe122a260395ec081fffaa4ff0d4fdd0b462ddeb6dc11861675ea2`
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
# Mon, 31 Aug 2026 20:54:53 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:54:53 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:54:53 GMT
ENV COMPOSER_VERSION=2.2.29
# Mon, 31 Aug 2026 20:54:53 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:54:54 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:54:54 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:54:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:54:54 GMT
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
	-	`sha256:869a830626515051817969fcb52f4338b60434ca437e25169a304b280f506a40`  
		Last Modified: Mon, 31 Aug 2026 20:55:09 GMT  
		Size: 834.1 KB (834107 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6309f79edf41c51df14ac462373373f5e535c99ea615481ded2a1d7f6cdc911`  
		Last Modified: Mon, 31 Aug 2026 20:55:09 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eabaf940ec01f4d6344f4f87deff44e8381f052dda57a4997408cd724c7e4712`  
		Last Modified: Mon, 31 Aug 2026 20:55:09 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2.29` - unknown; unknown

```console
$ docker pull composer@sha256:49f98b70fe38c47ec39906a9435ffed9b989285173f65715cf28f476b3ce73ad
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:345555bd449ca875dd1ea4cee6298cdee466558a149c462d520300cfe2f92c06`

```dockerfile
```

-	Layers:
	-	`sha256:e2c10fb6b670858ad8e230d61213880e47f67ad56df69ed383d7a68406c93c6b`  
		Last Modified: Mon, 31 Aug 2026 20:55:09 GMT  
		Size: 2.2 MB (2180512 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dde10f02e84244c6666d93f0dae419752fac563cafccad9f901475050117e03a`  
		Last Modified: Mon, 31 Aug 2026 20:55:09 GMT  
		Size: 30.1 KB (30114 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:2.2.29` - linux; riscv64

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

### `composer:2.2.29` - unknown; unknown

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

### `composer:2.2.29` - linux; s390x

```console
$ docker pull composer@sha256:52fb61d3c485931857d71e8cb18e72de013c25432dcf9541b9b4adb24234ba75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.6 MB (79555985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a15cd941e5fdd1c568774faf2c622b7e76619a8d53456302dbad864b8d019bc`
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
# Mon, 31 Aug 2026 20:14:53 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:14:53 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:14:53 GMT
ENV COMPOSER_VERSION=2.2.29
# Mon, 31 Aug 2026 20:14:53 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:14:53 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:14:53 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:14:53 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:14:53 GMT
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
	-	`sha256:b408cc77b381ae5610bd65f3758e9598de9293dc4e5a498c7789bc5dcfdc6738`  
		Last Modified: Mon, 31 Aug 2026 20:15:09 GMT  
		Size: 831.1 KB (831074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10918ca84617dc76a823ce4610ff0d620fca6acae90aeee6437300f6580b750d`  
		Last Modified: Mon, 31 Aug 2026 20:15:09 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7280f397609ed70ba359e97640e940342966dbf412f250ba9c83c071e25dc775`  
		Last Modified: Mon, 31 Aug 2026 20:15:01 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:2.2.29` - unknown; unknown

```console
$ docker pull composer@sha256:abd4b9d2cfba7eb405b039e287513096d306f0f57946df373a51e9129f1db2bf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fbfbe691845bb9d86a48a0d35d9d338fc5faba9f3a4fdee8df20d1f93ee239a6`

```dockerfile
```

-	Layers:
	-	`sha256:24e770f215e00f7ac257647e0afcfd743e57b0ba8b74022288045247de888254`  
		Last Modified: Mon, 31 Aug 2026 20:15:10 GMT  
		Size: 2.2 MB (2179932 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:67fbf90956cb14cf3702f37bfb53625e2fe157d666d8078af504955f3d31585d`  
		Last Modified: Mon, 31 Aug 2026 20:15:09 GMT  
		Size: 30.1 KB (30078 bytes)  
		MIME: application/vnd.in-toto+json

## `composer:latest`

```console
$ docker pull composer@sha256:d020706319701a44468968321dccd0fce6620190159a7a9ec195d78e6e971c71
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
$ docker pull composer@sha256:14c8664aefd7cbf544c6a0cc04025f1ee174200020b2847019985facc53f5794
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.2 MB (80166207 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c6be6463748878c9142ed712d76729c78dafcd41cea4b872eaafbb15bfd8f033`
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
# Mon, 31 Aug 2026 20:32:44 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:32:44 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Mon, 31 Aug 2026 20:33:00 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:33:00 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:33:00 GMT
ENV COMPOSER_VERSION=2.10.2
# Mon, 31 Aug 2026 20:33:00 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:33:00 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:33:00 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:33:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:33:00 GMT
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
	-	`sha256:56ed4aca8dec5a2282bedc13398e48251df5063dba7215021da4f6bffce9e698`  
		Last Modified: Mon, 31 Aug 2026 20:33:10 GMT  
		Size: 32.0 MB (31956882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:185bcd89196eeaa7f9ce0ec66c9458557d6f2b17e8e6cc36072761e528f1bc8b`  
		Last Modified: Mon, 31 Aug 2026 20:33:10 GMT  
		Size: 256.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab6acc32ba007a179dff4122a89d7e37949f3efa8c5be52868ddbe8576611706`  
		Last Modified: Mon, 31 Aug 2026 20:33:10 GMT  
		Size: 1.1 MB (1082638 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:869f165dda2b2a2efb06cd901cd0d8a8f8b9c84c6d221e99637fd1cebbaf4b13`  
		Last Modified: Mon, 31 Aug 2026 20:33:10 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0679e3ee32c6194f4eca78000e6589434781f71324dbc6602530ae94e8a88a57`  
		Last Modified: Mon, 31 Aug 2026 20:33:11 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:latest` - unknown; unknown

```console
$ docker pull composer@sha256:ac059f83f650cc10e913bc0fd36308756c58b0b6f21c812429c85dcc9b94e3f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84758cd73eb21d75b46a191d224f462a0458841e644c184dd06edee46c289f71`

```dockerfile
```

-	Layers:
	-	`sha256:4b6391cf2c3c4b54c8ef73095bb68a53151a696ed208eb04c435e3859513e572`  
		Last Modified: Mon, 31 Aug 2026 20:33:09 GMT  
		Size: 2.2 MB (2181272 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3a9a8ecce870df0b27811db245a00c11ba70b3bd88b7b837b576d2864601b6e5`  
		Last Modified: Mon, 31 Aug 2026 20:33:09 GMT  
		Size: 30.7 KB (30686 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:latest` - linux; arm variant v6

```console
$ docker pull composer@sha256:d6e4968fb1c8291b4d849939841528268bca8ce3f0973d5eedef332d35e23adb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.1 MB (76126206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1cdb0683206eef840e58fde71d7bec0d25f531105c931528e8cd96e486c0adf7`
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
# Mon, 31 Aug 2026 20:13:24 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:13:24 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Mon, 31 Aug 2026 20:13:46 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:13:46 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:13:46 GMT
ENV COMPOSER_VERSION=2.10.2
# Mon, 31 Aug 2026 20:13:46 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:13:46 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:13:46 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:13:46 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:13:46 GMT
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
	-	`sha256:732843856e507ba08625d86430b434aac21ef1e37832885420bf3d2d9ba5311f`  
		Last Modified: Mon, 31 Aug 2026 20:13:54 GMT  
		Size: 31.7 MB (31670791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3621a0092474cc5d489cd1a1e579d23aa5f44073019bcfcffecda182d95faa9`  
		Last Modified: Mon, 31 Aug 2026 20:13:53 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33f77aea3e5f657c3b36ed840d5141a63f07249e007af9b045abb27fe9cc0a98`  
		Last Modified: Mon, 31 Aug 2026 20:13:53 GMT  
		Size: 1.1 MB (1083103 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd46579f21b9fa80dac4931176370b610f94425d54adbd11ee7613abce9743e5`  
		Last Modified: Mon, 31 Aug 2026 20:13:53 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3781556ed6bb9d27eaea30c56f74aa1160b24119ed6145172f4ca061e7309835`  
		Last Modified: Mon, 31 Aug 2026 20:13:54 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:latest` - unknown; unknown

```console
$ docker pull composer@sha256:7d9391e0314bf029dba9aae8d0e6d3f662e8b5c51d28033e9ee6ad3c249561da
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 KB (30577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3e6507fabb5b6569cac6e1f3a8a1ae240f5bf070c5446f86fc75f1db9e78b4e1`

```dockerfile
```

-	Layers:
	-	`sha256:b2e5a0fe81caf2236640b8c8e307b8beeacb044b483abe6ac6b4135165e0a30d`  
		Last Modified: Mon, 31 Aug 2026 20:13:53 GMT  
		Size: 30.6 KB (30577 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:latest` - linux; arm variant v7

```console
$ docker pull composer@sha256:ef50c0c23a4b0b3a97c4f7d5592378028be67e6441d1e4ac5160fe620e1f2b41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.0 MB (72955853 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9111fd3cabd503ed2a4225ee15422723047e9cf35ccb703932b1cd8b6de83b23`
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
# Mon, 31 Aug 2026 20:15:56 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:15:56 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Mon, 31 Aug 2026 20:16:17 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:16:17 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:16:17 GMT
ENV COMPOSER_VERSION=2.10.2
# Mon, 31 Aug 2026 20:16:17 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:16:17 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:16:17 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:16:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:16:17 GMT
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
	-	`sha256:990659a70ee443fb25230283c473d83dd6410a56b58bd50bc11312f573118519`  
		Last Modified: Mon, 31 Aug 2026 20:16:26 GMT  
		Size: 30.3 MB (30275444 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12fedb9ee26e12c08a04b43131f6e6198dceeb17aa93d948734c2ead6af54b72`  
		Last Modified: Mon, 31 Aug 2026 20:16:26 GMT  
		Size: 256.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55c2efdc4d2b68ca319d5267867ef2647a27e8b45609ecc3afe69c1fa8094f25`  
		Last Modified: Mon, 31 Aug 2026 20:16:26 GMT  
		Size: 1.1 MB (1073318 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:975134d4226fea8b8a75d542ddf3faf9a192da13641aef37e7cd68426aa873a9`  
		Last Modified: Mon, 31 Aug 2026 20:16:25 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70526f80794e0875454a049004c79de945c58391959ca1f3118f0413d664a20a`  
		Last Modified: Mon, 31 Aug 2026 20:16:27 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:latest` - unknown; unknown

```console
$ docker pull composer@sha256:46e3a3dc8a0ff7a7c0f59107cc55444356061c51768a2ec6b32c2d752dc627f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211728 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e112508cd616560b530ac5f859b9c2d9e69581b25bb525d75b37375fe73af89`

```dockerfile
```

-	Layers:
	-	`sha256:9d54607bbf85c03a53bc10341ea2edfedea67d52f9fc0c80ea64fe8d31ebe20d`  
		Last Modified: Mon, 31 Aug 2026 20:16:25 GMT  
		Size: 2.2 MB (2180937 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f1851dab1d1eaf4b856224af2b3c2ae777208bc8226c51d979b1c7bf2e8e6a9a`  
		Last Modified: Mon, 31 Aug 2026 20:16:25 GMT  
		Size: 30.8 KB (30791 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:latest` - linux; arm64 variant v8

```console
$ docker pull composer@sha256:8240452f0023959559a1adad7208cfcfa6ac7cd8d7a12906c9ac92dc25bbadf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.1 MB (80128994 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac1153768ddea9762a2e28b5ee0df2697965640ecf135ffaf20bf9aae9ab2391`
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
# Mon, 31 Aug 2026 20:13:22 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:13:22 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Mon, 31 Aug 2026 20:13:40 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:13:40 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:13:40 GMT
ENV COMPOSER_VERSION=2.10.2
# Mon, 31 Aug 2026 20:13:40 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:13:40 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:13:40 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:13:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:13:40 GMT
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
	-	`sha256:de0875996647edaf458d035b633ede336969bce0ace62a33d669c6e88bc7ba87`  
		Last Modified: Mon, 31 Aug 2026 20:13:51 GMT  
		Size: 32.1 MB (32098181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1254538e66419de4fd020cbf26e095ca165e4d3b9ad7f5ad32acb37ece7c2822`  
		Last Modified: Mon, 31 Aug 2026 20:13:50 GMT  
		Size: 259.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f70cad300e277786d4e0b6c3c9b5039cea397ce33aff7d1219cc599be1520d51`  
		Last Modified: Mon, 31 Aug 2026 20:13:51 GMT  
		Size: 1.1 MB (1081687 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5f60572f84e6fe0901b1bdad939968df1223b71638f138744cb8361e206bc37`  
		Last Modified: Mon, 31 Aug 2026 20:13:51 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edd2498f157797d0e02f36aa74e9b32bd261b6cfd5be4ffa519320204df78e20`  
		Last Modified: Mon, 31 Aug 2026 20:13:52 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:latest` - unknown; unknown

```console
$ docker pull composer@sha256:8dd08b2e96ccb7942d9caaa4bbe4a5f6158174e8d16665fe3afa1db0912323ef
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e29a1def9adb97767889aa593423d5a50f29ef7c901598d3470dd407ef0d884a`

```dockerfile
```

-	Layers:
	-	`sha256:45250a044fb679a9e21cd8270891a84674bdf2645e7e0d91da3ac288fb1aa05f`  
		Last Modified: Mon, 31 Aug 2026 20:13:50 GMT  
		Size: 2.2 MB (2180771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9d33a865be734ba4f41caf7ededf714503b9d72e34660e3c0f0adbc6ae783c7e`  
		Last Modified: Mon, 31 Aug 2026 20:13:50 GMT  
		Size: 30.8 KB (30820 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:latest` - linux; 386

```console
$ docker pull composer@sha256:6532d411879016b32b9f75185f2968f5ee85dfa64eba0e7be80c7d6da53871bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **80.8 MB (80814787 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7522d6c612843a77fd7ede18515a31effe5dfe90aeae43a48ee2257d10ba33f3`
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
# Mon, 31 Aug 2026 20:14:12 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 31 Aug 2026 20:14:12 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Mon, 31 Aug 2026 20:14:28 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:14:28 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:14:28 GMT
ENV COMPOSER_VERSION=2.10.2
# Mon, 31 Aug 2026 20:14:28 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:14:29 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:14:29 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:14:29 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:14:29 GMT
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
	-	`sha256:8d4e9d549366e9bab044cd55e3a194a7b3d60ac88b2a98abd2967940d8e8e419`  
		Last Modified: Mon, 31 Aug 2026 20:14:39 GMT  
		Size: 32.5 MB (32471648 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0885fe8e4271333a3de76a63907da174dc22f019460570fb194517b41211e087`  
		Last Modified: Mon, 31 Aug 2026 20:14:38 GMT  
		Size: 254.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e1d7dc64ccd5d2cd67410d703d55a4f9ca3ea4a4cb2ed790d83af4b8b8c4657`  
		Last Modified: Mon, 31 Aug 2026 20:14:38 GMT  
		Size: 1.1 MB (1094925 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70f76680e8bd226184f7429d89ecd1147bdba38508f308997e2bb3064c7534e3`  
		Last Modified: Mon, 31 Aug 2026 20:14:38 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2dc96cb30d1ec910bd2601cd880c5724f4ccb1e07b704525d018ca547e4e8e3a`  
		Last Modified: Mon, 31 Aug 2026 20:14:40 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:latest` - unknown; unknown

```console
$ docker pull composer@sha256:82ca5ff8a4863b495d1a86e3416a32eaed595a03ad1a693d390a622f589b9509
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1606e8c754654718241952fc955e89445377e953802e1bdf429288a12ae2664b`

```dockerfile
```

-	Layers:
	-	`sha256:ae59ba8fbf4adf354f2ba2e8b0ff16886ebe771303e8835411d701ff57568c1d`  
		Last Modified: Mon, 31 Aug 2026 20:14:38 GMT  
		Size: 2.2 MB (2181061 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6db5218f97687931645f2c0a0176b64ed09b85287967ff17d931041e2be132b2`  
		Last Modified: Mon, 31 Aug 2026 20:14:38 GMT  
		Size: 30.6 KB (30650 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:latest` - linux; ppc64le

```console
$ docker pull composer@sha256:b9c31c76fa46b2ddcd9575d5ec507e822acbe9c0f3f3302c8dfef858fa20e598
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **81.4 MB (81401761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:166cb3bf4e2bd0907241c62e23f2aa8cc7362e26445ab5eeb4d6f216c433c33a`
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
# Mon, 31 Aug 2026 20:54:17 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:54:17 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:54:17 GMT
ENV COMPOSER_VERSION=2.10.2
# Mon, 31 Aug 2026 20:54:17 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:54:17 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:54:17 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:54:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:54:17 GMT
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
	-	`sha256:442704e8042f822f073201eede8e13dd18866ef2febc0afd45bd95927a7485c0`  
		Last Modified: Mon, 31 Aug 2026 20:54:35 GMT  
		Size: 1.1 MB (1088963 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:288f367807ca5563ba3270c6cd79a541b6faf15ce5462829927d7d161d7f0949`  
		Last Modified: Mon, 31 Aug 2026 20:54:35 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d62d6c6156f4e3a9fa549b6a1de31617ee5c2974db2004e49d383fa1b3f9ae6c`  
		Last Modified: Mon, 31 Aug 2026 20:54:36 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:latest` - unknown; unknown

```console
$ docker pull composer@sha256:281359da52cd71873e80350edc6861d0afa34aa943abab463a254ba346aceb36
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211854 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:da24c63bc79e5bce703fa897cae26fc1a5a5ff66f14a3f243e51c9a6709d6b09`

```dockerfile
```

-	Layers:
	-	`sha256:28559eef83bdd2da7197fe23efff45ae4128a14a623e12fdc487cab5dbc1478f`  
		Last Modified: Mon, 31 Aug 2026 20:54:35 GMT  
		Size: 2.2 MB (2181120 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3bf6a85e88bfddd8179de8a81c2d81d5f8c8b651cf3969667027862b58c22bea`  
		Last Modified: Mon, 31 Aug 2026 20:54:34 GMT  
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
$ docker pull composer@sha256:ff86a5f2472a1179654f66122772394bb945f5def87b2c5b58aa757b6bd59588
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **79.8 MB (79810723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f661ae9b0b71290c39f2d90d0f27e91842951b988db2647e8b2d1c48af00306`
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
# Mon, 31 Aug 2026 20:14:53 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 31 Aug 2026 20:14:53 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 31 Aug 2026 20:14:53 GMT
ENV COMPOSER_VERSION=2.10.2
# Mon, 31 Aug 2026 20:14:53 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 31 Aug 2026 20:14:54 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 31 Aug 2026 20:14:54 GMT
WORKDIR /app
# Mon, 31 Aug 2026 20:14:54 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 31 Aug 2026 20:14:54 GMT
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
	-	`sha256:3a5ba72f831ba892eb5fdc8331a5a48a6e6b703f9304de452438ba6175555f61`  
		Last Modified: Mon, 31 Aug 2026 20:15:09 GMT  
		Size: 1.1 MB (1085810 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a1155121232268560e2651139a68908eca4ffb9a2fd40e820a3473f99e8731b`  
		Last Modified: Mon, 31 Aug 2026 20:15:09 GMT  
		Size: 421.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40ae1675e5c9284df60839fa4aac045f51779c2ab02a44548949d54a76b05115`  
		Last Modified: Mon, 31 Aug 2026 20:15:00 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:latest` - unknown; unknown

```console
$ docker pull composer@sha256:7b38471130353827139ab4be24015590be4a88953848f6e794e97439b7af1f89
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211214 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:398169e5e99d350f5f59918ace4586a70b696568f5a26a5490fdd5a6c5939605`

```dockerfile
```

-	Layers:
	-	`sha256:866d403c6158813596c5792265f6a05a272f3b323647b0d9e349496e0afb75d5`  
		Last Modified: Mon, 31 Aug 2026 20:15:09 GMT  
		Size: 2.2 MB (2180528 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8c705c17875a5ab9091ab67a3bfae42bfd4074da24330f6584293774849da1f6`  
		Last Modified: Mon, 31 Aug 2026 20:15:09 GMT  
		Size: 30.7 KB (30686 bytes)  
		MIME: application/vnd.in-toto+json
