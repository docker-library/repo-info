## `adminer:6-standalone`

```console
$ docker pull adminer@sha256:e82c16620650d359b87284b598d9ae03e5d95f3412f45d1ef3936b803445f1ae
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

### `adminer:6-standalone` - linux; amd64

```console
$ docker pull adminer@sha256:27a72b5b70f061e034132db92fffe6dcb556b49c9147cb3b1eb3f9d88f5dddbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46143942 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ce0f8988ce4c0d1e984859eae98ee253a74f0abb62de0697fda41010a1ac0969`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 20:20:50 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 27 Aug 2026 20:20:50 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 27 Aug 2026 20:20:50 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 27 Aug 2026 20:20:50 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 27 Aug 2026 20:20:50 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 27 Aug 2026 20:20:50 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:20:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:20:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 27 Aug 2026 20:20:50 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 27 Aug 2026 20:20:50 GMT
ENV PHP_VERSION=8.4.25
# Thu, 27 Aug 2026 20:20:50 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 27 Aug 2026 20:20:50 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 27 Aug 2026 20:20:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 27 Aug 2026 20:20:53 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:23:52 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 27 Aug 2026 20:23:52 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:23:52 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 27 Aug 2026 20:23:53 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 27 Aug 2026 20:23:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 27 Aug 2026 20:23:53 GMT
CMD ["php" "-a"]
# Thu, 27 Aug 2026 20:27:52 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 27 Aug 2026 20:27:52 GMT
STOPSIGNAL SIGINT
# Thu, 27 Aug 2026 20:27:52 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 27 Aug 2026 20:27:52 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 20:28:20 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 27 Aug 2026 20:28:20 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 27 Aug 2026 20:28:20 GMT
ENV ADMINER_VERSION=6.0.1
# Thu, 27 Aug 2026 20:28:20 GMT
ENV ADMINER_DOWNLOAD_SHA256=1815c03f26e21d533e729c0b09bc69a59c902a6440409d013105ee679dff006c
# Thu, 27 Aug 2026 20:28:20 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=155ba6bcb54a4176c225034feb8a3a2abc5e58ea5e4359b28a8415f8fa068cc1
# Thu, 27 Aug 2026 20:28:21 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 27 Aug 2026 20:28:21 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:28:21 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 27 Aug 2026 20:28:21 GMT
USER adminer
# Thu, 27 Aug 2026 20:28:21 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Thu, 27 Aug 2026 20:28:21 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae36057d23eee870ee9f04a2f1792704451904d1d9e7b60b50c3786280caa1d7`  
		Last Modified: Thu, 27 Aug 2026 20:24:00 GMT  
		Size: 5.9 MB (5947460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d7067b81979a82bd37ff8c2f5167f1c7b9160e6ca1d9db5446f67fd7d16b07c`  
		Last Modified: Thu, 27 Aug 2026 20:24:00 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53f5c813751b8f90733950fe75f90b3154feb8e078d4ec968a0edbb4bc17a169`  
		Last Modified: Thu, 27 Aug 2026 20:24:00 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4606c0d185b472ffa3fb5b03ad2258325ea741c17eeb36633785a17c77423fa2`  
		Last Modified: Thu, 27 Aug 2026 20:24:01 GMT  
		Size: 13.8 MB (13782395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4002db18e54901e788badb515c268bcdf44b40255f56d32c92fe2151a39cd672`  
		Last Modified: Thu, 27 Aug 2026 20:24:01 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68f0d9256e4bd0613cea1a7299c3c766af3f0d890eac2eba6cc235ace7a1b2c8`  
		Last Modified: Thu, 27 Aug 2026 20:24:02 GMT  
		Size: 20.4 MB (20432647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13266edc51dd67f204bc50273b25419870c893405111ec8a32cdbb5427cf160e`  
		Last Modified: Thu, 27 Aug 2026 20:24:02 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0da9a3b4ac6c33d0d96784a584261515538c2d2f638c85cdf22b0e5ad3b4cf28`  
		Last Modified: Thu, 27 Aug 2026 20:24:02 GMT  
		Size: 22.4 KB (22368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3f2648406e77472091b066c7aba26e5696dca368f0eabf8e1d003c379abb1c6`  
		Last Modified: Thu, 27 Aug 2026 20:24:02 GMT  
		Size: 22.4 KB (22381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d63b101b6fb9ca71e31ad22d5e886682e1528507e39df75b9387d86578ddc2b`  
		Last Modified: Thu, 27 Aug 2026 20:28:25 GMT  
		Size: 302.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4446e21c60a30a828c5bbd9218777555f54c9e2b613f64878f7b9b6004956b1`  
		Last Modified: Thu, 27 Aug 2026 20:28:25 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f94ba0297dfb17cfe22c67e5592228ec3a1c8443314f3e809a2d949ecc024ca`  
		Last Modified: Thu, 27 Aug 2026 20:28:25 GMT  
		Size: 1.5 MB (1467676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9105a1ed3eb2345b9a855661fc3a2a834d25a46555b292d3223ffe646755990d`  
		Last Modified: Thu, 27 Aug 2026 20:28:25 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:470bfd864cb4acea15ad2652f8ab41d498c03378cf2f1e7d8a2193f007ac7e17`  
		Last Modified: Thu, 27 Aug 2026 20:28:26 GMT  
		Size: 614.9 KB (614918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0654563a4244ce360917e6f34d59200476d1773ac656325a03bfcb2cd368da5`  
		Last Modified: Thu, 27 Aug 2026 20:28:26 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:6-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:0c22eeda2e91a625a1476d272c131090acfeb272c988f8bbce017b340a2cf681
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 KB (35861 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eb8cae94d9830e58965e9ce770652cb1d0b40598ccb58c611ce8a064db0a29c7`

```dockerfile
```

-	Layers:
	-	`sha256:9d459ec7d02ee9e45e5e029ab194c68360eaba2d996619c536bf2976a8d018f2`  
		Last Modified: Thu, 27 Aug 2026 20:28:25 GMT  
		Size: 35.9 KB (35861 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:6-standalone` - linux; arm variant v6

```console
$ docker pull adminer@sha256:9d91b654e27393b42f821a1fa1d399232fef6fc3f238b07cf211569158489854
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.5 MB (43461795 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ac778b5d01580f5e9c30b7c525b29a64ac056b083f82e06c3753f0866f1698eb`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 20:13:12 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 27 Aug 2026 20:13:12 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 27 Aug 2026 20:13:12 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 27 Aug 2026 20:13:12 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 27 Aug 2026 20:13:12 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 27 Aug 2026 20:13:12 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:13:12 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:13:12 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 27 Aug 2026 20:13:12 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 27 Aug 2026 20:13:12 GMT
ENV PHP_VERSION=8.4.25
# Thu, 27 Aug 2026 20:13:12 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 27 Aug 2026 20:13:12 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 27 Aug 2026 20:13:16 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 27 Aug 2026 20:13:16 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:16:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 27 Aug 2026 20:16:15 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:16:16 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 27 Aug 2026 20:16:16 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 27 Aug 2026 20:16:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 27 Aug 2026 20:16:16 GMT
CMD ["php" "-a"]
# Thu, 27 Aug 2026 20:31:35 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 27 Aug 2026 20:31:35 GMT
STOPSIGNAL SIGINT
# Thu, 27 Aug 2026 20:31:35 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 27 Aug 2026 20:31:35 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 20:32:13 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 27 Aug 2026 20:32:13 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 27 Aug 2026 20:32:13 GMT
ENV ADMINER_VERSION=6.0.1
# Thu, 27 Aug 2026 20:32:13 GMT
ENV ADMINER_DOWNLOAD_SHA256=1815c03f26e21d533e729c0b09bc69a59c902a6440409d013105ee679dff006c
# Thu, 27 Aug 2026 20:32:13 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=155ba6bcb54a4176c225034feb8a3a2abc5e58ea5e4359b28a8415f8fa068cc1
# Thu, 27 Aug 2026 20:32:14 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 27 Aug 2026 20:32:14 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:32:14 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 27 Aug 2026 20:32:14 GMT
USER adminer
# Thu, 27 Aug 2026 20:32:14 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Thu, 27 Aug 2026 20:32:14 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b83793e076470abff05bd2d8c8ddf23ddcd94835b20bdc50e03404db0afe37f2`  
		Last Modified: Thu, 27 Aug 2026 20:16:23 GMT  
		Size: 5.5 MB (5537288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d577c7b9d0a355ea7477a68ab0a79b74d8522fda711a838acda8429cc328b34`  
		Last Modified: Thu, 27 Aug 2026 20:16:22 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74cfa9628820322a9e2b5be4774b1abb706827f334dea996ccb8565e8e319659`  
		Last Modified: Thu, 27 Aug 2026 20:16:23 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b58261a0d2236eb7328669535534fa94589ffc5a689dcdd12eb0a0446c769f10`  
		Last Modified: Thu, 27 Aug 2026 20:16:23 GMT  
		Size: 13.8 MB (13782401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d4a570b9df6b0f634a7e335df7bcbce1f905851331ddf092533c58f52b6ffea`  
		Last Modified: Thu, 27 Aug 2026 20:16:24 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a69d1b1b93c397d3b2c0e5a454adeb8a29900cbbae3646146070454b3203688`  
		Last Modified: Thu, 27 Aug 2026 20:16:24 GMT  
		Size: 18.5 MB (18457785 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffe07500b96ab629ce46c90ecab58ba519a5e6110ca75b4c9dec7398906cbb44`  
		Last Modified: Thu, 27 Aug 2026 20:16:24 GMT  
		Size: 2.4 KB (2445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:712184e80781421312701ee008b98b2e3959c5a589f3bec46a34914066ae4042`  
		Last Modified: Thu, 27 Aug 2026 20:16:25 GMT  
		Size: 22.2 KB (22166 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67d53a5e4b7fce81bdea9c98ce32989fec4615842d8e2adbdf36cb3fdad49ff7`  
		Last Modified: Thu, 27 Aug 2026 20:16:25 GMT  
		Size: 22.2 KB (22178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08ee9fe0a47e4be2f7017c30a55cfc465ea9d270d5ddd63dc5dfe49ee0c324ac`  
		Last Modified: Thu, 27 Aug 2026 20:32:18 GMT  
		Size: 304.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0241b581419ea3f5a960b978924adeff60099c30cb77a5d149131a2cd60db0f2`  
		Last Modified: Thu, 27 Aug 2026 20:32:18 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb9e865484cdfae7bad6b17cac93d3fa2f2f6bbadfe16e61e7666a6f4ac5f401`  
		Last Modified: Thu, 27 Aug 2026 20:32:18 GMT  
		Size: 1.5 MB (1463901 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c664b9c06d94d66aa954a9c5620ef370740874bfd4bb5b1cbfae493ef6106fe7`  
		Last Modified: Thu, 27 Aug 2026 20:32:18 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8614921a3c78024f40c32481b796ecc85ae408314b237f69574f80f576c87ec9`  
		Last Modified: Thu, 27 Aug 2026 20:32:19 GMT  
		Size: 614.9 KB (614918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e3acede9bc6d753779d848660daed32c837845848a9f055941369dd8655301b`  
		Last Modified: Thu, 27 Aug 2026 20:32:19 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:6-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:b1a7503f180f0ec84fec196713835832d0b698f7f8ee5058b407f903a3efb165
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 KB (35996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27f69d8502e2b7712c098419ac32c5dd9a257aff6e872cab960ba5397f623eec`

```dockerfile
```

-	Layers:
	-	`sha256:12293d0ffeae0fc50919be26a0915cbb936ab8eefbcb26c693270046a8e29d5f`  
		Last Modified: Thu, 27 Aug 2026 20:32:18 GMT  
		Size: 36.0 KB (35996 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:6-standalone` - linux; arm variant v7

```console
$ docker pull adminer@sha256:6525d7eab5dcdffef26828ea596b9afa9b0c47b50fd8e4cd6ba17f367f84935c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41600500 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:896dc7fb261e0f1b121c72a8f00a4e882f9cfad0c75392242f6cb203ca40dba3`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 20:26:46 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 27 Aug 2026 20:26:46 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 27 Aug 2026 20:26:46 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 27 Aug 2026 20:26:46 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 27 Aug 2026 20:26:47 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 27 Aug 2026 20:26:47 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:26:47 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:26:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 27 Aug 2026 20:26:47 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 27 Aug 2026 20:26:47 GMT
ENV PHP_VERSION=8.4.25
# Thu, 27 Aug 2026 20:26:47 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 27 Aug 2026 20:26:47 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 27 Aug 2026 20:26:50 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 27 Aug 2026 20:26:50 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:29:56 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 27 Aug 2026 20:29:56 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:29:57 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 27 Aug 2026 20:29:58 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 27 Aug 2026 20:29:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 27 Aug 2026 20:29:58 GMT
CMD ["php" "-a"]
# Thu, 27 Aug 2026 21:15:15 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 27 Aug 2026 21:15:15 GMT
STOPSIGNAL SIGINT
# Thu, 27 Aug 2026 21:15:15 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 27 Aug 2026 21:15:15 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 21:15:50 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 27 Aug 2026 21:15:50 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 27 Aug 2026 21:15:50 GMT
ENV ADMINER_VERSION=6.0.1
# Thu, 27 Aug 2026 21:15:50 GMT
ENV ADMINER_DOWNLOAD_SHA256=1815c03f26e21d533e729c0b09bc69a59c902a6440409d013105ee679dff006c
# Thu, 27 Aug 2026 21:15:50 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=155ba6bcb54a4176c225034feb8a3a2abc5e58ea5e4359b28a8415f8fa068cc1
# Thu, 27 Aug 2026 21:15:51 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 27 Aug 2026 21:15:51 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 21:15:51 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 27 Aug 2026 21:15:51 GMT
USER adminer
# Thu, 27 Aug 2026 21:15:51 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Thu, 27 Aug 2026 21:15:51 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6633debaf81726cbf42d64dfd71f69892a1e556ec85da1ce5e2a2cee79e0f6e2`  
		Last Modified: Thu, 27 Aug 2026 20:30:05 GMT  
		Size: 5.2 MB (5185957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76c3cca1613663b84a70236e96d72937b099792e0d0f62f71a5eda728ebf44dd`  
		Last Modified: Thu, 27 Aug 2026 20:30:05 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed3dffe161dc5ad0c1bf2bd457c45a4c32b52561c07c3ca41d01b8ad50915a3b`  
		Last Modified: Thu, 27 Aug 2026 20:30:05 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c68920983d69a5f8655167515e76f191f67d9b10dd40b56ffc66695d14bca0a`  
		Last Modified: Thu, 27 Aug 2026 20:30:05 GMT  
		Size: 13.8 MB (13782406 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b503864b830d230b10c7d75a4941a32699fea6226a15bd80748e5c233f63e6a3`  
		Last Modified: Thu, 27 Aug 2026 20:30:06 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e3fe3a5030c518e2ecc8e8f08ada41d4cbcf1e645e7cc815f8d0aa140ba2947`  
		Last Modified: Thu, 27 Aug 2026 20:30:06 GMT  
		Size: 17.4 MB (17390550 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54766f798372c7eb78f669adec521d8c0ab37b38faca91653d9d00d3f837e478`  
		Last Modified: Thu, 27 Aug 2026 20:30:06 GMT  
		Size: 2.4 KB (2445 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bac248d39bb0d5d2b4582914eb00657b5abdadd064030195adf059bb3cb92be`  
		Last Modified: Thu, 27 Aug 2026 20:30:07 GMT  
		Size: 22.2 KB (22179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a21a8dbcc3cca907bf34bbcf4da893d9ac27c975db412e863201fe30e007f06`  
		Last Modified: Thu, 27 Aug 2026 20:30:07 GMT  
		Size: 22.2 KB (22186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20ecaa497e830b1471e252eeca8d5ffe8b1233081ddaa87bcc1b1dbc98b7f904`  
		Last Modified: Thu, 27 Aug 2026 21:15:55 GMT  
		Size: 306.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0d48e7fd1237e9ac9b35a464fac1564ffed7efc6fae07949f5f1ed3eac17406`  
		Last Modified: Thu, 27 Aug 2026 21:15:55 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bacebd0c07562208ad46cb96517e7ad79557d471ec217cbb677cd5e4c6e244c`  
		Last Modified: Thu, 27 Aug 2026 21:15:56 GMT  
		Size: 1.3 MB (1313973 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd870a386cdc561268bacfe3cbeb80a922c22f4deff8ba0f017018bd6ff4e202`  
		Last Modified: Thu, 27 Aug 2026 21:15:55 GMT  
		Size: 1.8 KB (1768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65433d84676270864f9730f087d074a8c1427b89b22635463c916d39372e1dfe`  
		Last Modified: Thu, 27 Aug 2026 21:15:57 GMT  
		Size: 614.9 KB (614914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:060ba706e4a18b0c129854dbad2142e36c6aae6f59c1cdbd519a6d3a8713168f`  
		Last Modified: Thu, 27 Aug 2026 21:15:56 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:6-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:ad50acc041a8fb4c68d90bfcfc1016f099dc5434cc8ecf8a8caaf23d82a8af75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 KB (35996 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bc8b758f2225df8422039c0575346d58023b7bbf0771981f19fd2d838434020`

```dockerfile
```

-	Layers:
	-	`sha256:2af753f0e81dadf98891ebdaf54bf7bdc334d923b38eb9459898c425524dc6d4`  
		Last Modified: Thu, 27 Aug 2026 21:15:55 GMT  
		Size: 36.0 KB (35996 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:6-standalone` - linux; arm64 variant v8

```console
$ docker pull adminer@sha256:a4cde3e69f020a1c2b1b539aaa7192d60b5b9d1baac31519f3fd0b878d367b85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 MB (46168806 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0dce2c44718230ebb60934637d71fcd2f4dcaeaff3fcedc78fb436390ff20957`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 20:21:22 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 27 Aug 2026 20:21:22 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 27 Aug 2026 20:21:22 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 27 Aug 2026 20:21:22 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 27 Aug 2026 20:21:22 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 27 Aug 2026 20:21:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:21:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:21:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 27 Aug 2026 20:21:22 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 27 Aug 2026 20:21:22 GMT
ENV PHP_VERSION=8.4.25
# Thu, 27 Aug 2026 20:21:22 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 27 Aug 2026 20:21:22 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 27 Aug 2026 20:21:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 27 Aug 2026 20:21:25 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:24:40 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 27 Aug 2026 20:24:40 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:24:41 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 27 Aug 2026 20:24:42 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 27 Aug 2026 20:24:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 27 Aug 2026 20:24:42 GMT
CMD ["php" "-a"]
# Thu, 27 Aug 2026 20:27:53 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 27 Aug 2026 20:27:53 GMT
STOPSIGNAL SIGINT
# Thu, 27 Aug 2026 20:27:53 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 27 Aug 2026 20:27:53 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 20:28:28 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 27 Aug 2026 20:28:28 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 27 Aug 2026 20:28:28 GMT
ENV ADMINER_VERSION=6.0.1
# Thu, 27 Aug 2026 20:28:28 GMT
ENV ADMINER_DOWNLOAD_SHA256=1815c03f26e21d533e729c0b09bc69a59c902a6440409d013105ee679dff006c
# Thu, 27 Aug 2026 20:28:28 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=155ba6bcb54a4176c225034feb8a3a2abc5e58ea5e4359b28a8415f8fa068cc1
# Thu, 27 Aug 2026 20:28:28 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 27 Aug 2026 20:28:28 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:28:28 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 27 Aug 2026 20:28:28 GMT
USER adminer
# Thu, 27 Aug 2026 20:28:28 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Thu, 27 Aug 2026 20:28:28 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c26cab780426127ec3c34e56551fdc8dff7018d5fe1cc351394f2588af03b5c`  
		Last Modified: Thu, 27 Aug 2026 20:24:49 GMT  
		Size: 6.3 MB (6257360 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfb99d4478edf3077e9e1aa873d7ca378f199453d496fbbe71144e6b13cca461`  
		Last Modified: Thu, 27 Aug 2026 20:24:49 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abc65d9cad6e1df664b6ea924322d39b45dda3db4b93a654242a42e99a8cd33f`  
		Last Modified: Thu, 27 Aug 2026 20:24:49 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd5e6659d28bdf529d1385583fc1cf81c3c0e78fea2102ba4fafcba1b5f4e24f`  
		Last Modified: Thu, 27 Aug 2026 20:24:49 GMT  
		Size: 13.8 MB (13782385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c54824067f7f4ec69ddbdcc6d510c47fc6710c2afc29c76fda03c264855ae2e5`  
		Last Modified: Thu, 27 Aug 2026 20:24:50 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f35bdca77519b30ea757d3c4d25af327972e302f1c09fe7328ed089cdb73378f`  
		Last Modified: Thu, 27 Aug 2026 20:24:51 GMT  
		Size: 19.8 MB (19799000 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d08027970da19fb39d1cc2045ff672b07e68eb11a75bdf6eaabc8ea0f300fb4`  
		Last Modified: Thu, 27 Aug 2026 20:24:51 GMT  
		Size: 2.4 KB (2443 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4485201a48ae3dd1d784b2f80b8085015ca4ea461c07a9fb6068a093609c40cb`  
		Last Modified: Thu, 27 Aug 2026 20:24:51 GMT  
		Size: 22.2 KB (22201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c9e44be3760f4fa83321e3c5a6fec8b155dd652a2d682945334563e637bbf47`  
		Last Modified: Thu, 27 Aug 2026 20:24:51 GMT  
		Size: 22.2 KB (22213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff81fe90af07f8c140ee2780fcc149785444ba30bacf853b9b4d7b670c8601a2`  
		Last Modified: Thu, 27 Aug 2026 20:28:32 GMT  
		Size: 307.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6b9a1da92d7dfa5a33493d6445f8ad3552d174fcecbcf009f1f6fac3afd71bb`  
		Last Modified: Thu, 27 Aug 2026 20:28:32 GMT  
		Size: 1.0 KB (1037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b8532836e920a469ef656b32d5b00d49993d8cb6ab1b45bc4f6fe34576bf1fa`  
		Last Modified: Thu, 27 Aug 2026 20:28:32 GMT  
		Size: 1.5 MB (1479988 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43db044add8de3768b7fa89d587e45cb99ebe97b9a9d9d8f4b5765ed48be4d3a`  
		Last Modified: Thu, 27 Aug 2026 20:28:32 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a197ff5a5d469aacc8352b51812934ee825560c191fa23564ca6ef5c202f219`  
		Last Modified: Thu, 27 Aug 2026 20:28:33 GMT  
		Size: 614.9 KB (614916 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41dbf726d34a99e00d64ef97fa201179efaeecfe8ef4aaa3ac67da125a266319`  
		Last Modified: Thu, 27 Aug 2026 20:28:33 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:6-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:f0b7af7637586b2c5ec5e6bb6f50246fa5636f4161b7cc8bd173b2aa8d45d37a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.0 KB (36034 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:036a5b5a0b7715d6710aae695df1e7114fbacd2e06344652de33e912d1163892`

```dockerfile
```

-	Layers:
	-	`sha256:7d27f04b6604f111bfdd479dfabd54c96e3c5d8400b8b21400ae1754802d0fb3`  
		Last Modified: Thu, 27 Aug 2026 20:28:32 GMT  
		Size: 36.0 KB (36034 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:6-standalone` - linux; 386

```console
$ docker pull adminer@sha256:46774d6e8a6c8e4ecbc64023228d0050163a13dd6d4842f20b6241ea3c1e437c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.3 MB (46256742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d0a16da4b08686ab4b9faf02e9ebe01c0576a3c6002306483a834609e123d236`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 20:24:52 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 27 Aug 2026 20:24:52 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 27 Aug 2026 20:24:52 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 27 Aug 2026 20:24:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 27 Aug 2026 20:24:52 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 27 Aug 2026 20:24:52 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:24:52 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:24:52 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 27 Aug 2026 20:24:52 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 27 Aug 2026 20:24:52 GMT
ENV PHP_VERSION=8.4.25
# Thu, 27 Aug 2026 20:24:52 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 27 Aug 2026 20:24:52 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 27 Aug 2026 20:24:55 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 27 Aug 2026 20:24:55 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:28:16 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 27 Aug 2026 20:28:16 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:28:17 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 27 Aug 2026 20:28:17 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 27 Aug 2026 20:28:17 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 27 Aug 2026 20:28:17 GMT
CMD ["php" "-a"]
# Thu, 27 Aug 2026 21:12:27 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 27 Aug 2026 21:12:27 GMT
STOPSIGNAL SIGINT
# Thu, 27 Aug 2026 21:12:27 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 27 Aug 2026 21:12:27 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 21:12:54 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 27 Aug 2026 21:12:54 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 27 Aug 2026 21:12:54 GMT
ENV ADMINER_VERSION=6.0.1
# Thu, 27 Aug 2026 21:12:54 GMT
ENV ADMINER_DOWNLOAD_SHA256=1815c03f26e21d533e729c0b09bc69a59c902a6440409d013105ee679dff006c
# Thu, 27 Aug 2026 21:12:54 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=155ba6bcb54a4176c225034feb8a3a2abc5e58ea5e4359b28a8415f8fa068cc1
# Thu, 27 Aug 2026 21:12:55 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 27 Aug 2026 21:12:55 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 21:12:55 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 27 Aug 2026 21:12:55 GMT
USER adminer
# Thu, 27 Aug 2026 21:12:55 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Thu, 27 Aug 2026 21:12:55 GMT
EXPOSE map[8080/tcp:{}]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e059b07312515ef780220a18ed1d23bd7a8587ee5e0cbe10c322c654a21ef68c`  
		Last Modified: Thu, 27 Aug 2026 20:28:25 GMT  
		Size: 5.8 MB (5793450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f0ea9fd196e63101a915e7594f3c54ff6320a3555c2d932d9b38740ce12edb4`  
		Last Modified: Thu, 27 Aug 2026 20:28:24 GMT  
		Size: 935.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b688a50f2c8bb1010e2a4eb9ff764ee1d22bfaf5562dd4395602dcfca221842f`  
		Last Modified: Thu, 27 Aug 2026 20:28:24 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ae8f90f621b6af15aaf055804118be7a2f119b2e4ef3b84c00385c6d0a20ffa`  
		Last Modified: Thu, 27 Aug 2026 20:28:25 GMT  
		Size: 13.8 MB (13782379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71bd524703b23bffefc0700d3de12bf7f70ecd30342340407d2833a670ce1e3d`  
		Last Modified: Thu, 27 Aug 2026 20:28:26 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b5f008f8360bbdd62f6e1d366a1734e5733ffee0795e168fc80b86a81a2ed2a`  
		Last Modified: Thu, 27 Aug 2026 20:28:26 GMT  
		Size: 20.8 MB (20847415 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c71b00bdf2613384bedb9329d2a28949ce27e73a502ffe710c5d925bf5d2a51e`  
		Last Modified: Thu, 27 Aug 2026 20:28:26 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82c9ffc23ee74f9531331d5aac37dbef3eb79a7c8fcff20b8f860c9701dfe803`  
		Last Modified: Thu, 27 Aug 2026 20:28:26 GMT  
		Size: 22.4 KB (22388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66497c6940cf76059c11ed4be381941df53cd7ed4e802122ecf668c2cd3a2faa`  
		Last Modified: Thu, 27 Aug 2026 20:28:27 GMT  
		Size: 22.4 KB (22395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95400e6a9d5d8c8eb9ae4cf095c407777c7b6c82990045552e8bb91236f159e7`  
		Last Modified: Thu, 27 Aug 2026 21:13:00 GMT  
		Size: 303.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5276932a05c24aff12d122ca8b33c64511edd7611644cf535cd5982b137f567d`  
		Last Modified: Thu, 27 Aug 2026 21:13:00 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44833333b45137f730eca21356919b43f305c00d60d58d5622161e50b2d577e0`  
		Last Modified: Thu, 27 Aug 2026 21:13:00 GMT  
		Size: 1.5 MB (1495933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55c024be3067b6fd4d0e23e061ed35d95d0da2820d2da61e703199b39291bf47`  
		Last Modified: Thu, 27 Aug 2026 21:13:00 GMT  
		Size: 1.8 KB (1769 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f50c1a8f31c093f7204297dbbaf2311b7d9160d18b99563256807654b700fcbe`  
		Last Modified: Thu, 27 Aug 2026 21:13:01 GMT  
		Size: 614.9 KB (614917 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15d1eb9f1baad3608f7397ea4348ff6f9d29df31f46cb0aec50c2153dbceaa01`  
		Last Modified: Thu, 27 Aug 2026 21:13:01 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:6-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:01d885e1929e6c00e64fc2c3c911608a2197d6b3ab6174dfe334be29565a39c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.8 KB (35812 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:35faa6343fcf5a0ae1457e2a6ff4ce66a4843955c9eb7deb19fa2972c02ceb1f`

```dockerfile
```

-	Layers:
	-	`sha256:9e53789aed77fd7cdd12f3c8a9230a3949e9e13c271f0c4c397f03a793621bdb`  
		Last Modified: Thu, 27 Aug 2026 21:13:00 GMT  
		Size: 35.8 KB (35812 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:6-standalone` - linux; ppc64le

```console
$ docker pull adminer@sha256:c47dcecb0e6c203036e1ef4ed03eb8ebc336c5d723ec3e13e807e6a98da1f38c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47247433 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3612988e037771a129ffad0abd6a96a403d0e1e413caed4e29fe69754a17f3a`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Thu, 27 Aug 2026 21:34:45 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 27 Aug 2026 21:34:45 GMT
STOPSIGNAL SIGINT
# Thu, 27 Aug 2026 21:34:45 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 27 Aug 2026 21:34:46 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 21:35:56 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 27 Aug 2026 21:35:56 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 27 Aug 2026 21:35:56 GMT
ENV ADMINER_VERSION=6.0.1
# Thu, 27 Aug 2026 21:35:56 GMT
ENV ADMINER_DOWNLOAD_SHA256=1815c03f26e21d533e729c0b09bc69a59c902a6440409d013105ee679dff006c
# Thu, 27 Aug 2026 21:35:56 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=155ba6bcb54a4176c225034feb8a3a2abc5e58ea5e4359b28a8415f8fa068cc1
# Thu, 27 Aug 2026 21:35:58 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 27 Aug 2026 21:35:58 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 21:35:58 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 27 Aug 2026 21:35:58 GMT
USER adminer
# Thu, 27 Aug 2026 21:35:58 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Thu, 27 Aug 2026 21:35:58 GMT
EXPOSE map[8080/tcp:{}]
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
	-	`sha256:58509780abec041434b995e2ad251598c30da3ddb00317127501986df56c7a07`  
		Last Modified: Thu, 27 Aug 2026 21:36:06 GMT  
		Size: 305.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92d204fbfde6f9028d6987222c7bb2d33c32d388f59edb736dfe4ad81e0535c9`  
		Last Modified: Thu, 27 Aug 2026 21:36:06 GMT  
		Size: 1.0 KB (1039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:557816bb2582001c2fb50a50dd19b097e9f7932d177ce1cbb97560ed98ae1a3c`  
		Last Modified: Thu, 27 Aug 2026 21:36:06 GMT  
		Size: 1.5 MB (1540100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ba97959d4908d4648b49737f96afcbd5e5a379761b46bb977591b79bffe441f`  
		Last Modified: Thu, 27 Aug 2026 21:36:06 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b74fb7df449f21cef9b9fca2828ef118ad3e1a5dc553e25eda4dd0a5318eff1a`  
		Last Modified: Thu, 27 Aug 2026 21:36:07 GMT  
		Size: 614.9 KB (614914 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:017616902daa254d0a6c4a940c1f0fc890298a6c4b896543196e0a0eb045a920`  
		Last Modified: Thu, 27 Aug 2026 21:36:07 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:6-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:1179185d79a5408757fd8428f2e758a1676e8c2c75194eedda00dea25a367c84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 KB (35923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3cdee4f72af76fadda79210c5dcd85e80a0044b8b1527441aa1240abd7242bf7`

```dockerfile
```

-	Layers:
	-	`sha256:2ce32489ac8958655d1313333bb2d79edbe5ca2e51f0e7f95e918f1e7d90a41d`  
		Last Modified: Thu, 27 Aug 2026 21:36:05 GMT  
		Size: 35.9 KB (35923 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:6-standalone` - linux; riscv64

```console
$ docker pull adminer@sha256:83b8ecb8b2a0fef75042e766fc1efd86aed8fa8d83030ae14c2c4b72d5338fa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.4 MB (43401890 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:388c6c5d3d58d81d9bc2bb783839d8743ca6c42320543e28e482dd0e80e37ca0`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
ENV PHP_VERSION=8.4.24
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Sat, 01 Aug 2026 01:57:23 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Sat, 01 Aug 2026 01:57:23 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 01 Aug 2026 02:55:24 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--enable-phpdbg 		--enable-phpdbg-readline 				--with-pear 			; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 01 Aug 2026 02:55:24 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 01 Aug 2026 02:55:29 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sat, 01 Aug 2026 02:55:34 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 01 Aug 2026 02:55:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 01 Aug 2026 02:55:34 GMT
CMD ["php" "-a"]
# Tue, 18 Aug 2026 22:12:09 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Tue, 18 Aug 2026 22:12:09 GMT
STOPSIGNAL SIGINT
# Tue, 18 Aug 2026 22:12:09 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Tue, 18 Aug 2026 22:12:10 GMT
WORKDIR /var/www/html
# Tue, 18 Aug 2026 22:17:56 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Tue, 18 Aug 2026 22:17:56 GMT
COPY *.php /var/www/html/ # buildkit
# Tue, 18 Aug 2026 22:17:56 GMT
ENV ADMINER_VERSION=6.0.1
# Tue, 18 Aug 2026 22:17:56 GMT
ENV ADMINER_DOWNLOAD_SHA256=1815c03f26e21d533e729c0b09bc69a59c902a6440409d013105ee679dff006c
# Tue, 18 Aug 2026 22:17:56 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=155ba6bcb54a4176c225034feb8a3a2abc5e58ea5e4359b28a8415f8fa068cc1
# Tue, 18 Aug 2026 22:17:59 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Tue, 18 Aug 2026 22:17:59 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 18 Aug 2026 22:17:59 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Tue, 18 Aug 2026 22:17:59 GMT
USER adminer
# Tue, 18 Aug 2026 22:17:59 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Tue, 18 Aug 2026 22:17:59 GMT
EXPOSE map[8080/tcp:{}]
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
	-	`sha256:5c153cd523b6d149e8125fd84af1719725e21a89c8f4ffd44621109ab3eae54d`  
		Last Modified: Sat, 01 Aug 2026 02:56:38 GMT  
		Size: 13.8 MB (13775231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22c074f8062e63f84853bc8d83804f1053e086f373f1ec15fd0e0990f205b7a4`  
		Last Modified: Sat, 01 Aug 2026 02:56:34 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f24c31644ecb82eeec3c4fa8011b685f57fb4cccdfa13d48f9655e98f4ffe847`  
		Last Modified: Sat, 01 Aug 2026 02:56:39 GMT  
		Size: 20.3 MB (20291311 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09509fdd6bff88b03a703b12da1e863b4442fb116d8613136a171c4bfbf4f870`  
		Last Modified: Sat, 01 Aug 2026 02:56:34 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30d9db990f3d3678681187d783724c1b432b1b86ccd14604e6e948adb00f082d`  
		Last Modified: Sat, 01 Aug 2026 02:56:36 GMT  
		Size: 22.2 KB (22199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55cb536b6e1df6b7a7da5d4f4a2b66b89b96acbd8128c6f22094212003cfd256`  
		Last Modified: Sat, 01 Aug 2026 02:56:36 GMT  
		Size: 22.2 KB (22224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a666b707e596ab3a0059ff59b784c33e4522d304d19ac2d98e0570740ec58094`  
		Last Modified: Tue, 18 Aug 2026 22:18:15 GMT  
		Size: 311.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35a66a19d2b4682927fd893e73237cf0f6210f5b2f93e3a253a3b95c232ff152`  
		Last Modified: Tue, 18 Aug 2026 22:18:15 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:832341bb1e99eb614331f8355376ebdf9376f50d84f5b3c166f6d53c646f5333`  
		Last Modified: Tue, 18 Aug 2026 22:18:15 GMT  
		Size: 1.5 MB (1489196 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbd3741ec8f271990c7c5ecd6a2e1be30684caaf518cd12f8015df91c3367636`  
		Last Modified: Tue, 18 Aug 2026 22:18:15 GMT  
		Size: 1.8 KB (1772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ebdc68903bf49a2563655e0595dd09de93862c99c0bef2fd664a920f3dca522`  
		Last Modified: Tue, 18 Aug 2026 22:18:17 GMT  
		Size: 614.9 KB (614920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc97206b244d6a7e44a6d32c7e640febe4479a6e157cea1d9c462c20cca804ae`  
		Last Modified: Tue, 18 Aug 2026 22:18:16 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:6-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:6504b182d4e9c26030c7131d12d4e8af84c04d1d1d1d5ecf68488b101a0363f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 KB (35923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:030c4184e30bc24920cadfb76061e6807767a25f788bf46985fc8cb165eef206`

```dockerfile
```

-	Layers:
	-	`sha256:39f023f743c8144c1ff9f1923f85859a5a3967fccaac73124e59b2308d2f0ca6`  
		Last Modified: Tue, 18 Aug 2026 22:18:15 GMT  
		Size: 35.9 KB (35923 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:6-standalone` - linux; s390x

```console
$ docker pull adminer@sha256:b334859af9b2a7ae8bd05d523cb8234f96a7f6bbf55fc4f7754e5adbbd4eebb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.9 MB (45875778 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80a5f168bd870662c62fc0c575e7028940590788d65354f0904c3832a37fe348`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Thu, 27 Aug 2026 22:11:19 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 27 Aug 2026 22:11:19 GMT
STOPSIGNAL SIGINT
# Thu, 27 Aug 2026 22:11:19 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 27 Aug 2026 22:11:19 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 22:11:53 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 27 Aug 2026 22:11:53 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 27 Aug 2026 22:11:53 GMT
ENV ADMINER_VERSION=6.0.1
# Thu, 27 Aug 2026 22:11:53 GMT
ENV ADMINER_DOWNLOAD_SHA256=1815c03f26e21d533e729c0b09bc69a59c902a6440409d013105ee679dff006c
# Thu, 27 Aug 2026 22:11:53 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=155ba6bcb54a4176c225034feb8a3a2abc5e58ea5e4359b28a8415f8fa068cc1
# Thu, 27 Aug 2026 22:11:54 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 27 Aug 2026 22:11:54 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 22:11:54 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 27 Aug 2026 22:11:54 GMT
USER adminer
# Thu, 27 Aug 2026 22:11:54 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Thu, 27 Aug 2026 22:11:54 GMT
EXPOSE map[8080/tcp:{}]
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
	-	`sha256:224716005c5e4af3c3b9f161178af4eda45909dea4fac87f54d46310eaf40b82`  
		Last Modified: Thu, 27 Aug 2026 22:12:00 GMT  
		Size: 305.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c55319e6fda76ca54e03877210c1500e46901e4692a8da69bc6a085c4e13172f`  
		Last Modified: Thu, 27 Aug 2026 22:12:00 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d4ab862014dc610edab53ef9c163d30822f2a015f14b4ae34ad58adda15df21`  
		Last Modified: Thu, 27 Aug 2026 22:12:00 GMT  
		Size: 1.5 MB (1534678 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:729a267f4b90c2ef95b84c029e2862a079988226c783e1aaa47223a74abcd42e`  
		Last Modified: Thu, 27 Aug 2026 22:12:00 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:267f2ffa888cc3c3e6fd6f29c624a0e54c2668c9815f68150c6eb9f575f79fd4`  
		Last Modified: Thu, 27 Aug 2026 22:12:01 GMT  
		Size: 614.9 KB (614919 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b46b2de8d7e0ccddb5a6ff907ccc14f9b3df78275150daa58af853b79a4116b`  
		Last Modified: Thu, 27 Aug 2026 22:12:01 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:6-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:77a059e322e6c09bfdb04e6908fb557b0939b4f479924bcea0b7b443653eef02
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.9 KB (35860 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:942a8b06e3e2eaefd6fd7a2a5f25e80d5835105451df5c647b9145e0f5219977`

```dockerfile
```

-	Layers:
	-	`sha256:b11f15434d7b429c8c195b7158619872fdd986f827fbb9f952ee9d1307fa94a0`  
		Last Modified: Thu, 27 Aug 2026 22:12:00 GMT  
		Size: 35.9 KB (35860 bytes)  
		MIME: application/vnd.in-toto+json
