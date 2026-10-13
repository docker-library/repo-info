## `drupal:php8.5-fpm-alpine3.24`

```console
$ docker pull drupal@sha256:7c0b60b6c3ac10274da509fc2c3ffd5bd7c28b1b640cde00e3b93abaf1affe3c
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

### `drupal:php8.5-fpm-alpine3.24` - linux; amd64

```console
$ docker pull drupal@sha256:59fddc8822670d0649bbfd04b503d39c028c5171686fb44e45b425fba93f2d48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.7 MB (73684803 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0f7223fa450c86394cf960f508f323c8fc3bc9eb6447cfa9b7ef0a39cc10eaf`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 19:08:26 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 24 Sep 2026 19:08:26 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 24 Sep 2026 19:08:27 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 24 Sep 2026 19:08:27 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 24 Sep 2026 19:08:27 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 24 Sep 2026 19:08:27 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:08:27 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:08:27 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 24 Sep 2026 19:08:27 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 24 Sep 2026 19:08:27 GMT
ENV PHP_VERSION=8.5.11
# Thu, 24 Sep 2026 19:08:27 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Thu, 24 Sep 2026 19:08:27 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Thu, 24 Sep 2026 19:08:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 24 Sep 2026 19:08:29 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:11:49 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 24 Sep 2026 19:11:49 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:11:52 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 24 Sep 2026 19:11:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 24 Sep 2026 19:11:52 GMT
WORKDIR /var/www/html
# Thu, 24 Sep 2026 19:11:52 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 24 Sep 2026 19:11:52 GMT
STOPSIGNAL SIGQUIT
# Thu, 24 Sep 2026 19:11:52 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 24 Sep 2026 19:11:52 GMT
CMD ["php-fpm"]
# Mon, 12 Oct 2026 22:50:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Mon, 12 Oct 2026 22:50:01 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Mon, 12 Oct 2026 22:50:01 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 22:50:01 GMT
ENV DRUPAL_VERSION=11.4.9
# Mon, 12 Oct 2026 22:50:01 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 12 Oct 2026 22:50:01 GMT
WORKDIR /opt/drupal
# Mon, 12 Oct 2026 22:50:08 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Mon, 12 Oct 2026 22:50:08 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:934d19571d8a4f7b570ed89cb61f5bcb538475fbc4938299f4599d3a3596193b`  
		Last Modified: Thu, 24 Sep 2026 19:11:59 GMT  
		Size: 3.5 MB (3491147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c278b0a8d2c61c0a002423a220cfdf9ca79aab868a97f7e5b3eb16d94088547`  
		Last Modified: Thu, 24 Sep 2026 19:11:59 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f5c3887d482c8caa210c801211fc5eb67e44983796b4660cb729b000e3f56de`  
		Last Modified: Thu, 24 Sep 2026 19:11:59 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57b8ec589d859e1168ce64a7fbc82824564ca41c25e46de2875e9aa3aa7e5fef`  
		Last Modified: Thu, 24 Sep 2026 19:12:00 GMT  
		Size: 14.5 MB (14492262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1648a51c22c2f4ef597100b621c5c7e25c17142413fd33a0e1aca12b4033eae5`  
		Last Modified: Thu, 24 Sep 2026 19:12:00 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6548a80622581338b724b916df3347c97fe9dac3d1014f33ffcb031bdfd6e461`  
		Last Modified: Thu, 24 Sep 2026 19:12:01 GMT  
		Size: 16.9 MB (16861608 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ff3df8f32479794328057f8a707add445da333f9cc82c9f1750dca2ce16854d0`  
		Last Modified: Thu, 24 Sep 2026 19:12:01 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d17435b90723edae2dde2757045a29da3c2f4b0ba24a47f7d1a03fd473648732`  
		Last Modified: Thu, 24 Sep 2026 19:12:01 GMT  
		Size: 22.4 KB (22425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:760ec49cf7f828a1bca9e0cb21b2ef44a9e854b5aee73dc93b769f09cb9f83c6`  
		Last Modified: Thu, 24 Sep 2026 19:12:01 GMT  
		Size: 9.3 KB (9262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b5f381d14a546f5b63f459fa5239f019e5fd198017ee55a3d20e0123e99e5da`  
		Last Modified: Mon, 12 Oct 2026 22:50:21 GMT  
		Size: 10.4 MB (10445374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:451c8b4190aba9f727b364c753136bac31dadc9dbd020b473c5feacf3e0fa7e3`  
		Last Modified: Mon, 12 Oct 2026 22:50:21 GMT  
		Size: 312.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96d886e33f91c599b2f6c0a42d947448895593915f5d4587dd5ab924a5266d63`  
		Last Modified: Mon, 12 Oct 2026 22:50:21 GMT  
		Size: 833.0 KB (832976 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a66217d4f9adab56bec27f6b45cf7024d5ef9fede49a6b32e1c4dd708bb88d8`  
		Last Modified: Mon, 12 Oct 2026 22:50:21 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d0fb2bd051c5b7f5afb7426c511c01b90963ff22b2aec237a9415f2e03dc402`  
		Last Modified: Mon, 12 Oct 2026 22:50:23 GMT  
		Size: 23.7 MB (23675460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.5-fpm-alpine3.24` - unknown; unknown

```console
$ docker pull drupal@sha256:7e6787c236b1eb64896d938b4d28e8f8682ea2050fccdc8e271d9d2a7ce5296c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **415.5 KB (415502 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c057d89983a63a705e0843da82b3cf1625c9f4ba5b648dfd1181ae943971bead`

```dockerfile
```

-	Layers:
	-	`sha256:b5155e845df1aab10caa692b149c0fe881dae790f11f58fc182ac1c2d36e11b4`  
		Last Modified: Mon, 12 Oct 2026 22:50:21 GMT  
		Size: 379.2 KB (379218 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cebe9b204fbcb0dd2e04d63ba1d756a341ef5f5627bcde883db56cdf5d81ffe1`  
		Last Modified: Mon, 12 Oct 2026 22:50:21 GMT  
		Size: 36.3 KB (36284 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.5-fpm-alpine3.24` - linux; arm variant v6

```console
$ docker pull drupal@sha256:7a13ef2a81f4bae754ab0e5a42e548736027c324737148759d4a456e3677cda0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.5 MB (65530975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37dbd545d92ebd1f897cbeec9d3aafbd36566a7d37d8da617cc0cb62e5e5aeed`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:46 GMT
ADD alpine-minirootfs-3.24.2-armhf.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:46 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:24:10 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 17 Sep 2026 21:24:10 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 17 Sep 2026 21:24:10 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 17 Sep 2026 21:24:10 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 17 Sep 2026 21:24:10 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 17 Sep 2026 21:24:10 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 21:24:10 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 21:24:10 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 17 Sep 2026 21:24:10 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 17 Sep 2026 21:24:10 GMT
ENV PHP_VERSION=8.5.10
# Thu, 17 Sep 2026 21:24:10 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.10.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.10.tar.xz.asc
# Thu, 17 Sep 2026 21:24:10 GMT
ENV PHP_SHA256=6a8bebaa4d5a979a38db29a9373e9851f60c6b11f72172c585947e78f3081957
# Thu, 17 Sep 2026 21:24:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 17 Sep 2026 21:24:13 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:27:25 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 17 Sep 2026 21:27:25 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 21:27:26 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 17 Sep 2026 21:27:26 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 17 Sep 2026 21:27:26 GMT
WORKDIR /var/www/html
# Thu, 17 Sep 2026 21:27:26 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 17 Sep 2026 21:27:26 GMT
STOPSIGNAL SIGQUIT
# Thu, 17 Sep 2026 21:27:26 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 17 Sep 2026 21:27:26 GMT
CMD ["php-fpm"]
# Thu, 17 Sep 2026 23:18:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 17 Sep 2026 23:18:45 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 17 Sep 2026 23:18:45 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Thu, 17 Sep 2026 23:18:45 GMT
ENV DRUPAL_VERSION=11.4.7
# Thu, 17 Sep 2026 23:18:45 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 17 Sep 2026 23:18:45 GMT
WORKDIR /opt/drupal
# Thu, 17 Sep 2026 23:18:55 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Thu, 17 Sep 2026 23:18:55 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:f218cc0a85b16ce88f0b295e09ea08f059389ba0e628af7344be20a2700e9091`  
		Last Modified: Thu, 17 Sep 2026 20:37:51 GMT  
		Size: 3.6 MB (3555113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cbdaae1d1b8109dd1144a49d333f3cf965f3ef617cdfec748a736bc291e05b0`  
		Last Modified: Thu, 17 Sep 2026 21:27:31 GMT  
		Size: 3.4 MB (3445113 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1fbd520fcea99bf35dc1fbaedee79a6b84c2927d8c97519a9f14f753847ad56`  
		Last Modified: Thu, 17 Sep 2026 21:27:31 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54bbc93651c6ae11b4083dd5708a27cafc69a9ce3de1242dceb8fa895ca3d1c7`  
		Last Modified: Thu, 17 Sep 2026 21:27:31 GMT  
		Size: 221.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52f69758ff2a44f778ef600ca26670f49be6ba5ffe46b14da104560a2df31479`  
		Last Modified: Thu, 17 Sep 2026 21:27:31 GMT  
		Size: 14.5 MB (14479231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae82a254af4407db3ed996a58f2454677dfe8a804b1347a420ee9c22b4a2feee`  
		Last Modified: Thu, 17 Sep 2026 21:27:32 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76a4848189feea4b8fa30fcee70cbe5e707142c8ccceaa9e59e4ac74a7ec6299`  
		Last Modified: Thu, 17 Sep 2026 21:27:32 GMT  
		Size: 14.8 MB (14751691 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1e24217008149808ae7037d8b72adc7b0e1ac4d7ab400911d272963898a7f20`  
		Last Modified: Thu, 17 Sep 2026 21:27:32 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:255a2a4429d96f9159917ee5ac0438a04ba52a458385c939a09b96d6061252f6`  
		Last Modified: Thu, 17 Sep 2026 21:27:33 GMT  
		Size: 22.2 KB (22237 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6fad029d3adb475bdb58284974b6c35ccb42c25514eecf4b7b2d8e0fff0f6bfd`  
		Last Modified: Thu, 17 Sep 2026 21:27:33 GMT  
		Size: 9.3 KB (9260 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9683e298b3b39e2a1b7ac3f79244e9e1c2683bf2a386296500bc9161f4aa0973`  
		Last Modified: Thu, 17 Sep 2026 23:19:03 GMT  
		Size: 4.8 MB (4832309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59f6741cda7ef55800d521c3702f8a3fc3197012e3cee1e73eb07cf72413ae68`  
		Last Modified: Thu, 17 Sep 2026 23:19:03 GMT  
		Size: 309.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1160cb10d855ebd2519fb2511140ff12d744fde4d12c0a948effbf52f4677e6c`  
		Last Modified: Thu, 17 Sep 2026 23:19:03 GMT  
		Size: 833.0 KB (832974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b74eb26b3cb3493d8a01c9331916c5f1b6b8416465a4bb9a611e777d0ae8f60e`  
		Last Modified: Thu, 17 Sep 2026 23:19:03 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:081039470eaf06ee75c4a185de5e214c781e4666808f4f99d8fca9e1e2fae1cf`  
		Last Modified: Thu, 17 Sep 2026 23:19:05 GMT  
		Size: 23.6 MB (23598502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.5-fpm-alpine3.24` - unknown; unknown

```console
$ docker pull drupal@sha256:55baf908315a25d0c58b4441c452f028b7be55aff8be780fcae41ff6f1d7e9e3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **36.3 KB (36289 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9de0194bf76974c4e5d0aeacfa10a968d9d4f63dfdeda4d86b1e865411f5b48b`

```dockerfile
```

-	Layers:
	-	`sha256:a8d40e8190ac340a8230a35a43a6a647b51e338f5b924ef1943392d81d91d5c4`  
		Last Modified: Thu, 17 Sep 2026 23:19:02 GMT  
		Size: 36.3 KB (36289 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.5-fpm-alpine3.24` - linux; arm variant v7

```console
$ docker pull drupal@sha256:64b640a3debf84b082ed15c120136754369b39922422d249ae74dac86f82ef13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.6 MB (67601749 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:250ff1395470be2099f291f6ded4f46d4fe80db9c57ba328596e502fd234ec60`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:03 GMT
ADD alpine-minirootfs-3.24.2-armv7.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:03 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 19:22:31 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 24 Sep 2026 19:22:31 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 24 Sep 2026 19:22:31 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 24 Sep 2026 19:22:31 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 24 Sep 2026 19:22:31 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 24 Sep 2026 19:22:31 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:22:31 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:22:31 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 24 Sep 2026 19:22:31 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 24 Sep 2026 19:22:31 GMT
ENV PHP_VERSION=8.5.11
# Thu, 24 Sep 2026 19:22:31 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Thu, 24 Sep 2026 19:22:31 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Thu, 24 Sep 2026 19:22:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 24 Sep 2026 19:22:34 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:26:09 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 24 Sep 2026 19:26:09 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:26:10 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 24 Sep 2026 19:26:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 24 Sep 2026 19:26:10 GMT
WORKDIR /var/www/html
# Thu, 24 Sep 2026 19:26:10 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 24 Sep 2026 19:26:10 GMT
STOPSIGNAL SIGQUIT
# Thu, 24 Sep 2026 19:26:10 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 24 Sep 2026 19:26:10 GMT
CMD ["php-fpm"]
# Mon, 12 Oct 2026 23:00:27 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Mon, 12 Oct 2026 23:00:27 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Mon, 12 Oct 2026 23:00:27 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 23:00:27 GMT
ENV DRUPAL_VERSION=11.4.9
# Mon, 12 Oct 2026 23:00:27 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 12 Oct 2026 23:00:27 GMT
WORKDIR /opt/drupal
# Mon, 12 Oct 2026 23:00:34 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Mon, 12 Oct 2026 23:00:34 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:7b694adf9dd1b9680f02f1458dca365ef3c3afa077ecb86f4c1ae12b519305e0`  
		Last Modified: Thu, 17 Sep 2026 20:37:09 GMT  
		Size: 3.3 MB (3265202 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc9292062c4c18bcc2204efd62cb52fc2050dc48429acf03389006a329982225`  
		Last Modified: Thu, 24 Sep 2026 19:26:16 GMT  
		Size: 3.3 MB (3258283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe460e1cffadc2f5199c6fb9b3830b26e6f14ff19680c123f05502dd4c4613a2`  
		Last Modified: Thu, 24 Sep 2026 19:26:16 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a155250b5d99c309c08dee06845572eb17926475bfd5c9ac49b30d38e0f86b1`  
		Last Modified: Thu, 24 Sep 2026 19:26:16 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa4f949c8e914e6737cc74ddbc6b11a7e29e8d80e8a9c48ff3565bcd0823c9cd`  
		Last Modified: Thu, 24 Sep 2026 19:26:17 GMT  
		Size: 14.5 MB (14492278 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d484f6f8142af6458549a4d3b7f5d87f1604453ebae24911ca1d8c5788f64838`  
		Last Modified: Thu, 24 Sep 2026 19:26:17 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcfe879cc7fc019dc735845e747f76dba8db0d977d368e518ad0ceaca5f4c763`  
		Last Modified: Thu, 24 Sep 2026 19:26:18 GMT  
		Size: 13.9 MB (13941051 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58f8ca756b9f6ea747f3ace92a4d928b8a20cc257afed4157c8e09843a8f1cc4`  
		Last Modified: Thu, 24 Sep 2026 19:26:18 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64811b833de6a55a631c6ed12c62e84d8f082e1586e08456bad9d8e2a8ff9073`  
		Last Modified: Thu, 24 Sep 2026 19:26:18 GMT  
		Size: 22.2 KB (22234 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fd1df4cd0fcf8d5d89839561308fdb0e364085bbc7892227988fe4ab9c0fd77`  
		Last Modified: Thu, 24 Sep 2026 19:26:19 GMT  
		Size: 9.3 KB (9262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aed3e0d18296a02239652140b9e02d6a8b2ebe0cded9b10bdf3c5223597b5e65`  
		Last Modified: Mon, 12 Oct 2026 23:00:48 GMT  
		Size: 8.1 MB (8102699 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39f537326711a4b89f0547b96e9102ee86debbe95bba17339dc17151f1f9ed39`  
		Last Modified: Mon, 12 Oct 2026 23:00:48 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20b3c536ec5ba83883258c5b65c327a3dd3ff3e78337ce7e774965c1658751a8`  
		Last Modified: Mon, 12 Oct 2026 23:00:48 GMT  
		Size: 833.0 KB (832978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d36f55e630cb5e0f05f81534c3320c17f1ef063b6c040517197bb14e4a22042`  
		Last Modified: Mon, 12 Oct 2026 23:00:48 GMT  
		Size: 113.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7ce57d18936c8efc031ce1f15c1608508cc11c13b19fa8198c33725e6e15d2b`  
		Last Modified: Mon, 12 Oct 2026 23:00:50 GMT  
		Size: 23.7 MB (23673221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.5-fpm-alpine3.24` - unknown; unknown

```console
$ docker pull drupal@sha256:7750591984d390962d43790c781adba4ee9168f467e41efb408379000249520a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **415.2 KB (415204 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92117aee90810005c5510be7326013d75f185f52cb905fb9a0351c039ab636e5`

```dockerfile
```

-	Layers:
	-	`sha256:3765a98fdf551f09fd7394418b38f61c7b993d2674206ce50e8d6126a13342ba`  
		Last Modified: Mon, 12 Oct 2026 23:00:48 GMT  
		Size: 378.7 KB (378700 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:722d955caa5011a23000f928063cc3b72d8bc68f33d6f8d89354316c29e49c6f`  
		Last Modified: Mon, 12 Oct 2026 23:00:48 GMT  
		Size: 36.5 KB (36504 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.5-fpm-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull drupal@sha256:2cd8479df85daa296705d17781fa0df6392bdfebefa96bc59587c9f0d1928630
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.5 MB (73522231 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a9d79946f42893f5d787d7e4db12c45f49567a68863405c782d09641be745e7`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 19:08:58 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 24 Sep 2026 19:08:58 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 24 Sep 2026 19:08:58 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 24 Sep 2026 19:08:58 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 24 Sep 2026 19:08:58 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 24 Sep 2026 19:08:58 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:08:58 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:08:58 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 24 Sep 2026 19:08:58 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 24 Sep 2026 19:08:58 GMT
ENV PHP_VERSION=8.5.11
# Thu, 24 Sep 2026 19:08:58 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Thu, 24 Sep 2026 19:08:58 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Thu, 24 Sep 2026 19:09:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 24 Sep 2026 19:09:01 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:12:39 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 24 Sep 2026 19:12:39 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:12:40 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 24 Sep 2026 19:12:40 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 24 Sep 2026 19:12:40 GMT
WORKDIR /var/www/html
# Thu, 24 Sep 2026 19:12:40 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 24 Sep 2026 19:12:40 GMT
STOPSIGNAL SIGQUIT
# Thu, 24 Sep 2026 19:12:40 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 24 Sep 2026 19:12:40 GMT
CMD ["php-fpm"]
# Mon, 12 Oct 2026 23:00:31 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Mon, 12 Oct 2026 23:00:31 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Mon, 12 Oct 2026 23:00:31 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 23:00:31 GMT
ENV DRUPAL_VERSION=11.4.9
# Mon, 12 Oct 2026 23:00:31 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 12 Oct 2026 23:00:31 GMT
WORKDIR /opt/drupal
# Mon, 12 Oct 2026 23:00:38 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Mon, 12 Oct 2026 23:00:38 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2b5610178e9ce0107cb33245087566c96874823a78f4f85ac21a01bb59ddca6`  
		Last Modified: Thu, 24 Sep 2026 19:12:47 GMT  
		Size: 3.5 MB (3501067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e3d479e995c1b9b835478b5cc776e26036be996ffc55c42f8260a3f0f26e3e4`  
		Last Modified: Thu, 24 Sep 2026 19:12:45 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d570d0ddb767d906d068c79ccf52310510200d39a93dd0feca8e8da6be745faa`  
		Last Modified: Thu, 24 Sep 2026 19:12:45 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:056699d5a92539de351a58800e8a2120ad0c61a0471b80522ebea69c1421d604`  
		Last Modified: Thu, 24 Sep 2026 19:12:48 GMT  
		Size: 14.5 MB (14492286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9ea551c4f6cae89f3b6d006a7f36dd031dfbfb45295e73e31f62a32cc27f8be`  
		Last Modified: Thu, 24 Sep 2026 19:12:47 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e606d6a9d8c6d549f04149b8833edac1ce8b0337315cafee94ebb8e6ee8bf348`  
		Last Modified: Thu, 24 Sep 2026 19:12:48 GMT  
		Size: 16.3 MB (16274621 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6360f2130b0b7380e3c47cbe1f6a5d6f9efb1493bac75962c245772c3003c0a6`  
		Last Modified: Thu, 24 Sep 2026 19:12:48 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39c4360ba376ebe4c3a6ed7f372876276ac233633a8536f86a2adcda04571703`  
		Last Modified: Thu, 24 Sep 2026 19:12:48 GMT  
		Size: 22.2 KB (22246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f86b6878fb552b964bb34a760d461cc5cadfa66fe6043026d6339590542f473`  
		Last Modified: Thu, 24 Sep 2026 19:12:49 GMT  
		Size: 9.3 KB (9257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d453c1cbf33f6202ecf5d8c0fd4256e07c11ba956bdf09cee0adfaddf111502`  
		Last Modified: Mon, 12 Oct 2026 23:00:52 GMT  
		Size: 10.5 MB (10523642 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9726b520aa1df22719da1dd2ac7aa6ac19bc77451e9fdc3f2ac031d650716c93`  
		Last Modified: Mon, 12 Oct 2026 23:00:51 GMT  
		Size: 310.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a38e6e967dca47d873f2cbdb183cdcaf57e93680aa00f0e41e94fa41f51714a`  
		Last Modified: Mon, 12 Oct 2026 23:00:52 GMT  
		Size: 833.0 KB (832977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e36788f2cfc74b22cd081933ecb4d6bfa6c0c665b54d7af7f9ca83fb66582af`  
		Last Modified: Mon, 12 Oct 2026 23:00:51 GMT  
		Size: 113.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74eceaa99639ae41790a9412274b36857a247dd9530f345146fd8483fc7caca7`  
		Last Modified: Mon, 12 Oct 2026 23:00:53 GMT  
		Size: 23.7 MB (23673938 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.5-fpm-alpine3.24` - unknown; unknown

```console
$ docker pull drupal@sha256:77462fe28abdf3d215a1a322d2d0ebb391f26990b7afabb60f2def25a02e9f1f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **415.4 KB (415356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be608b3b2c9174db061c402fd266946a048dc3497c897914bd55d782e2bd239f`

```dockerfile
```

-	Layers:
	-	`sha256:d70ae7e034ef4414ef48e5edc9b3d226cc67fa4d6e21ad2d6f70813b64f739e4`  
		Last Modified: Mon, 12 Oct 2026 23:00:51 GMT  
		Size: 378.8 KB (378768 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98dc3c885bcd6bf98d1450505de325a5fe460d6e4a0be800c989cec7ca582140`  
		Last Modified: Mon, 12 Oct 2026 23:00:52 GMT  
		Size: 36.6 KB (36588 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.5-fpm-alpine3.24` - linux; 386

```console
$ docker pull drupal@sha256:32e092b2618dba81a16d6bfb386112bdbecd058747b99c760d961af05897aa79
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.6 MB (72608717 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cecc22be1635820e581463af83b47da9a4d21e699efdc3e5c1c1536cd40807ab`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:15 GMT
ADD alpine-minirootfs-3.24.2-x86.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:15 GMT
CMD ["/bin/sh"]
# Thu, 24 Sep 2026 19:08:43 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 24 Sep 2026 19:08:43 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 24 Sep 2026 19:08:43 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 24 Sep 2026 19:08:43 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 24 Sep 2026 19:08:43 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 24 Sep 2026 19:08:43 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:08:43 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 24 Sep 2026 19:08:43 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 24 Sep 2026 19:08:43 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 24 Sep 2026 19:08:43 GMT
ENV PHP_VERSION=8.5.11
# Thu, 24 Sep 2026 19:08:43 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Thu, 24 Sep 2026 19:08:43 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Thu, 24 Sep 2026 19:08:46 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 24 Sep 2026 19:08:46 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:11:59 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 24 Sep 2026 19:11:59 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:12:00 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 24 Sep 2026 19:12:00 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 24 Sep 2026 19:12:00 GMT
WORKDIR /var/www/html
# Thu, 24 Sep 2026 19:12:00 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 24 Sep 2026 19:12:00 GMT
STOPSIGNAL SIGQUIT
# Thu, 24 Sep 2026 19:12:00 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 24 Sep 2026 19:12:00 GMT
CMD ["php-fpm"]
# Mon, 12 Oct 2026 22:57:49 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Mon, 12 Oct 2026 22:57:49 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Mon, 12 Oct 2026 22:57:49 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 22:57:49 GMT
ENV DRUPAL_VERSION=11.4.9
# Mon, 12 Oct 2026 22:57:49 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 12 Oct 2026 22:57:49 GMT
WORKDIR /opt/drupal
# Mon, 12 Oct 2026 22:57:56 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Mon, 12 Oct 2026 22:57:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:7be2e280ebe651ae43469c64580d088eda7831741949c39082fb6d3333d52edd`  
		Last Modified: Thu, 17 Sep 2026 20:37:21 GMT  
		Size: 3.7 MB (3676781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4308b46c4106c0327d1c6dafec90adffc8a1a37edbb8a40f56fbb44ca8ec1f4c`  
		Last Modified: Thu, 24 Sep 2026 19:12:07 GMT  
		Size: 3.5 MB (3524564 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b38dd9cc853af0096971085749af40705f83a9335226542f6289070428480ba`  
		Last Modified: Thu, 24 Sep 2026 19:12:06 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:849c184035c081e5f419e72fbce7927d63ad172256557ac7eeda28cbbef212da`  
		Last Modified: Thu, 24 Sep 2026 19:12:07 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:236c1de04c8436ae42f2e1409e94326434dd4bdb3c17038f5b5ba5e5b08bfab7`  
		Last Modified: Thu, 24 Sep 2026 19:12:07 GMT  
		Size: 14.5 MB (14492244 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e523b41eca3bf6ecb7a403cce58258df0cacfdefcc5f1f3879e7c3d893a763c`  
		Last Modified: Thu, 24 Sep 2026 19:12:08 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9818102cba874319ec26678ac5476ff46712a254fbced36f65568b499c2e8371`  
		Last Modified: Thu, 24 Sep 2026 19:12:08 GMT  
		Size: 17.2 MB (17207005 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbf00502696e6b1a43a4efb0611926a0c4c4033e9a09829ce494b29c3a7ebd79`  
		Last Modified: Thu, 24 Sep 2026 19:12:08 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3cb1cd07ddc33c293913fb26486b3cd7d4d202069f768eea45d96fbbb5b16417`  
		Last Modified: Thu, 24 Sep 2026 19:12:09 GMT  
		Size: 22.4 KB (22429 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d8f154a2ba9ba2b6b5764f4057c201dc1e268ea771b7f36442b8d85968eb4ec`  
		Last Modified: Thu, 24 Sep 2026 19:12:09 GMT  
		Size: 9.3 KB (9259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8933bb973ad7cd63b82862c1edba1de3c0c49b6f24a4a7754068064f27de681`  
		Last Modified: Mon, 12 Oct 2026 22:58:08 GMT  
		Size: 9.2 MB (9163856 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:925de7f22f8b0335292ed04b217ca2f69d4974ada308c145f4a160f8338b02bf`  
		Last Modified: Mon, 12 Oct 2026 22:58:08 GMT  
		Size: 312.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd87ac684ae24cc41282bc064a3a71559763797848a3b078f3cebbb6837407a2`  
		Last Modified: Mon, 12 Oct 2026 22:58:08 GMT  
		Size: 833.0 KB (832972 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78b5a89fb69f59e5b55218d0ad2a1ce907cb8f2386ee53bb245407a49365867e`  
		Last Modified: Mon, 12 Oct 2026 22:58:08 GMT  
		Size: 113.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11c74b0fe76114ffa39fa164a386a7e68aa2609829b6cb756804013d5633c468`  
		Last Modified: Mon, 12 Oct 2026 22:58:10 GMT  
		Size: 23.7 MB (23675064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.5-fpm-alpine3.24` - unknown; unknown

```console
$ docker pull drupal@sha256:f41bc14252da77d48bb4199be83c3e2265a87261a9df5b8f5a00032be0b00b9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **415.3 KB (415310 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22e9d109854006ae7dcc0db7502078f6accf745f9ed726eafd473886ebf91671`

```dockerfile
```

-	Layers:
	-	`sha256:178fb44805e591138392926bf125e07bbe8afe3448389e97cff8e7c66a0d8b9f`  
		Last Modified: Mon, 12 Oct 2026 22:58:08 GMT  
		Size: 379.1 KB (379133 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e79142a720510c3ed3d7879fd48f380d424364a881b6dfd269beed2e2a03dd85`  
		Last Modified: Mon, 12 Oct 2026 22:58:08 GMT  
		Size: 36.2 KB (36177 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.5-fpm-alpine3.24` - linux; ppc64le

```console
$ docker pull drupal@sha256:76a5cdf22c227a225ba98c9e71223e68c9a0aabfff2ae0a5d6a188d73eea2133
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **70.6 MB (70592577 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee3ffe5b1e9cbad56ae362c54e8331c89857afced4cae01f6201b562596273a4`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 17 Sep 2026 20:36:41 GMT
ADD alpine-minirootfs-3.24.2-ppc64le.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:36:41 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:35:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 17 Sep 2026 21:35:21 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 17 Sep 2026 21:35:22 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 17 Sep 2026 21:35:22 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 17 Sep 2026 21:35:22 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 17 Sep 2026 21:35:22 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 21:35:22 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 21:35:22 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 17 Sep 2026 21:35:22 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 17 Sep 2026 21:35:22 GMT
ENV PHP_VERSION=8.5.11
# Thu, 17 Sep 2026 21:35:22 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Thu, 17 Sep 2026 21:35:22 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Thu, 24 Sep 2026 19:59:03 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 24 Sep 2026 19:59:06 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 20:07:01 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 24 Sep 2026 20:07:01 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 20:07:03 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 24 Sep 2026 20:07:03 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 24 Sep 2026 20:07:03 GMT
WORKDIR /var/www/html
# Thu, 24 Sep 2026 20:07:04 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 24 Sep 2026 20:07:04 GMT
STOPSIGNAL SIGQUIT
# Thu, 24 Sep 2026 20:07:04 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 24 Sep 2026 20:07:04 GMT
CMD ["php-fpm"]
# Thu, 24 Sep 2026 23:41:30 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 24 Sep 2026 23:41:30 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 24 Sep 2026 23:41:31 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 23:41:31 GMT
ENV DRUPAL_VERSION=11.4.8
# Thu, 24 Sep 2026 23:41:31 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 24 Sep 2026 23:41:31 GMT
WORKDIR /opt/drupal
# Mon, 28 Sep 2026 23:43:51 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Mon, 28 Sep 2026 23:43:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:ba454b17b5e915ee06cfc2c66078f1264549d4f6cdd08dc18cd56fdaaa487b25`  
		Last Modified: Thu, 17 Sep 2026 20:36:53 GMT  
		Size: 3.8 MB (3817477 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:94dd3b632bc8356dfcd2913d56c4dafaee9f64ea172ed02d121456debc7e09e3`  
		Last Modified: Thu, 17 Sep 2026 21:39:40 GMT  
		Size: 3.7 MB (3664991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ffba323cefd4aec9e70567151bff96ffe7dcd359abe0c80e30f54fdb9d519d3`  
		Last Modified: Thu, 17 Sep 2026 21:39:40 GMT  
		Size: 928.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f076f58842bb9537630b1ddc9001cb2a7d48b3dc3da8088c3b602853fa14e686`  
		Last Modified: Thu, 17 Sep 2026 21:39:40 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:230932368030e906acf00548e6ea5db83707049881213a24be693f9fb4a40dd6`  
		Last Modified: Thu, 24 Sep 2026 20:04:25 GMT  
		Size: 14.5 MB (14492301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:313785605a699ceac2aca23346f1661399da48a3bcec2e633df58bf91dc6e23e`  
		Last Modified: Thu, 24 Sep 2026 20:04:25 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bfcc7bf45c8af215fd2ee16c43f5cc88292b158f40c20746567866fe337a10f`  
		Last Modified: Thu, 24 Sep 2026 20:07:19 GMT  
		Size: 17.0 MB (16975680 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc37234c7291a11cc401f9d39a878b4787a147b091602508d6aea8202d1f48ed`  
		Last Modified: Thu, 24 Sep 2026 20:07:18 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:68e46c326a3ee97956881e818cb1eb6d45870e891918012a5da0263bf0c8c0ef`  
		Last Modified: Thu, 24 Sep 2026 20:07:18 GMT  
		Size: 22.3 KB (22275 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce460cb7eb55b620776891627b253d848ad3ca397a212919a8af65144d5b3615`  
		Last Modified: Thu, 24 Sep 2026 20:07:19 GMT  
		Size: 9.3 KB (9265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed7f1146bd3460df7db4d6bc3b09228a4af9f514d0467269548dbc7b76d94cca`  
		Last Modified: Thu, 24 Sep 2026 23:42:22 GMT  
		Size: 7.1 MB (7140563 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e68e582a5ade44e4e926eb2709bba2507c057ab3a65ea690bd7b61c2d062e81`  
		Last Modified: Thu, 24 Sep 2026 23:42:21 GMT  
		Size: 313.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c022be7eff23611a0441d1f0748960b96c6812640b5339f923de491aba6704a`  
		Last Modified: Thu, 24 Sep 2026 23:42:21 GMT  
		Size: 833.0 KB (832974 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7548c18e041784c5aeac070707b9a61543a21de9683af4f9ca993d6141a6b1b`  
		Last Modified: Thu, 24 Sep 2026 23:42:21 GMT  
		Size: 114.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc6c7833d5455a5fdb0d435ff7323805840025ced15d9e2a1b08245781b452fc`  
		Last Modified: Mon, 28 Sep 2026 23:44:38 GMT  
		Size: 23.6 MB (23632501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.5-fpm-alpine3.24` - unknown; unknown

```console
$ docker pull drupal@sha256:5a6d0779e984a7002c39eedf661647bb42c835efed26769e280b131b112c3daf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **415.1 KB (415083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2de62e34eb413cc1759e25c90cbccf0344404b84a6af9c254027e6d77c9ba021`

```dockerfile
```

-	Layers:
	-	`sha256:25a771eed99d420ac62d330293fb3073b71a2348a386aebddbded2384fb74c36`  
		Last Modified: Mon, 28 Sep 2026 23:44:37 GMT  
		Size: 378.7 KB (378673 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:53c46de237d08728b605ad76ca888163e98197e43670aee4080358b5d170dcf6`  
		Last Modified: Mon, 28 Sep 2026 23:44:36 GMT  
		Size: 36.4 KB (36410 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.5-fpm-alpine3.24` - linux; riscv64

```console
$ docker pull drupal@sha256:93ac7cc3c4edcade30b4f2c921c92552d19f80a9b9d69b1dd8ff127e1d61bfe0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.5 MB (69488702 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8347948238d4e59f4ed25dafc8c87716fb5fb72513c31369032d1f02aece6e3a`
-	Entrypoint: `["docker-php-entrypoint"]`
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
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Sat, 19 Sep 2026 07:31:38 GMT
ENV PHP_VERSION=8.5.11
# Sat, 19 Sep 2026 07:31:38 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Sat, 19 Sep 2026 07:31:38 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Sun, 27 Sep 2026 08:36:43 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Sun, 27 Sep 2026 08:36:43 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sun, 27 Sep 2026 10:45:53 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sun, 27 Sep 2026 10:45:53 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sun, 27 Sep 2026 10:45:58 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sun, 27 Sep 2026 10:45:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sun, 27 Sep 2026 10:45:58 GMT
WORKDIR /var/www/html
# Sun, 27 Sep 2026 10:45:59 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Sun, 27 Sep 2026 10:45:59 GMT
STOPSIGNAL SIGQUIT
# Sun, 27 Sep 2026 10:45:59 GMT
EXPOSE map[9000/tcp:{}]
# Sun, 27 Sep 2026 10:45:59 GMT
CMD ["php-fpm"]
# Thu, 01 Oct 2026 15:26:31 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 01 Oct 2026 15:26:31 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 01 Oct 2026 15:26:31 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Thu, 01 Oct 2026 15:26:31 GMT
ENV DRUPAL_VERSION=11.4.8
# Thu, 01 Oct 2026 15:26:31 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Thu, 01 Oct 2026 15:26:31 GMT
WORKDIR /opt/drupal
# Thu, 01 Oct 2026 15:57:47 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Thu, 01 Oct 2026 15:57:47 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
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
	-	`sha256:28dee42e86e7689824816f9175493fd0524784fbcef8a9406b1a235226a0fa9a`  
		Last Modified: Sun, 27 Sep 2026 09:41:21 GMT  
		Size: 14.5 MB (14492286 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77e717e62ebd24ddd745ab670791bd545bc3cbacb738aeb68ddde702dad47ee2`  
		Last Modified: Sun, 27 Sep 2026 09:41:17 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a04a022605b2c196d088fa5ae10c1ab49721f8296414d36576b48de8bcce19a`  
		Last Modified: Sun, 27 Sep 2026 10:46:58 GMT  
		Size: 15.6 MB (15593515 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07f74054d8e7d9f0dbace09a5ef15402ff6643d79ce3246ccab17253af14bc0b`  
		Last Modified: Sun, 27 Sep 2026 10:46:55 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a55ee77e889a3a97e4e6d56e9ff45d45421b11d7e8b5c994c0ac6ee98402885b`  
		Last Modified: Sun, 27 Sep 2026 10:46:55 GMT  
		Size: 22.3 KB (22252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6111b04e69411b921c6a16ef30caf0107d2a8ab2e789ea27644c28f50ebf61b4`  
		Last Modified: Sun, 27 Sep 2026 10:46:56 GMT  
		Size: 9.3 KB (9264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fea57bbeb408d2a35e03dc4f3ae02fefdc397c087c723d3a716a8ff925778e6a`  
		Last Modified: Thu, 01 Oct 2026 15:29:02 GMT  
		Size: 7.7 MB (7689690 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffe14cf1b43af577a3d9d9ff7d5d82c132a2388a065cb5b0999fa29d6a8a4edd`  
		Last Modified: Thu, 01 Oct 2026 15:29:01 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64c8456f15defa9aceaf112f6b69c315f18ac4e8891c2576ae9b2abef5073cd7`  
		Last Modified: Thu, 01 Oct 2026 15:29:01 GMT  
		Size: 833.0 KB (832977 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e267f09b3c2c32a1d7a23e05dcdb2384dec4b329d104280dfc961f445630c984`  
		Last Modified: Thu, 01 Oct 2026 15:29:01 GMT  
		Size: 115.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:78d8de481c7fc2b065f400668786245be7d58401457acb8551ef156a107f7ef4`  
		Last Modified: Thu, 01 Oct 2026 16:00:40 GMT  
		Size: 23.6 MB (23632549 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.5-fpm-alpine3.24` - unknown; unknown

```console
$ docker pull drupal@sha256:1fe6a1c92c26b5be44835ff29e161a8e744732f3e073f54abfd6f9a458f0f55d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **415.1 KB (415079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:981157ad4735da1be532a6c76c80092160055e91eb0dea8dcce7ce6d85ddee47`

```dockerfile
```

-	Layers:
	-	`sha256:686763c727e569374ac2ba8f4359e3f493a024613a63ae37d8edf8e938acf282`  
		Last Modified: Thu, 01 Oct 2026 16:00:36 GMT  
		Size: 378.7 KB (378669 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6af8e6a614fd44305c2770a1834449ce2e4790f6f0698fc8368537034ee803e3`  
		Last Modified: Thu, 01 Oct 2026 16:00:36 GMT  
		Size: 36.4 KB (36410 bytes)  
		MIME: application/vnd.in-toto+json

### `drupal:php8.5-fpm-alpine3.24` - linux; s390x

```console
$ docker pull drupal@sha256:5dc64b99cbee9fb98409861a84c190781d4cae120f6c89a4d7ff74b1a4d6b485
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **72.2 MB (72164405 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84f9a69d88fb3739338d0a10dfdb039f12365af2c2041310a71dafa3f8d2826d`
-	Entrypoint: `["docker-php-entrypoint"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 17 Sep 2026 21:38:20 GMT
ADD alpine-minirootfs-3.24.2-s390x.tar.gz / # buildkit
# Thu, 17 Sep 2026 21:38:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 22:27:50 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 17 Sep 2026 22:27:50 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 17 Sep 2026 22:27:50 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 17 Sep 2026 22:27:50 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 17 Sep 2026 22:27:50 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 17 Sep 2026 22:27:50 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 22:27:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 17 Sep 2026 22:27:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 17 Sep 2026 22:27:50 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC 49D9AF6BC72A80D6691719C8AA23F5BE9C7097D4 D95C03BC702BE9515344AE3374E44BC9067701A5
# Thu, 17 Sep 2026 22:27:50 GMT
ENV PHP_VERSION=8.5.11
# Thu, 17 Sep 2026 22:27:50 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.5.11.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.5.11.tar.xz.asc
# Thu, 17 Sep 2026 22:27:50 GMT
ENV PHP_SHA256=d9be75c08e8c316f4c8f4194d8fbe1750a15f6a6d9d4e3fe72082abeeb800360
# Thu, 24 Sep 2026 19:14:08 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 24 Sep 2026 19:14:08 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:18:50 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 24 Sep 2026 19:18:50 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 24 Sep 2026 19:18:51 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 24 Sep 2026 19:18:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 24 Sep 2026 19:18:51 GMT
WORKDIR /var/www/html
# Thu, 24 Sep 2026 19:18:51 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 24 Sep 2026 19:18:51 GMT
STOPSIGNAL SIGQUIT
# Thu, 24 Sep 2026 19:18:51 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 24 Sep 2026 19:18:51 GMT
CMD ["php-fpm"]
# Mon, 12 Oct 2026 23:00:56 GMT
RUN set -eux; 		apk add --no-cache --virtual .build-deps 		coreutils 		freetype-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg=/usr/include 		--with-webp 	; 		docker-php-ext-install -j "$(nproc)" 		gd 		pdo_mysql 		pdo_pgsql 		zip 	; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .drupal-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Mon, 12 Oct 2026 23:00:58 GMT
RUN { 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=60'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Mon, 12 Oct 2026 23:00:59 GMT
COPY /usr/bin/composer /usr/local/bin/ # buildkit
# Mon, 12 Oct 2026 23:01:00 GMT
ENV DRUPAL_VERSION=11.4.9
# Mon, 12 Oct 2026 23:01:00 GMT
ENV COMPOSER_ALLOW_SUPERUSER=1
# Mon, 12 Oct 2026 23:01:00 GMT
WORKDIR /opt/drupal
# Mon, 12 Oct 2026 23:01:14 GMT
RUN set -eux; 	export COMPOSER_HOME="$(mktemp -d)"; 	composer create-project --no-interaction "drupal/recommended-project:$DRUPAL_VERSION" ./; 	composer check-platform-reqs; 	chown -R www-data:www-data web/sites web/modules web/themes; 	rmdir /var/www/html; 	ln -sf /opt/drupal/web /var/www/html; 	rm -rf "$COMPOSER_HOME" # buildkit
# Mon, 12 Oct 2026 23:01:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/opt/drupal/vendor/bin
```

-	Layers:
	-	`sha256:1bdda2e019dd384cc5410b8fd73c0c305664bf6db8ebc07b058877aee1a778ec`  
		Last Modified: Thu, 17 Sep 2026 21:38:29 GMT  
		Size: 3.7 MB (3715339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc4ef3abb32213d1ef3a47fc55b7905eee1cba59e8bbc9aa6fbffa950556cd84`  
		Last Modified: Thu, 17 Sep 2026 22:32:06 GMT  
		Size: 3.7 MB (3686221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dfb7b3c833a30e307599c1033ee26d5ec370b841e40a96a1ca6a5b6a2e08cf1a`  
		Last Modified: Thu, 17 Sep 2026 22:32:05 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e972f81d945262abb55ad776553759f610805195c15ccdf6d8fea9709cfff427`  
		Last Modified: Thu, 17 Sep 2026 22:32:05 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df5553389fb6266e3584f6f7b85d8304fad80ce47e9921c68fa95e2e3459c38b`  
		Last Modified: Thu, 24 Sep 2026 19:19:02 GMT  
		Size: 14.5 MB (14492279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1674fd0dbd5d865127f7e1c40e5a634a450a1c05165536b1a4e3a7928cb306c`  
		Last Modified: Thu, 24 Sep 2026 19:19:02 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:278ff6c103261e3274187797243b997b7e62f7b16cee0b03a4c05a80b8035570`  
		Last Modified: Thu, 24 Sep 2026 19:19:02 GMT  
		Size: 16.1 MB (16108738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7bec8de1ad7ae1aeccd4166d61c50c087fffb179e81e07755c47ceaa6273359`  
		Last Modified: Thu, 24 Sep 2026 19:19:02 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd625d7cc6947921329cba14d079602c4e6339d286c262f342b38f3fc583fb77`  
		Last Modified: Thu, 24 Sep 2026 19:19:03 GMT  
		Size: 22.3 KB (22255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:070bed25e9ed84d14b51bd7c2cb518a9cc3f822a775a72615841838e3a245ab7`  
		Last Modified: Thu, 24 Sep 2026 19:19:03 GMT  
		Size: 9.3 KB (9262 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:758645dedd4f87da43a0d998646fd8bc2d749c96f8a1daf7563bb0120daeb15e`  
		Last Modified: Mon, 12 Oct 2026 23:01:58 GMT  
		Size: 9.6 MB (9619937 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a49a0e79251d7079a6489ed0e6378a7266d948b8060991d1df2d5eaa16723c80`  
		Last Modified: Mon, 12 Oct 2026 23:01:57 GMT  
		Size: 314.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d9a434c456046d468e959d2d07eaf939e3e193c4bc2de85a21809049d01ade2`  
		Last Modified: Mon, 12 Oct 2026 23:01:58 GMT  
		Size: 833.0 KB (832978 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:558daafc968c2c9a93af9f52ceb8c17f261a6840c9e405dab8c1916b6e94efcf`  
		Last Modified: Mon, 12 Oct 2026 23:01:57 GMT  
		Size: 113.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c876ef5b76783d9f128754595b3a602bd2cb91ed1b0ee52856fe1f916dba13fc`  
		Last Modified: Mon, 12 Oct 2026 23:01:59 GMT  
		Size: 23.7 MB (23672849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `drupal:php8.5-fpm-alpine3.24` - unknown; unknown

```console
$ docker pull drupal@sha256:3d9f55ec5d36d3924daf4779a22e0d9627abc147c8bd0b27c2c8f089caddb4f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **414.8 KB (414847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c08268ec78a0c278b900540b82fe506eb64bd049b8c1e7458a4438463d6aaef`

```dockerfile
```

-	Layers:
	-	`sha256:fad633ec1174ec149c84301e5dc0076229d93b804f317f6c0f9ede14ae8d002e`  
		Last Modified: Mon, 12 Oct 2026 23:01:57 GMT  
		Size: 378.6 KB (378567 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:077d78a8dcf69665bb4b9b944d2c9231968bf24227b93729a186f32a5c57934c`  
		Last Modified: Mon, 12 Oct 2026 23:01:57 GMT  
		Size: 36.3 KB (36280 bytes)  
		MIME: application/vnd.in-toto+json
