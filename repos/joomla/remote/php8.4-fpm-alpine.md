## `joomla:php8.4-fpm-alpine`

```console
$ docker pull joomla@sha256:e649186f0595c98e124ce71e3411c44bdb2e5e5ac6a6a3557812f9ff288e1a33
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

### `joomla:php8.4-fpm-alpine` - linux; amd64

```console
$ docker pull joomla@sha256:b4499d9103b3e3ad1084267facb1502c4da1d55e4bbf6d3cc42a15f68705ccf9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.5 MB (105511618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52354247972af6aa931fa11e4f72b045cf6cd91efdc79546bf22df1a03e84f91`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:47:26 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 22:47:26 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 22:47:26 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 22:47:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 22:47:26 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 22:47:26 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 22:47:26 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 22:47:26 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 22:47:26 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 21 Oct 2026 22:47:26 GMT
ENV PHP_VERSION=8.4.27
# Wed, 21 Oct 2026 22:47:26 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Wed, 21 Oct 2026 22:47:26 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Wed, 21 Oct 2026 22:51:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 22:51:25 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:54:13 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 22:54:13 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 22:54:13 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 21 Oct 2026 22:54:14 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 22:54:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 22:54:14 GMT
WORKDIR /var/www/html
# Wed, 21 Oct 2026 22:54:14 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Wed, 21 Oct 2026 22:54:14 GMT
STOPSIGNAL SIGQUIT
# Wed, 21 Oct 2026 22:54:14 GMT
EXPOSE map[9000/tcp:{}]
# Wed, 21 Oct 2026 22:54:14 GMT
CMD ["php-fpm"]
# Wed, 21 Oct 2026 23:32:01 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Wed, 21 Oct 2026 23:32:01 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Wed, 21 Oct 2026 23:32:01 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 		zstd 	; # buildkit
# Wed, 21 Oct 2026 23:33:29 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 		pecl install APCu-5.1.28; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Wed, 21 Oct 2026 23:33:30 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Wed, 21 Oct 2026 23:33:30 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Wed, 21 Oct 2026 23:33:30 GMT
VOLUME [/var/www/html]
# Wed, 21 Oct 2026 23:33:30 GMT
ENV JOOMLA_VERSION=6.1.4
# Wed, 21 Oct 2026 23:33:30 GMT
ENV JOOMLA_SHA512=c969341376e41c957223559adea36d3090f1bba982cb08eb162cd40f9994e43a4400abd2cc0b9b5c5db61d9401101fcfc5db815a626691d44533dc38800b9146
# Wed, 21 Oct 2026 23:33:31 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/6.1.4/Joomla_6.1.4-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Wed, 21 Oct 2026 23:33:31 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 21 Oct 2026 23:33:31 GMT
COPY makedb.php /makedb.php # buildkit
# Wed, 21 Oct 2026 23:33:31 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 21 Oct 2026 23:33:31 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54464281699ebdc969c4e141ee599e46f9a21e46a1143805c88c99cce51fccc1`  
		Last Modified: Wed, 21 Oct 2026 22:51:15 GMT  
		Size: 3.5 MB (3490474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abb29ad8469d337401b78ba783d4c6a70c28c8a3c52386a30ef1bd12f49e3f31`  
		Last Modified: Wed, 21 Oct 2026 22:51:15 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7cf022cb7f93a23455e6b67295bd1eb5a048bcb5ced9af5f3cc03a90a34bb194`  
		Last Modified: Wed, 21 Oct 2026 22:51:15 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0be66baa2719e9b3a72b9a77529ff7292ed5f00c6f6f79f05260f028b0e6846`  
		Last Modified: Wed, 21 Oct 2026 22:54:21 GMT  
		Size: 13.9 MB (13885748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac138901fbe4ab54b3cb93223ed6f4bd3bd5dbf6bfc644369da4d14aa1a90e1a`  
		Last Modified: Wed, 21 Oct 2026 22:54:20 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d695e6ed90b3d6109b4036bf439cf9381337c3fc1f64f5d4534bc8d451f09e8a`  
		Last Modified: Wed, 21 Oct 2026 22:54:21 GMT  
		Size: 15.4 MB (15433841 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9193cef95d94f5e618a2b49a89d36577da1f2c62ee6dd0101a1705a95b2ffb17`  
		Last Modified: Wed, 21 Oct 2026 22:54:20 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38e7512464944576c63d45b4e606ee477f5ee72900388bf47be38514f6b64a5e`  
		Last Modified: Wed, 21 Oct 2026 22:54:21 GMT  
		Size: 22.4 KB (22355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8b5eedba377dd1461fdf827289944af8b10fc2ae8844341fb1524e0bfaf581c`  
		Last Modified: Wed, 21 Oct 2026 22:54:21 GMT  
		Size: 22.4 KB (22369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ed64dc475b8b8f13c99e135f0755735cd6b954b2ec433e97fc2371bee7ba5ba`  
		Last Modified: Wed, 21 Oct 2026 22:54:22 GMT  
		Size: 9.3 KB (9263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c82c96a3f08f2057bcbf542c1c55ea8ba054daeac92255762a230dfd36a7934a`  
		Last Modified: Wed, 21 Oct 2026 23:33:39 GMT  
		Size: 32.6 MB (32641379 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98c3798aaea1ff21701029b9f24a0eceeab29c42d2a6fbab7d78ba857415b792`  
		Last Modified: Wed, 21 Oct 2026 23:33:38 GMT  
		Size: 7.1 MB (7084473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb5a8b740858d20862788378d40814561a69549ca12d226f9cb874da65e1e5cd`  
		Last Modified: Wed, 21 Oct 2026 23:33:38 GMT  
		Size: 72.1 KB (72079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b07f4aab4f23aa86843de6d0c41a9e3120864442644f8d7b29f205927a42c06c`  
		Last Modified: Wed, 21 Oct 2026 23:33:38 GMT  
		Size: 386.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4bf86c7fe9054602cc1007259f0a6bb5a5a68fbc943b2796e7d5257cc5102ca`  
		Last Modified: Wed, 21 Oct 2026 23:33:40 GMT  
		Size: 29.0 MB (28987295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53d7d585e8951650def5e5aa1fa698105cd04f770aa7eaf57ae4c4485fb6d01a`  
		Last Modified: Wed, 21 Oct 2026 23:33:39 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e4e12888de28f3aaea40a0645c7d93dffd49e16251a1aeb51f111db2cd10e5a`  
		Last Modified: Wed, 21 Oct 2026 23:33:40 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:php8.4-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:6b33c644d14b72ec1406e1f03321c2fda9ea6d9049a96918faba2e0554d06a19
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 KB (46035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c3f73beb70630df432d82ac261508920a77622d5c48941dc70de36a8b5fdf473`

```dockerfile
```

-	Layers:
	-	`sha256:6cab8e60bb3161c19bf6440ab726105d055cafebb5ca927ee5934557b1f7adf3`  
		Last Modified: Wed, 21 Oct 2026 23:33:38 GMT  
		Size: 46.0 KB (46035 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:php8.4-fpm-alpine` - linux; arm variant v6

```console
$ docker pull joomla@sha256:48f4ce01604824b708a5d4bfa2cbe2aaefd48da164c80cc0128825807d929394
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.2 MB (100176158 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6ee7135e81adbbe256acbbcc4d054690ebffffd85f8606e9b43c2e899e298fc`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 21 Oct 2026 22:58:59 GMT
ADD alpine-minirootfs-3.24.3-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:58:59 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:18:13 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:18:13 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:18:13 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:18:13 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:18:13 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:18:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:18:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:18:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:18:13 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 21 Oct 2026 23:18:13 GMT
ENV PHP_VERSION=8.4.27
# Wed, 21 Oct 2026 23:18:13 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Wed, 21 Oct 2026 23:18:13 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Wed, 21 Oct 2026 23:18:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:18:17 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:21:21 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:21:21 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:21:21 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 21 Oct 2026 23:21:22 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:21:22 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:21:22 GMT
WORKDIR /var/www/html
# Wed, 21 Oct 2026 23:21:22 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Wed, 21 Oct 2026 23:21:22 GMT
STOPSIGNAL SIGQUIT
# Wed, 21 Oct 2026 23:21:22 GMT
EXPOSE map[9000/tcp:{}]
# Wed, 21 Oct 2026 23:21:22 GMT
CMD ["php-fpm"]
# Thu, 22 Oct 2026 00:15:25 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 22 Oct 2026 00:15:25 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 22 Oct 2026 00:15:25 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 		zstd 	; # buildkit
# Thu, 22 Oct 2026 00:17:58 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 		pecl install APCu-5.1.28; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 22 Oct 2026 00:17:58 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 22 Oct 2026 00:17:58 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Thu, 22 Oct 2026 00:17:58 GMT
VOLUME [/var/www/html]
# Thu, 22 Oct 2026 00:17:58 GMT
ENV JOOMLA_VERSION=6.1.4
# Thu, 22 Oct 2026 00:17:58 GMT
ENV JOOMLA_SHA512=c969341376e41c957223559adea36d3090f1bba982cb08eb162cd40f9994e43a4400abd2cc0b9b5c5db61d9401101fcfc5db815a626691d44533dc38800b9146
# Thu, 22 Oct 2026 00:18:00 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/6.1.4/Joomla_6.1.4-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Thu, 22 Oct 2026 00:18:00 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 22 Oct 2026 00:18:00 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 22 Oct 2026 00:18:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 22 Oct 2026 00:18:00 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:61279dc9f8c5bf0223a3425a62f1aa1724ff7bf43c3d15f18ff665dc59c1f0c3`  
		Last Modified: Wed, 21 Oct 2026 22:59:03 GMT  
		Size: 3.6 MB (3558291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59be0fcc5676e3730c7d2644dfe99ad4686bbc810cd33dae5d63fa51f02fe3cc`  
		Last Modified: Wed, 21 Oct 2026 23:21:28 GMT  
		Size: 3.4 MB (3445770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb15b3abe115cbb2d9644f461b1baa25dc817b8d040a19bd2aaadb27db817830`  
		Last Modified: Wed, 21 Oct 2026 23:21:28 GMT  
		Size: 929.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40c01ddb682e2acc5ce1e9df478f379b9d647334c083aca187f915bb8400696b`  
		Last Modified: Wed, 21 Oct 2026 23:21:28 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bef949a9b7d96ea8d1cef8e6ccf0cd29ac2572497895d81c2c90d695893b3414`  
		Last Modified: Wed, 21 Oct 2026 23:21:29 GMT  
		Size: 13.9 MB (13885748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84d4990202e35ce992f37b3c4548762e4f86e1d8d9691b5997d04ed901761ec0`  
		Last Modified: Wed, 21 Oct 2026 23:21:29 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec33f1ba90dc3100ae325feea2fb0def39ecd673f0f6951927d6da6b0c01d9a7`  
		Last Modified: Wed, 21 Oct 2026 23:21:30 GMT  
		Size: 13.9 MB (13862215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e21bd4f0eb7f40e23c6567e0f2b1d933a611602b838360cd04c397507ca7336`  
		Last Modified: Wed, 21 Oct 2026 23:21:29 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:304111604e80f3a42f6a60e8fd5fadd88fc05ec85cd1346b536013e4483cf38b`  
		Last Modified: Wed, 21 Oct 2026 23:21:30 GMT  
		Size: 22.1 KB (22131 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:904cd9faa77937f67890693f6dc48ed7a5a0a91459f21e01feefed1aae5940b1`  
		Last Modified: Wed, 21 Oct 2026 23:21:30 GMT  
		Size: 22.1 KB (22150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:edf71346596d36fc899f2e902dbe2e714c4f83a37304b6a8fb0f3f5e8eb51ef5`  
		Last Modified: Wed, 21 Oct 2026 23:21:31 GMT  
		Size: 9.3 KB (9265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7ce36f66aed3350bf40ee28fbf879636314c870ebab7326b5c9f760d4f32ccb`  
		Last Modified: Thu, 22 Oct 2026 00:18:08 GMT  
		Size: 29.5 MB (29519105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b41ed2cf8cb83bf2e15995bec9dd4cbc6cb3bb4ba10daf465ce2be3f2aece15a`  
		Last Modified: Thu, 22 Oct 2026 00:18:08 GMT  
		Size: 6.8 MB (6782852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca47b35cc18ee31daf3db428cf475b24ea518ec8ad647d03c91a952dbc936eab`  
		Last Modified: Thu, 22 Oct 2026 00:18:07 GMT  
		Size: 72.1 KB (72102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b56796be06e6b64b255e17213ba9487e4052e5817a3ea883fa60972eeee3c5b2`  
		Last Modified: Thu, 22 Oct 2026 00:18:07 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31f2e7dab0e25166b521719367670acdbf23aab029c54043a5d32d3fc9bc4c72`  
		Last Modified: Thu, 22 Oct 2026 00:18:10 GMT  
		Size: 29.0 MB (28987298 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96c9d9c46edbe272be08a58d1b8a626eecb817193ebfa78ef415a6ac4727f1c8`  
		Last Modified: Thu, 22 Oct 2026 00:18:02 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7677a9de8fd98e318cc93009f6b3c3ef10f10ddb0cf8fb23eadd64a2457a7628`  
		Last Modified: Thu, 22 Oct 2026 00:18:03 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:php8.4-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:4fda5721073b117048fd236f3564e63a82211177663d46c117a0d5e8c1772231
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 KB (46167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c796518152b4c55f3c7d484d3136d71c32476646b44ca9496fd8376e618fb9ea`

```dockerfile
```

-	Layers:
	-	`sha256:cf05112cc9445b22bf93031ff3f96b509f684c95f6b227756b6c1036219f0e0c`  
		Last Modified: Thu, 22 Oct 2026 00:18:07 GMT  
		Size: 46.2 KB (46167 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:php8.4-fpm-alpine` - linux; arm variant v7

```console
$ docker pull joomla@sha256:752f0b214c50eeb29b247fc5ed65443012549cd8b7c2eeb2cb2e5a4038a61b61
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.2 MB (97212730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a5c644383ac29ffd7f87678fb0b709a5516f822e2b4e5b3fdf0106cf4cb1190b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 21 Oct 2026 22:52:08 GMT
ADD alpine-minirootfs-3.24.3-armv7.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:52:08 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:23:51 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:23:51 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:23:51 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:23:51 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:23:51 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:23:51 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:23:51 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:23:51 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:23:51 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 21 Oct 2026 23:23:51 GMT
ENV PHP_VERSION=8.4.27
# Wed, 21 Oct 2026 23:23:51 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Wed, 21 Oct 2026 23:23:51 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Wed, 21 Oct 2026 23:23:55 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:23:55 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:26:54 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:26:54 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:26:54 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 21 Oct 2026 23:26:55 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:26:55 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:26:55 GMT
WORKDIR /var/www/html
# Wed, 21 Oct 2026 23:26:55 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Wed, 21 Oct 2026 23:26:55 GMT
STOPSIGNAL SIGQUIT
# Wed, 21 Oct 2026 23:26:55 GMT
EXPOSE map[9000/tcp:{}]
# Wed, 21 Oct 2026 23:26:55 GMT
CMD ["php-fpm"]
# Thu, 22 Oct 2026 00:25:11 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 22 Oct 2026 00:25:11 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 22 Oct 2026 00:25:11 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 		zstd 	; # buildkit
# Thu, 22 Oct 2026 00:27:43 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 		pecl install APCu-5.1.28; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 22 Oct 2026 00:27:43 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 22 Oct 2026 00:27:43 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Thu, 22 Oct 2026 00:27:43 GMT
VOLUME [/var/www/html]
# Thu, 22 Oct 2026 00:27:43 GMT
ENV JOOMLA_VERSION=6.1.4
# Thu, 22 Oct 2026 00:27:43 GMT
ENV JOOMLA_SHA512=c969341376e41c957223559adea36d3090f1bba982cb08eb162cd40f9994e43a4400abd2cc0b9b5c5db61d9401101fcfc5db815a626691d44533dc38800b9146
# Thu, 22 Oct 2026 00:27:45 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/6.1.4/Joomla_6.1.4-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Thu, 22 Oct 2026 00:27:45 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 22 Oct 2026 00:27:45 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 22 Oct 2026 00:27:45 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 22 Oct 2026 00:27:45 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:1e8d134240abdd47977b92433f069c273d151b9fba9396fd8ba3107b7222f7a1`  
		Last Modified: Wed, 21 Oct 2026 22:52:13 GMT  
		Size: 3.3 MB (3266660 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2847ffa299057753b5d64b86a900fff16db88f0039a3757560f6d5387e343977`  
		Last Modified: Wed, 21 Oct 2026 23:27:02 GMT  
		Size: 3.3 MB (3257823 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d15196764e1f07e819e6b6d2cf605a22bff08dc94bdba5690a2b7b3d041ab5c`  
		Last Modified: Wed, 21 Oct 2026 23:27:02 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a77f8b99455ed9c2c287b429a1501c16c3ecbe90238865bdced25679eca3b490`  
		Last Modified: Wed, 21 Oct 2026 23:27:01 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb93972dac78c0735914f22c043fff7a5c01837fd1257da1a5d42c9e9eb45113`  
		Last Modified: Wed, 21 Oct 2026 23:27:02 GMT  
		Size: 13.9 MB (13885748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e282a8d9fd6f2d571f23650adbc5392181b89f9ad2481c18813f1caadb54bbd3`  
		Last Modified: Wed, 21 Oct 2026 23:27:03 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80a9f37ad5bc8f761b965a7b5db5bb7cb341f734eb72d0cb3263e71e0b85d024`  
		Last Modified: Wed, 21 Oct 2026 23:27:03 GMT  
		Size: 13.1 MB (13080608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:664ef27df32b8b581b53be24dc92219fc3b20de23707865ffafa45c8d3fe4315`  
		Last Modified: Wed, 21 Oct 2026 23:27:03 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ea64d7e1ddc143a3c4bc1cd1a439f11732d1587db859124938dea1b5f7e6276`  
		Last Modified: Wed, 21 Oct 2026 23:27:03 GMT  
		Size: 22.1 KB (22136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b19871608d78354e215428664d3c985978796ad82f8250ba63d908dd20222d1f`  
		Last Modified: Wed, 21 Oct 2026 23:27:04 GMT  
		Size: 22.2 KB (22158 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5dacd632d8095569ff79b1aafda19e769c9a142bdfdbc1024aca6974172c4b9e`  
		Last Modified: Wed, 21 Oct 2026 23:27:04 GMT  
		Size: 9.3 KB (9264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89593eaf4df0944b00d78ce5dda5aeef4dbf5bdf7af14ddf9275353f2d5d3b2d`  
		Last Modified: Thu, 22 Oct 2026 00:27:53 GMT  
		Size: 27.8 MB (27795570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cf58b528e5547a427484f7d06af427bbb97f9eae32f2ba8ab3fa73528c4a444`  
		Last Modified: Thu, 22 Oct 2026 00:27:52 GMT  
		Size: 6.8 MB (6804141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59efbda0056c37d98ae168a59a22091633a02050ca5a5246be518a7575ae1766`  
		Last Modified: Thu, 22 Oct 2026 00:27:52 GMT  
		Size: 72.1 KB (72108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42db658f609f575e1d933cc3b00449fd9e37418b115050140e4c8b402cd628fe`  
		Last Modified: Thu, 22 Oct 2026 00:27:52 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c1d077d8ca3ae4858400dd832a966ecb4b371fd330218f10d36c4eb5dfbe3d9`  
		Last Modified: Thu, 22 Oct 2026 00:27:54 GMT  
		Size: 29.0 MB (28987287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09edec6b304b61e87664cff5257e57839cee720225d61c02b788f07421d3e87c`  
		Last Modified: Thu, 22 Oct 2026 00:27:42 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af75953167eca39eaa195c611b0bf8bc457e4c2cd4a29f87920a01c4048325f5`  
		Last Modified: Thu, 22 Oct 2026 00:27:43 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:php8.4-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:c5860efd9ef4ceed902d4fb81ac720d5832bb2bdd8a6f143e74d15c505f83b1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 KB (46167 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1675169cc828cdddab4db49701d5500c701ef733fb420d1edbddf60150601ab7`

```dockerfile
```

-	Layers:
	-	`sha256:e41eeb85003c79c1da334bcfeb2e8ac069eeca574ca43d0d68bc5076ed41cb05`  
		Last Modified: Thu, 22 Oct 2026 00:27:52 GMT  
		Size: 46.2 KB (46167 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:php8.4-fpm-alpine` - linux; arm64 variant v8

```console
$ docker pull joomla@sha256:a7e25da4f5389b0d99d2cb6066453eadd7097109167ae4c2e590afe1904bf47a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.9 MB (104876717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f3b4a0723aacae1afe1fd2ffeda448e1ce082711a16522fcb84bcf87ca925c9`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:12:07 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:12:07 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:12:07 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:12:07 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:12:07 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:12:07 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:12:07 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:12:07 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:12:07 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 21 Oct 2026 23:12:07 GMT
ENV PHP_VERSION=8.4.27
# Wed, 21 Oct 2026 23:12:07 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Wed, 21 Oct 2026 23:12:07 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Thu, 22 Oct 2026 00:10:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 22 Oct 2026 00:10:25 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 00:13:38 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 22 Oct 2026 00:13:38 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 00:13:39 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 22 Oct 2026 00:13:40 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 22 Oct 2026 00:13:40 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 22 Oct 2026 00:13:40 GMT
WORKDIR /var/www/html
# Thu, 22 Oct 2026 00:13:40 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 22 Oct 2026 00:13:40 GMT
STOPSIGNAL SIGQUIT
# Thu, 22 Oct 2026 00:13:40 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 22 Oct 2026 00:13:40 GMT
CMD ["php-fpm"]
# Thu, 22 Oct 2026 00:35:28 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 22 Oct 2026 00:35:28 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 22 Oct 2026 00:35:28 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 		zstd 	; # buildkit
# Thu, 22 Oct 2026 00:37:40 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 		pecl install APCu-5.1.28; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 22 Oct 2026 00:37:40 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 22 Oct 2026 00:37:41 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Thu, 22 Oct 2026 00:37:41 GMT
VOLUME [/var/www/html]
# Thu, 22 Oct 2026 00:37:41 GMT
ENV JOOMLA_VERSION=6.1.4
# Thu, 22 Oct 2026 00:37:41 GMT
ENV JOOMLA_SHA512=c969341376e41c957223559adea36d3090f1bba982cb08eb162cd40f9994e43a4400abd2cc0b9b5c5db61d9401101fcfc5db815a626691d44533dc38800b9146
# Thu, 22 Oct 2026 00:37:42 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/6.1.4/Joomla_6.1.4-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Thu, 22 Oct 2026 00:37:42 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 22 Oct 2026 00:37:42 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 22 Oct 2026 00:37:42 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 22 Oct 2026 00:37:42 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:164274e2686f4a12bec881c2e7a6cbfd992b727496c80b91bdee51b8aa957883`  
		Last Modified: Wed, 21 Oct 2026 23:16:05 GMT  
		Size: 3.5 MB (3500758 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0f065c2e798d9c33e720b2fc1bf00dc704dea889f0e13be5f85030011811620`  
		Last Modified: Wed, 21 Oct 2026 23:16:05 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0faba168f8dc1a9028945fcc75bafce79ddcf2b1abf6d5aa0ab012ebb7e3316a`  
		Last Modified: Wed, 21 Oct 2026 23:16:05 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2a8a7b1b4b88b045af76e700d1593c4a425067ddaa8e6898d89dab59b41a3e9`  
		Last Modified: Thu, 22 Oct 2026 00:13:47 GMT  
		Size: 13.9 MB (13885741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc1ac273e3d45aba04984aca132090719539f1d4b42abf7174288ea6d06e1e68`  
		Last Modified: Thu, 22 Oct 2026 00:13:46 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9292fc9797da7bbd6aad50d0a2ae4fe0aa511a19d38deb3396dc1ffda3d0771a`  
		Last Modified: Thu, 22 Oct 2026 00:13:47 GMT  
		Size: 14.9 MB (14946553 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42e718244e614309f88f54ccc5c91f9ccfb0a3c963dde9589337be502eedb3d1`  
		Last Modified: Thu, 22 Oct 2026 00:13:46 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78d4beaa44c11201d11a1d945e42ae1365d82108da2c5d1c092d070d3785b106`  
		Last Modified: Thu, 22 Oct 2026 00:13:48 GMT  
		Size: 22.2 KB (22169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:258a47f92727bd67b2390a791d9896e78007218fd1d16387e7df62790c5cddde`  
		Last Modified: Thu, 22 Oct 2026 00:13:48 GMT  
		Size: 22.2 KB (22185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:624ce77ed9ed45caa352d8f3697ac19f1f90cd81d50a2bc2df1e785dde27cd80`  
		Last Modified: Thu, 22 Oct 2026 00:13:49 GMT  
		Size: 9.3 KB (9264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:943adabb2e1ee8eed9d2587bcda0ddbb065e753d98fb65b1891521d0fd98b606`  
		Last Modified: Thu, 22 Oct 2026 00:37:51 GMT  
		Size: 32.2 MB (32229100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a557286ea6ee3dd3de355b040897b0db62e7716f3769a5ae9d50695acd741641`  
		Last Modified: Thu, 22 Oct 2026 00:37:50 GMT  
		Size: 7.0 MB (7001855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2d0e2a66b387878070cf3703b3775dacdd87252aecb8e0a0fb18b7017129f06`  
		Last Modified: Thu, 22 Oct 2026 00:37:49 GMT  
		Size: 72.1 KB (72077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e271ff4a477a65c9b3fb61627371b9d6568cabc114185b3a4c27540bb6236b85`  
		Last Modified: Thu, 22 Oct 2026 00:37:50 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e790f46761da74d668eb3f61f50c8f4fd92e2757ddac6f65daa75757af436ab`  
		Last Modified: Thu, 22 Oct 2026 00:37:51 GMT  
		Size: 29.0 MB (28987287 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e566bc676f2b26fd5025b70b774745abb69b59c4827aa917ea764f4e70960dcd`  
		Last Modified: Thu, 22 Oct 2026 00:37:51 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b6c2b85c653180ea45099aa6a5da3e80dede1ec238526a5508e83274bcc38359`  
		Last Modified: Thu, 22 Oct 2026 00:37:52 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:php8.4-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:df8da97d2277b3f273c1d1cdfff7c379630e3553bfec5dad414c13c798281bf0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 KB (46199 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97cd287062b126ace8586d23cff784bead8c05dadccc05529049d9b45895f422`

```dockerfile
```

-	Layers:
	-	`sha256:c1615ff1cdbe8e01bc2918d86105e8df9cbb05637477213251e95f4362036159`  
		Last Modified: Thu, 22 Oct 2026 00:37:49 GMT  
		Size: 46.2 KB (46199 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:php8.4-fpm-alpine` - linux; 386

```console
$ docker pull joomla@sha256:dbdcbce83fd07849e5d8e124199ca5adf7fe82afb733e2701cb13a2b9871adb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.2 MB (106243690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:51f63ad99d806652062f76d2843c2a4d9b2c9a3df1f8891ba863704d565a61df`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Wed, 21 Oct 2026 22:50:43 GMT
ADD alpine-minirootfs-3.24.3-x86.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:50:43 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 23:13:54 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Wed, 21 Oct 2026 23:13:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Wed, 21 Oct 2026 23:13:54 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Wed, 21 Oct 2026 23:13:54 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Wed, 21 Oct 2026 23:13:54 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Wed, 21 Oct 2026 23:13:54 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:13:54 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Wed, 21 Oct 2026 23:13:54 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Wed, 21 Oct 2026 23:13:54 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 21 Oct 2026 23:13:54 GMT
ENV PHP_VERSION=8.4.27
# Wed, 21 Oct 2026 23:13:54 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Wed, 21 Oct 2026 23:13:54 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Wed, 21 Oct 2026 23:13:58 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:13:58 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:17:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:17:15 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:17:15 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 21 Oct 2026 23:17:16 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:17:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:17:16 GMT
WORKDIR /var/www/html
# Wed, 21 Oct 2026 23:17:16 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Wed, 21 Oct 2026 23:17:16 GMT
STOPSIGNAL SIGQUIT
# Wed, 21 Oct 2026 23:17:16 GMT
EXPOSE map[9000/tcp:{}]
# Wed, 21 Oct 2026 23:17:16 GMT
CMD ["php-fpm"]
# Thu, 22 Oct 2026 00:16:36 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 22 Oct 2026 00:16:36 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 22 Oct 2026 00:16:36 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 		zstd 	; # buildkit
# Thu, 22 Oct 2026 00:18:26 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 		pecl install APCu-5.1.28; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 22 Oct 2026 00:18:27 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 22 Oct 2026 00:18:27 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Thu, 22 Oct 2026 00:18:27 GMT
VOLUME [/var/www/html]
# Thu, 22 Oct 2026 00:18:27 GMT
ENV JOOMLA_VERSION=6.1.4
# Thu, 22 Oct 2026 00:18:27 GMT
ENV JOOMLA_SHA512=c969341376e41c957223559adea36d3090f1bba982cb08eb162cd40f9994e43a4400abd2cc0b9b5c5db61d9401101fcfc5db815a626691d44533dc38800b9146
# Thu, 22 Oct 2026 00:18:28 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/6.1.4/Joomla_6.1.4-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Thu, 22 Oct 2026 00:18:29 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 22 Oct 2026 00:18:29 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 22 Oct 2026 00:18:29 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 22 Oct 2026 00:18:29 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f89afe85a29e874c0bc6d49b09150af4f08fbc4e6db82e7870677ef76977c07d`  
		Last Modified: Wed, 21 Oct 2026 22:50:49 GMT  
		Size: 3.7 MB (3678996 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66f4427623d9c9495411d75d4929f370c8fca8e83777e21bdf0f9e2e08c88b1c`  
		Last Modified: Wed, 21 Oct 2026 23:17:23 GMT  
		Size: 3.5 MB (3524282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0753168f55d154d9d3ac452ef014bce8504711bb977f525cd5a4ef9a2e84c85`  
		Last Modified: Wed, 21 Oct 2026 23:17:23 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:966b4bfa20b73f13c155685b44438f70e42dfe9ae572eb79fd7e0b41708d2096`  
		Last Modified: Wed, 21 Oct 2026 23:17:23 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33d71ad4dc17d3ecd4517c98c4f45a8ac7f60b8efc02ecc6c4e73095fcd5fb09`  
		Last Modified: Wed, 21 Oct 2026 23:17:23 GMT  
		Size: 13.9 MB (13885726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:600b5318d868e9fa2e8978380c91d15385273de108ddad593b0c0e6587a96395`  
		Last Modified: Wed, 21 Oct 2026 23:17:24 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75438152c0c7042a355079dc8bb6bd2b053b2f9cd4b1ab2bebea712dcdff1da6`  
		Last Modified: Wed, 21 Oct 2026 23:17:24 GMT  
		Size: 15.8 MB (15780253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5911cee0e36795666057923e135e45b10d49c2654991bee720ca00bcdd670b1`  
		Last Modified: Wed, 21 Oct 2026 23:17:24 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb4d6f9ad4b0ea864c9d5a99123d9a8f7cfa232928f050ed7c32c81cc66a1c4c`  
		Last Modified: Wed, 21 Oct 2026 23:17:25 GMT  
		Size: 22.3 KB (22343 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5c6d6d0801422d0123ff47d0b70a8eb46ebbff956def4baf1e27fb7180f7bcc`  
		Last Modified: Wed, 21 Oct 2026 23:17:25 GMT  
		Size: 22.4 KB (22353 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08c6825dab514af84920790675844a6889e090f8dd7f65c6864e7ba336d594e4`  
		Last Modified: Wed, 21 Oct 2026 23:17:26 GMT  
		Size: 9.3 KB (9262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:790bc99353228d7bc394224b17ed268610fee609ee18b22dc6c7873e097775ba`  
		Last Modified: Thu, 22 Oct 2026 00:18:37 GMT  
		Size: 33.1 MB (33067101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d6730c4666b80a2974e72e7eb86878db70ca34e5e6970fea310fd2150861042`  
		Last Modified: Thu, 22 Oct 2026 00:18:36 GMT  
		Size: 7.2 MB (7184836 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cc608b543df6fc141094b9c00c0d19f9d42212a47cd68ffcbd8aff16e5e3bbc`  
		Last Modified: Thu, 22 Oct 2026 00:18:36 GMT  
		Size: 72.0 KB (72027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:559d93ab8d105a9c2f39f615474f18070fa93df18435619ae801275d5b1e7408`  
		Last Modified: Thu, 22 Oct 2026 00:18:35 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34286224d1732db0e9003e9ab4d336b38dcf8069074c1122fdd364b92aa780c8`  
		Last Modified: Thu, 22 Oct 2026 00:18:38 GMT  
		Size: 29.0 MB (28987283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:099264be9bb19d362cba5ea523d82c678e8bc1fac83feadc8a727a01a9925e53`  
		Last Modified: Thu, 22 Oct 2026 00:18:37 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3a01b2ccd49c1ad5b9407a56caa9706b2f4d8d7c2c48212affe833447c8cc65`  
		Last Modified: Thu, 22 Oct 2026 00:18:39 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:php8.4-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:a0a6a45ddc509174d4c6bba133a460a1ad4257b3d2d76e24eaf01f3785f4f17d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 KB (45995 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c68da6171444dc68e4e923c9929dee529f75119c4b78a31905628ba7d6bd898d`

```dockerfile
```

-	Layers:
	-	`sha256:c467807493fb474d5cfcf7c414e7ddf405430e2f42932b46910dc479520d39c2`  
		Last Modified: Thu, 22 Oct 2026 00:18:35 GMT  
		Size: 46.0 KB (45995 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:php8.4-fpm-alpine` - linux; ppc64le

```console
$ docker pull joomla@sha256:7f9f1f4aaaecbb06d47662bf69e7e040753d2f47dfcfc2f60653e3e4981ab754
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.7 MB (107652819 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7d1409c643a440b855d1fd272c266f25bf09bf3d9c62ef92a146ff6b205bad79`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

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
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_VERSION=8.4.27
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Thu, 22 Oct 2026 10:41:10 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Thu, 22 Oct 2026 11:20:17 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 22 Oct 2026 11:20:17 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 11:33:56 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 22 Oct 2026 11:33:57 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 22 Oct 2026 11:33:59 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 22 Oct 2026 11:34:01 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 22 Oct 2026 11:34:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 22 Oct 2026 11:34:01 GMT
WORKDIR /var/www/html
# Thu, 22 Oct 2026 11:34:02 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 22 Oct 2026 11:34:02 GMT
STOPSIGNAL SIGQUIT
# Thu, 22 Oct 2026 11:34:02 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 22 Oct 2026 11:34:02 GMT
CMD ["php-fpm"]
# Thu, 22 Oct 2026 16:21:14 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 22 Oct 2026 16:21:14 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 22 Oct 2026 16:21:14 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 		zstd 	; # buildkit
# Thu, 22 Oct 2026 16:25:51 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 		pecl install APCu-5.1.28; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 22 Oct 2026 16:25:53 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 22 Oct 2026 16:25:54 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Thu, 22 Oct 2026 16:25:54 GMT
VOLUME [/var/www/html]
# Thu, 22 Oct 2026 16:25:54 GMT
ENV JOOMLA_VERSION=6.1.4
# Thu, 22 Oct 2026 16:25:54 GMT
ENV JOOMLA_SHA512=c969341376e41c957223559adea36d3090f1bba982cb08eb162cd40f9994e43a4400abd2cc0b9b5c5db61d9401101fcfc5db815a626691d44533dc38800b9146
# Thu, 22 Oct 2026 16:26:01 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/6.1.4/Joomla_6.1.4-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Thu, 22 Oct 2026 16:26:12 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 22 Oct 2026 16:26:12 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 22 Oct 2026 16:26:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 22 Oct 2026 16:26:12 GMT
CMD ["php-fpm"]
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
	-	`sha256:2eb4718904bc8a3429254703a45237851d8f335c676f5148dfb7ad84f67a952e`  
		Last Modified: Thu, 22 Oct 2026 11:27:34 GMT  
		Size: 13.9 MB (13885745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7ea2c43f375d9bba4422bcd71d4797d75e585893649429abd15beb11fb72586e`  
		Last Modified: Thu, 22 Oct 2026 11:27:33 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8597e974b38ad0591236dfdfe117781128f7ac2e0e2e94751319aa1e03a40abd`  
		Last Modified: Thu, 22 Oct 2026 11:34:19 GMT  
		Size: 16.0 MB (15991852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33349858ffe19813f69809914b2b82a97cafa7ee4aaaaf8a3cd85c4ee81b2f35`  
		Last Modified: Thu, 22 Oct 2026 11:34:19 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f63e7a58312a9b667694e2b553ee4c9b7ec503ddb6b756d2b6e43ba3e3ef516`  
		Last Modified: Thu, 22 Oct 2026 11:34:18 GMT  
		Size: 22.2 KB (22179 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9776d45c99caf7e45d69fc5468ed5aaaa717fbfc8c7137b5f57a24b690a8fbf`  
		Last Modified: Thu, 22 Oct 2026 11:34:19 GMT  
		Size: 22.2 KB (22207 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa63a5370319e5b20ee35a4da948585b96ab5bdf8f61495569d2009a018b76fd`  
		Last Modified: Thu, 22 Oct 2026 11:34:20 GMT  
		Size: 9.3 KB (9265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9c1bf37e7c7049c0d074284c35a5361bb28d9b4e30b5811761fae873e1a38c4`  
		Last Modified: Thu, 22 Oct 2026 16:26:33 GMT  
		Size: 33.9 MB (33865609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ae5b4e417928302c0fc9e03c59e4872b207d9d44d5af1a0265500877b216bc3`  
		Last Modified: Thu, 22 Oct 2026 16:26:32 GMT  
		Size: 7.3 MB (7300999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcc4ccc73c0ef1b592da9003e8c0ec8d46e7bf4fa05059cd35225da2b007ccda`  
		Last Modified: Thu, 22 Oct 2026 16:26:31 GMT  
		Size: 72.1 KB (72122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54f810975f54e1378d49f4630684c09304fc9cf3d0724821483cf315e8bc727f`  
		Last Modified: Thu, 22 Oct 2026 16:26:31 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00bdfb4457545ceb8007659c64403cc09e8ac876004f06cb44dd67f2794ae121`  
		Last Modified: Thu, 22 Oct 2026 16:26:33 GMT  
		Size: 29.0 MB (28987300 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9197dea6bf73998f84668c4fa8518877d80df516cbbc9d2af1a86dffd450b4a1`  
		Last Modified: Thu, 22 Oct 2026 16:25:58 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dace0023385801b4dcf9b40081a744bfdd0886180724978daab0a2a643ef25dd`  
		Last Modified: Thu, 22 Oct 2026 16:25:58 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:php8.4-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:cfeb07a610f068501bf1dbe3601bf072dae2c31684c9d89e1e39a8926bdf3c95
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 KB (46087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f055cfae229cf395c22b1917538abc15ef481a3eeef7d18ac283638f47a60cd5`

```dockerfile
```

-	Layers:
	-	`sha256:f62e857b4328a6d53684abb542834e1f30dd59517cc5526d9cee66a8e5fb5af8`  
		Last Modified: Thu, 22 Oct 2026 16:26:31 GMT  
		Size: 46.1 KB (46087 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:php8.4-fpm-alpine` - linux; riscv64

```console
$ docker pull joomla@sha256:df4eaf4b08f115145d2408ef39a2d423d3db71fbf7ebe4fa5ca54b9a3575f5e8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.4 MB (107375686 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bcb50c0e5ea9ae62ebc32bac64f236350e9146ec5dfc76396d6cd6ad03dee70b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 18 Sep 2026 16:49:18 GMT
ADD alpine-minirootfs-3.24.2-riscv64.tar.gz / # buildkit
# Fri, 18 Sep 2026 16:49:18 GMT
CMD ["/bin/sh"]
# Sat, 19 Sep 2026 07:31:37 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Sat, 19 Sep 2026 07:31:37 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Sat, 19 Sep 2026 07:31:37 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Sat, 19 Sep 2026 07:31:37 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 19 Sep 2026 07:31:38 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Sat, 19 Sep 2026 07:31:38 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 07:31:38 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 19 Sep 2026 07:31:38 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 19 Sep 2026 07:31:38 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Sat, 19 Sep 2026 07:31:38 GMT
ENV PHP_VERSION=8.4.26
# Sat, 19 Sep 2026 07:31:38 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.26.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.26.tar.xz.asc
# Sat, 19 Sep 2026 07:31:38 GMT
ENV PHP_SHA256=32a2de53862ad44ed4a5005244ce4f1b50c271e74dced215449a4443b40569f1
# Sun, 27 Sep 2026 19:22:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Sun, 27 Sep 2026 19:22:56 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sun, 27 Sep 2026 21:27:10 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sun, 27 Sep 2026 21:27:10 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sun, 27 Sep 2026 21:27:15 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sun, 27 Sep 2026 21:27:19 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sun, 27 Sep 2026 21:27:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sun, 27 Sep 2026 21:27:19 GMT
WORKDIR /var/www/html
# Sun, 27 Sep 2026 21:27:20 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Sun, 27 Sep 2026 21:27:20 GMT
STOPSIGNAL SIGQUIT
# Sun, 27 Sep 2026 21:27:20 GMT
EXPOSE map[9000/tcp:{}]
# Sun, 27 Sep 2026 21:27:20 GMT
CMD ["php-fpm"]
# Thu, 01 Oct 2026 23:07:55 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 01 Oct 2026 23:07:55 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 01 Oct 2026 23:07:55 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 		zstd 	; # buildkit
# Thu, 01 Oct 2026 23:35:52 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 		pecl install APCu-5.1.28; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 01 Oct 2026 23:35:57 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 01 Oct 2026 23:35:58 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Thu, 01 Oct 2026 23:35:58 GMT
VOLUME [/var/www/html]
# Thu, 01 Oct 2026 23:35:58 GMT
ENV JOOMLA_VERSION=6.1.4
# Thu, 01 Oct 2026 23:35:58 GMT
ENV JOOMLA_SHA512=c969341376e41c957223559adea36d3090f1bba982cb08eb162cd40f9994e43a4400abd2cc0b9b5c5db61d9401101fcfc5db815a626691d44533dc38800b9146
# Thu, 01 Oct 2026 23:36:11 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/6.1.4/Joomla_6.1.4-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Thu, 01 Oct 2026 23:36:12 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 01 Oct 2026 23:36:12 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 01 Oct 2026 23:36:12 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 01 Oct 2026 23:36:12 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:64f7f08b6763becdda2e72bfacdfd36663e4847bc6fdb366336127620012bc02`  
		Last Modified: Fri, 18 Sep 2026 16:49:42 GMT  
		Size: 3.6 MB (3575371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7241c71c294d31a27a6d12101f993cfc2b6864a0ff355a14fa8497f9c685f122`  
		Last Modified: Sat, 19 Sep 2026 08:32:39 GMT  
		Size: 3.6 MB (3636236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a3222b1ad00a93a0d1c606f25dede0fea90c1cfaa6958b7c8436165a65af4dc`  
		Last Modified: Sat, 19 Sep 2026 08:32:38 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6597b890299299be1fd94195683c9712a3a11b9d0265652252b6cb0ace1a0acb`  
		Last Modified: Sat, 19 Sep 2026 08:32:38 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a0fee64f9d32e593e518324930f1b0f75b2ad95bdfa2cef3426ecffe21453dc`  
		Last Modified: Sun, 27 Sep 2026 20:25:09 GMT  
		Size: 13.8 MB (13814819 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19a75d6294210c03ac770a442f7ed06d5a4ecb19ed91426269fac152c6580f19`  
		Last Modified: Sun, 27 Sep 2026 20:25:05 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41c8756beaa6c8dd9c0416365e6a045ab0fc1a01a2a39d2a61bf93e5c08bf730`  
		Last Modified: Sun, 27 Sep 2026 21:28:15 GMT  
		Size: 14.6 MB (14634516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39028d7021cc75336c110525c02a0eec6ffc5c5cc70540239cd22c3a5af288c2`  
		Last Modified: Sun, 27 Sep 2026 21:28:12 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eba7d9cc59938128bb0371331f08ea4d035a4a9c7cb8b75721d6803d98cd3c4`  
		Last Modified: Sun, 27 Sep 2026 21:28:12 GMT  
		Size: 22.3 KB (22256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:282dd6ffd86afa17aa53beae1cdbc7c8c4bc682258428017b0a0749910511a2a`  
		Last Modified: Sun, 27 Sep 2026 21:28:12 GMT  
		Size: 22.3 KB (22272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:211e769c587abb81ba5d4ba5a8b793d8737802b51865f354f93d277e03e5f0c3`  
		Last Modified: Sun, 27 Sep 2026 21:28:14 GMT  
		Size: 9.3 KB (9269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63806b62936db5429f328e3d69ac9f85d754da46b11dc9beaf987d84d141c1aa`  
		Last Modified: Thu, 01 Oct 2026 23:37:29 GMT  
		Size: 32.8 MB (32839157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c55e5b3e785a6ebcbd7cbc68f4fe25907fb69a1f5412c8fa2b1f358c9bf0386`  
		Last Modified: Thu, 01 Oct 2026 23:37:22 GMT  
		Size: 9.8 MB (9753024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7cff03e23da85a76eab89b84e95678dd32ca229155479204ddd8332037674e4`  
		Last Modified: Thu, 01 Oct 2026 23:37:18 GMT  
		Size: 72.2 KB (72234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e63624065e11ee7731152ddfe3a43849d042b47b9f5a99c693f63b3a4243cb23`  
		Last Modified: Thu, 01 Oct 2026 23:37:19 GMT  
		Size: 394.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11e16c2972f734729a7b4180cd8ae751bb284ec6b084bb445a895336b303fb9a`  
		Last Modified: Thu, 01 Oct 2026 23:37:29 GMT  
		Size: 29.0 MB (28987278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:323162049280334e4dc6fa91c5d9a21febd1266c4074cdf3e774858fd57afcc1`  
		Last Modified: Thu, 01 Oct 2026 23:37:21 GMT  
		Size: 3.7 KB (3658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a8548155013ead86b85908241ab6b5c64bc2e4139e39ce518e0ef47d53ace73`  
		Last Modified: Thu, 01 Oct 2026 23:37:23 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:php8.4-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:a71b9797e893e344784581133e9c8cc2cd278619ae2e1d6ff59af499491a2e33
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 KB (46087 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:039dda6420dc892a6139cdb0c5b5c574443f80c874f7aef2b02f35ff79baa0d2`

```dockerfile
```

-	Layers:
	-	`sha256:89dfa63231a2ffcb3ea8d5dcef9fcda6aab2d38f2d16507ad5d88e91e7e19514`  
		Last Modified: Thu, 01 Oct 2026 23:37:18 GMT  
		Size: 46.1 KB (46087 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:php8.4-fpm-alpine` - linux; s390x

```console
$ docker pull joomla@sha256:3ee0026d6a4b353ae420b1412df747e2ce8383cda2c4cdea65f41bb2c9922a40
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **106.6 MB (106554183 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6419213fd4a4b0dae821eac4cb9a8440fdd3f15e105ba91eb3d48465851e7c7d`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

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
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_VERSION=8.4.27
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.27.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.27.tar.xz.asc
# Wed, 21 Oct 2026 23:20:23 GMT
ENV PHP_SHA256=dcf93923b0e38e0d5252b25b796520b5a47761a08b3488b6d0b5d1115764d3f0
# Wed, 21 Oct 2026 23:26:15 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 21 Oct 2026 23:26:15 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:29:47 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 21 Oct 2026 23:29:47 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 21 Oct 2026 23:29:48 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 21 Oct 2026 23:29:49 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 21 Oct 2026 23:29:49 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 21 Oct 2026 23:29:49 GMT
WORKDIR /var/www/html
# Wed, 21 Oct 2026 23:29:49 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Wed, 21 Oct 2026 23:29:49 GMT
STOPSIGNAL SIGQUIT
# Wed, 21 Oct 2026 23:29:49 GMT
EXPOSE map[9000/tcp:{}]
# Wed, 21 Oct 2026 23:29:49 GMT
CMD ["php-fpm"]
# Thu, 22 Oct 2026 01:10:50 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 22 Oct 2026 01:10:50 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 22 Oct 2026 01:10:50 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 		zstd 	; # buildkit
# Thu, 22 Oct 2026 01:12:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 		pecl install APCu-5.1.28; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 22 Oct 2026 01:12:48 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 22 Oct 2026 01:12:48 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Thu, 22 Oct 2026 01:12:48 GMT
VOLUME [/var/www/html]
# Thu, 22 Oct 2026 01:12:48 GMT
ENV JOOMLA_VERSION=6.1.4
# Thu, 22 Oct 2026 01:12:48 GMT
ENV JOOMLA_SHA512=c969341376e41c957223559adea36d3090f1bba982cb08eb162cd40f9994e43a4400abd2cc0b9b5c5db61d9401101fcfc5db815a626691d44533dc38800b9146
# Thu, 22 Oct 2026 01:12:49 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/6.1.4/Joomla_6.1.4-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Thu, 22 Oct 2026 01:12:49 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 22 Oct 2026 01:12:49 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 22 Oct 2026 01:12:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 22 Oct 2026 01:12:49 GMT
CMD ["php-fpm"]
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
	-	`sha256:aefc2db9b879e3cbe67cf17d4de49072c1777076d301cd3dee5ff540ab01a896`  
		Last Modified: Wed, 21 Oct 2026 23:30:01 GMT  
		Size: 13.9 MB (13885745 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2e72fa6d284c2236ca90a6e9a43dd06f94af8083420fc75f945f321b9836af7`  
		Last Modified: Wed, 21 Oct 2026 23:30:00 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0ff43e41fc747e0cb5ca537ab7693277a08c5ce3724fff33af3a12f55971a8f`  
		Last Modified: Wed, 21 Oct 2026 23:30:01 GMT  
		Size: 15.2 MB (15174102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2baeaaf368e34d6a844eb010c44e4309a9401b9ec0d5919f9ac7b5b555136b1c`  
		Last Modified: Wed, 21 Oct 2026 23:30:00 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a066e7914ccc5aaf237cd916d1b9f6191b92096f513410faa39452158a77a72`  
		Last Modified: Wed, 21 Oct 2026 23:30:01 GMT  
		Size: 22.1 KB (22135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4061cac8ce51530828c04daed963d2cb0bdf72c0a3d3dfcd55657900de093cb1`  
		Last Modified: Wed, 21 Oct 2026 23:30:01 GMT  
		Size: 22.2 KB (22151 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a09c428a9d3e761dc09c1e3920641da80469f5cd7f3b05b0ba9e9269435e94fd`  
		Last Modified: Wed, 21 Oct 2026 23:30:02 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:060370980d5bf40c5322f48963e3d96f085f8e40a5e5bad5d1fa033f43b3b946`  
		Last Modified: Thu, 22 Oct 2026 01:13:01 GMT  
		Size: 33.8 MB (33762494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f5ad8f482143dbc456e293546952f9192b6e9e0bde66eecfbe5659a4d5c6577`  
		Last Modified: Thu, 22 Oct 2026 01:13:00 GMT  
		Size: 7.2 MB (7206130 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da9e6611639ca97664819b02c7b13d6649d4dc5422ecfbe0fdbd470f59de10e5`  
		Last Modified: Thu, 22 Oct 2026 01:13:00 GMT  
		Size: 72.1 KB (72083 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:393fa6b6ef3f9e942c75e9c32eb1b294049dd247e964ddb716d4075bcdeaa408`  
		Last Modified: Thu, 22 Oct 2026 01:13:00 GMT  
		Size: 387.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:31d6b2cecda758371136e70a8ec498b96afa608eccedfaa1ca91248e5db9f8bf`  
		Last Modified: Thu, 22 Oct 2026 01:13:01 GMT  
		Size: 29.0 MB (28987276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d398de4067e5d7269f7c5535a96de65180e0ebe6d48151da2e9cb937a7b95f70`  
		Last Modified: Thu, 22 Oct 2026 01:13:01 GMT  
		Size: 3.7 KB (3654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:433758218eb3eea573cf80ab0c51a90dcafc2e6ac04cd156b8da72d8d4dfdd5a`  
		Last Modified: Thu, 22 Oct 2026 01:13:01 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:php8.4-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:bb7f38bc461f04dfebf1050718981c5f40fa959014c57c64cd6f0585e8970e01
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.0 KB (46035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f3d92e442b51904f642b9f9e12babe535d41b7f06c3392cbe604d8282b7ad5f`

```dockerfile
```

-	Layers:
	-	`sha256:b66c3e6ffcccb194c6ce1721b268c37f05fac41175869a61b7c6bb1abacec2ab`  
		Last Modified: Thu, 22 Oct 2026 01:13:00 GMT  
		Size: 46.0 KB (46035 bytes)  
		MIME: application/vnd.in-toto+json
