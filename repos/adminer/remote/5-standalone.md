## `adminer:5-standalone`

```console
$ docker pull adminer@sha256:414b8ccb78a008f9c64cd809661b9f601288af245eec3e7a71d7fa559c9e8604
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

### `adminer:5-standalone` - linux; amd64

```console
$ docker pull adminer@sha256:47ce52fca2163341c4a85d73e924faa00252cd626f24f9593df4f522c07dadfc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 MB (46138046 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a14d6344f4dfa60502cf8b3dd6c16f511f7beeba2124af873a72a9c1ffed96a3`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Tue, 15 Sep 2026 22:30:27 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Tue, 15 Sep 2026 22:30:27 GMT
STOPSIGNAL SIGINT
# Tue, 15 Sep 2026 22:30:27 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Tue, 15 Sep 2026 22:30:27 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 22:30:54 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Tue, 15 Sep 2026 22:30:54 GMT
COPY *.php /var/www/html/ # buildkit
# Tue, 15 Sep 2026 22:30:54 GMT
ENV ADMINER_VERSION=5.5.1
# Tue, 15 Sep 2026 22:30:54 GMT
ENV ADMINER_DOWNLOAD_SHA256=f2c70c6403a042d554be1dd8d69b6f6270a97e5b40d2fb7626f46aad821e9a18
# Tue, 15 Sep 2026 22:30:54 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=dfac9604fc044e0856fbcacd587db9540df4e67d53a180377f51b9a228d7b136
# Tue, 15 Sep 2026 22:30:55 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Tue, 15 Sep 2026 22:30:55 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:30:55 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Tue, 15 Sep 2026 22:30:55 GMT
USER adminer
# Tue, 15 Sep 2026 22:30:55 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Tue, 15 Sep 2026 22:30:55 GMT
EXPOSE map[8080/tcp:{}]
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
	-	`sha256:b21596287b8cfd3d0e5148e16ec65336c83018e92fe26c2e8b3d4048cf695c6d`  
		Last Modified: Tue, 15 Sep 2026 22:30:59 GMT  
		Size: 302.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1a3923bec373025efefbdcea77910ccf9e562ea95e1ea924422c7aa90351ad8`  
		Last Modified: Tue, 15 Sep 2026 22:30:59 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:724fee2f0a3b943bd96f43575a45d1d6c8e1810c8fef9828d38064a0913728d4`  
		Last Modified: Tue, 15 Sep 2026 22:31:00 GMT  
		Size: 1.5 MB (1467679 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0e5e9e8cea318bb05dbbd6ea474d79c62a44e91edff3b9457e9bdbf675eb390`  
		Last Modified: Tue, 15 Sep 2026 22:31:00 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2031b6d056852b33abd983e42447c59ef3b0d0d95ee48b8f4a92429cfa83a129`  
		Last Modified: Tue, 15 Sep 2026 22:31:01 GMT  
		Size: 598.2 KB (598155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b476477da961300743d3e8f1b64080770ff05cbd62526e0ae9e72017b9da49fb`  
		Last Modified: Tue, 15 Sep 2026 22:31:01 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:5-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:e8792165fd50f0a131d1f253c43bc17f9bd2d4eb03cbd64176669d1dfcd1810e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.3 KB (35253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73bc0ce0de5e27304e967c86100f5811c71b6959fcb082a77e6b6fff6fa9251a`

```dockerfile
```

-	Layers:
	-	`sha256:40bfd64e95270a3e34f54538967fae67bd4ec7eed01a9eb6ad6bb07561cd051a`  
		Last Modified: Tue, 15 Sep 2026 22:30:59 GMT  
		Size: 35.3 KB (35253 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:5-standalone` - linux; arm variant v6

```console
$ docker pull adminer@sha256:90a7b19da47e9fe392c47538f3ec88d20b12e86bd5cecef3156bfcc66ca3c5e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **43.5 MB (43457093 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:df9ac74d5765b0f5fc4bb6b0fdfde5078e7f3c5409de657d0192cd92ca107113`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Tue, 15 Sep 2026 22:18:46 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Tue, 15 Sep 2026 22:18:46 GMT
STOPSIGNAL SIGINT
# Tue, 15 Sep 2026 22:18:46 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Tue, 15 Sep 2026 22:18:46 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 22:19:25 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Tue, 15 Sep 2026 22:19:38 GMT
COPY *.php /var/www/html/ # buildkit
# Tue, 15 Sep 2026 22:19:38 GMT
ENV ADMINER_VERSION=5.5.1
# Tue, 15 Sep 2026 22:19:38 GMT
ENV ADMINER_DOWNLOAD_SHA256=f2c70c6403a042d554be1dd8d69b6f6270a97e5b40d2fb7626f46aad821e9a18
# Tue, 15 Sep 2026 22:19:38 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=dfac9604fc044e0856fbcacd587db9540df4e67d53a180377f51b9a228d7b136
# Tue, 15 Sep 2026 22:19:39 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Tue, 15 Sep 2026 22:19:39 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:19:39 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Tue, 15 Sep 2026 22:19:39 GMT
USER adminer
# Tue, 15 Sep 2026 22:19:39 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Tue, 15 Sep 2026 22:19:39 GMT
EXPOSE map[8080/tcp:{}]
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
	-	`sha256:7e0f7bf7e8330ab3da16c967774087765b49392a2d286ac360f6d9ad8ed5d360`  
		Last Modified: Tue, 15 Sep 2026 22:19:30 GMT  
		Size: 304.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1a60c4cd2b83515328e49eb0c43d5d55fd8d66200fad5c3236f85a28f479807`  
		Last Modified: Tue, 15 Sep 2026 22:19:30 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41cd57178bdd1a9a61c941bbd3a7487a8c51ae05b55783135a93f82930b74655`  
		Last Modified: Tue, 15 Sep 2026 22:19:30 GMT  
		Size: 1.5 MB (1463906 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78c1178fba436558f60a371e74a85bb2a39598f22770de26ed4e93a727d579f1`  
		Last Modified: Tue, 15 Sep 2026 22:19:43 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:014b8632a1f53e596e85eee6743f7c24cf103fed46b3d4cad3d300b9ca3c3535`  
		Last Modified: Tue, 15 Sep 2026 22:19:43 GMT  
		Size: 598.2 KB (598154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:564ef1487b6260a0e07ba3f11c69c88da2487d6bac202ae9e5eb8838aef26e2d`  
		Last Modified: Tue, 15 Sep 2026 22:19:43 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:5-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:a1e373ed087e63b7efe4be6872daeef210bd0ca8fb68d32e95e3175a356f2fb9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 KB (35371 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c09d1aaaf3ccdcc579dac54a945a9854da13240cf0804fbdd603deb9f832455`

```dockerfile
```

-	Layers:
	-	`sha256:db3989f297ef3da0ee03eaddc7f335019820f318133cf518d0c604fa6d934292`  
		Last Modified: Tue, 15 Sep 2026 22:19:43 GMT  
		Size: 35.4 KB (35371 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:5-standalone` - linux; arm variant v7

```console
$ docker pull adminer@sha256:3d4f842f78225bfe799d7a9b7521bf92ba157d89bb98a9388f9c49ed6043fa61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **41.6 MB (41598446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8ffadf97ebe6c0827913ba42dccc579092eb5e220d332f026d7b3b750e32e244`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Tue, 15 Sep 2026 22:30:53 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Tue, 15 Sep 2026 22:30:53 GMT
STOPSIGNAL SIGINT
# Tue, 15 Sep 2026 22:30:53 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Tue, 15 Sep 2026 22:30:53 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 22:31:28 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Tue, 15 Sep 2026 22:31:39 GMT
COPY *.php /var/www/html/ # buildkit
# Tue, 15 Sep 2026 22:31:39 GMT
ENV ADMINER_VERSION=5.5.1
# Tue, 15 Sep 2026 22:31:39 GMT
ENV ADMINER_DOWNLOAD_SHA256=f2c70c6403a042d554be1dd8d69b6f6270a97e5b40d2fb7626f46aad821e9a18
# Tue, 15 Sep 2026 22:31:39 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=dfac9604fc044e0856fbcacd587db9540df4e67d53a180377f51b9a228d7b136
# Tue, 15 Sep 2026 22:31:40 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Tue, 15 Sep 2026 22:31:40 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:31:40 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Tue, 15 Sep 2026 22:31:40 GMT
USER adminer
# Tue, 15 Sep 2026 22:31:40 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Tue, 15 Sep 2026 22:31:40 GMT
EXPOSE map[8080/tcp:{}]
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
	-	`sha256:5ec73ac18e5921ad249509b0486606b923ab8c04b89c75614b3226b5106c17f7`  
		Last Modified: Tue, 15 Sep 2026 22:31:32 GMT  
		Size: 306.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be9c0fc851d9ccee897d58ed18b4534db8e83b962434ac495d61001ac413c225`  
		Last Modified: Tue, 15 Sep 2026 22:31:32 GMT  
		Size: 1.0 KB (1038 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74c8e2a2ef239be4c56aa02bce12bca5ba3d363f86978fc19c382da3769b7f76`  
		Last Modified: Tue, 15 Sep 2026 22:31:32 GMT  
		Size: 1.3 MB (1313984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c11ff12c8e26bb8d895fd3793047ab6f718775bad0aca6738d6dcc5a589e2bb8`  
		Last Modified: Tue, 15 Sep 2026 22:31:44 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13840d875e6e58174ac3e32bba36f9653f4b1f916cbda1d14ba61d6be776b282`  
		Last Modified: Tue, 15 Sep 2026 22:31:44 GMT  
		Size: 598.2 KB (598154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e1ca6fa6d11967dbc8744934153ce511a94b4867e8f6caceccd7b5efb658600`  
		Last Modified: Tue, 15 Sep 2026 22:31:44 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:5-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:a5edcf18b6e4ac62cdbe11dec6a3089de62c43824dff36ab3d3ffe7a8c63c7ec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 KB (35372 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:644bac11617dd731756a9f1de50f82cc5810ce250f7ac666e318e78042c0ee94`

```dockerfile
```

-	Layers:
	-	`sha256:ef434a98c95c56daf49977c100dc229b3308ade4d407e60f5574f3acac5cc4f7`  
		Last Modified: Tue, 15 Sep 2026 22:31:43 GMT  
		Size: 35.4 KB (35372 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:5-standalone` - linux; arm64 variant v8

```console
$ docker pull adminer@sha256:7afba059328599ace4088cff00f904a8d6ad92c442b7ee9ce113ae813ec23e93
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 MB (46164937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3ae241f72c8a835850e7b0d8e57f6b281c639ce48b1458931976a66d48458d48`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Tue, 15 Sep 2026 22:17:34 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Tue, 15 Sep 2026 22:17:35 GMT
STOPSIGNAL SIGINT
# Tue, 15 Sep 2026 22:17:35 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Tue, 15 Sep 2026 22:17:35 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 22:18:09 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Tue, 15 Sep 2026 22:18:09 GMT
COPY *.php /var/www/html/ # buildkit
# Tue, 15 Sep 2026 22:18:09 GMT
ENV ADMINER_VERSION=5.5.1
# Tue, 15 Sep 2026 22:18:09 GMT
ENV ADMINER_DOWNLOAD_SHA256=f2c70c6403a042d554be1dd8d69b6f6270a97e5b40d2fb7626f46aad821e9a18
# Tue, 15 Sep 2026 22:18:09 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=dfac9604fc044e0856fbcacd587db9540df4e67d53a180377f51b9a228d7b136
# Tue, 15 Sep 2026 22:18:10 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Tue, 15 Sep 2026 22:18:10 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:18:10 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Tue, 15 Sep 2026 22:18:10 GMT
USER adminer
# Tue, 15 Sep 2026 22:18:10 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Tue, 15 Sep 2026 22:18:10 GMT
EXPOSE map[8080/tcp:{}]
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
	-	`sha256:a549e7447367768e59aebc3a4e4a10aba7c12b16c33ddeedaee46ca2ccf9bf2e`  
		Last Modified: Tue, 15 Sep 2026 22:18:14 GMT  
		Size: 305.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f268cfa2e4256ca68fbf737fa159c73b65afc938608a8bbc03ccb51ac54ce362`  
		Last Modified: Tue, 15 Sep 2026 22:18:14 GMT  
		Size: 1.0 KB (1040 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:234ca06479d70ecf2dacb1307c29e5ccf32d0452e88f06477b047e8f551e2483`  
		Last Modified: Tue, 15 Sep 2026 22:18:14 GMT  
		Size: 1.5 MB (1479987 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa68dfe9af25b03288d06f8702fe8c2f7fed7974e2bd6e70c0f095ab168f672c`  
		Last Modified: Tue, 15 Sep 2026 22:18:14 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4d8c4e24b626c5458a6dc2fb954ca881b4b42920f3b80285d9803b41b1792f4`  
		Last Modified: Tue, 15 Sep 2026 22:18:15 GMT  
		Size: 598.2 KB (598154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8906d6c9f0eb8fbb5fb51222f6d72b7927288f911c7e6312cff054946d04d7ca`  
		Last Modified: Tue, 15 Sep 2026 22:18:15 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:5-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:92889760a0304d0928eafce14882c3666649b483c6f407d0a2c0c51c7a5324f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.4 KB (35402 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1681af5987b57dd956be7c28494b89f6008d1ef84644597670c42401f5018a00`

```dockerfile
```

-	Layers:
	-	`sha256:a0dac37787f99975a22800a1c1b7004895696e6514548f7c381345e720e74b7e`  
		Last Modified: Tue, 15 Sep 2026 22:18:14 GMT  
		Size: 35.4 KB (35402 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:5-standalone` - linux; 386

```console
$ docker pull adminer@sha256:705feada2c26bb433a39d4a557af1a1b2f16d2e2d1b1ca977055215945817d0d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.3 MB (46254220 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:666285d5df955e7607793506754c47a0ec2f97607ce8da1ce2839ef47b205107`
-	Entrypoint: `["entrypoint.sh","docker-php-entrypoint"]`
-	Default Command: `["php","-S","[::]:8080","-t","\/var\/www\/html"]`

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
# Tue, 15 Sep 2026 22:17:39 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Tue, 15 Sep 2026 22:17:39 GMT
STOPSIGNAL SIGINT
# Tue, 15 Sep 2026 22:17:39 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Tue, 15 Sep 2026 22:17:39 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 22:18:08 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Tue, 15 Sep 2026 22:18:08 GMT
COPY *.php /var/www/html/ # buildkit
# Tue, 15 Sep 2026 22:18:08 GMT
ENV ADMINER_VERSION=5.5.1
# Tue, 15 Sep 2026 22:18:08 GMT
ENV ADMINER_DOWNLOAD_SHA256=f2c70c6403a042d554be1dd8d69b6f6270a97e5b40d2fb7626f46aad821e9a18
# Tue, 15 Sep 2026 22:18:08 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=dfac9604fc044e0856fbcacd587db9540df4e67d53a180377f51b9a228d7b136
# Tue, 15 Sep 2026 22:18:09 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Tue, 15 Sep 2026 22:18:09 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:18:09 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Tue, 15 Sep 2026 22:18:09 GMT
USER adminer
# Tue, 15 Sep 2026 22:18:09 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Tue, 15 Sep 2026 22:18:09 GMT
EXPOSE map[8080/tcp:{}]
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
	-	`sha256:69ce7c6673d5e2aff79e7f338e62fa7dc6777c8e8161eb803a6336f0cd4fe53c`  
		Last Modified: Tue, 15 Sep 2026 22:18:13 GMT  
		Size: 304.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32668a1cbbf4e250ac62fff232ca2ec5402af0c9464314a7cbd63c4c12f07ad4`  
		Last Modified: Tue, 15 Sep 2026 22:18:13 GMT  
		Size: 1.0 KB (1041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:badfb3a1e6f3726ae6ff0292eba191ec3fa1680624563810b19957c4b889fcd4`  
		Last Modified: Tue, 15 Sep 2026 22:18:13 GMT  
		Size: 1.5 MB (1495969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa8c0ff0630de633be228165fee6863bc63d036234b0f96ec8c9e0e8d7a622f6`  
		Last Modified: Tue, 15 Sep 2026 22:18:13 GMT  
		Size: 1.8 KB (1768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d2b678a1df152f543d6253629587acbde3afb72b25b421a01c8ca580eac5d0b`  
		Last Modified: Tue, 15 Sep 2026 22:18:14 GMT  
		Size: 598.2 KB (598152 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca457ceeeb47032f3c30030e8f41eba745731685eab9e12ebaec9a635357a544`  
		Last Modified: Tue, 15 Sep 2026 22:18:14 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:5-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:de53ad516b0246d7e0edcf2c976e607298941f420fbf0f283f0d839f327fd256
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.2 KB (35215 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5fa3c88dbbfd6f19b85013866263a0f0744a1a94ea83d2240a411279d28be98a`

```dockerfile
```

-	Layers:
	-	`sha256:459a9181f0bccc0a2415e49835d94fa1923688ab442a34cad37aa0a1a680fd29`  
		Last Modified: Tue, 15 Sep 2026 22:18:13 GMT  
		Size: 35.2 KB (35215 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:5-standalone` - linux; ppc64le

```console
$ docker pull adminer@sha256:31cdbfe9e4559206cab17301a91802279a1ee69d124989dddd67c73dbda11dfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 MB (47230672 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16d5f18f1662f4eb904978c158c199c9056ab020eaa1983d55560d314155f7e2`
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
# Thu, 27 Aug 2026 21:36:21 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Thu, 27 Aug 2026 21:36:22 GMT
STOPSIGNAL SIGINT
# Thu, 27 Aug 2026 21:36:22 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Thu, 27 Aug 2026 21:36:23 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 21:37:18 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Thu, 27 Aug 2026 21:37:18 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 27 Aug 2026 21:37:18 GMT
ENV ADMINER_VERSION=5.5.1
# Thu, 27 Aug 2026 21:37:18 GMT
ENV ADMINER_DOWNLOAD_SHA256=f2c70c6403a042d554be1dd8d69b6f6270a97e5b40d2fb7626f46aad821e9a18
# Thu, 27 Aug 2026 21:37:18 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=dfac9604fc044e0856fbcacd587db9540df4e67d53a180377f51b9a228d7b136
# Thu, 27 Aug 2026 21:37:19 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 27 Aug 2026 21:37:20 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 21:37:20 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 27 Aug 2026 21:37:20 GMT
USER adminer
# Thu, 27 Aug 2026 21:37:20 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Thu, 27 Aug 2026 21:37:20 GMT
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
	-	`sha256:f797bc360953b41a09285144f9076b63434ba05d72777c9b5ec91b42d76611da`  
		Last Modified: Thu, 27 Aug 2026 21:37:25 GMT  
		Size: 305.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9eaacf880850da07e0cf59f2d019a10f7f9c363d4caef73438c312d5f2a8311`  
		Last Modified: Thu, 27 Aug 2026 21:37:25 GMT  
		Size: 1.0 KB (1042 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ddddcd92529328fa88d554a4229f25321b4039438938f257a57c6d3e341b0e3`  
		Last Modified: Thu, 27 Aug 2026 21:37:26 GMT  
		Size: 1.5 MB (1540102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c60e0a6645e1d96a8fabc5e77ee7ad5094572c7a34d3f283110cdf09840a7511`  
		Last Modified: Thu, 27 Aug 2026 21:37:25 GMT  
		Size: 1.8 KB (1768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ea66b1e571b59fc0dd1a6c4435cef76685912e76f782ea7826549ee221305a3`  
		Last Modified: Thu, 27 Aug 2026 21:37:27 GMT  
		Size: 598.1 KB (598147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:508930a0ab281b60cfc7a0f86b58278f54d66104f6bc37eb2d41f16842d5ebf1`  
		Last Modified: Thu, 27 Aug 2026 21:37:27 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:5-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:c7236249d47e4968a0a87359fee4567f2919397594f52c1c27b24d45f15365b9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.3 KB (35303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:90eae64d7cd2cccc6ff91dc30076817390fe03efe3b6a21ad60983db407e1122`

```dockerfile
```

-	Layers:
	-	`sha256:bb139c758eada4d19711d4a3025f41164fa68534767f8476120c945085236e86`  
		Last Modified: Thu, 27 Aug 2026 21:37:25 GMT  
		Size: 35.3 KB (35303 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:5-standalone` - linux; riscv64

```console
$ docker pull adminer@sha256:27196f424fa687fde8511b9e86a9f6aac0e3faba9f3563e53c23f19c53192d34
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 MB (46003419 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8dfa6f21eddc29de2c76a494066235b1fe03d1c00f602c055ee3d78965f4cca`
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
# Sun, 30 Aug 2026 12:14:08 GMT
RUN echo "upload_max_filesize = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "post_max_size = 128M" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "memory_limit = 1G" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_execution_time = 600" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini &&	echo "max_input_vars = 5000" >> /usr/local/etc/php/conf.d/0-upload_large_dumps.ini # buildkit
# Sun, 30 Aug 2026 12:14:08 GMT
STOPSIGNAL SIGINT
# Sun, 30 Aug 2026 12:14:08 GMT
RUN addgroup -S adminer &&	adduser -S -G adminer adminer &&	mkdir -p /var/www/html &&	mkdir /var/www/html/plugins-enabled &&	chown -R adminer:adminer /var/www/html # buildkit
# Sun, 30 Aug 2026 12:14:08 GMT
WORKDIR /var/www/html
# Sun, 30 Aug 2026 12:19:44 GMT
RUN set -x &&	apk add --no-cache --virtual .build-deps 	postgresql-dev 	sqlite-dev 	unixodbc-dev 	freetds-dev &&	docker-php-ext-configure pdo_odbc --with-pdo-odbc=unixODBC,/usr &&	docker-php-ext-install 	mysqli 	pdo_pgsql 	pdo_sqlite 	pdo_odbc 	pdo_dblib &&	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)" &&	apk add --no-cache --virtual .phpexts-rundeps $runDeps &&	apk del --no-network .build-deps # buildkit
# Sun, 30 Aug 2026 12:20:32 GMT
COPY *.php /var/www/html/ # buildkit
# Sun, 30 Aug 2026 12:20:32 GMT
ENV ADMINER_VERSION=5.5.1
# Sun, 30 Aug 2026 12:20:32 GMT
ENV ADMINER_DOWNLOAD_SHA256=f2c70c6403a042d554be1dd8d69b6f6270a97e5b40d2fb7626f46aad821e9a18
# Sun, 30 Aug 2026 12:20:32 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=dfac9604fc044e0856fbcacd587db9540df4e67d53a180377f51b9a228d7b136
# Sun, 30 Aug 2026 12:20:35 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Sun, 30 Aug 2026 12:20:35 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Sun, 30 Aug 2026 12:20:35 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Sun, 30 Aug 2026 12:20:35 GMT
USER adminer
# Sun, 30 Aug 2026 12:20:35 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Sun, 30 Aug 2026 12:20:35 GMT
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
	-	`sha256:4103140e6dfdbf1b76633ea574d57c55a75295abe54afb18361a075234a005d4`  
		Last Modified: Sun, 30 Aug 2026 12:20:03 GMT  
		Size: 308.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c1d27cc3d33baad168db071abd4b8faf83cfad33b785660ef2ec0c930de5389`  
		Last Modified: Sun, 30 Aug 2026 12:20:03 GMT  
		Size: 1.0 KB (1043 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a52661bf76c3a01ea3f299fb83d551ceb636665ca823662cf46c9663b0145c84`  
		Last Modified: Sun, 30 Aug 2026 12:20:03 GMT  
		Size: 1.5 MB (1489627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1323fe385d2817a35bf31d33e88fd42447312c806f2ddaa45c9180001961693b`  
		Last Modified: Sun, 30 Aug 2026 12:20:50 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f987d8cd1b93ab38d09523c01815eb34cd857a925bfbf4513a9411604fa2da13`  
		Last Modified: Sun, 30 Aug 2026 12:20:50 GMT  
		Size: 598.2 KB (598154 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12b9100632956ef03874ddee860f2d1195cd3006fc5ccac9a048656879839cc7`  
		Last Modified: Sun, 30 Aug 2026 12:20:50 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:5-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:908b1a256a9aead3fc9dff346802ddd5ec3a290c28fb6988e60a692dca5d9ff5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.3 KB (35303 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33f2c3bd3640b3fdc6593ee2673b10aaf2ca9ce53b369c1cc32054cfdd90b26b`

```dockerfile
```

-	Layers:
	-	`sha256:ef1448a270210ccd7ebe715436663bad46b16e35525b3aefff078216f243e817`  
		Last Modified: Sun, 30 Aug 2026 12:20:50 GMT  
		Size: 35.3 KB (35303 bytes)  
		MIME: application/vnd.in-toto+json

### `adminer:5-standalone` - linux; s390x

```console
$ docker pull adminer@sha256:cd4f64c523fb9652f38d294741f190e062055e06c131816e1bd0695cbb51a0be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.9 MB (45859013 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:24c76288bcc81465dbea770caee725bc8277962eeb2e4abb30108bf53720fb62`
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
# Thu, 27 Aug 2026 22:12:00 GMT
COPY *.php /var/www/html/ # buildkit
# Thu, 27 Aug 2026 22:12:00 GMT
ENV ADMINER_VERSION=5.5.1
# Thu, 27 Aug 2026 22:12:00 GMT
ENV ADMINER_DOWNLOAD_SHA256=f2c70c6403a042d554be1dd8d69b6f6270a97e5b40d2fb7626f46aad821e9a18
# Thu, 27 Aug 2026 22:12:00 GMT
ENV ADMINER_SRC_DOWNLOAD_SHA256=dfac9604fc044e0856fbcacd587db9540df4e67d53a180377f51b9a228d7b136
# Thu, 27 Aug 2026 22:12:01 GMT
RUN set -x &&	curl -fsSL https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php -o adminer.php &&	echo "$ADMINER_DOWNLOAD_SHA256  adminer.php" |sha256sum -c - &&	curl -fsSL https://github.com/vrana/adminer/archive/v$ADMINER_VERSION.tar.gz -o source.tar.gz &&	echo "$ADMINER_SRC_DOWNLOAD_SHA256  source.tar.gz" |sha256sum -c - &&	tar xzf source.tar.gz --strip-components=1 "adminer-$ADMINER_VERSION/designs/" "adminer-$ADMINER_VERSION/plugins/" &&	rm source.tar.gz # buildkit
# Thu, 27 Aug 2026 22:12:01 GMT
COPY entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 22:12:01 GMT
ENTRYPOINT ["entrypoint.sh" "docker-php-entrypoint"]
# Thu, 27 Aug 2026 22:12:01 GMT
USER adminer
# Thu, 27 Aug 2026 22:12:01 GMT
CMD ["php" "-S" "[::]:8080" "-t" "/var/www/html"]
# Thu, 27 Aug 2026 22:12:01 GMT
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
	-	`sha256:be4309e2355566290a013d42672beaf4dc0d210c36bbe7b271941cafc3694758`  
		Last Modified: Thu, 27 Aug 2026 22:12:08 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aafe9b089269e51ba263a1717b3258346dd93a2da1d83390ae7b2b0ca37de209`  
		Last Modified: Thu, 27 Aug 2026 22:12:08 GMT  
		Size: 598.2 KB (598155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a3c5b87dc0e9383cbac3bc5b8412c2c7a397743ad16076d0e6b782864822327`  
		Last Modified: Thu, 27 Aug 2026 22:12:08 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `adminer:5-standalone` - unknown; unknown

```console
$ docker pull adminer@sha256:e5868c64dedd6433e0153dfd798eaf4c31443c9b2e1218317582aee474c92f70
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **35.3 KB (35253 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e8f3fd1184e63b1e9cbea426a0d54f32cb6965e11a6ad24068e91455c83cc8e`

```dockerfile
```

-	Layers:
	-	`sha256:97aa664418cd31f47fe0141a83f8f6b0f011100a9cedd2fc44482a33f8b44c01`  
		Last Modified: Thu, 27 Aug 2026 22:12:07 GMT  
		Size: 35.3 KB (35253 bytes)  
		MIME: application/vnd.in-toto+json
