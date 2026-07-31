## `composer:latest`

```console
$ docker pull composer@sha256:c86b98f6dc6a29987e54652b30cb6771ecebfe12724140f104fb2074d4cfa381
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
$ docker pull composer@sha256:e05b92289b813a788b045c8b9cd45831479d071d4615cc8612f1d64935851fd1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.6 MB (77600793 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:783e008e683e5c8778b8455645a7cf237ec51c2f06104dd6c36b3aa9f3d0753d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 22:42:11 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 30 Jul 2026 22:42:11 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 30 Jul 2026 22:42:11 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 30 Jul 2026 22:42:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:42:12 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:42:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:42:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:42:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:42:12 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 30 Jul 2026 22:42:12 GMT
ENV PHP_VERSION=8.5.9
# Thu, 30 Jul 2026 22:42:12 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.9.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.9.tar.xz.asc
# Thu, 30 Jul 2026 22:42:12 GMT
ENV PHP_SHA256=0db7855f25bcd0ab1d592cdb35e284d6f6a5d2ae0f6f621122e364cc39b708f4
# Thu, 30 Jul 2026 22:42:14 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 22:42:14 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:45:24 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:45:24 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:45:25 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:45:25 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:45:25 GMT
CMD ["php" "-a"]
# Thu, 30 Jul 2026 23:19:34 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 30 Jul 2026 23:19:34 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 30 Jul 2026 23:19:49 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 30 Jul 2026 23:19:49 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 30 Jul 2026 23:19:49 GMT
ENV COMPOSER_VERSION=2.10.2
# Thu, 30 Jul 2026 23:19:49 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 30 Jul 2026 23:19:49 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 30 Jul 2026 23:19:49 GMT
WORKDIR /app
# Thu, 30 Jul 2026 23:19:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 Jul 2026 23:19:49 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faa1b1fb1b65445f6b340be0432f97edb86ac422a19ad29c98fca0fd513a596a`  
		Last Modified: Thu, 30 Jul 2026 22:45:32 GMT  
		Size: 3.5 MB (3476110 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d14903da02a47071456d0a39c9448a5c9201b062ac752c08c6fae5a56d0041e1`  
		Last Modified: Thu, 30 Jul 2026 22:45:32 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5b7eb4d9ab50d4df7a4cb374a6309e3e0d98c77b8a6c3ad5c5002c6fec35a0d`  
		Last Modified: Thu, 30 Jul 2026 22:45:32 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f3a7e7d32183d5b9116728dfccf2cddd565cf9a4e5df896f0f61135dd025db9`  
		Last Modified: Thu, 30 Jul 2026 22:45:33 GMT  
		Size: 14.4 MB (14442214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6aa204d885dd09d33b04927ab303def4e7ed7c22d29a0c5fcfc0e8a999bf945`  
		Last Modified: Thu, 30 Jul 2026 22:45:33 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc6268776bfa8ed2c0d3cc4bb8c63aa9fe7ce0ba685a78cd1ede63826ad9f145`  
		Last Modified: Thu, 30 Jul 2026 22:45:34 GMT  
		Size: 22.8 MB (22817958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cab6b62ecbc9806926410112b294f799c7063f7932fec21bf37613e050fb6228`  
		Last Modified: Thu, 30 Jul 2026 22:45:34 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6973f72b46a7aa212131cd07d3191753997e64384c47da9501fe2544918d66a`  
		Last Modified: Thu, 30 Jul 2026 22:45:34 GMT  
		Size: 22.3 KB (22331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a29c4a406f0cda95e1d86ce22c1c6da34ffb0c70f373548e97a6eec4ac382ea`  
		Last Modified: Thu, 30 Jul 2026 23:19:58 GMT  
		Size: 31.9 MB (31908304 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f74746dc09ae3aa271cb38fc183fa7e97b139802be7dd7042b36a40669487890`  
		Last Modified: Thu, 30 Jul 2026 23:19:57 GMT  
		Size: 256.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da9b2c167f7dd328137d63fc103c5058f28ebad9af8848df89ecb2787fe37dd7`  
		Last Modified: Thu, 30 Jul 2026 23:19:58 GMT  
		Size: 1.1 MB (1082626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:849c47f2aa1858b6841b1f7a6acd5e5f7ee504994272ffe0aa5fa7f0afde34fd`  
		Last Modified: Thu, 30 Jul 2026 23:19:58 GMT  
		Size: 420.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a26646c4e2fcf59e9ac80acc56a5cc4736cb43465daa10593604eccff556eb7`  
		Last Modified: Thu, 30 Jul 2026 23:19:59 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:latest` - unknown; unknown

```console
$ docker pull composer@sha256:627fa08f9fb52548364222f5e35d4f012fcde3e0e72b064def609a2af3b5a69c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211943 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:45d8298678ac31469532079416ed2b8ae066902ac07e5770bebd332b7343c04e`

```dockerfile
```

-	Layers:
	-	`sha256:ffcb859d7a4052a672ce6bbda0788b1f7fa50827eddeafc31b7b354dbe3bbcad`  
		Last Modified: Thu, 30 Jul 2026 23:19:57 GMT  
		Size: 2.2 MB (2181266 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:23ed35fc444062650e4452614de1e96d6f9a1c6d2a9b0b922c982576dc7440bf`  
		Last Modified: Thu, 30 Jul 2026 23:19:57 GMT  
		Size: 30.7 KB (30677 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:latest` - linux; arm variant v6

```console
$ docker pull composer@sha256:59336ab319c33d544e69f277b4bde9ed6ec28f7df3c611896af931e89918b55c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.9 MB (73922944 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:64070bde90f7b71f0507dfd77b105c7a543d1e28edf4f235110253fff080e130`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 22:34:45 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 30 Jul 2026 22:34:45 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 30 Jul 2026 22:34:45 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 30 Jul 2026 22:34:45 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:34:45 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:34:45 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:34:45 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:34:45 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:34:45 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 30 Jul 2026 22:34:45 GMT
ENV PHP_VERSION=8.5.9
# Thu, 30 Jul 2026 22:34:45 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.9.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.9.tar.xz.asc
# Thu, 30 Jul 2026 22:34:45 GMT
ENV PHP_SHA256=0db7855f25bcd0ab1d592cdb35e284d6f6a5d2ae0f6f621122e364cc39b708f4
# Thu, 30 Jul 2026 22:34:48 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 22:34:48 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:38:03 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:38:03 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:38:04 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:38:04 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:38:04 GMT
CMD ["php" "-a"]
# Thu, 30 Jul 2026 23:38:04 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 30 Jul 2026 23:38:04 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 30 Jul 2026 23:38:25 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 30 Jul 2026 23:38:25 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 30 Jul 2026 23:38:25 GMT
ENV COMPOSER_VERSION=2.10.2
# Thu, 30 Jul 2026 23:38:25 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 30 Jul 2026 23:38:25 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 30 Jul 2026 23:38:25 GMT
WORKDIR /app
# Thu, 30 Jul 2026 23:38:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 Jul 2026 23:38:25 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca5b4ebbecbe574ecc608fcffc11c165599e3d05e76ce5f7347ce59f01fa1986`  
		Last Modified: Thu, 30 Jul 2026 22:38:10 GMT  
		Size: 3.4 MB (3433064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44f9516844f8f7714095ee6517b8b3fe85a9ad19c31251af638a2b29ecd6e16a`  
		Last Modified: Thu, 30 Jul 2026 22:38:09 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eca1a64ecae4e70828c6ecafeac3f2849c75dbc31fedafeac1748316a256bf6`  
		Last Modified: Thu, 30 Jul 2026 22:38:09 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42709c362dcc4af1a6d137d822d28b36022cb23d5ac4a005303995c86db8f19e`  
		Last Modified: Thu, 30 Jul 2026 22:38:10 GMT  
		Size: 14.4 MB (14442215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98f6ac67273a602962879d95c17cbd99b1a2b7c4cc856c705e42ca794bb0e7f8`  
		Last Modified: Thu, 30 Jul 2026 22:38:11 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da53ffb3b691bd988a32f4d1fb2986201afec05b00ec47035e962f21af7e5684`  
		Last Modified: Thu, 30 Jul 2026 22:38:11 GMT  
		Size: 19.8 MB (19759502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9908c0de149312bda683fbe00f14970142493ee9d986f9c319786b3cf38b8104`  
		Last Modified: Thu, 30 Jul 2026 22:38:11 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33efb59ad489d9dac3df1680a5a13f9b966e1f5d7548572478f84fca550b5f48`  
		Last Modified: Thu, 30 Jul 2026 22:38:11 GMT  
		Size: 22.1 KB (22109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:386491d30d6fa822d7f91446266ace334892b23a01d7a962cdfeaf2e5b07aeb7`  
		Last Modified: Thu, 30 Jul 2026 23:38:33 GMT  
		Size: 31.6 MB (31624686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29986c933f9d78dc00d6c8a8eee1631d916c131ce828d71debafb30e987cfbfe`  
		Last Modified: Thu, 30 Jul 2026 23:38:32 GMT  
		Size: 256.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9dd24ac4f84f37743b43e532e6468ca886dbcc43bd2b1cd96085b900be205b0f`  
		Last Modified: Thu, 30 Jul 2026 23:38:32 GMT  
		Size: 1.1 MB (1083059 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecc7f85be147547cb943452f3abc629611253f46a68c0e88fe3a159aae1398fa`  
		Last Modified: Thu, 30 Jul 2026 23:38:33 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6b344cb9a8d3d9e7c3c5f35475a88809ecfe82497ce609943df252b9a1b1a5d`  
		Last Modified: Thu, 30 Jul 2026 23:38:33 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:latest` - unknown; unknown

```console
$ docker pull composer@sha256:9546d2c160dd247865ab349fa9836ad1cf5496f9956f3c6dc82281edaa48b573
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **30.6 KB (30568 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:368010f168aed834efb1b7962a8368253531a2590b68b34e84b0a30424fca081`

```dockerfile
```

-	Layers:
	-	`sha256:c36f8b6e05332d5ab52691927c2db37c95dc5b65f2e47ff7bf649f4c40dfe447`  
		Last Modified: Thu, 30 Jul 2026 23:38:32 GMT  
		Size: 30.6 KB (30568 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:latest` - linux; arm variant v7

```console
$ docker pull composer@sha256:25a36647ba78cdc6773d66ffab053b4af138ca8ed6bab3b83953ee8c43f09b93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.9 MB (70928869 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c9e56a13d7c4c90ef56070ba911409aca9c51c5904f900e0ddd5fcf758592ca9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 22:42:19 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 30 Jul 2026 22:42:19 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 30 Jul 2026 22:42:19 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 30 Jul 2026 22:42:19 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:42:20 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:42:20 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:42:20 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:42:20 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:42:20 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 30 Jul 2026 22:42:20 GMT
ENV PHP_VERSION=8.5.9
# Thu, 30 Jul 2026 22:42:20 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.9.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.9.tar.xz.asc
# Thu, 30 Jul 2026 22:42:20 GMT
ENV PHP_SHA256=0db7855f25bcd0ab1d592cdb35e284d6f6a5d2ae0f6f621122e364cc39b708f4
# Thu, 30 Jul 2026 22:56:26 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 22:56:26 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:59:37 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:59:37 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:59:38 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:59:38 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:59:38 GMT
CMD ["php" "-a"]
# Thu, 30 Jul 2026 23:45:35 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 30 Jul 2026 23:45:35 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 30 Jul 2026 23:45:56 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 30 Jul 2026 23:45:56 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 30 Jul 2026 23:45:56 GMT
ENV COMPOSER_VERSION=2.10.2
# Thu, 30 Jul 2026 23:45:56 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 30 Jul 2026 23:45:56 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 30 Jul 2026 23:45:56 GMT
WORKDIR /app
# Thu, 30 Jul 2026 23:45:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 Jul 2026 23:45:56 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68cd698808efbfd59e02040c36d410c98f1ebdacba7f54f3f1a014e5a800ccd4`  
		Last Modified: Thu, 30 Jul 2026 22:45:27 GMT  
		Size: 3.2 MB (3247173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:809c69f0307d0b1ad568d63f980152f0c6e3489fc355dd5b7f22a2fc903a4480`  
		Last Modified: Thu, 30 Jul 2026 22:45:27 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:037eaa07a6bb642a1aadf09000d496ab2975cccec238b9424b42f5513b5cd041`  
		Last Modified: Thu, 30 Jul 2026 22:45:27 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bd49e9eea52b1438e95cc8d6c7079a6b012069773bc3756666faac384655e4f`  
		Last Modified: Thu, 30 Jul 2026 22:59:45 GMT  
		Size: 14.4 MB (14442234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81b4ca02027f22fc1756a31475be5981094ad9579ed1a71f4de6ea260ef552c2`  
		Last Modified: Thu, 30 Jul 2026 22:59:44 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b63a4297542fa2cdee5e0a8c32aa82bc57c1db64df2fb8263347827b33935ebf`  
		Last Modified: Thu, 30 Jul 2026 22:59:45 GMT  
		Size: 18.7 MB (18651068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41d5fe821d4169880114d30e00add4c43d54f56d40f8f4c707e90777dc9a147d`  
		Last Modified: Thu, 30 Jul 2026 22:59:44 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a20ec48be38a94a169e45a4fc6ce293cd044cdc6f53fe1532d12d685fba47a1`  
		Last Modified: Thu, 30 Jul 2026 22:59:45 GMT  
		Size: 22.1 KB (22132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0c60b5d29d96b21fcd45684ffd02b1e95f90bb7817c36bdeac8779b8962b6ef`  
		Last Modified: Thu, 30 Jul 2026 23:46:05 GMT  
		Size: 30.2 MB (30227489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d8241c1166ce05932b0657d5c0d9da0d1b9adc7d7a9906cb9af002e753ff891`  
		Last Modified: Thu, 30 Jul 2026 23:46:05 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:006ea267595f77f26cbd0727fba587bf80938aeac0af7e35c1ce6623c70c5c82`  
		Last Modified: Thu, 30 Jul 2026 23:46:05 GMT  
		Size: 1.1 MB (1073295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca5570293c1ba3eb92d409f046fb358350e30b3422d884fccf37d5f34cc737bc`  
		Last Modified: Thu, 30 Jul 2026 23:46:05 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b38df4ff4b740f7f47ceef77599e6ef7af5ac2404e7a481bc7162c0b1913cb2`  
		Last Modified: Thu, 30 Jul 2026 23:46:06 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:latest` - unknown; unknown

```console
$ docker pull composer@sha256:38afc9e4ab08c748c12b54f7280cda13250740310c141dfbab1c6f6492ef16bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211714 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49e33a00d716bbc8c0c65d7d5d90166f45213c16b5f3d602d2284d38906616e2`

```dockerfile
```

-	Layers:
	-	`sha256:19a3072370812c2e85c5733160757e47a4ce9e58b5fb924acf3a2d38bb9f825d`  
		Last Modified: Thu, 30 Jul 2026 23:46:05 GMT  
		Size: 2.2 MB (2180931 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e4d6b603c7327d396ab6fef319181ed2f98e2de7d16b705c05c4a76bde7dac3a`  
		Last Modified: Thu, 30 Jul 2026 23:46:05 GMT  
		Size: 30.8 KB (30783 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:latest` - linux; arm64 variant v8

```console
$ docker pull composer@sha256:a8e621bdc0f6b9092f69975c56a88793e2d291311afdc6489fc469a9b3d4d70a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.3 MB (77273316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c143b9d64c72c597ff56b1cc926c82125f9a9d14444076b685725258da6ebbc0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 22:42:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 30 Jul 2026 22:42:21 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 30 Jul 2026 22:42:21 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 30 Jul 2026 22:42:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:42:22 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:42:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:42:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:42:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:42:22 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 30 Jul 2026 22:42:22 GMT
ENV PHP_VERSION=8.5.9
# Thu, 30 Jul 2026 22:42:22 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.9.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.9.tar.xz.asc
# Thu, 30 Jul 2026 22:42:22 GMT
ENV PHP_SHA256=0db7855f25bcd0ab1d592cdb35e284d6f6a5d2ae0f6f621122e364cc39b708f4
# Thu, 30 Jul 2026 22:42:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 22:42:24 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:45:47 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:45:47 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:45:48 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:45:48 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:45:48 GMT
CMD ["php" "-a"]
# Thu, 30 Jul 2026 23:23:16 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 30 Jul 2026 23:23:16 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 30 Jul 2026 23:23:34 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 30 Jul 2026 23:23:34 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 30 Jul 2026 23:23:34 GMT
ENV COMPOSER_VERSION=2.10.2
# Thu, 30 Jul 2026 23:23:34 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 30 Jul 2026 23:23:34 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 30 Jul 2026 23:23:34 GMT
WORKDIR /app
# Thu, 30 Jul 2026 23:23:34 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 Jul 2026 23:23:34 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffdc0aabcc18e721e5bf0bc3173d49649473ec8d94c16faab1fd59615f32ed00`  
		Last Modified: Thu, 30 Jul 2026 22:45:56 GMT  
		Size: 3.5 MB (3485962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0817960e972961495f54b285c6e7fc8a5d1692aa6cedc67065a89d1962a4da9`  
		Last Modified: Thu, 30 Jul 2026 22:45:55 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e4755a0488b6a9b68aba8004f850df47a1c60ce18c1b15e48ebf57151f5d5c3`  
		Last Modified: Thu, 30 Jul 2026 22:45:55 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45e51f85f67fda8af4c47f31f2a0276a7f45cddfb25209d07678d48c384f416f`  
		Last Modified: Thu, 30 Jul 2026 22:45:56 GMT  
		Size: 14.4 MB (14442214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52b8f14413c8ba8413e21105a24ced33960fd96202625110b612570221a73bf6`  
		Last Modified: Thu, 30 Jul 2026 22:45:56 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc73e0df9a246579e4cecefb84df8a06d83b38c186149d7802d7cab89c7707d3`  
		Last Modified: Thu, 30 Jul 2026 22:45:57 GMT  
		Size: 22.0 MB (21996871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3aaa0e11fad48b0adf72c212aeb8b88939046a18392c3d4f70de4d2b683c7e3a`  
		Last Modified: Thu, 30 Jul 2026 22:45:57 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4b72c91cf2a30f19459def999409107e62015765070d0437a5e20ceb598312e`  
		Last Modified: Thu, 30 Jul 2026 22:45:57 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020c36fce6ff0e35b6528450adde4624acf51c9b51207d94ceca6412c2c8b8d3`  
		Last Modified: Thu, 30 Jul 2026 23:23:45 GMT  
		Size: 32.1 MB (32056607 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86c72375053aa51bd73e3226f0542129bd5b94cafaaf194559727c2427a902a3`  
		Last Modified: Thu, 30 Jul 2026 23:23:44 GMT  
		Size: 256.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e45a54343c865525f9dfcd4dfa2feb653925078eab863a11ca05974ed4832b6`  
		Last Modified: Thu, 30 Jul 2026 23:23:44 GMT  
		Size: 1.1 MB (1081617 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95c4739067e9b744a361fe62e0dd7fa815cce0d1b2fe8a17a5ec5baca90f023a`  
		Last Modified: Thu, 30 Jul 2026 23:23:44 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3323f3ea4895055c8f5468cc6aecb8e12505e4ad86e5a5b681f87c9760183302`  
		Last Modified: Thu, 30 Jul 2026 23:23:45 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:latest` - unknown; unknown

```console
$ docker pull composer@sha256:89743a6def1878eb12ceb1e2b8ba5850075152261504da3e33b946e2fdb429c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211576 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fdff8957fcedf9ad9a4693540855f13d14a764dab5bf5e180e0c5ac7d278b0df`

```dockerfile
```

-	Layers:
	-	`sha256:1eb394366fa2fb89252457770fd294b99128ae1840abf143687f142282055aba`  
		Last Modified: Thu, 30 Jul 2026 23:23:44 GMT  
		Size: 2.2 MB (2180765 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:459afebec87217ce2e6513504708d6b3ce55e9b656518f69e65acfa0331b93d1`  
		Last Modified: Thu, 30 Jul 2026 23:23:44 GMT  
		Size: 30.8 KB (30811 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:latest` - linux; 386

```console
$ docker pull composer@sha256:9f877d56384f7ae9a9627bd673c7a76567fc3f3824a920a10f8cbacced292939
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.4 MB (78429426 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5f632ad9c49b5215f65ff44915b0b6ea8b05caec65250b1a34b2cc8a47561c1d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 22:35:10 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 30 Jul 2026 22:35:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 30 Jul 2026 22:35:10 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 30 Jul 2026 22:35:10 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:35:10 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:35:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:35:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:35:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:35:10 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 30 Jul 2026 22:35:10 GMT
ENV PHP_VERSION=8.5.9
# Thu, 30 Jul 2026 22:35:10 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.9.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.9.tar.xz.asc
# Thu, 30 Jul 2026 22:35:10 GMT
ENV PHP_SHA256=0db7855f25bcd0ab1d592cdb35e284d6f6a5d2ae0f6f621122e364cc39b708f4
# Thu, 30 Jul 2026 22:35:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 22:35:13 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:45:52 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:45:52 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:45:53 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:45:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:45:53 GMT
CMD ["php" "-a"]
# Thu, 30 Jul 2026 23:19:45 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Thu, 30 Jul 2026 23:19:45 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Thu, 30 Jul 2026 23:20:04 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 30 Jul 2026 23:20:04 GMT
ENV COMPOSER_HOME=/tmp
# Thu, 30 Jul 2026 23:20:04 GMT
ENV COMPOSER_VERSION=2.10.2
# Thu, 30 Jul 2026 23:20:04 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Thu, 30 Jul 2026 23:20:04 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Thu, 30 Jul 2026 23:20:04 GMT
WORKDIR /app
# Thu, 30 Jul 2026 23:20:04 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 30 Jul 2026 23:20:04 GMT
CMD ["composer"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10905d8558906d5b554b8d6fafab80c807c5a03d4ef73c11824c6c430086d6b3`  
		Last Modified: Thu, 30 Jul 2026 22:38:49 GMT  
		Size: 3.5 MB (3507246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8161ee8f5101db293b28f8c0d93c4ddaed25f30eec6f12bc2aa67ac299fb5fc`  
		Last Modified: Thu, 30 Jul 2026 22:38:49 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8e87c3148320518f193d9c5cd11171f8490e0a20998123da4ca6c9081247c58`  
		Last Modified: Thu, 30 Jul 2026 22:38:49 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a98ba27d278a421c71c927409e25d53c9ed4cf78c95df6423a2608010efd70c9`  
		Last Modified: Thu, 30 Jul 2026 22:38:49 GMT  
		Size: 14.4 MB (14442205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a15aa920029ea4116bb3b16775fce0cf56ff920080386b4d064d7baa8ad6c3d3`  
		Last Modified: Thu, 30 Jul 2026 22:38:50 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1e4e03c55c17f63202e6a148d86d4d398b5808fde0490dc8c0a9bbf3e17ab62`  
		Last Modified: Thu, 30 Jul 2026 22:46:00 GMT  
		Size: 23.3 MB (23274988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c35c381631ebf2daf0cd3ec0952a747ca2831b008e94eb4310aba998d6ce1ce4`  
		Last Modified: Thu, 30 Jul 2026 22:46:00 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff01d2695651a591e75729385dcc2132d0a74ddf0e5e1af466f702bc7b2550ff`  
		Last Modified: Thu, 30 Jul 2026 22:46:00 GMT  
		Size: 22.4 KB (22355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faf1e33d44f30130dbb9d26d80d180f210c242443a17079a7a268e9745aa6122`  
		Last Modified: Thu, 30 Jul 2026 23:20:14 GMT  
		Size: 32.4 MB (32412707 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eac1a65258a831e5733160bbcbbbe71fc7874bf732293d6fc19d6011688d15fe`  
		Last Modified: Thu, 30 Jul 2026 23:20:14 GMT  
		Size: 255.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb80e618dd9b3f20930f47105ad9af0b5d98051f8d0c898313976eed4bae54c7`  
		Last Modified: Thu, 30 Jul 2026 23:20:14 GMT  
		Size: 1.1 MB (1094930 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:015bb0ba2e10b89fcabae3e164866499d38a862a877eead6c6225354139836ce`  
		Last Modified: Thu, 30 Jul 2026 23:20:14 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42602e7988d3810d46d5c134ad622c3f06f7ad63e6813319e617f7439089404f`  
		Last Modified: Thu, 30 Jul 2026 23:20:15 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:latest` - unknown; unknown

```console
$ docker pull composer@sha256:d9f783f06b4e75210c6f3cb4f37373bb971f226071d18985146a2fcb17906ae3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba9c259b52fb1fe0116f64794d45477c8efb330a2665a03a978e4511f0bf7bd0`

```dockerfile
```

-	Layers:
	-	`sha256:1f2367427b5ec7dff7b9fe876db51a961a7ca62a8c1ca08b8bca9d4dcbe9f250`  
		Last Modified: Thu, 30 Jul 2026 23:20:13 GMT  
		Size: 2.2 MB (2181055 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8fa2974ae1f0ee501155065bd1b2cdc0c8f61e062e828842586b4eda0694aad`  
		Last Modified: Thu, 30 Jul 2026 23:20:13 GMT  
		Size: 30.6 KB (30640 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:latest` - linux; ppc64le

```console
$ docker pull composer@sha256:fb16e6b2295a6724ddd6678a43dc9976e8d0fc0a4c84943ffc844b9177a730c3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **78.9 MB (78919566 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a541898b3c5f7dded0c1812c491ace53f3a8f993cacaed9a0d57cd3793a9e208`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

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
# Mon, 06 Jul 2026 17:12:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Mon, 06 Jul 2026 17:12:57 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Mon, 06 Jul 2026 17:12:58 GMT
RUN docker-php-ext-enable sodium # buildkit
# Mon, 06 Jul 2026 17:12:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Mon, 06 Jul 2026 17:12:58 GMT
CMD ["php" "-a"]
# Mon, 06 Jul 2026 18:13:04 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Mon, 06 Jul 2026 18:13:05 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Mon, 06 Jul 2026 18:13:41 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 06 Jul 2026 18:13:41 GMT
ENV COMPOSER_HOME=/tmp
# Mon, 06 Jul 2026 18:13:41 GMT
ENV COMPOSER_VERSION=2.10.2
# Mon, 06 Jul 2026 18:13:41 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Mon, 06 Jul 2026 18:13:42 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 06 Jul 2026 18:13:42 GMT
WORKDIR /app
# Mon, 06 Jul 2026 18:13:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 06 Jul 2026 18:13:42 GMT
CMD ["composer"]
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
	-	`sha256:1a5fc17489dc5265ea629c8f85d4793b95dd5c463948949bcfc872739510a7ec`  
		Last Modified: Mon, 06 Jul 2026 17:13:12 GMT  
		Size: 22.9 MB (22915489 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c4e34f165336c67492ecbd22a7a491fab0079bf8303c14c62f19d6eb791359e8`  
		Last Modified: Mon, 06 Jul 2026 17:13:11 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86ae09dec2bfc26261b7ba2960eb65224af72f9a19404591589cd9253a4e46bf`  
		Last Modified: Mon, 06 Jul 2026 17:13:13 GMT  
		Size: 22.2 KB (22184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3d422f7bdfd12a0feefb947873d40b816f1797641c9ebd97ae45d9ccac1bb39`  
		Last Modified: Mon, 06 Jul 2026 18:14:02 GMT  
		Size: 33.0 MB (32993734 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60101a6188c05cf74ee172afbf727ce0405d31f0c0fc1952d25ce66990f61dde`  
		Last Modified: Mon, 06 Jul 2026 18:14:01 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c053aed5db570a93401ac250133a8b05a2ac803b5184fa513d3b6aacd78871ab`  
		Last Modified: Mon, 06 Jul 2026 18:14:01 GMT  
		Size: 1.1 MB (1088809 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e82dc121685e51c70a298dd5d58b56a997c03367cdcabd71dbb19433164a570`  
		Last Modified: Mon, 06 Jul 2026 18:14:01 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78e0ac22b74d013b547f27ad52b0c90ac5041d6c26cc2a0f9bb32da2a497e368`  
		Last Modified: Mon, 06 Jul 2026 18:14:02 GMT  
		Size: 92.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:latest` - unknown; unknown

```console
$ docker pull composer@sha256:5da8affb8e0b7f97b95e75b137aa8d4b88ab594236e1317e7f8f085c5e70aaa1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210515 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8c58ed71684046e0ba00caf1151b0b0414b8448898a606545233f566bc3cbae`

```dockerfile
```

-	Layers:
	-	`sha256:ad23f7bc0281a7b922758d48e4a20dc2aa7bc87d9e7546381bcafbbf83fc1b58`  
		Last Modified: Mon, 06 Jul 2026 18:14:00 GMT  
		Size: 2.2 MB (2179790 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0ab7f2eb906461073dca773f071759767342f4da876c32188a9754a3f47a7ab2`  
		Last Modified: Mon, 06 Jul 2026 18:14:00 GMT  
		Size: 30.7 KB (30725 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:latest` - linux; riscv64

```console
$ docker pull composer@sha256:da038b655407751598c52ac6f2f1f135007a3b064fe8fc8fd1f44dc53955e5f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **76.4 MB (76392653 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a1a75fbf926eeb1ac961fba09e16cab763ec8256e5194bae496c1456c03ee78`
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
ENV PHP_VERSION=8.5.8
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.8.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.8.tar.xz.asc
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_SHA256=58910198d19e873048fe87cdfe16bc790025417ede3d1651bfa1c4b533d573f2
# Mon, 06 Jul 2026 20:54:15 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Mon, 06 Jul 2026 20:54:15 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 09:53:26 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 07 Jul 2026 09:53:26 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 07 Jul 2026 09:53:31 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 07 Jul 2026 09:53:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 07 Jul 2026 09:53:31 GMT
CMD ["php" "-a"]
# Tue, 07 Jul 2026 16:37:43 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Tue, 07 Jul 2026 16:37:43 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Tue, 07 Jul 2026 16:41:49 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 07 Jul 2026 16:41:49 GMT
ENV COMPOSER_HOME=/tmp
# Tue, 07 Jul 2026 16:41:49 GMT
ENV COMPOSER_VERSION=2.10.2
# Tue, 07 Jul 2026 16:41:49 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Tue, 07 Jul 2026 16:41:49 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 07 Jul 2026 16:41:49 GMT
WORKDIR /app
# Tue, 07 Jul 2026 16:41:49 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 07 Jul 2026 16:41:49 GMT
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
	-	`sha256:952faa82038cfd2b0982778c36e8ab73480eba9d6d5d917b0bc64b4bdd8cbc80`  
		Last Modified: Tue, 07 Jul 2026 09:54:40 GMT  
		Size: 14.4 MB (14433754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:85f87969e99d88e7fb4b011dbd7c0f7e893e17a47697d62258008544924a580d`  
		Last Modified: Tue, 07 Jul 2026 09:54:36 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10a78d9d1f3c59ef0e5151970c78ac0f3407097349cd72d30e8d7c71ec119060`  
		Last Modified: Tue, 07 Jul 2026 09:54:41 GMT  
		Size: 21.5 MB (21529008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ce761ce299d6a051845a643147d5cf17cf48bf9566b19bc80c2eba6753bbdfa`  
		Last Modified: Tue, 07 Jul 2026 09:54:36 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09408f5856f9ab8f7b5648b8821931eb9b9c715b4ba2275a0b7bbae6bf98a56f`  
		Last Modified: Tue, 07 Jul 2026 09:54:38 GMT  
		Size: 22.2 KB (22204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3760fbbc683992db9c220a880f349e1116b03dec21a3ea3f5e794315ad0c6e29`  
		Last Modified: Tue, 07 Jul 2026 16:43:27 GMT  
		Size: 32.1 MB (32144266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ad3669a410cab1333a87e43f9dce8280b96f66e9c61fad5322ca4b069f31eb`  
		Last Modified: Tue, 07 Jul 2026 16:43:22 GMT  
		Size: 260.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:061ceca3a359a0979408d9f1ce341960bd6bd54598a7eee37232fc92c72e14a5`  
		Last Modified: Tue, 07 Jul 2026 16:43:22 GMT  
		Size: 1.1 MB (1079491 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a5b9c4245c486f41e925f9ad5cb6454c8078813dd58ce04522b7563cf84e121`  
		Last Modified: Tue, 07 Jul 2026 16:43:22 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c9eac6661dce1fe2826015462fc5891ab4b0d055211105a59ac7eb2f2c961f53`  
		Last Modified: Tue, 07 Jul 2026 16:43:23 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:latest` - unknown; unknown

```console
$ docker pull composer@sha256:cda1591d8bb979473817f368ca3293294188b08c8d081adff1f02d1f0c0757a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2210139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:475f1e6d922b60eec0198bc35aad5fa70848f3612b9cb20ebc7daa923b4ea243`

```dockerfile
```

-	Layers:
	-	`sha256:f78ccf07cf3f8ec6483468c2d8287396e48e4c476dfed66e52c9612147a6c5c9`  
		Last Modified: Tue, 07 Jul 2026 16:43:22 GMT  
		Size: 2.2 MB (2179414 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc7db6a2c41039f723c83bb73c51a6217f36f2b4c32e5a6b554ee652d4336121`  
		Last Modified: Tue, 07 Jul 2026 16:43:22 GMT  
		Size: 30.7 KB (30725 bytes)  
		MIME: application/vnd.in-toto+json

### `composer:latest` - linux; s390x

```console
$ docker pull composer@sha256:8e6c8667f1f099379e0b7b2629c2d48d9a02e066e30de41ba9750ea4fd9ac6e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **77.6 MB (77588353 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0d9a790912c893e80f38575a240cbade7a8f1629b3d80854ba20be41a7289c88`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["composer"]`

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
ENV PHP_VERSION=8.5.9
# Thu, 02 Jul 2026 20:41:15 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.9.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.9.tar.xz.asc
# Thu, 02 Jul 2026 20:41:15 GMT
ENV PHP_SHA256=0db7855f25bcd0ab1d592cdb35e284d6f6a5d2ae0f6f621122e364cc39b708f4
# Thu, 30 Jul 2026 23:00:28 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 23:00:29 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:05:53 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 23:05:53 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:05:54 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 23:05:54 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 23:05:54 GMT
CMD ["php" "-a"]
# Fri, 31 Jul 2026 00:03:45 GMT
RUN set -eux ;   apk add --no-cache --virtual .composer-rundeps     7zip     bash     coreutils     git     make     mercurial     openssh-client     patch     subversion     tini     unzip     zip # buildkit
# Fri, 31 Jul 2026 00:03:45 GMT
RUN printf "# composer php cli ini settings\ndate.timezone=UTC\nmemory_limit=-1\n" > $PHP_INI_DIR/php-cli.ini # buildkit
# Fri, 31 Jul 2026 00:04:11 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Fri, 31 Jul 2026 00:04:11 GMT
ENV COMPOSER_HOME=/tmp
# Fri, 31 Jul 2026 00:04:11 GMT
ENV COMPOSER_VERSION=2.10.2
# Fri, 31 Jul 2026 00:04:11 GMT
RUN set -eux ;   curl     --silent     --fail     --location     --retry 3     --output /usr/local/bin/install-php-extensions     --url https://github.com/mlocati/docker-php-extension-installer/releases/download/2.11.12/install-php-extensions   ;   echo 0c3594c9865bf1e2372cfd3da355cf5115c56fdcc9956218e06c130d99d7754d806088d8d0771f6e84f01e93cd65928df2579d50d7d66811010552eae6fe671a /usr/local/bin/install-php-extensions | sha512sum --strict --check ;   chmod +x /usr/local/bin/install-php-extensions ;   install-php-extensions     bz2     zip   ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.dev.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/snapshots.pub   ;   echo 572b963c4b7512a7de3c71a788772440b1996d918b1d2b5354bf8ba2bb057fadec6f7ac4852f2f8a8c01ab94c18141ce0422aec3619354b057216e0597db5ac2 /tmp/keys.dev.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/keys.tags.pub     --url https://raw.githubusercontent.com/composer/composer.github.io/e7f28b7200249f8e5bc912b42837d4598c74153a/releases.pub   ;   echo 47f374b8840dcb0aa7b2327f13d24ab5f6ae9e58aa630af0d62b3d0ea114f4a315c5d97b21dcad3c7ffe2f0a95db2edec267adaba3f4f5a262abebe39aed3a28 /tmp/keys.tags.pub | sha512sum --strict --check ;   curl     --silent     --fail     --location     --retry 3     --output /tmp/installer.php     --url https://raw.githubusercontent.com/composer/getcomposer.org/f24b8f860b95b52167f91bbd3e3a7bcafe043038/web/installer   ;   echo 3137ad86bd990524ba1dedc2038309dfa6b63790d3ca52c28afea65dcc2eaead16fb33e9a72fd2a7a8240afaf26e065939a2d472f3b0eeaa575d1e8648f9bf19 /tmp/installer.php | sha512sum --strict --check ;   php /tmp/installer.php     --no-ansi     --install-dir=/usr/bin     --filename=composer     --version=${COMPOSER_VERSION}   ;   composer --ansi --version --no-interaction ;   rm -f /tmp/installer.php ;   find /tmp -type d -exec chmod -v 1777 {} + # buildkit
# Fri, 31 Jul 2026 00:04:11 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 31 Jul 2026 00:04:12 GMT
WORKDIR /app
# Fri, 31 Jul 2026 00:04:12 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 31 Jul 2026 00:04:12 GMT
CMD ["composer"]
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
	-	`sha256:12b7df60f28a90d595fbf6bb8dda34a255f804e3f7b4d0cff28bded2fa2a7b7b`  
		Last Modified: Thu, 30 Jul 2026 23:06:08 GMT  
		Size: 14.4 MB (14442220 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2228d4e0ad036b3cab2d0f4b5bd0aa4e3816c2753b8cd02e5ae5fe1fae16dd5`  
		Last Modified: Thu, 30 Jul 2026 23:06:08 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3ba5a84dba19933cc90db61fd92cd5e0eda9008e36d31940027bcac4b7e0c3d`  
		Last Modified: Thu, 30 Jul 2026 23:06:08 GMT  
		Size: 21.8 MB (21780904 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b2f559d1601a70d5af240131c465f50d9b5ad378fc49bc4d0901f011b95d5e3`  
		Last Modified: Thu, 30 Jul 2026 23:06:08 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5e8ebc627880515682063e86f523b7416422610d9deb6b495e8276d66950541`  
		Last Modified: Thu, 30 Jul 2026 23:06:09 GMT  
		Size: 22.2 KB (22151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87c86a76fecdc1e6604089e77a486fd78d9c34cb201c17fc40876e8002aafcbc`  
		Last Modified: Fri, 31 Jul 2026 00:04:29 GMT  
		Size: 32.9 MB (32877013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31cb33cb9a07eb1eeba8fb14467b1304e83d345dbc89b6a5e2d0777052c72a7c`  
		Last Modified: Fri, 31 Jul 2026 00:04:29 GMT  
		Size: 257.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43282f5cb33454229cf4e9a9cfe3131b6691e311cfa8b9eca3b86144f4446ec8`  
		Last Modified: Fri, 31 Jul 2026 00:04:29 GMT  
		Size: 1.1 MB (1085817 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71e4f9e351da51c22b8e48c319effb6c8468d8e8757c5dc9c057756eae613686`  
		Last Modified: Fri, 31 Jul 2026 00:04:29 GMT  
		Size: 419.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09fc2868af8d848236a2e35bb5fa0471b1bfe998510069fee03ea859347a1d06`  
		Last Modified: Fri, 31 Jul 2026 00:04:30 GMT  
		Size: 93.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `composer:latest` - unknown; unknown

```console
$ docker pull composer@sha256:aa86c970dbb5ba431e2a71d724fc85c6a418dfc95da0de7e057a90b4a85f2c97
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **2.2 MB (2211199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e416703684f71c3856694cbd3af4e604d8863024ab9f2e70434656219dfa4eeb`

```dockerfile
```

-	Layers:
	-	`sha256:fea53efe8c7b947554d73a119c108ad7edcd32e31f608a792a33493326311835`  
		Last Modified: Fri, 31 Jul 2026 00:04:29 GMT  
		Size: 2.2 MB (2180522 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d98489b2cb935bbd30ca84d348f4ae5bafd7f422a977e9960adc1211d3fae999`  
		Last Modified: Fri, 31 Jul 2026 00:04:29 GMT  
		Size: 30.7 KB (30677 bytes)  
		MIME: application/vnd.in-toto+json
