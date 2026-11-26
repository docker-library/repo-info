## `postfixadmin:4-fpm-alpine`

```console
$ docker pull postfixadmin@sha256:782b7aab98a9c803b015458572fd272b54454e5ee93fb02189e8bb4f467069a4
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

### `postfixadmin:4-fpm-alpine` - linux; amd64

```console
$ docker pull postfixadmin@sha256:5efdef17d1b44068cdd92c733caf387fea9fd91b1c9f719bcd7b60f1896bfe57
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.2 MB (71210237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:62873fbe76fd146ab2bf9ff2edcb7a27dc00f66c05dea2b2a1f1dc667f7bc534`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 14:34:41 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 19 Nov 2026 14:34:41 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 19 Nov 2026 14:34:42 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 19 Nov 2026 14:34:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:34:42 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:34:42 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:34:42 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:34:42 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:34:42 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 19 Nov 2026 14:34:42 GMT
ENV PHP_VERSION=8.4.28
# Thu, 19 Nov 2026 14:34:42 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Thu, 19 Nov 2026 14:34:42 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Thu, 19 Nov 2026 14:34:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 14:34:45 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:37:35 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:37:35 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:37:35 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:37:36 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:37:36 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:37:36 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:37:36 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 14:37:36 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 14:37:36 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 14:37:36 GMT
CMD ["php-fpm"]
# Tue, 24 Nov 2026 21:10:29 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 24 Nov 2026 21:10:29 GMT
RUN apk add --no-cache 		bash 		su-exec # buildkit
# Tue, 24 Nov 2026 21:10:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		postgresql-dev 		sqlite-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .postfixadmin-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Tue, 24 Nov 2026 21:10:46 GMT
ARG POSTFIXADMIN_VERSION=4.0.7
# Tue, 24 Nov 2026 21:10:46 GMT
ARG POSTFIXADMIN_SHA512=07d08f631a922b313cc72db130343213a769602787751f92c01f67f69b3a72cffce958884b94a13d9f2eaf1899dcef43bfce4f11c37721897d42ab1fc9ddda2b
# Tue, 24 Nov 2026 21:10:46 GMT
ENV POSTFIXADMIN_VERSION=4.0.7
# Tue, 24 Nov 2026 21:10:46 GMT
ENV POSTFIXADMIN_SHA512=07d08f631a922b313cc72db130343213a769602787751f92c01f67f69b3a72cffce958884b94a13d9f2eaf1899dcef43bfce4f11c37721897d42ab1fc9ddda2b
# Tue, 24 Nov 2026 21:10:47 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.7 POSTFIXADMIN_SHA512=07d08f631a922b313cc72db130343213a769602787751f92c01f67f69b3a72cffce958884b94a13d9f2eaf1899dcef43bfce4f11c37721897d42ab1fc9ddda2b
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Tue, 24 Nov 2026 21:10:47 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 21:10:47 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 21:10:47 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 24 Nov 2026 21:10:50 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.7 POSTFIXADMIN_SHA512=07d08f631a922b313cc72db130343213a769602787751f92c01f67f69b3a72cffce958884b94a13d9f2eaf1899dcef43bfce4f11c37721897d42ab1fc9ddda2b
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 24 Nov 2026 21:10:50 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 21:10:50 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63ebc06c32d905c5d4bb7306a95c31c25e4ff859d66f0544a8c0d00940b7d4e2`  
		Last Modified: Thu, 19 Nov 2026 14:37:43 GMT  
		Size: 6.0 MB (5974109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:291ae8562b49d2fb31bd1dd36a2ef6a7d0407f99b9ffa07ce0d2decc840eed79`  
		Last Modified: Thu, 19 Nov 2026 14:37:43 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:035441d6ce965261faa7ef6b7a08d0e3dddf23f4eefd9973f3d5d62da034d842`  
		Last Modified: Thu, 19 Nov 2026 14:37:43 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aec09b1c9a409c6c82fcf6379b3540debc55d4e5c27851c4e43a3a0950e42cf`  
		Last Modified: Thu, 19 Nov 2026 14:37:43 GMT  
		Size: 13.9 MB (13934105 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf59848d04237d7edcb057f7c1c76d02d30ce299697241176171ab5014facbc7`  
		Last Modified: Thu, 19 Nov 2026 14:37:44 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:944d04c6024b7bd4cb76ba6944e44d356a098ca32107e6f5c5a11efbf44db999`  
		Last Modified: Thu, 19 Nov 2026 14:37:44 GMT  
		Size: 15.5 MB (15498319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:40c792c0c6fdea309b93a0f0ac9f6a3b21ae5d1a7daf8c20452d4abbb082f5d5`  
		Last Modified: Thu, 19 Nov 2026 14:37:44 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:604c7957c1fba81229bc298ee606bd7d77887eb26fccc1ca56ac31506443c373`  
		Last Modified: Thu, 19 Nov 2026 14:37:44 GMT  
		Size: 22.4 KB (22382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39e7a1eb1d95522dfd1336166950d3e83f5919518c23ede1ba749a7c4b7b3808`  
		Last Modified: Thu, 19 Nov 2026 14:37:45 GMT  
		Size: 22.4 KB (22397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d60b2b03cfe97a1e60f1a4b5a08dee8cce8a633302b1a034c5a0d6e045f5e388`  
		Last Modified: Thu, 19 Nov 2026 14:37:46 GMT  
		Size: 9.3 KB (9263 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4960795464292b3e3ba113e045e468ca9740315bc1fa3a63dcb50bb0fdc1c0e7`  
		Last Modified: Tue, 24 Nov 2026 21:10:56 GMT  
		Size: 522.0 KB (521992 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c0d34c48be2b715db57842d652c071f932575f0ec85e484cc177630b65656f2`  
		Last Modified: Tue, 24 Nov 2026 21:10:56 GMT  
		Size: 686.2 KB (686170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0efbd3b91920c07142c1289ef573e51db4615c7d1aa84f163aa912bbec7145b1`  
		Last Modified: Tue, 24 Nov 2026 21:10:56 GMT  
		Size: 2.7 MB (2657472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4ea941abe21390bbda8d61b1133ffeae175c62ec4e4b3b990482abf10b24573`  
		Last Modified: Tue, 24 Nov 2026 21:10:56 GMT  
		Size: 1.7 KB (1656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:512d57bd89d69df1aca3d1ba2729240c46b91ac0a97cc3951b7fee93dab1798e`  
		Last Modified: Tue, 24 Nov 2026 21:10:57 GMT  
		Size: 881.0 KB (880977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5be64b2da3aa3dc88b49573225e53073441262f38dabd9f61381302550bd61ac`  
		Last Modified: Tue, 24 Nov 2026 21:10:58 GMT  
		Size: 27.1 MB (27143606 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:4-fpm-alpine` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:0767f0ce26cc92b744d59f767436af7ba2625e6bfd134937baceb06ee4d9b71e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 KB (37181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd71b9d793b1265c96737fe0a6f46924a1b591e142d351f23f67827542df3145`

```dockerfile
```

-	Layers:
	-	`sha256:fe2e48072c5e4bdb3220151e8971d9db1738da97e8425217121730e56ded4248`  
		Last Modified: Tue, 24 Nov 2026 21:10:56 GMT  
		Size: 37.2 KB (37181 bytes)  
		MIME: application/vnd.in-toto+json

### `postfixadmin:4-fpm-alpine` - linux; arm variant v6

```console
$ docker pull postfixadmin@sha256:b813002fe6166028853dca5ed37372ff0ccb768f1848d39865a0e5badddf8b5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **68.9 MB (68888618 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e37768645c935ece5f60d902a120a7efefeb79397ef073b2f3ea4e582e52e0af`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 14:49:41 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 19 Nov 2026 14:49:41 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 19 Nov 2026 14:49:41 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 19 Nov 2026 14:49:41 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:49:41 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:49:41 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:49:41 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:49:41 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:49:41 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 19 Nov 2026 14:49:41 GMT
ENV PHP_VERSION=8.4.28
# Thu, 19 Nov 2026 14:49:41 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Thu, 19 Nov 2026 14:49:41 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Thu, 19 Nov 2026 14:49:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 14:49:45 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:52:47 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:52:47 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:52:48 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:52:49 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:52:49 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:52:49 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:52:49 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 14:52:49 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 14:52:49 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 14:52:49 GMT
CMD ["php-fpm"]
# Tue, 24 Nov 2026 21:12:09 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 24 Nov 2026 21:12:09 GMT
RUN apk add --no-cache 		bash 		su-exec # buildkit
# Tue, 24 Nov 2026 21:12:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		postgresql-dev 		sqlite-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .postfixadmin-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Tue, 24 Nov 2026 21:12:46 GMT
ARG POSTFIXADMIN_VERSION=4.0.7
# Tue, 24 Nov 2026 21:12:46 GMT
ARG POSTFIXADMIN_SHA512=07d08f631a922b313cc72db130343213a769602787751f92c01f67f69b3a72cffce958884b94a13d9f2eaf1899dcef43bfce4f11c37721897d42ab1fc9ddda2b
# Tue, 24 Nov 2026 21:12:46 GMT
ENV POSTFIXADMIN_VERSION=4.0.7
# Tue, 24 Nov 2026 21:12:46 GMT
ENV POSTFIXADMIN_SHA512=07d08f631a922b313cc72db130343213a769602787751f92c01f67f69b3a72cffce958884b94a13d9f2eaf1899dcef43bfce4f11c37721897d42ab1fc9ddda2b
# Tue, 24 Nov 2026 21:12:46 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.7 POSTFIXADMIN_SHA512=07d08f631a922b313cc72db130343213a769602787751f92c01f67f69b3a72cffce958884b94a13d9f2eaf1899dcef43bfce4f11c37721897d42ab1fc9ddda2b
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Tue, 24 Nov 2026 21:12:46 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 21:12:47 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 21:12:47 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 24 Nov 2026 21:12:54 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.7 POSTFIXADMIN_SHA512=07d08f631a922b313cc72db130343213a769602787751f92c01f67f69b3a72cffce958884b94a13d9f2eaf1899dcef43bfce4f11c37721897d42ab1fc9ddda2b
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 24 Nov 2026 21:12:54 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 21:12:54 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13335f3c617ee7500f5ee26c9f499347f3621acfd1bffcf1329991693fa4fc67`  
		Last Modified: Thu, 19 Nov 2026 14:52:54 GMT  
		Size: 5.6 MB (5566929 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ace733846d422103e2874cff3c9b2d7616dae72a34f19148d66b8ed3643593a1`  
		Last Modified: Thu, 19 Nov 2026 14:52:54 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39c247c0f71a42e01c8466509ed111398006973f9c904840e3773d672275debd`  
		Last Modified: Thu, 19 Nov 2026 14:52:54 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5b873a2c2f2a39533acf3026065dc27599a5107f48f42bb8aaf3d1d7e73d641`  
		Last Modified: Thu, 19 Nov 2026 14:52:55 GMT  
		Size: 13.9 MB (13934123 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5f19fbb383aa964613839a23483be1ac1f1eda9c8fbd6d510b79e213dda8cfa`  
		Last Modified: Thu, 19 Nov 2026 14:52:55 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6373807b77b42e897f5271ad36bfbc6fed7005da0758e2671945d4b0d1ac5277`  
		Last Modified: Thu, 19 Nov 2026 14:52:55 GMT  
		Size: 13.9 MB (13919453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04bad5104b32cd6f6eaf28c3241b20c19b426581d353ec065a96ad699c3d6e91`  
		Last Modified: Thu, 19 Nov 2026 14:52:56 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55a1b943dd7758edfdc451daf80c699bdfbbe37161ddc3221a8e180ec7265fc9`  
		Last Modified: Thu, 19 Nov 2026 14:52:56 GMT  
		Size: 22.2 KB (22176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c26fdd3fd0a0e0ee49330a15bc693e7e800b893c414f4285b5d499bb92b4cc3e`  
		Last Modified: Thu, 19 Nov 2026 14:52:56 GMT  
		Size: 22.2 KB (22187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08e47ce417c4a54157271dd8352d3e2138f09cb410cda90f30e2168de6747e91`  
		Last Modified: Thu, 19 Nov 2026 14:52:57 GMT  
		Size: 9.3 KB (9267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53cd9e27fa123d8d9f96d68f0b262108066d8ce8289a59fbf0dbe08cafe61f2e`  
		Last Modified: Tue, 24 Nov 2026 21:13:00 GMT  
		Size: 524.2 KB (524194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f87e01e4095d318b65a462c83c2833cdf65aff6b86924ce91a73ba7e3a72475b`  
		Last Modified: Tue, 24 Nov 2026 21:13:01 GMT  
		Size: 644.0 KB (644026 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f45325f0c402ca23fc7099173c92c120d6977a0524b5799c6e3e739121bad7f3`  
		Last Modified: Tue, 24 Nov 2026 21:13:01 GMT  
		Size: 2.7 MB (2657466 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42979213206afe6337134e3807a585db84ac4022b6ef346b19bf7e296ce1f2a5`  
		Last Modified: Tue, 24 Nov 2026 21:13:01 GMT  
		Size: 1.7 KB (1654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6430815020e42a69e4e422038e64bdb129e02c14a454faba59fa6a80ebad76ef`  
		Last Modified: Tue, 24 Nov 2026 21:13:02 GMT  
		Size: 881.0 KB (880974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a18d13b2fda05a3b12f89dc7cc2446d4c23a40ac2d7c33ec762ceada9b2c5683`  
		Last Modified: Tue, 24 Nov 2026 21:13:02 GMT  
		Size: 27.1 MB (27143656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:4-fpm-alpine` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:f86e03c0c2199697041446c92a9da6e6f194f827a870d1920f7d7cb571cc3114
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.3 KB (37322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31f4935936cda6c19cc8d3f806b0ae6477b5737677a2c227736d75394071dd9b`

```dockerfile
```

-	Layers:
	-	`sha256:962113ef2d8a394564e118b817b2c44b687ab9c8c37eb0d638fe7c988c0a6c7f`  
		Last Modified: Tue, 24 Nov 2026 21:13:00 GMT  
		Size: 37.3 KB (37322 bytes)  
		MIME: application/vnd.in-toto+json

### `postfixadmin:4-fpm-alpine` - linux; arm variant v7

```console
$ docker pull postfixadmin@sha256:1d3e711245d26945af2fb56f8047f5321fe28723103aebb30dfd9cc1e8bccf7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.4 MB (67374461 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:464c4902e7998386ef2cf8f28763b9d619e44b7160326e22e9f576be63197b5e`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 14:36:28 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 19 Nov 2026 14:36:28 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 19 Nov 2026 14:36:28 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 19 Nov 2026 14:36:28 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:36:29 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:36:29 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:36:29 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:36:29 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:36:29 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 19 Nov 2026 14:36:29 GMT
ENV PHP_VERSION=8.4.28
# Thu, 19 Nov 2026 14:36:29 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Thu, 19 Nov 2026 14:36:29 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Thu, 19 Nov 2026 14:36:32 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 14:36:32 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:39:32 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:39:32 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:39:32 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:39:33 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:39:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:39:33 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:39:33 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 14:39:33 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 14:39:33 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 14:39:33 GMT
CMD ["php-fpm"]
# Tue, 24 Nov 2026 21:15:24 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 24 Nov 2026 21:15:24 GMT
RUN apk add --no-cache 		bash 		su-exec # buildkit
# Tue, 24 Nov 2026 21:15:49 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		postgresql-dev 		sqlite-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .postfixadmin-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Tue, 24 Nov 2026 21:15:49 GMT
ARG POSTFIXADMIN_VERSION=4.0.7
# Tue, 24 Nov 2026 21:15:49 GMT
ARG POSTFIXADMIN_SHA512=07d08f631a922b313cc72db130343213a769602787751f92c01f67f69b3a72cffce958884b94a13d9f2eaf1899dcef43bfce4f11c37721897d42ab1fc9ddda2b
# Tue, 24 Nov 2026 21:15:49 GMT
ENV POSTFIXADMIN_VERSION=4.0.7
# Tue, 24 Nov 2026 21:15:49 GMT
ENV POSTFIXADMIN_SHA512=07d08f631a922b313cc72db130343213a769602787751f92c01f67f69b3a72cffce958884b94a13d9f2eaf1899dcef43bfce4f11c37721897d42ab1fc9ddda2b
# Tue, 24 Nov 2026 21:15:50 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.7 POSTFIXADMIN_SHA512=07d08f631a922b313cc72db130343213a769602787751f92c01f67f69b3a72cffce958884b94a13d9f2eaf1899dcef43bfce4f11c37721897d42ab1fc9ddda2b
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Tue, 24 Nov 2026 21:15:50 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 21:15:50 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 21:15:50 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 24 Nov 2026 21:15:53 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.7 POSTFIXADMIN_SHA512=07d08f631a922b313cc72db130343213a769602787751f92c01f67f69b3a72cffce958884b94a13d9f2eaf1899dcef43bfce4f11c37721897d42ab1fc9ddda2b
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 24 Nov 2026 21:15:53 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 21:15:53 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:262751b61cc3a59f0af0ad90d2187b0e7e1912e412dcd9179f400ab890b3a514`  
		Last Modified: Thu, 19 Nov 2026 14:39:40 GMT  
		Size: 5.2 MB (5211748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1f52525c86724969d18711b457f854a880c2893558d374971659892d1e354f2`  
		Last Modified: Thu, 19 Nov 2026 14:39:40 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5216a241b30bdadce6aab85cb351c30ff76d60b2f6224f2fafdfa0fc644113ca`  
		Last Modified: Thu, 19 Nov 2026 14:39:39 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ce5c11110c9100c064b9d7e21bd0f6ee7f1a19ba657671cd85ef0419d172e22`  
		Last Modified: Thu, 19 Nov 2026 14:39:40 GMT  
		Size: 13.9 MB (13934117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2c98bf99602f3b0801ab91d9712b325aace02e35a97fd38123cafb912bcb6686`  
		Last Modified: Thu, 19 Nov 2026 14:39:40 GMT  
		Size: 484.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d38dfb012f13a3493f1bc78e46a8a945eb7c25d9c3ffc068ca55f5e03293fcd1`  
		Last Modified: Thu, 19 Nov 2026 14:39:41 GMT  
		Size: 13.1 MB (13137499 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d98b3433eac770fc8d868724950d7aeda3c9a0a335a42f6ed9826ad40326a42b`  
		Last Modified: Thu, 19 Nov 2026 14:39:41 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a129d8f10e7fba4cde9ce04e42c128aa71666b98e7ec46d63bd750eca7d9ba1`  
		Last Modified: Thu, 19 Nov 2026 14:39:41 GMT  
		Size: 22.2 KB (22170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:759b27678e6e5d17871da0ddb2d489aa97de1e989f275669cc997430cd184bdd`  
		Last Modified: Thu, 19 Nov 2026 14:39:41 GMT  
		Size: 22.2 KB (22188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7dfdf05d49a0834dfac0aa634cb54026211cc7cd72bd3c6d8e45390994916a7`  
		Last Modified: Thu, 19 Nov 2026 14:39:42 GMT  
		Size: 9.3 KB (9265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77855588595cbb82dbbfe21e2b74173398a49416ac9ccd211657335a9f333405`  
		Last Modified: Tue, 24 Nov 2026 21:16:00 GMT  
		Size: 481.5 KB (481509 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee775f34b40c177ab845b8788e129eee7212a02eacc2dc06b48dc5b1774a5073`  
		Last Modified: Tue, 24 Nov 2026 21:16:00 GMT  
		Size: 600.4 KB (600434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:528be253cdb2c797c06a9d82ff96b6ef0f3cf70ef334ca6c6641dd4681eeefc8`  
		Last Modified: Tue, 24 Nov 2026 21:16:00 GMT  
		Size: 2.7 MB (2657472 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22bd44dadeadf348967d9fc9802647345e1e1d7cd87c46be9b594f704aeefc61`  
		Last Modified: Tue, 24 Nov 2026 21:16:00 GMT  
		Size: 1.7 KB (1655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2899fecb41872e3b8512e9810356df802e8e8603891da97197b1f8fa1c926a3`  
		Last Modified: Tue, 24 Nov 2026 21:16:01 GMT  
		Size: 881.0 KB (880970 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ae9c0cefd4cd0e482925c0ccdeeb44abe500e7a5ad37fe645668bb490791b25`  
		Last Modified: Tue, 24 Nov 2026 21:16:02 GMT  
		Size: 27.1 MB (27143581 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:4-fpm-alpine` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:c961a4af74be995fe027edefc8e4809874ac35da8b991e511e08989513a0b9d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.3 KB (37322 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f611c296ab3b031a55498a1f904e05922c9f9009375b23d7dd72671a97b0de79`

```dockerfile
```

-	Layers:
	-	`sha256:d8fbada564c7ab91376d8cd207f416adaa7766670d7e6f5b5f91b08f131507a0`  
		Last Modified: Tue, 24 Nov 2026 21:15:59 GMT  
		Size: 37.3 KB (37322 bytes)  
		MIME: application/vnd.in-toto+json

### `postfixadmin:4-fpm-alpine` - linux; arm64 variant v8

```console
$ docker pull postfixadmin@sha256:b2c6ae3bb954c7aec0319481af913f83f37ece4c3f7454391dfbee180e87ee08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.4 MB (71419678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f9add66956983ad9c7c97dcbbbb8bf7d0eccb45ec83de02b9b6a80c46ddccfd0`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 14:35:40 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 19 Nov 2026 14:35:40 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 19 Nov 2026 14:35:40 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 19 Nov 2026 14:35:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:35:40 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:35:40 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:35:40 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:35:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:35:40 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 19 Nov 2026 14:35:40 GMT
ENV PHP_VERSION=8.4.28
# Thu, 19 Nov 2026 14:35:40 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Thu, 19 Nov 2026 14:35:40 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Thu, 19 Nov 2026 14:35:43 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 14:35:43 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:39:07 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:39:07 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:39:07 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:39:08 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:39:08 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:39:08 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:39:08 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 14:39:08 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 14:39:08 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 14:39:08 GMT
CMD ["php-fpm"]
# Tue, 24 Nov 2026 21:11:21 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 24 Nov 2026 21:11:21 GMT
RUN apk add --no-cache 		bash 		su-exec # buildkit
# Tue, 24 Nov 2026 21:11:44 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		postgresql-dev 		sqlite-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .postfixadmin-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Tue, 24 Nov 2026 21:11:44 GMT
ARG POSTFIXADMIN_VERSION=4.0.7
# Tue, 24 Nov 2026 21:11:44 GMT
ARG POSTFIXADMIN_SHA512=07d08f631a922b313cc72db130343213a769602787751f92c01f67f69b3a72cffce958884b94a13d9f2eaf1899dcef43bfce4f11c37721897d42ab1fc9ddda2b
# Tue, 24 Nov 2026 21:11:44 GMT
ENV POSTFIXADMIN_VERSION=4.0.7
# Tue, 24 Nov 2026 21:11:44 GMT
ENV POSTFIXADMIN_SHA512=07d08f631a922b313cc72db130343213a769602787751f92c01f67f69b3a72cffce958884b94a13d9f2eaf1899dcef43bfce4f11c37721897d42ab1fc9ddda2b
# Tue, 24 Nov 2026 21:11:45 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.7 POSTFIXADMIN_SHA512=07d08f631a922b313cc72db130343213a769602787751f92c01f67f69b3a72cffce958884b94a13d9f2eaf1899dcef43bfce4f11c37721897d42ab1fc9ddda2b
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Tue, 24 Nov 2026 21:11:45 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 21:11:45 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 21:11:45 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 24 Nov 2026 21:11:48 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.7 POSTFIXADMIN_SHA512=07d08f631a922b313cc72db130343213a769602787751f92c01f67f69b3a72cffce958884b94a13d9f2eaf1899dcef43bfce4f11c37721897d42ab1fc9ddda2b
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 24 Nov 2026 21:11:48 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 21:11:48 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a413d13b6471b10208b43389e2c2ed50b1327db15f312684a6f05485e06ab1e3`  
		Last Modified: Thu, 19 Nov 2026 14:39:15 GMT  
		Size: 6.3 MB (6288551 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a043643b5a084258b68d23c9c4f83e3faaeff01e9d5950ad24ee97693d061e08`  
		Last Modified: Thu, 19 Nov 2026 14:39:15 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a513c86a8cb4fdedeca6cc8ee4c6399c851061beb10e9c2095ab12877add93b`  
		Last Modified: Thu, 19 Nov 2026 14:39:15 GMT  
		Size: 216.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:182d29f9a1cf26241289995349eeb453b8787261d9204709a94f2a8b2d351a68`  
		Last Modified: Thu, 19 Nov 2026 14:39:15 GMT  
		Size: 13.9 MB (13934093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:29a19cd68f5d0c8303ecf396ac3b922200a2ad8c69403cd837fb378744b81057`  
		Last Modified: Thu, 19 Nov 2026 14:39:16 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e94c8717d24f7daf2dec97912ca83fa12e4b178c82485e4449e25144d5b1008b`  
		Last Modified: Thu, 19 Nov 2026 14:39:16 GMT  
		Size: 15.0 MB (15009762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84b2d72fdc21ce69c1e203a824860d7cd715b046b75fa9c9722aa7d286351b4b`  
		Last Modified: Thu, 19 Nov 2026 14:39:17 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0619526f6d5701676e8802668066488b214c5dd09c6f5c3a73d0d1cf989cdfce`  
		Last Modified: Thu, 19 Nov 2026 14:39:17 GMT  
		Size: 22.2 KB (22197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1f471018d4696a80552a9666236c22319eb7cba12b912613da79e7082ff6d04`  
		Last Modified: Thu, 19 Nov 2026 14:39:17 GMT  
		Size: 22.2 KB (22214 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68607d8b76519bec9487ed4b143d9baa80bd67443b542a112071e8cb9bcb4c21`  
		Last Modified: Thu, 19 Nov 2026 14:39:18 GMT  
		Size: 9.3 KB (9265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d1a69eb747a38e147d9b43cd19975f5e98cd5412bdcb73bdb854c5bef847ca5`  
		Last Modified: Tue, 24 Nov 2026 21:11:55 GMT  
		Size: 585.0 KB (584955 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84aa5013495826b1ab85463e97f3efd87cb542497fce7a240f96e557bfa212eb`  
		Last Modified: Tue, 24 Nov 2026 21:11:55 GMT  
		Size: 670.2 KB (670178 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aca48881f8570fb01d010e67e010213a3545c8964048d96c6f35a6b17852a36b`  
		Last Modified: Tue, 24 Nov 2026 21:11:55 GMT  
		Size: 2.7 MB (2657473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c5c61a434d34bab99553fce2c7c62095deaac1c2ea8e1beba5079eed8a31f3c`  
		Last Modified: Tue, 24 Nov 2026 21:11:54 GMT  
		Size: 1.7 KB (1654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2019c290f73601fe06748e7791ded2853a1ab034c073baf35bdbaf34e4c7d25`  
		Last Modified: Tue, 24 Nov 2026 21:11:56 GMT  
		Size: 881.0 KB (880975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:108229c53816527bc13bd84ab3e38e88f212d31c2798622d96444d11c78dab18`  
		Last Modified: Tue, 24 Nov 2026 21:11:57 GMT  
		Size: 27.1 MB (27143650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:4-fpm-alpine` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:90b05c4365cdfe61a7e06d54eba597bb2199e13b22330445c6c14b94915ad520
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.4 KB (37355 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:964cc9a2e8d09e7ecfc529afd7d50b2dd015f08893d24857d007e6ecaf21be8a`

```dockerfile
```

-	Layers:
	-	`sha256:0d6b5ed28c5d111da9b2039f27605ebfc6e11afe5055ca5d603ac96baf706c18`  
		Last Modified: Tue, 24 Nov 2026 21:11:54 GMT  
		Size: 37.4 KB (37355 bytes)  
		MIME: application/vnd.in-toto+json

### `postfixadmin:4-fpm-alpine` - linux; 386

```console
$ docker pull postfixadmin@sha256:9683961cb1458347c8cbb66a1708d62ce513fc95c288a96d054f02ad88cbbddf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.2 MB (71246743 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a3fa1495490030d032cd38ccd7392b20eb6263a622f053a51d43131296daa499`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 14:32:35 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 19 Nov 2026 14:32:35 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 19 Nov 2026 14:32:35 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 19 Nov 2026 14:32:35 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:32:35 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:32:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:32:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:32:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:32:35 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 19 Nov 2026 14:32:35 GMT
ENV PHP_VERSION=8.4.28
# Thu, 19 Nov 2026 14:32:35 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Thu, 19 Nov 2026 14:32:35 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Thu, 19 Nov 2026 14:32:38 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 14:32:38 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:35:49 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:35:49 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:35:50 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:35:50 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:35:50 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:35:50 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:35:50 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 14:35:50 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 14:35:50 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 14:35:50 GMT
CMD ["php-fpm"]
# Tue, 24 Nov 2026 21:10:41 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 24 Nov 2026 21:10:41 GMT
RUN apk add --no-cache 		bash 		su-exec # buildkit
# Tue, 24 Nov 2026 21:11:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		postgresql-dev 		sqlite-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .postfixadmin-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Tue, 24 Nov 2026 21:11:15 GMT
ARG POSTFIXADMIN_VERSION=4.0.7
# Tue, 24 Nov 2026 21:11:15 GMT
ARG POSTFIXADMIN_SHA512=07d08f631a922b313cc72db130343213a769602787751f92c01f67f69b3a72cffce958884b94a13d9f2eaf1899dcef43bfce4f11c37721897d42ab1fc9ddda2b
# Tue, 24 Nov 2026 21:11:15 GMT
ENV POSTFIXADMIN_VERSION=4.0.7
# Tue, 24 Nov 2026 21:11:15 GMT
ENV POSTFIXADMIN_SHA512=07d08f631a922b313cc72db130343213a769602787751f92c01f67f69b3a72cffce958884b94a13d9f2eaf1899dcef43bfce4f11c37721897d42ab1fc9ddda2b
# Tue, 24 Nov 2026 21:11:16 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.7 POSTFIXADMIN_SHA512=07d08f631a922b313cc72db130343213a769602787751f92c01f67f69b3a72cffce958884b94a13d9f2eaf1899dcef43bfce4f11c37721897d42ab1fc9ddda2b
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Tue, 24 Nov 2026 21:11:16 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 21:11:16 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 21:11:16 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 24 Nov 2026 21:11:19 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.7 POSTFIXADMIN_SHA512=07d08f631a922b313cc72db130343213a769602787751f92c01f67f69b3a72cffce958884b94a13d9f2eaf1899dcef43bfce4f11c37721897d42ab1fc9ddda2b
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 24 Nov 2026 21:11:19 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 21:11:19 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c49c03b909afaf21ec06b0b7f70141b4d3dcc01d7207879fcc91d3035485fa96`  
		Last Modified: Thu, 19 Nov 2026 14:35:57 GMT  
		Size: 5.8 MB (5820627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a3e4606a1711293d1e8b6402fe85a51e7790cc11d1ff977c603b64d1e54cab1`  
		Last Modified: Thu, 19 Nov 2026 14:35:57 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aba4ba96155ad198fcdeebdaea6821e1c0f8fdb38414de5f194b96b2b4241f73`  
		Last Modified: Thu, 19 Nov 2026 14:35:57 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d61abb3cab28ca816e5e275e3f2ef6e041c8c8534957191b07026dcbcbc4d62`  
		Last Modified: Thu, 19 Nov 2026 14:35:57 GMT  
		Size: 13.9 MB (13934086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e252089c348a85d503b656d073ed8e0ad2542577426ff90b804aa48055de9db4`  
		Last Modified: Thu, 19 Nov 2026 14:35:58 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca8f5e272b0683fc15b360cfb3cf74506a2ed735bf53fc5575b95bebcf9c0d80`  
		Last Modified: Thu, 19 Nov 2026 14:35:59 GMT  
		Size: 15.8 MB (15840251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60233d8218bbb97e2867ede4328b9ac43190912fb819744572e7e965f1b4127c`  
		Last Modified: Thu, 19 Nov 2026 14:35:58 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcbc409576a740d20311c3b4a59d889a9825ff5e6905b2df6f91d8b601040af6`  
		Last Modified: Thu, 19 Nov 2026 14:35:59 GMT  
		Size: 22.4 KB (22387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f90cdccc8f850e5e45e8d6f3b2265e5322b77e7ea4666451a1f0a620d455db0`  
		Last Modified: Thu, 19 Nov 2026 14:35:59 GMT  
		Size: 22.4 KB (22400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3f280cd15d44c113b13fee937a5f07954827e1167abf0a82123a9a8838d9c28`  
		Last Modified: Thu, 19 Nov 2026 14:36:00 GMT  
		Size: 9.3 KB (9266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f43228307dd6b7eee718dc302aab93ecb220500ab223115abe8ca4129396ecb6`  
		Last Modified: Tue, 24 Nov 2026 21:11:25 GMT  
		Size: 532.1 KB (532122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f084e88db699f5f22e9a3a5cf428b947ca580b7344cc2df151dd2d8c66c0e590`  
		Last Modified: Tue, 24 Nov 2026 21:11:25 GMT  
		Size: 697.3 KB (697312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d47fe4a027bf3f7274dde769723054213362ddefab2336a9b2445c99d3a9e0a`  
		Last Modified: Tue, 24 Nov 2026 21:11:25 GMT  
		Size: 2.7 MB (2657473 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d863f37cd16dad35190e3fbb72ae2db2c03b761e70c339dc84ec4b9a80564a8`  
		Last Modified: Tue, 24 Nov 2026 21:11:25 GMT  
		Size: 1.7 KB (1656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:330547ac33ae70ecf2f5d1f36ddfd84ea12bd97e8d78a058c15218c59f10bf7b`  
		Last Modified: Tue, 24 Nov 2026 21:11:26 GMT  
		Size: 881.0 KB (880974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b57a7271903df1c3ef94c5baae7a358f634796c899cec2ce051913097545444`  
		Last Modified: Tue, 24 Nov 2026 21:11:26 GMT  
		Size: 27.1 MB (27143711 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:4-fpm-alpine` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:043f1c52688e58f9a10836214c07d8f861190f2b7137edd6e8b4540ecdb3e25e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.1 KB (37136 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:923284e468e9ba8fe0f0e0fb4db9ca0306950641f9c2de3798f9e2c2151cedd9`

```dockerfile
```

-	Layers:
	-	`sha256:540aa3c4863ce2a46cd55d8a6d48ed71d861d3e8871d268a44047719077c5382`  
		Last Modified: Tue, 24 Nov 2026 21:11:25 GMT  
		Size: 37.1 KB (37136 bytes)  
		MIME: application/vnd.in-toto+json

### `postfixadmin:4-fpm-alpine` - linux; ppc64le

```console
$ docker pull postfixadmin@sha256:f289a863771809f07d9ebbe153a2b3e8308db230e4c1dc18dffa98b8c6c8a5b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.4 MB (72401145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc4972056c169397e2fd93bda6d49216ff2bbbcfc44d376517a1a6d45a5ea38e`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 20:43:48 GMT
ADD alpine-minirootfs-3.24.4-ppc64le.tar.gz / # buildkit
# Thu, 05 Nov 2026 20:43:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 21:37:41 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 21:37:41 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 21:37:43 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 21:37:43 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 21:37:46 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 21:37:46 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 21:37:46 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 21:37:46 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 21:37:46 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 05 Nov 2026 21:37:46 GMT
ENV PHP_VERSION=8.4.28
# Thu, 05 Nov 2026 21:37:46 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Thu, 05 Nov 2026 21:37:46 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Thu, 19 Nov 2026 15:30:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 15:30:03 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:37:04 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 15:37:04 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 15:37:06 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 15:37:07 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 15:37:07 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 15:37:08 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:37:08 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 15:37:08 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 15:37:08 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 15:37:08 GMT
CMD ["php-fpm"]
# Wed, 25 Nov 2026 04:34:25 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Wed, 25 Nov 2026 04:34:25 GMT
RUN apk add --no-cache 		bash 		su-exec # buildkit
# Wed, 25 Nov 2026 04:35:16 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		postgresql-dev 		sqlite-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .postfixadmin-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Wed, 25 Nov 2026 04:35:16 GMT
ARG POSTFIXADMIN_VERSION=4.0.7
# Wed, 25 Nov 2026 04:35:16 GMT
ARG POSTFIXADMIN_SHA512=07d08f631a922b313cc72db130343213a769602787751f92c01f67f69b3a72cffce958884b94a13d9f2eaf1899dcef43bfce4f11c37721897d42ab1fc9ddda2b
# Wed, 25 Nov 2026 04:35:16 GMT
ENV POSTFIXADMIN_VERSION=4.0.7
# Wed, 25 Nov 2026 04:35:16 GMT
ENV POSTFIXADMIN_SHA512=07d08f631a922b313cc72db130343213a769602787751f92c01f67f69b3a72cffce958884b94a13d9f2eaf1899dcef43bfce4f11c37721897d42ab1fc9ddda2b
# Wed, 25 Nov 2026 04:35:18 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.7 POSTFIXADMIN_SHA512=07d08f631a922b313cc72db130343213a769602787751f92c01f67f69b3a72cffce958884b94a13d9f2eaf1899dcef43bfce4f11c37721897d42ab1fc9ddda2b
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Wed, 25 Nov 2026 04:35:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 25 Nov 2026 04:35:19 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Wed, 25 Nov 2026 04:35:19 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Wed, 25 Nov 2026 04:35:25 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.7 POSTFIXADMIN_SHA512=07d08f631a922b313cc72db130343213a769602787751f92c01f67f69b3a72cffce958884b94a13d9f2eaf1899dcef43bfce4f11c37721897d42ab1fc9ddda2b
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME" # buildkit
# Wed, 25 Nov 2026 04:35:25 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Wed, 25 Nov 2026 04:35:25 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:63173c91ecfa1a1b450c7163702444fba0c00b8e569a0f194cae56e03a995608`  
		Last Modified: Thu, 05 Nov 2026 20:43:59 GMT  
		Size: 3.8 MB (3821920 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46d45d42befed46bba518e63b124c822b4f3e5e56556cd342469e05eef60e1e4`  
		Last Modified: Thu, 05 Nov 2026 21:43:48 GMT  
		Size: 3.7 MB (3672704 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b27df544a7e4deac06d4c069baa6d3874e5a90dfd80a8e6b929669a250180798`  
		Last Modified: Thu, 05 Nov 2026 21:43:48 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a7207e849983464015f2e0550d571425c965d393be98f77abbba0af805774bf`  
		Last Modified: Thu, 05 Nov 2026 21:43:48 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f50c5920c1abcbda56fc0de094df32352feaf950d0f9c00776cea0e57e0a201`  
		Last Modified: Thu, 19 Nov 2026 15:35:13 GMT  
		Size: 13.9 MB (13934093 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75d217489c71d274a735610ac4d19240de12eeb8075b36aa422a252d5ba1d88c`  
		Last Modified: Thu, 19 Nov 2026 15:35:13 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebd82323d8768c14db6c03cdbc07756e9c8fd71eaea0a3e0c97384594007cde2`  
		Last Modified: Thu, 19 Nov 2026 15:37:24 GMT  
		Size: 18.9 MB (18871601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a79abea655f4952506782da2a91097abb7f31a3c965195fd2d90ae14b4e2a958`  
		Last Modified: Thu, 19 Nov 2026 15:37:23 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3442f900840020371be5b34ade447c93b98ea8f9dab855d6eadc22f011310b0`  
		Last Modified: Thu, 19 Nov 2026 15:37:23 GMT  
		Size: 22.3 KB (22253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:351f48571d3ba944ae3d1b3a0a66327baa0eedfbca3ff14fc90297826e7b9880`  
		Last Modified: Thu, 19 Nov 2026 15:37:23 GMT  
		Size: 22.3 KB (22269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e04ffc4b611af1e97dfe3d4f39dba9030581f50a1fdf0f7c8aa6ae71e8888abd`  
		Last Modified: Thu, 19 Nov 2026 15:37:24 GMT  
		Size: 9.3 KB (9264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb453e7298b606ed1e86113dac57afe151ae0f5093c28873c988b8a90422f119`  
		Last Modified: Wed, 25 Nov 2026 04:35:41 GMT  
		Size: 600.6 KB (600619 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cd800776ca6ed024767d981d43c10ae99d53225b9705b3495398e53a5ed8230`  
		Last Modified: Wed, 25 Nov 2026 04:35:41 GMT  
		Size: 758.6 KB (758627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4440ddbffe4bb20c2aad17316f49b37ac1e2994468cce452aacf15fb651fa6ec`  
		Last Modified: Wed, 25 Nov 2026 04:35:41 GMT  
		Size: 2.7 MB (2657468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb41dbc4dad924ec36781af73c6cc8bd9093824632432ce4936a390fb5b58520`  
		Last Modified: Wed, 25 Nov 2026 04:35:41 GMT  
		Size: 1.7 KB (1652 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f0738dd93331c7bec3f43023214636b30703b0d924d40bb4febb55d942aead2`  
		Last Modified: Wed, 25 Nov 2026 04:35:42 GMT  
		Size: 881.0 KB (880974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d998e4bf73d2665ef27ff02bece339e105bb2deb4881220c3fabe6cf420775c`  
		Last Modified: Wed, 25 Nov 2026 04:35:43 GMT  
		Size: 27.1 MB (27143570 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:4-fpm-alpine` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:9d119e99b9e8b7df379c34e86830c908ff61f51cd6defe2e5f18fc182e686671
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 KB (37241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16ba98960a73de651f20cbfb16df8760de437df344734d950568d42f9a0f2e58`

```dockerfile
```

-	Layers:
	-	`sha256:060bf33afea8de588c6393efb8bb52eff301fe02495e3b5d65cf8bb7e825b3c6`  
		Last Modified: Wed, 25 Nov 2026 04:35:40 GMT  
		Size: 37.2 KB (37241 bytes)  
		MIME: application/vnd.in-toto+json

### `postfixadmin:4-fpm-alpine` - linux; riscv64

```console
$ docker pull postfixadmin@sha256:c059e332fdada969f7955bd06735efdf2325992bb617d2fe0cd30354b4eb54e1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.5 MB (70528108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1247c72fd2c26390182aff581743cdc404a464ebc96094f5ae164308aafeeed0`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Sun, 08 Nov 2026 12:33:46 GMT
ADD alpine-minirootfs-3.24.4-riscv64.tar.gz / # buildkit
# Sun, 08 Nov 2026 12:33:46 GMT
CMD ["/bin/sh"]
# Tue, 10 Nov 2026 01:56:56 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 10 Nov 2026 01:56:56 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Tue, 10 Nov 2026 01:56:57 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 10 Nov 2026 01:56:57 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 10 Nov 2026 01:56:57 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 10 Nov 2026 01:56:57 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 10 Nov 2026 01:56:57 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 10 Nov 2026 01:56:57 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 10 Nov 2026 01:56:57 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Tue, 10 Nov 2026 01:56:57 GMT
ENV PHP_VERSION=8.4.28
# Tue, 10 Nov 2026 01:56:57 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Tue, 10 Nov 2026 01:56:57 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Fri, 20 Nov 2026 13:52:33 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Fri, 20 Nov 2026 13:52:33 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 15:58:30 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 20 Nov 2026 15:58:30 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 20 Nov 2026 15:58:35 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 20 Nov 2026 15:58:40 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 20 Nov 2026 15:58:40 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 20 Nov 2026 15:58:40 GMT
WORKDIR /var/www/html
# Fri, 20 Nov 2026 15:58:40 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Fri, 20 Nov 2026 15:58:40 GMT
STOPSIGNAL SIGQUIT
# Fri, 20 Nov 2026 15:58:40 GMT
EXPOSE map[9000/tcp:{}]
# Fri, 20 Nov 2026 15:58:40 GMT
CMD ["php-fpm"]
# Tue, 24 Nov 2026 14:41:08 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 24 Nov 2026 14:41:08 GMT
RUN apk add --no-cache 		bash 		su-exec # buildkit
# Tue, 24 Nov 2026 14:45:40 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		postgresql-dev 		sqlite-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .postfixadmin-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Tue, 24 Nov 2026 14:45:40 GMT
ARG POSTFIXADMIN_VERSION=4.0.7
# Tue, 24 Nov 2026 14:45:40 GMT
ARG POSTFIXADMIN_SHA512=07d08f631a922b313cc72db130343213a769602787751f92c01f67f69b3a72cffce958884b94a13d9f2eaf1899dcef43bfce4f11c37721897d42ab1fc9ddda2b
# Tue, 24 Nov 2026 14:45:40 GMT
ENV POSTFIXADMIN_VERSION=4.0.7
# Tue, 24 Nov 2026 14:45:40 GMT
ENV POSTFIXADMIN_SHA512=07d08f631a922b313cc72db130343213a769602787751f92c01f67f69b3a72cffce958884b94a13d9f2eaf1899dcef43bfce4f11c37721897d42ab1fc9ddda2b
# Tue, 24 Nov 2026 14:45:42 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.7 POSTFIXADMIN_SHA512=07d08f631a922b313cc72db130343213a769602787751f92c01f67f69b3a72cffce958884b94a13d9f2eaf1899dcef43bfce4f11c37721897d42ab1fc9ddda2b
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Tue, 24 Nov 2026 14:45:42 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 14:45:42 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 14:45:42 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 24 Nov 2026 14:46:08 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.7 POSTFIXADMIN_SHA512=07d08f631a922b313cc72db130343213a769602787751f92c01f67f69b3a72cffce958884b94a13d9f2eaf1899dcef43bfce4f11c37721897d42ab1fc9ddda2b
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 24 Nov 2026 14:46:08 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 14:46:08 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:248497acdc975d47d1d576f068cfa311688b2fc870a859b6631b3538b043c70e`  
		Last Modified: Sun, 08 Nov 2026 12:34:20 GMT  
		Size: 3.6 MB (3580610 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c2e71e8bf35e17fd36dea67046c488a781fc479517ed4b9473d136874457c5b`  
		Last Modified: Tue, 10 Nov 2026 03:00:43 GMT  
		Size: 3.6 MB (3640089 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd4dc6fcc090aaa20c07d67cb8005b0f862530dfabfcb2632c2e750bfdf69c03`  
		Last Modified: Tue, 10 Nov 2026 03:00:41 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37f42907712b4ade383e7911e162dab326a706546aa0daf88fe92b7bb4d01347`  
		Last Modified: Tue, 10 Nov 2026 03:00:41 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa2153d8cb6edd2262925f5428626b34a80912f0f2c97690b2db5e21d9a36d30`  
		Last Modified: Fri, 20 Nov 2026 14:55:43 GMT  
		Size: 13.9 MB (13934113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fd1acf229f36f76769d13e8d173a2b208e7e35d9c8e2f75bbc9b9dac3e16c55`  
		Last Modified: Fri, 20 Nov 2026 14:55:39 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e683c3cfd19899ec78dd5f2bd37dc0cab21fb14d7cf2930a2e3d92a4cb7c776`  
		Last Modified: Fri, 20 Nov 2026 15:59:39 GMT  
		Size: 17.3 MB (17348376 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a65f6c86691512eeb7bc3e39edb5b1b006c18626948a70deb6dc661c69b3326b`  
		Last Modified: Fri, 20 Nov 2026 15:59:36 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6065cc26e3fd1e8fdc54f25c9b0c940ca70ca7fb04da315f73374835977dcbb`  
		Last Modified: Fri, 20 Nov 2026 15:59:36 GMT  
		Size: 22.2 KB (22232 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbb7186bba1da5a986b813285a83043e1f00a2642bd220415feb7879c155a728`  
		Last Modified: Fri, 20 Nov 2026 15:59:36 GMT  
		Size: 22.2 KB (22247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a118dd85680ec9d553055cb7602b2ee73bedd1902ce5b7cb5a4929095ec9f1a`  
		Last Modified: Fri, 20 Nov 2026 15:59:37 GMT  
		Size: 9.3 KB (9264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed1baff454f47824e1cf5a239a849f8bca99d49ca7310f39bf4a883bbcdac8c2`  
		Last Modified: Tue, 24 Nov 2026 14:46:59 GMT  
		Size: 538.1 KB (538077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03ebe223f76cb129ecb54fd240ec8ab3783683fcff0a41d463c76b8a23c9b961`  
		Last Modified: Tue, 24 Nov 2026 14:46:59 GMT  
		Size: 746.5 KB (746464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bec8651f0bc9a09c1e4091f0f528ca7693807ed3ae131fd3313d7c4485a886cd`  
		Last Modified: Tue, 24 Nov 2026 14:46:59 GMT  
		Size: 2.7 MB (2657474 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc58633870b9b57dae566a26da0300970f708ed6163e4e9a8ad1a166c7374c27`  
		Last Modified: Tue, 24 Nov 2026 14:46:59 GMT  
		Size: 1.7 KB (1654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cb825c4a904833b090f449df7d220b5d6b1af4928a5979abd0a92ca4c0fa730`  
		Last Modified: Tue, 24 Nov 2026 14:47:00 GMT  
		Size: 879.8 KB (879789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8daf9bccb608a9b0eab6f94a0fcbe24c241942c2696ece20001dbb679c1711c0`  
		Last Modified: Tue, 24 Nov 2026 14:47:04 GMT  
		Size: 27.1 MB (27143585 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:4-fpm-alpine` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:134efd4510d1a2ef611283a5c409729f5e9f50a82a0e9b3605be92e8fa469e38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 KB (37241 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:88907849b5a2618bbab95471ec46bedc73c35654cc2196d15877617ffb81d685`

```dockerfile
```

-	Layers:
	-	`sha256:5fc1d124bc36a47714b501a4aade87f17280c3f986e59231e5cdc218a297c59d`  
		Last Modified: Tue, 24 Nov 2026 14:46:58 GMT  
		Size: 37.2 KB (37241 bytes)  
		MIME: application/vnd.in-toto+json

### `postfixadmin:4-fpm-alpine` - linux; s390x

```console
$ docker pull postfixadmin@sha256:12f2895136b87510845374611417e59756093f227c781f682afbf5d62ae3bf67
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.4 MB (71352250 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d0a782dce875f09e720a1c63423df297630e87b33415b29f25cead5fbc07e13`
-	Entrypoint: `["\/usr\/local\/bin\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:17:40 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:17:40 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:17:40 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:17:40 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:17:40 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:17:40 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:17:40 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:17:40 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:17:40 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 05 Nov 2026 18:17:40 GMT
ENV PHP_VERSION=8.4.28
# Thu, 05 Nov 2026 18:17:40 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.28.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.28.tar.xz.asc
# Thu, 05 Nov 2026 18:17:40 GMT
ENV PHP_SHA256=0c8ec360e5dd8154f270b2fd50cd44ecc824e6ee39c85f911312b80d4daecd72
# Thu, 19 Nov 2026 14:40:06 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 14:40:06 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:44:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:44:00 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:44:01 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:44:02 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:44:02 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:44:03 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:44:03 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 14:44:03 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 14:44:03 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 14:44:03 GMT
CMD ["php-fpm"]
# Tue, 24 Nov 2026 20:17:16 GMT
LABEL maintainer=David Goodwin <david@codepoets.co.uk> (@DavidGoodwin)
# Tue, 24 Nov 2026 20:17:16 GMT
RUN apk add --no-cache 		bash 		su-exec # buildkit
# Tue, 24 Nov 2026 20:17:40 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		postgresql-dev 		sqlite-dev 	; 	docker-php-ext-install -j "$(nproc)" 		pdo_mysql 		pdo_pgsql 		pdo_sqlite 		pgsql 	; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .postfixadmin-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Tue, 24 Nov 2026 20:17:40 GMT
ARG POSTFIXADMIN_VERSION=4.0.7
# Tue, 24 Nov 2026 20:17:40 GMT
ARG POSTFIXADMIN_SHA512=07d08f631a922b313cc72db130343213a769602787751f92c01f67f69b3a72cffce958884b94a13d9f2eaf1899dcef43bfce4f11c37721897d42ab1fc9ddda2b
# Tue, 24 Nov 2026 20:17:40 GMT
ENV POSTFIXADMIN_VERSION=4.0.7
# Tue, 24 Nov 2026 20:17:40 GMT
ENV POSTFIXADMIN_SHA512=07d08f631a922b313cc72db130343213a769602787751f92c01f67f69b3a72cffce958884b94a13d9f2eaf1899dcef43bfce4f11c37721897d42ab1fc9ddda2b
# Tue, 24 Nov 2026 20:17:41 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.7 POSTFIXADMIN_SHA512=07d08f631a922b313cc72db130343213a769602787751f92c01f67f69b3a72cffce958884b94a13d9f2eaf1899dcef43bfce4f11c37721897d42ab1fc9ddda2b
RUN set -eu; 	curl -fsSL -o postfixadmin.tar.gz "https://github.com/postfixadmin/postfixadmin/archive/v${POSTFIXADMIN_VERSION}.tar.gz"; 	echo "$POSTFIXADMIN_SHA512 *postfixadmin.tar.gz" | sha512sum -c -; 	mkdir /usr/src/postfixadmin; 	tar -xf postfixadmin.tar.gz -C /usr/src/postfixadmin --strip-components=1; 	rm postfixadmin.tar.gz; 	mkdir -p /usr/src/postfixadmin/templates_c; 	chown -R www-data:www-data /usr/src/postfixadmin # buildkit
# Tue, 24 Nov 2026 20:17:41 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 20:17:41 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Tue, 24 Nov 2026 20:17:41 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Tue, 24 Nov 2026 20:17:46 GMT
# ARGS: POSTFIXADMIN_VERSION=4.0.7 POSTFIXADMIN_SHA512=07d08f631a922b313cc72db130343213a769602787751f92c01f67f69b3a72cffce958884b94a13d9f2eaf1899dcef43bfce4f11c37721897d42ab1fc9ddda2b
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer install --ignore-platform-req=ext-mysqli --no-dev --no-interaction --working-dir /usr/src/postfixadmin; 	rm -rf "$COMPOSER_HOME" # buildkit
# Tue, 24 Nov 2026 20:17:46 GMT
ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]
# Tue, 24 Nov 2026 20:17:46 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:618f633add7643f5dbf32937a509a5ada6699ff1a4c94641f87cbd1a0182a7bf`  
		Last Modified: Thu, 05 Nov 2026 18:20:55 GMT  
		Size: 3.7 MB (3691032 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7943a5fad4f7eb12144e901d291d5400736edab23f2ccd63ae3aade879b1f11c`  
		Last Modified: Thu, 05 Nov 2026 18:20:53 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b0fff43cfd9dc96d02abd83f96ccd039cef07b4dd33a7f229685ee2c32aa8c9`  
		Last Modified: Thu, 05 Nov 2026 18:20:53 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e3d3bd2c360087c9ba1310775feae3b5d512c1e44d1a21450a94baf204d8889`  
		Last Modified: Thu, 19 Nov 2026 14:44:18 GMT  
		Size: 13.9 MB (13934091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5b7fa1ecff4044ce9d29a320cca2ce1d57111c1a598410eb029916328615a61`  
		Last Modified: Thu, 19 Nov 2026 14:44:17 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75627ebe60854c106e6d38002741042e624c3bbe313cc96b0e47cdfced2f44a`  
		Last Modified: Thu, 19 Nov 2026 14:44:18 GMT  
		Size: 18.0 MB (17990250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:833e72a15e96648efae6cba043616513de8c139826a6ff4b6adac2f293c13878`  
		Last Modified: Thu, 19 Nov 2026 14:44:17 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96dcde42c8f75f80c667db9d62e2a00f4d81188091f15f0774c47e362680b31`  
		Last Modified: Thu, 19 Nov 2026 14:44:18 GMT  
		Size: 22.2 KB (22198 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14d4043f1c602ca1a8643a6bd036054b4db031d0bcb215e15b725d4e1473b1cb`  
		Last Modified: Thu, 19 Nov 2026 14:44:18 GMT  
		Size: 22.2 KB (22217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2664613a17fa4c1b461d3e1b8de436df75b70d65b339158201dbd9203f283b77`  
		Last Modified: Thu, 19 Nov 2026 14:44:19 GMT  
		Size: 9.3 KB (9266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5f5974f807fc1a43e6d1aa72f1fc0af74d65273bccef1a20065c646b79ba3ff3`  
		Last Modified: Tue, 24 Nov 2026 20:17:56 GMT  
		Size: 559.0 KB (559048 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6a7825bab8d961111ef587e248bd7e8d624d8cd16b4b0a90aca907cd9ed1857`  
		Last Modified: Tue, 24 Nov 2026 20:17:56 GMT  
		Size: 715.7 KB (715684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c05973d0a74ea36cf3285d6b02a6cb486e5ead58be171988b2561948aee58cf`  
		Last Modified: Tue, 24 Nov 2026 20:17:56 GMT  
		Size: 2.7 MB (2657465 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f25e03312b8db3408ffbf0f750d198d742e281b1a9ac1802f83b7888aac24535`  
		Last Modified: Tue, 24 Nov 2026 20:17:56 GMT  
		Size: 1.7 KB (1655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77fc6d64a677d1d1f4569a19ab5396ebe3458fb800cf3752df93fd12ff8518ed`  
		Last Modified: Tue, 24 Nov 2026 20:17:57 GMT  
		Size: 881.0 KB (880975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a9ad166153f778f752f431b0f3b88786c36f67183fcd8f25c7026785486446a`  
		Last Modified: Tue, 24 Nov 2026 20:17:57 GMT  
		Size: 27.1 MB (27143579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `postfixadmin:4-fpm-alpine` - unknown; unknown

```console
$ docker pull postfixadmin@sha256:5c807fa2962dd8e9fe796eea7a009c5418ad4233b42e6470104a1a1db732ea46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **37.2 KB (37180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:80164af77ba8595334358c4687c4959a2e17aeaca3dacad57771b19dcf147562`

```dockerfile
```

-	Layers:
	-	`sha256:e22f6b883f50285a7a77befb56a7451ce2f3dc2a38000e4c3b00985ac0a9eb43`  
		Last Modified: Tue, 24 Nov 2026 20:17:56 GMT  
		Size: 37.2 KB (37180 bytes)  
		MIME: application/vnd.in-toto+json
