## `phpmyadmin:fpm-alpine`

```console
$ docker pull phpmyadmin@sha256:9ab050429c8ac127eac8d70e24d591dc94ec479338b3e693fdff8f658212461f
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

### `phpmyadmin:fpm-alpine` - linux; amd64

```console
$ docker pull phpmyadmin@sha256:9f3a97859ffb662141e07b130735182fc0eea991f958bcdb9ec699af676da15c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.6 MB (59635151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cd0148ee9bb6ed82aa9e27727d9d9e328113fbe5cd31c77dc33745070f797141`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 21:29:17 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 15 Sep 2026 21:29:17 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Tue, 15 Sep 2026 21:29:17 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 15 Sep 2026 21:29:17 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:29:17 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:29:17 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:29:17 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:29:17 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:29:17 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 15 Sep 2026 21:29:17 GMT
ENV PHP_VERSION=8.3.33
# Tue, 15 Sep 2026 21:29:17 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Tue, 15 Sep 2026 21:29:17 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Tue, 15 Sep 2026 21:29:20 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Tue, 15 Sep 2026 21:29:20 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:32:09 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:32:09 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:32:10 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:32:10 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:32:10 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:32:10 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 21:32:10 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 15 Sep 2026 21:32:10 GMT
STOPSIGNAL SIGQUIT
# Tue, 15 Sep 2026 21:32:10 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 15 Sep 2026 21:32:10 GMT
CMD ["php-fpm"]
# Tue, 15 Sep 2026 22:25:45 GMT
ENV UPLOAD_PROGRESS_EXT_URL=https://github.com/php/pecl-php-uploadprogress/archive/refs/tags/uploadprogress-2.0.2.tar.gz
# Tue, 15 Sep 2026 22:25:45 GMT
ENV UPLOAD_PROGRESS_SHA256=fe3f6cdfcedad563c970c4fd1cda31e422cfc0df5cc9a217d8c80ed3c8d137f5
# Tue, 15 Sep 2026 22:25:45 GMT
RUN apk add --no-cache     bash     tzdata     gnupg # buildkit
# Tue, 15 Sep 2026 22:26:36 GMT
RUN set -ex;         apk add --no-cache --virtual .build-deps         bzip2-dev         freetype-dev         libjpeg-turbo-dev         libpng-dev         libwebp-dev         libxpm-dev         libzip-dev     ;         mkdir -p /tmp/uploadprogress;     curl -fsSL -o /tmp/uploadprogress/uploadprogress.tar.gz "$UPLOAD_PROGRESS_EXT_URL";     echo "$UPLOAD_PROGRESS_SHA256 /tmp/uploadprogress/uploadprogress.tar.gz" | sha256sum -c -;     tar -xf /tmp/uploadprogress/uploadprogress.tar.gz -C /tmp/uploadprogress --strip-components=1;         docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp --with-xpm;     docker-php-ext-install -j "$(nproc)"         bz2         gd         mysqli         opcache         zip         bcmath         /tmp/uploadprogress     ;         rm -r /tmp/uploadprogress;         runDeps="$(         scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions             | tr ',' '\n'             | sort -u             | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )";     apk add --no-network --virtual .phpmyadmin-phpexts-rundeps $runDeps;     apk del --no-network .build-deps # buildkit
# Tue, 15 Sep 2026 22:26:36 GMT
ENV PMA_SSL_DIR=/etc/phpmyadmin/ssl
# Tue, 15 Sep 2026 22:26:36 GMT
ENV MAX_EXECUTION_TIME=600
# Tue, 15 Sep 2026 22:26:36 GMT
ENV MEMORY_LIMIT=512M
# Tue, 15 Sep 2026 22:26:36 GMT
ENV UPLOAD_LIMIT=2048K
# Tue, 15 Sep 2026 22:26:36 GMT
ENV TZ=UTC
# Tue, 15 Sep 2026 22:26:36 GMT
ENV SESSION_SAVE_PATH=/sessions
# Tue, 15 Sep 2026 22:26:37 GMT
RUN set -ex;     mkdir $SESSION_SAVE_PATH;     mkdir -p $PMA_SSL_DIR;     chmod 1777 $SESSION_SAVE_PATH;     chmod 755 $PMA_SSL_DIR;     chown www-data:www-data /etc/phpmyadmin;     chown www-data:www-data $PMA_SSL_DIR;     chown www-data:www-data $SESSION_SAVE_PATH;         {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         {         echo 'session.cookie_httponly=1';         echo 'session.use_strict_mode=1';     } > $PHP_INI_DIR/conf.d/session-strict.ini;         {         echo 'allow_url_fopen=Off';         echo 'max_execution_time=${MAX_EXECUTION_TIME}';         echo 'max_input_vars=10000';         echo 'memory_limit=${MEMORY_LIMIT}';         echo 'post_max_size=${UPLOAD_LIMIT}';         echo 'upload_max_filesize=${UPLOAD_LIMIT}';         echo 'date.timezone=${TZ}';         echo 'session.save_path=${SESSION_SAVE_PATH}';     } > $PHP_INI_DIR/conf.d/phpmyadmin-misc.ini # buildkit
# Tue, 15 Sep 2026 22:26:37 GMT
USER www-data:www-data
# Tue, 15 Sep 2026 22:26:37 GMT
ENV VERSION=5.2.3
# Tue, 15 Sep 2026 22:26:37 GMT
ENV SHA256=57881348297c4412f86c410547cf76b4d8a236574dd2c6b7d6a2beebe7fc44e3
# Tue, 15 Sep 2026 22:26:37 GMT
ENV URL=https://files.phpmyadmin.net/phpMyAdmin/5.2.3/phpMyAdmin-5.2.3-all-languages.tar.xz
# Tue, 15 Sep 2026 22:26:37 GMT
LABEL org.opencontainers.image.title=Official phpMyAdmin Docker image org.opencontainers.image.description=Run phpMyAdmin with Alpine, Apache and PHP FPM. org.opencontainers.image.authors=The phpMyAdmin Team <developers@phpmyadmin.net> org.opencontainers.image.vendor=phpMyAdmin org.opencontainers.image.documentation=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.licenses=GPL-2.0-only org.opencontainers.image.version=5.2.3 org.opencontainers.image.url=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.source=https://github.com/phpmyadmin/docker.git
# Tue, 15 Sep 2026 22:26:40 GMT
RUN set -ex;         export GNUPGHOME="$(mktemp -d)";     export GPGKEY="3D06A59ECE730EB71B511C17CE752F178259BD92";     curl -fsSL -o phpMyAdmin.tar.xz $URL;     curl -fsSL -o phpMyAdmin.tar.xz.asc $URL.asc;     echo "$SHA256 *phpMyAdmin.tar.xz" | sha256sum -c -;     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GPGKEY"         || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver keys.openpgp.org --recv-keys "$GPGKEY";     gpg --batch --verify phpMyAdmin.tar.xz.asc phpMyAdmin.tar.xz;     tar -xf phpMyAdmin.tar.xz -C /var/www/html --strip-components=1;     mkdir -p /var/www/html/tmp;     gpgconf --kill all;     rm -r "$GNUPGHOME" phpMyAdmin.tar.xz phpMyAdmin.tar.xz.asc;     rm -r -v /var/www/html/setup/ /var/www/html/examples/ /var/www/html/js/src/ /var/www/html/babel.config.json /var/www/html/doc/html/_sources/ /var/www/html/RELEASE-DATE-$VERSION /var/www/html/CONTRIBUTING.md;     grep -q -F "'configFile' => ROOT_PATH . 'config.inc.php'," /var/www/html/libraries/vendor_config.php;     sed -i "s@'configFile' => .*@'configFile' => '/etc/phpmyadmin/config.inc.php',@" /var/www/html/libraries/vendor_config.php;     grep -q -F "'configFile' => '/etc/phpmyadmin/config.inc.php'," /var/www/html/libraries/vendor_config.php;     php -l /var/www/html/libraries/vendor_config.php;     find /var/www/html -type d -exec chmod 555 {} \;;     find /var/www/html -type f -exec chmod 444 {} \;;     chmod 1777 /var/www/html/tmp; # buildkit
# Tue, 15 Sep 2026 22:26:40 GMT
COPY --chown=www-data:www-data config.inc.php /etc/phpmyadmin/config.inc.php # buildkit
# Tue, 15 Sep 2026 22:26:40 GMT
COPY --chown=www-data:www-data helpers.php /etc/phpmyadmin/helpers.php # buildkit
# Tue, 15 Sep 2026 22:26:40 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:26:40 GMT
USER root
# Tue, 15 Sep 2026 22:26:40 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:26:40 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa23d8d775206734ce3361ef8fe22fc6f849535b41d895e9b80d41a46d04f09c`  
		Last Modified: Tue, 15 Sep 2026 21:32:17 GMT  
		Size: 6.0 MB (5958274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b1aad5eac6103b7379436b15cff0bfb8de34d5c3045f6725427f5bb35fe38028`  
		Last Modified: Tue, 15 Sep 2026 21:32:17 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c954123643976176ad37b3e6fc45edeca05415fe904b6b8b7fd56a71d5c60f8`  
		Last Modified: Tue, 15 Sep 2026 21:32:17 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:152507c55643d529a0bfba903da98058b3de6f2a372972063cfa76b879a57762`  
		Last Modified: Tue, 15 Sep 2026 21:32:18 GMT  
		Size: 12.6 MB (12636181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2bb8a15a771107ba7c6fec02ea5cd6074d1046155097ebc7ae6f7017ba5cc73`  
		Last Modified: Tue, 15 Sep 2026 21:32:18 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00d12e922bb08d7c1fed5f13e76066f4d08bfd800069d474e2807e472bbeb33a`  
		Last Modified: Tue, 15 Sep 2026 21:32:18 GMT  
		Size: 13.4 MB (13418791 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b24d629f4145f96c63e48b095f8556b7fc46107899828036f2752e31af5be0d6`  
		Last Modified: Tue, 15 Sep 2026 21:32:19 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a2748e62d1e4c3ec336cefe19ae4643c91b5df3cf6048b86b8ae6ad66850572`  
		Last Modified: Tue, 15 Sep 2026 21:32:19 GMT  
		Size: 22.4 KB (22390 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b801eae04cc6748bfe14326938d9a46a0261678a37262f7592ce4bd69d6c257d`  
		Last Modified: Tue, 15 Sep 2026 21:32:19 GMT  
		Size: 22.4 KB (22397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:595cef5ebe9c47dece1eebf2d6f73cf814fc46d13875f4e3fc6f2d89ba9e087d`  
		Last Modified: Tue, 15 Sep 2026 21:32:20 GMT  
		Size: 9.2 KB (9250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33006f1318a45685ca4d902268e783eb7f144d3253bc95540552cd9ce4a107a7`  
		Last Modified: Tue, 15 Sep 2026 22:26:47 GMT  
		Size: 6.3 MB (6317281 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2f28300aa50b26a2975d7d2fb73e668a957043010049dc95acf149ff426ffd7`  
		Last Modified: Tue, 15 Sep 2026 22:26:47 GMT  
		Size: 3.3 MB (3308067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30a74e852c95bb05f3687f9b2914ff1755ea8224f79858a0f01e8b2610486472`  
		Last Modified: Tue, 15 Sep 2026 22:26:47 GMT  
		Size: 652.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa8dd8a8a11fd621664266c1018b28552279cc47bdcfad60e1a97cf970656c7`  
		Last Modified: Tue, 15 Sep 2026 22:26:47 GMT  
		Size: 14.1 MB (14087555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea2a9b52ffd2d3bba5c222eb05d57cc228b9b115ecafcb1167d39375be0b4c0c`  
		Last Modified: Tue, 15 Sep 2026 22:26:48 GMT  
		Size: 2.1 KB (2142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f10311f14443b3e7181366d5bb71cb8e362617ace828a350e1117925dc32724`  
		Last Modified: Tue, 15 Sep 2026 22:26:48 GMT  
		Size: 860.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a966f94bd92fc8a781b5d7776bdedad19671b3ab160d9d6e1fdc1de1827673e`  
		Last Modified: Tue, 15 Sep 2026 22:26:48 GMT  
		Size: 801.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `phpmyadmin:fpm-alpine` - unknown; unknown

```console
$ docker pull phpmyadmin@sha256:20181303033a857589f4c39e54b6fadf5fe3505ceb92d72b283c430b1597bd5a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 KB (48886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cac801ec5e063f320a5caedaa7970ddf568286e8c760ed5c505f979507cab332`

```dockerfile
```

-	Layers:
	-	`sha256:492ad5db312ea9caefa27da6fc87d818cfdeaa9ca658ac495c95f96bb5f96b9e`  
		Last Modified: Tue, 15 Sep 2026 22:26:46 GMT  
		Size: 48.9 KB (48886 bytes)  
		MIME: application/vnd.in-toto+json

### `phpmyadmin:fpm-alpine` - linux; arm variant v6

```console
$ docker pull phpmyadmin@sha256:0ea35d035de67470556d1e11caa2197336984dc96b6c8d90289de65f04e66c73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.0 MB (57020236 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ff6af2b2e59dd510e54349c45a7c851ba7c500db36b9ef099baad9f56b4d3743`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 21:12:11 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 15 Sep 2026 21:12:11 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Tue, 15 Sep 2026 21:12:11 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 15 Sep 2026 21:12:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:12:11 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:12:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:12:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:12:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:12:11 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 15 Sep 2026 21:12:11 GMT
ENV PHP_VERSION=8.3.33
# Tue, 15 Sep 2026 21:12:11 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Tue, 15 Sep 2026 21:12:11 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Tue, 15 Sep 2026 21:30:52 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Tue, 15 Sep 2026 21:30:52 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:33:33 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:33:33 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:33:33 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:33:34 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:33:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:33:34 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 21:33:34 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 15 Sep 2026 21:33:34 GMT
STOPSIGNAL SIGQUIT
# Tue, 15 Sep 2026 21:33:34 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 15 Sep 2026 21:33:34 GMT
CMD ["php-fpm"]
# Tue, 15 Sep 2026 22:11:29 GMT
ENV UPLOAD_PROGRESS_EXT_URL=https://github.com/php/pecl-php-uploadprogress/archive/refs/tags/uploadprogress-2.0.2.tar.gz
# Tue, 15 Sep 2026 22:11:29 GMT
ENV UPLOAD_PROGRESS_SHA256=fe3f6cdfcedad563c970c4fd1cda31e422cfc0df5cc9a217d8c80ed3c8d137f5
# Tue, 15 Sep 2026 22:11:29 GMT
RUN apk add --no-cache     bash     tzdata     gnupg # buildkit
# Tue, 15 Sep 2026 22:12:05 GMT
RUN set -ex;         apk add --no-cache --virtual .build-deps         bzip2-dev         freetype-dev         libjpeg-turbo-dev         libpng-dev         libwebp-dev         libxpm-dev         libzip-dev     ;         mkdir -p /tmp/uploadprogress;     curl -fsSL -o /tmp/uploadprogress/uploadprogress.tar.gz "$UPLOAD_PROGRESS_EXT_URL";     echo "$UPLOAD_PROGRESS_SHA256 /tmp/uploadprogress/uploadprogress.tar.gz" | sha256sum -c -;     tar -xf /tmp/uploadprogress/uploadprogress.tar.gz -C /tmp/uploadprogress --strip-components=1;         docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp --with-xpm;     docker-php-ext-install -j "$(nproc)"         bz2         gd         mysqli         opcache         zip         bcmath         /tmp/uploadprogress     ;         rm -r /tmp/uploadprogress;         runDeps="$(         scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions             | tr ',' '\n'             | sort -u             | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )";     apk add --no-network --virtual .phpmyadmin-phpexts-rundeps $runDeps;     apk del --no-network .build-deps # buildkit
# Tue, 15 Sep 2026 22:12:05 GMT
ENV PMA_SSL_DIR=/etc/phpmyadmin/ssl
# Tue, 15 Sep 2026 22:12:05 GMT
ENV MAX_EXECUTION_TIME=600
# Tue, 15 Sep 2026 22:12:05 GMT
ENV MEMORY_LIMIT=512M
# Tue, 15 Sep 2026 22:12:05 GMT
ENV UPLOAD_LIMIT=2048K
# Tue, 15 Sep 2026 22:12:05 GMT
ENV TZ=UTC
# Tue, 15 Sep 2026 22:12:05 GMT
ENV SESSION_SAVE_PATH=/sessions
# Tue, 15 Sep 2026 22:12:05 GMT
RUN set -ex;     mkdir $SESSION_SAVE_PATH;     mkdir -p $PMA_SSL_DIR;     chmod 1777 $SESSION_SAVE_PATH;     chmod 755 $PMA_SSL_DIR;     chown www-data:www-data /etc/phpmyadmin;     chown www-data:www-data $PMA_SSL_DIR;     chown www-data:www-data $SESSION_SAVE_PATH;         {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         {         echo 'session.cookie_httponly=1';         echo 'session.use_strict_mode=1';     } > $PHP_INI_DIR/conf.d/session-strict.ini;         {         echo 'allow_url_fopen=Off';         echo 'max_execution_time=${MAX_EXECUTION_TIME}';         echo 'max_input_vars=10000';         echo 'memory_limit=${MEMORY_LIMIT}';         echo 'post_max_size=${UPLOAD_LIMIT}';         echo 'upload_max_filesize=${UPLOAD_LIMIT}';         echo 'date.timezone=${TZ}';         echo 'session.save_path=${SESSION_SAVE_PATH}';     } > $PHP_INI_DIR/conf.d/phpmyadmin-misc.ini # buildkit
# Tue, 15 Sep 2026 22:12:05 GMT
USER www-data:www-data
# Tue, 15 Sep 2026 22:12:05 GMT
ENV VERSION=5.2.3
# Tue, 15 Sep 2026 22:12:05 GMT
ENV SHA256=57881348297c4412f86c410547cf76b4d8a236574dd2c6b7d6a2beebe7fc44e3
# Tue, 15 Sep 2026 22:12:05 GMT
ENV URL=https://files.phpmyadmin.net/phpMyAdmin/5.2.3/phpMyAdmin-5.2.3-all-languages.tar.xz
# Tue, 15 Sep 2026 22:12:05 GMT
LABEL org.opencontainers.image.title=Official phpMyAdmin Docker image org.opencontainers.image.description=Run phpMyAdmin with Alpine, Apache and PHP FPM. org.opencontainers.image.authors=The phpMyAdmin Team <developers@phpmyadmin.net> org.opencontainers.image.vendor=phpMyAdmin org.opencontainers.image.documentation=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.licenses=GPL-2.0-only org.opencontainers.image.version=5.2.3 org.opencontainers.image.url=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.source=https://github.com/phpmyadmin/docker.git
# Tue, 15 Sep 2026 22:12:09 GMT
RUN set -ex;         export GNUPGHOME="$(mktemp -d)";     export GPGKEY="3D06A59ECE730EB71B511C17CE752F178259BD92";     curl -fsSL -o phpMyAdmin.tar.xz $URL;     curl -fsSL -o phpMyAdmin.tar.xz.asc $URL.asc;     echo "$SHA256 *phpMyAdmin.tar.xz" | sha256sum -c -;     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GPGKEY"         || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver keys.openpgp.org --recv-keys "$GPGKEY";     gpg --batch --verify phpMyAdmin.tar.xz.asc phpMyAdmin.tar.xz;     tar -xf phpMyAdmin.tar.xz -C /var/www/html --strip-components=1;     mkdir -p /var/www/html/tmp;     gpgconf --kill all;     rm -r "$GNUPGHOME" phpMyAdmin.tar.xz phpMyAdmin.tar.xz.asc;     rm -r -v /var/www/html/setup/ /var/www/html/examples/ /var/www/html/js/src/ /var/www/html/babel.config.json /var/www/html/doc/html/_sources/ /var/www/html/RELEASE-DATE-$VERSION /var/www/html/CONTRIBUTING.md;     grep -q -F "'configFile' => ROOT_PATH . 'config.inc.php'," /var/www/html/libraries/vendor_config.php;     sed -i "s@'configFile' => .*@'configFile' => '/etc/phpmyadmin/config.inc.php',@" /var/www/html/libraries/vendor_config.php;     grep -q -F "'configFile' => '/etc/phpmyadmin/config.inc.php'," /var/www/html/libraries/vendor_config.php;     php -l /var/www/html/libraries/vendor_config.php;     find /var/www/html -type d -exec chmod 555 {} \;;     find /var/www/html -type f -exec chmod 444 {} \;;     chmod 1777 /var/www/html/tmp; # buildkit
# Tue, 15 Sep 2026 22:12:09 GMT
COPY --chown=www-data:www-data config.inc.php /etc/phpmyadmin/config.inc.php # buildkit
# Tue, 15 Sep 2026 22:12:09 GMT
COPY --chown=www-data:www-data helpers.php /etc/phpmyadmin/helpers.php # buildkit
# Tue, 15 Sep 2026 22:12:09 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:12:09 GMT
USER root
# Tue, 15 Sep 2026 22:12:09 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:12:09 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d33cd744ed9a152cd23dda6e673f548644014c35af9c1a7f47bdaf4a48aad4d`  
		Last Modified: Tue, 15 Sep 2026 21:15:27 GMT  
		Size: 5.5 MB (5549274 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa6cd7d111a6f4e881f25783c9d1847c65e291b2c4a1e59c959c008cbd300f0b`  
		Last Modified: Tue, 15 Sep 2026 21:15:27 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49cd9855b915d7901eaa7a0ee685f14adf7741c5b80f37b54030b5feafe5a2d2`  
		Last Modified: Tue, 15 Sep 2026 21:15:27 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d1d452397f3cad504f52a5128370bd07b15f6e6b0eabbb3a154968c8d9dae90`  
		Last Modified: Tue, 15 Sep 2026 21:33:40 GMT  
		Size: 12.6 MB (12636199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa1ba8bd87b45d207420be13b35987ed17409fa8a250389dfcb5d0c764ae79ee`  
		Last Modified: Tue, 15 Sep 2026 21:33:39 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3e78e6439c845a992b2f081c66a32f30c4865067d0d509bd6f627ac1fd733d5`  
		Last Modified: Tue, 15 Sep 2026 21:33:40 GMT  
		Size: 12.2 MB (12160759 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7064114439333dc06331287b1a601686482046aa7385168ce6ffdf7c20d2c46d`  
		Last Modified: Tue, 15 Sep 2026 21:33:39 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36d5efee19ad69698aaa1c0273a7e3aa1820f6730620ca1b33adff18e6e8da43`  
		Last Modified: Tue, 15 Sep 2026 21:33:40 GMT  
		Size: 22.2 KB (22172 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7779d2078a1307d163e59bf67a03293945cf0b1b8bc2f721b7f8f58c5a2ed35a`  
		Last Modified: Tue, 15 Sep 2026 21:33:40 GMT  
		Size: 22.2 KB (22188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e873b90d83421c0de677438f15a53420ed826c2af4a2c209938606bb076d2a7d`  
		Last Modified: Tue, 15 Sep 2026 21:33:41 GMT  
		Size: 9.2 KB (9250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:953468359f443147315473565858e72221f8974b8c1db99df386db40e76c1bce`  
		Last Modified: Tue, 15 Sep 2026 22:12:16 GMT  
		Size: 6.3 MB (6278153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f39b30941399eb5debff308af5e665662434e64db8ad2394d315093bbad99458`  
		Last Modified: Tue, 15 Sep 2026 22:12:15 GMT  
		Size: 2.7 MB (2692684 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5d376c9d7d8d959056f6e208a4fd3b7dbd81c27249dc8a8d8b7655925c92612`  
		Last Modified: Tue, 15 Sep 2026 22:12:15 GMT  
		Size: 645.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4541a7af2e7e8beae8f1781e32f1418313befbaa98b77d13d12448baf2f6ca19`  
		Last Modified: Tue, 15 Sep 2026 22:12:16 GMT  
		Size: 14.1 MB (14087543 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ea525b11cfef21110eb108fb856a1b715e500cfd8e3816ec2dfb213836ee6c3`  
		Last Modified: Tue, 15 Sep 2026 22:12:16 GMT  
		Size: 2.1 KB (2136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da0fa205c10c5395075228d0af357ec86c7122a8c82a3f14676de0e658b9fbeb`  
		Last Modified: Tue, 15 Sep 2026 22:12:17 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d09458a210aa9824f386e41374df0adf6a93e75722178908cbddbcdbd4a4672`  
		Last Modified: Tue, 15 Sep 2026 22:12:17 GMT  
		Size: 800.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `phpmyadmin:fpm-alpine` - unknown; unknown

```console
$ docker pull phpmyadmin@sha256:b047bcd4710c24dbf25faa8fc3c8853fcd6a4b50fe8accb205227c035e9a84c1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 KB (49005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8c786294e7c94dcc586cc02b73e044ec0e7bbd9204df434990077aac7a461ad`

```dockerfile
```

-	Layers:
	-	`sha256:495be7d2053e50561a23e5458ce0e3269ce19bb10d115c5181f9581e2aa0d82e`  
		Last Modified: Tue, 15 Sep 2026 22:12:15 GMT  
		Size: 49.0 KB (49005 bytes)  
		MIME: application/vnd.in-toto+json

### `phpmyadmin:fpm-alpine` - linux; arm variant v7

```console
$ docker pull phpmyadmin@sha256:f47c864cf44e27da0c8b646943f1e4419966eaffccaa7588098ab2bbec3c6870
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **54.8 MB (54839781 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa17182c907ac300be103170b7021aed3af0a12c09a525c3ea0ed978522447d9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 21:20:12 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 15 Sep 2026 21:20:12 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Tue, 15 Sep 2026 21:20:13 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 15 Sep 2026 21:20:13 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:20:13 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:20:13 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:20:13 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:20:13 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:20:13 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 15 Sep 2026 21:20:13 GMT
ENV PHP_VERSION=8.3.33
# Tue, 15 Sep 2026 21:20:13 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Tue, 15 Sep 2026 21:20:13 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Tue, 15 Sep 2026 21:50:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Tue, 15 Sep 2026 21:50:34 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:53:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:53:15 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:53:16 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:53:17 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:53:17 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:53:17 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 21:53:17 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 15 Sep 2026 21:53:17 GMT
STOPSIGNAL SIGQUIT
# Tue, 15 Sep 2026 21:53:17 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 15 Sep 2026 21:53:17 GMT
CMD ["php-fpm"]
# Tue, 15 Sep 2026 22:12:43 GMT
ENV UPLOAD_PROGRESS_EXT_URL=https://github.com/php/pecl-php-uploadprogress/archive/refs/tags/uploadprogress-2.0.2.tar.gz
# Tue, 15 Sep 2026 22:12:43 GMT
ENV UPLOAD_PROGRESS_SHA256=fe3f6cdfcedad563c970c4fd1cda31e422cfc0df5cc9a217d8c80ed3c8d137f5
# Tue, 15 Sep 2026 22:12:43 GMT
RUN apk add --no-cache     bash     tzdata     gnupg # buildkit
# Tue, 15 Sep 2026 22:13:20 GMT
RUN set -ex;         apk add --no-cache --virtual .build-deps         bzip2-dev         freetype-dev         libjpeg-turbo-dev         libpng-dev         libwebp-dev         libxpm-dev         libzip-dev     ;         mkdir -p /tmp/uploadprogress;     curl -fsSL -o /tmp/uploadprogress/uploadprogress.tar.gz "$UPLOAD_PROGRESS_EXT_URL";     echo "$UPLOAD_PROGRESS_SHA256 /tmp/uploadprogress/uploadprogress.tar.gz" | sha256sum -c -;     tar -xf /tmp/uploadprogress/uploadprogress.tar.gz -C /tmp/uploadprogress --strip-components=1;         docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp --with-xpm;     docker-php-ext-install -j "$(nproc)"         bz2         gd         mysqli         opcache         zip         bcmath         /tmp/uploadprogress     ;         rm -r /tmp/uploadprogress;         runDeps="$(         scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions             | tr ',' '\n'             | sort -u             | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )";     apk add --no-network --virtual .phpmyadmin-phpexts-rundeps $runDeps;     apk del --no-network .build-deps # buildkit
# Tue, 15 Sep 2026 22:13:20 GMT
ENV PMA_SSL_DIR=/etc/phpmyadmin/ssl
# Tue, 15 Sep 2026 22:13:20 GMT
ENV MAX_EXECUTION_TIME=600
# Tue, 15 Sep 2026 22:13:20 GMT
ENV MEMORY_LIMIT=512M
# Tue, 15 Sep 2026 22:13:20 GMT
ENV UPLOAD_LIMIT=2048K
# Tue, 15 Sep 2026 22:13:20 GMT
ENV TZ=UTC
# Tue, 15 Sep 2026 22:13:20 GMT
ENV SESSION_SAVE_PATH=/sessions
# Tue, 15 Sep 2026 22:13:20 GMT
RUN set -ex;     mkdir $SESSION_SAVE_PATH;     mkdir -p $PMA_SSL_DIR;     chmod 1777 $SESSION_SAVE_PATH;     chmod 755 $PMA_SSL_DIR;     chown www-data:www-data /etc/phpmyadmin;     chown www-data:www-data $PMA_SSL_DIR;     chown www-data:www-data $SESSION_SAVE_PATH;         {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         {         echo 'session.cookie_httponly=1';         echo 'session.use_strict_mode=1';     } > $PHP_INI_DIR/conf.d/session-strict.ini;         {         echo 'allow_url_fopen=Off';         echo 'max_execution_time=${MAX_EXECUTION_TIME}';         echo 'max_input_vars=10000';         echo 'memory_limit=${MEMORY_LIMIT}';         echo 'post_max_size=${UPLOAD_LIMIT}';         echo 'upload_max_filesize=${UPLOAD_LIMIT}';         echo 'date.timezone=${TZ}';         echo 'session.save_path=${SESSION_SAVE_PATH}';     } > $PHP_INI_DIR/conf.d/phpmyadmin-misc.ini # buildkit
# Tue, 15 Sep 2026 22:13:20 GMT
USER www-data:www-data
# Tue, 15 Sep 2026 22:13:20 GMT
ENV VERSION=5.2.3
# Tue, 15 Sep 2026 22:13:20 GMT
ENV SHA256=57881348297c4412f86c410547cf76b4d8a236574dd2c6b7d6a2beebe7fc44e3
# Tue, 15 Sep 2026 22:13:20 GMT
ENV URL=https://files.phpmyadmin.net/phpMyAdmin/5.2.3/phpMyAdmin-5.2.3-all-languages.tar.xz
# Tue, 15 Sep 2026 22:13:20 GMT
LABEL org.opencontainers.image.title=Official phpMyAdmin Docker image org.opencontainers.image.description=Run phpMyAdmin with Alpine, Apache and PHP FPM. org.opencontainers.image.authors=The phpMyAdmin Team <developers@phpmyadmin.net> org.opencontainers.image.vendor=phpMyAdmin org.opencontainers.image.documentation=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.licenses=GPL-2.0-only org.opencontainers.image.version=5.2.3 org.opencontainers.image.url=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.source=https://github.com/phpmyadmin/docker.git
# Tue, 15 Sep 2026 22:13:24 GMT
RUN set -ex;         export GNUPGHOME="$(mktemp -d)";     export GPGKEY="3D06A59ECE730EB71B511C17CE752F178259BD92";     curl -fsSL -o phpMyAdmin.tar.xz $URL;     curl -fsSL -o phpMyAdmin.tar.xz.asc $URL.asc;     echo "$SHA256 *phpMyAdmin.tar.xz" | sha256sum -c -;     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GPGKEY"         || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver keys.openpgp.org --recv-keys "$GPGKEY";     gpg --batch --verify phpMyAdmin.tar.xz.asc phpMyAdmin.tar.xz;     tar -xf phpMyAdmin.tar.xz -C /var/www/html --strip-components=1;     mkdir -p /var/www/html/tmp;     gpgconf --kill all;     rm -r "$GNUPGHOME" phpMyAdmin.tar.xz phpMyAdmin.tar.xz.asc;     rm -r -v /var/www/html/setup/ /var/www/html/examples/ /var/www/html/js/src/ /var/www/html/babel.config.json /var/www/html/doc/html/_sources/ /var/www/html/RELEASE-DATE-$VERSION /var/www/html/CONTRIBUTING.md;     grep -q -F "'configFile' => ROOT_PATH . 'config.inc.php'," /var/www/html/libraries/vendor_config.php;     sed -i "s@'configFile' => .*@'configFile' => '/etc/phpmyadmin/config.inc.php',@" /var/www/html/libraries/vendor_config.php;     grep -q -F "'configFile' => '/etc/phpmyadmin/config.inc.php'," /var/www/html/libraries/vendor_config.php;     php -l /var/www/html/libraries/vendor_config.php;     find /var/www/html -type d -exec chmod 555 {} \;;     find /var/www/html -type f -exec chmod 444 {} \;;     chmod 1777 /var/www/html/tmp; # buildkit
# Tue, 15 Sep 2026 22:13:24 GMT
COPY --chown=www-data:www-data config.inc.php /etc/phpmyadmin/config.inc.php # buildkit
# Tue, 15 Sep 2026 22:13:25 GMT
COPY --chown=www-data:www-data helpers.php /etc/phpmyadmin/helpers.php # buildkit
# Tue, 15 Sep 2026 22:13:25 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:13:25 GMT
USER root
# Tue, 15 Sep 2026 22:13:25 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:13:25 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81da94a8c5e8bcddde3c447b7ff5a25d8313d70bb0a2986ade4e889be081f052`  
		Last Modified: Tue, 15 Sep 2026 21:23:18 GMT  
		Size: 5.2 MB (5200524 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b38ac6422b71d71640996d7661108fd5ec7b392c77c701eeb6ced34f6c70d993`  
		Last Modified: Tue, 15 Sep 2026 21:23:18 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9acf8e248d1edc907ea51bb31c7fb5af293f2e0abf54a82144bd94e1aeb7837a`  
		Last Modified: Tue, 15 Sep 2026 21:23:18 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f033b5d6a3cfaf58a954a964f183a563f8de4dd2f7112f5eaecb64e8a883f4e3`  
		Last Modified: Tue, 15 Sep 2026 21:53:24 GMT  
		Size: 12.6 MB (12636206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ebe9f89f2f0e9ccf96ca3e418d43e84088d92f89985ac034d2dedc22360649c`  
		Last Modified: Tue, 15 Sep 2026 21:53:23 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c674a50dc9b7bf69a3a2dae494cece061aa1e18e13de6e2e31b060f16e57a292`  
		Last Modified: Tue, 15 Sep 2026 21:53:24 GMT  
		Size: 11.4 MB (11444362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b5543878d50a0b28cd8dd65ea51cb212955cc2f7dca99b6f624e9b5dd669b82`  
		Last Modified: Tue, 15 Sep 2026 21:53:23 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a17625ab4432fd5c14540e005c7d545b2995acc9d0eeffb86f6fc74706504a20`  
		Last Modified: Tue, 15 Sep 2026 21:53:24 GMT  
		Size: 22.2 KB (22180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b89bc6c5024864149002010bfa4b3c509bafde5457a4f54ed502ab10c1ee3202`  
		Last Modified: Tue, 15 Sep 2026 21:53:24 GMT  
		Size: 22.2 KB (22189 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:462e82727d047a6ec808c8eb6c0cf007177902c8c3541236e9acba24d00c35a7`  
		Last Modified: Tue, 15 Sep 2026 21:53:25 GMT  
		Size: 9.3 KB (9251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a72d34b1ded771dae81c9cc46f6945112b22ba4170bd6be4464f592ba7460b08`  
		Last Modified: Tue, 15 Sep 2026 22:13:31 GMT  
		Size: 5.6 MB (5626665 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22073908433155236411563770c848e32dd49fcff02e4b9d8564d1363bd459a9`  
		Last Modified: Tue, 15 Sep 2026 22:13:31 GMT  
		Size: 2.5 MB (2521683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a9c873869ae20b4c7180ad7486eeeba4adad1f10204d8419fb4dc901450890b`  
		Last Modified: Tue, 15 Sep 2026 22:13:30 GMT  
		Size: 644.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19f08fad0ae00dbc01279d79e8548e260024c91887630ee3be52034ef27bca4d`  
		Last Modified: Tue, 15 Sep 2026 22:13:31 GMT  
		Size: 14.1 MB (14087544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea412a5e9a74947e6cc9f9d3434ac5a703f1a8668b1613da98dd0b5f9d49bef`  
		Last Modified: Tue, 15 Sep 2026 22:13:32 GMT  
		Size: 2.1 KB (2138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92359c2b5d36d62e6d8af0414feeb00ffb7f781a484cfaa03ffbdf3e87189351`  
		Last Modified: Tue, 15 Sep 2026 22:13:32 GMT  
		Size: 855.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f19b19dba2f0086eb86d82fa78b44876d81083f361327d2c9182da36d2eed910`  
		Last Modified: Tue, 15 Sep 2026 22:13:32 GMT  
		Size: 799.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `phpmyadmin:fpm-alpine` - unknown; unknown

```console
$ docker pull phpmyadmin@sha256:a1034239db64f91be966cb32119a8ca62ecda646c7bd21e8f144e9ee252d4244
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 KB (49005 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c41aa9fc523321107ae88be605ccf84a28d68cfe71d55179d21b04d5be674eef`

```dockerfile
```

-	Layers:
	-	`sha256:866b87c5de955cfc1c581e29dc59ca9cfa5e0e28822c93268d3ed98ed7639740`  
		Last Modified: Tue, 15 Sep 2026 22:13:30 GMT  
		Size: 49.0 KB (49005 bytes)  
		MIME: application/vnd.in-toto+json

### `phpmyadmin:fpm-alpine` - linux; arm64 variant v8

```console
$ docker pull phpmyadmin@sha256:3249c9e8bf4562192fc3efe41d56e72e68c410d14a27de2e9f0a733e30ecce09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.4 MB (60414969 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9408be6a9f815f82f4acae874aa5d9f6cf850442a1925fac69c1203e69044d16`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 21:32:05 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 15 Sep 2026 21:32:05 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Tue, 15 Sep 2026 21:32:05 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 15 Sep 2026 21:32:05 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:32:05 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:32:05 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:32:05 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:32:05 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:32:05 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 15 Sep 2026 21:32:05 GMT
ENV PHP_VERSION=8.3.33
# Tue, 15 Sep 2026 21:32:05 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Tue, 15 Sep 2026 21:32:05 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Tue, 15 Sep 2026 21:32:08 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Tue, 15 Sep 2026 21:32:08 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:36:31 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:36:31 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:36:32 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:36:33 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:36:33 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:36:33 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 21:36:33 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 15 Sep 2026 21:36:33 GMT
STOPSIGNAL SIGQUIT
# Tue, 15 Sep 2026 21:36:33 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 15 Sep 2026 21:36:33 GMT
CMD ["php-fpm"]
# Tue, 15 Sep 2026 22:51:15 GMT
ENV UPLOAD_PROGRESS_EXT_URL=https://github.com/php/pecl-php-uploadprogress/archive/refs/tags/uploadprogress-2.0.2.tar.gz
# Tue, 15 Sep 2026 22:51:15 GMT
ENV UPLOAD_PROGRESS_SHA256=fe3f6cdfcedad563c970c4fd1cda31e422cfc0df5cc9a217d8c80ed3c8d137f5
# Tue, 15 Sep 2026 22:51:15 GMT
RUN apk add --no-cache     bash     tzdata     gnupg # buildkit
# Tue, 15 Sep 2026 22:52:55 GMT
RUN set -ex;         apk add --no-cache --virtual .build-deps         bzip2-dev         freetype-dev         libjpeg-turbo-dev         libpng-dev         libwebp-dev         libxpm-dev         libzip-dev     ;         mkdir -p /tmp/uploadprogress;     curl -fsSL -o /tmp/uploadprogress/uploadprogress.tar.gz "$UPLOAD_PROGRESS_EXT_URL";     echo "$UPLOAD_PROGRESS_SHA256 /tmp/uploadprogress/uploadprogress.tar.gz" | sha256sum -c -;     tar -xf /tmp/uploadprogress/uploadprogress.tar.gz -C /tmp/uploadprogress --strip-components=1;         docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp --with-xpm;     docker-php-ext-install -j "$(nproc)"         bz2         gd         mysqli         opcache         zip         bcmath         /tmp/uploadprogress     ;         rm -r /tmp/uploadprogress;         runDeps="$(         scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions             | tr ',' '\n'             | sort -u             | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )";     apk add --no-network --virtual .phpmyadmin-phpexts-rundeps $runDeps;     apk del --no-network .build-deps # buildkit
# Tue, 15 Sep 2026 22:52:55 GMT
ENV PMA_SSL_DIR=/etc/phpmyadmin/ssl
# Tue, 15 Sep 2026 22:52:55 GMT
ENV MAX_EXECUTION_TIME=600
# Tue, 15 Sep 2026 22:52:55 GMT
ENV MEMORY_LIMIT=512M
# Tue, 15 Sep 2026 22:52:55 GMT
ENV UPLOAD_LIMIT=2048K
# Tue, 15 Sep 2026 22:52:55 GMT
ENV TZ=UTC
# Tue, 15 Sep 2026 22:52:55 GMT
ENV SESSION_SAVE_PATH=/sessions
# Tue, 15 Sep 2026 22:52:55 GMT
RUN set -ex;     mkdir $SESSION_SAVE_PATH;     mkdir -p $PMA_SSL_DIR;     chmod 1777 $SESSION_SAVE_PATH;     chmod 755 $PMA_SSL_DIR;     chown www-data:www-data /etc/phpmyadmin;     chown www-data:www-data $PMA_SSL_DIR;     chown www-data:www-data $SESSION_SAVE_PATH;         {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         {         echo 'session.cookie_httponly=1';         echo 'session.use_strict_mode=1';     } > $PHP_INI_DIR/conf.d/session-strict.ini;         {         echo 'allow_url_fopen=Off';         echo 'max_execution_time=${MAX_EXECUTION_TIME}';         echo 'max_input_vars=10000';         echo 'memory_limit=${MEMORY_LIMIT}';         echo 'post_max_size=${UPLOAD_LIMIT}';         echo 'upload_max_filesize=${UPLOAD_LIMIT}';         echo 'date.timezone=${TZ}';         echo 'session.save_path=${SESSION_SAVE_PATH}';     } > $PHP_INI_DIR/conf.d/phpmyadmin-misc.ini # buildkit
# Tue, 15 Sep 2026 22:52:55 GMT
USER www-data:www-data
# Tue, 15 Sep 2026 22:52:55 GMT
ENV VERSION=5.2.3
# Tue, 15 Sep 2026 22:52:55 GMT
ENV SHA256=57881348297c4412f86c410547cf76b4d8a236574dd2c6b7d6a2beebe7fc44e3
# Tue, 15 Sep 2026 22:52:55 GMT
ENV URL=https://files.phpmyadmin.net/phpMyAdmin/5.2.3/phpMyAdmin-5.2.3-all-languages.tar.xz
# Tue, 15 Sep 2026 22:52:55 GMT
LABEL org.opencontainers.image.title=Official phpMyAdmin Docker image org.opencontainers.image.description=Run phpMyAdmin with Alpine, Apache and PHP FPM. org.opencontainers.image.authors=The phpMyAdmin Team <developers@phpmyadmin.net> org.opencontainers.image.vendor=phpMyAdmin org.opencontainers.image.documentation=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.licenses=GPL-2.0-only org.opencontainers.image.version=5.2.3 org.opencontainers.image.url=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.source=https://github.com/phpmyadmin/docker.git
# Tue, 15 Sep 2026 22:52:58 GMT
RUN set -ex;         export GNUPGHOME="$(mktemp -d)";     export GPGKEY="3D06A59ECE730EB71B511C17CE752F178259BD92";     curl -fsSL -o phpMyAdmin.tar.xz $URL;     curl -fsSL -o phpMyAdmin.tar.xz.asc $URL.asc;     echo "$SHA256 *phpMyAdmin.tar.xz" | sha256sum -c -;     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GPGKEY"         || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver keys.openpgp.org --recv-keys "$GPGKEY";     gpg --batch --verify phpMyAdmin.tar.xz.asc phpMyAdmin.tar.xz;     tar -xf phpMyAdmin.tar.xz -C /var/www/html --strip-components=1;     mkdir -p /var/www/html/tmp;     gpgconf --kill all;     rm -r "$GNUPGHOME" phpMyAdmin.tar.xz phpMyAdmin.tar.xz.asc;     rm -r -v /var/www/html/setup/ /var/www/html/examples/ /var/www/html/js/src/ /var/www/html/babel.config.json /var/www/html/doc/html/_sources/ /var/www/html/RELEASE-DATE-$VERSION /var/www/html/CONTRIBUTING.md;     grep -q -F "'configFile' => ROOT_PATH . 'config.inc.php'," /var/www/html/libraries/vendor_config.php;     sed -i "s@'configFile' => .*@'configFile' => '/etc/phpmyadmin/config.inc.php',@" /var/www/html/libraries/vendor_config.php;     grep -q -F "'configFile' => '/etc/phpmyadmin/config.inc.php'," /var/www/html/libraries/vendor_config.php;     php -l /var/www/html/libraries/vendor_config.php;     find /var/www/html -type d -exec chmod 555 {} \;;     find /var/www/html -type f -exec chmod 444 {} \;;     chmod 1777 /var/www/html/tmp; # buildkit
# Tue, 15 Sep 2026 22:52:58 GMT
COPY --chown=www-data:www-data config.inc.php /etc/phpmyadmin/config.inc.php # buildkit
# Tue, 15 Sep 2026 22:52:59 GMT
COPY --chown=www-data:www-data helpers.php /etc/phpmyadmin/helpers.php # buildkit
# Tue, 15 Sep 2026 22:52:59 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:52:59 GMT
USER root
# Tue, 15 Sep 2026 22:52:59 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:52:59 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df134b01feb60717725118c6d135d60c452de8e52f82fcbad62ffd95c280c5d9`  
		Last Modified: Tue, 15 Sep 2026 21:36:39 GMT  
		Size: 6.3 MB (6270036 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8e9e961264834f3bba3b1286c0ad11bf84279e35762387b903eb09c6cb2c974`  
		Last Modified: Tue, 15 Sep 2026 21:36:39 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e85eb528b6c4bf97b9194c7aa38d2958927b8d3537ced3ad5e499d4102e070e`  
		Last Modified: Tue, 15 Sep 2026 21:36:39 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3f166b52c745e1887749f6fa83d696f50235834282d6ce70d5a974e614c9d66`  
		Last Modified: Tue, 15 Sep 2026 21:36:40 GMT  
		Size: 12.6 MB (12636186 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7c9286590c7408de1afb47f038073348a9c1520b5ef889e2fb4713fa451c743`  
		Last Modified: Tue, 15 Sep 2026 21:36:40 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62e5654cccf01bccf863bc259d2e733010e611f5323d280b1159e331a967d3ea`  
		Last Modified: Tue, 15 Sep 2026 21:36:41 GMT  
		Size: 13.3 MB (13319143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:697f809c130ec72a1aebdcc1df99739999aa089a71df8f0cbd5f2a92474c4fb2`  
		Last Modified: Tue, 15 Sep 2026 21:36:41 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7167e3c75127ea3e4c7cfc8f938dbfacca02c54fcfda19f8d21eef19e6ac792`  
		Last Modified: Tue, 15 Sep 2026 21:36:41 GMT  
		Size: 22.2 KB (22208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14a93d5fddf9ecbc9d25bef1dbb02c92e963d2befeb5f82546ddf8805d6fb078`  
		Last Modified: Tue, 15 Sep 2026 21:36:42 GMT  
		Size: 22.2 KB (22219 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36d95975daa1409ae1c856d1292eb95954375f4beca2dafbce1593390d282b5c`  
		Last Modified: Tue, 15 Sep 2026 21:36:42 GMT  
		Size: 9.3 KB (9251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ef78c23333b198988d6e4a534da0ee3682349ca033ab041cca991f736909795`  
		Last Modified: Tue, 15 Sep 2026 22:53:05 GMT  
		Size: 6.3 MB (6271432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c59e5c28b9cba70d8767f6d9ca09e3b3ed8c0fe062d6b008fe3b834dc8e7bb32`  
		Last Modified: Tue, 15 Sep 2026 22:53:05 GMT  
		Size: 3.6 MB (3585350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e7b52c379d80ef20615dbea782bcc694cec3149dd524dbaac65e6a3a6678fbc`  
		Last Modified: Tue, 15 Sep 2026 22:53:04 GMT  
		Size: 645.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b9809820b18f16d2d44896d08d57d8c206163be5ed8f2fb8efc1e617901c946`  
		Last Modified: Tue, 15 Sep 2026 22:53:05 GMT  
		Size: 14.1 MB (14087544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:031de79fd9c11071fecc452d2ed23dba3bbfaed931a4f3edf993937a269733f8`  
		Last Modified: Tue, 15 Sep 2026 22:53:06 GMT  
		Size: 2.1 KB (2140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6424ccd01978a42050a09ac936e1518bf3bbba9b9b545482eb0a6a4c652259fb`  
		Last Modified: Tue, 15 Sep 2026 22:53:06 GMT  
		Size: 858.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cda0684691259c9f8d5dbb7dac5ee120445ab9a05d7f088978dcc252343be6a`  
		Last Modified: Tue, 15 Sep 2026 22:53:06 GMT  
		Size: 800.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `phpmyadmin:fpm-alpine` - unknown; unknown

```console
$ docker pull phpmyadmin@sha256:d1639d1efa39ef792a98d1ea3544db614cd069ad875cd3a73fb9f4e4faefb48a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **49.0 KB (49035 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8db7fd7a34115d715240b9559db618fc53f177e68a2631322ad9f10f793b6ab1`

```dockerfile
```

-	Layers:
	-	`sha256:1cc9f34e02df09fd9c163ece95bc9743cd77567172361b23febf7b737c4fb584`  
		Last Modified: Tue, 15 Sep 2026 22:53:04 GMT  
		Size: 49.0 KB (49035 bytes)  
		MIME: application/vnd.in-toto+json

### `phpmyadmin:fpm-alpine` - linux; 386

```console
$ docker pull phpmyadmin@sha256:80bccdb166211cbd781696312c9114f5e808353969af2aedfdcbc5f07b27f381
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **59.5 MB (59545881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a59d1bb472798179012ef23b5d737780307442e6ff65420a57693cfba2e00b20`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 21:12:56 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 15 Sep 2026 21:12:56 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Tue, 15 Sep 2026 21:12:56 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 15 Sep 2026 21:12:56 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:12:56 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:12:56 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:12:56 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:12:56 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:12:56 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 15 Sep 2026 21:12:56 GMT
ENV PHP_VERSION=8.3.33
# Tue, 15 Sep 2026 21:12:56 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Tue, 15 Sep 2026 21:12:56 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Tue, 15 Sep 2026 21:30:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Tue, 15 Sep 2026 21:30:47 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:33:34 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:33:34 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:33:35 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:33:35 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:33:35 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:33:35 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 21:33:36 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 15 Sep 2026 21:33:36 GMT
STOPSIGNAL SIGQUIT
# Tue, 15 Sep 2026 21:33:36 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 15 Sep 2026 21:33:36 GMT
CMD ["php-fpm"]
# Tue, 15 Sep 2026 22:12:30 GMT
ENV UPLOAD_PROGRESS_EXT_URL=https://github.com/php/pecl-php-uploadprogress/archive/refs/tags/uploadprogress-2.0.2.tar.gz
# Tue, 15 Sep 2026 22:12:30 GMT
ENV UPLOAD_PROGRESS_SHA256=fe3f6cdfcedad563c970c4fd1cda31e422cfc0df5cc9a217d8c80ed3c8d137f5
# Tue, 15 Sep 2026 22:12:30 GMT
RUN apk add --no-cache     bash     tzdata     gnupg # buildkit
# Tue, 15 Sep 2026 22:13:14 GMT
RUN set -ex;         apk add --no-cache --virtual .build-deps         bzip2-dev         freetype-dev         libjpeg-turbo-dev         libpng-dev         libwebp-dev         libxpm-dev         libzip-dev     ;         mkdir -p /tmp/uploadprogress;     curl -fsSL -o /tmp/uploadprogress/uploadprogress.tar.gz "$UPLOAD_PROGRESS_EXT_URL";     echo "$UPLOAD_PROGRESS_SHA256 /tmp/uploadprogress/uploadprogress.tar.gz" | sha256sum -c -;     tar -xf /tmp/uploadprogress/uploadprogress.tar.gz -C /tmp/uploadprogress --strip-components=1;         docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp --with-xpm;     docker-php-ext-install -j "$(nproc)"         bz2         gd         mysqli         opcache         zip         bcmath         /tmp/uploadprogress     ;         rm -r /tmp/uploadprogress;         runDeps="$(         scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions             | tr ',' '\n'             | sort -u             | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )";     apk add --no-network --virtual .phpmyadmin-phpexts-rundeps $runDeps;     apk del --no-network .build-deps # buildkit
# Tue, 15 Sep 2026 22:13:14 GMT
ENV PMA_SSL_DIR=/etc/phpmyadmin/ssl
# Tue, 15 Sep 2026 22:13:14 GMT
ENV MAX_EXECUTION_TIME=600
# Tue, 15 Sep 2026 22:13:14 GMT
ENV MEMORY_LIMIT=512M
# Tue, 15 Sep 2026 22:13:14 GMT
ENV UPLOAD_LIMIT=2048K
# Tue, 15 Sep 2026 22:13:14 GMT
ENV TZ=UTC
# Tue, 15 Sep 2026 22:13:14 GMT
ENV SESSION_SAVE_PATH=/sessions
# Tue, 15 Sep 2026 22:13:15 GMT
RUN set -ex;     mkdir $SESSION_SAVE_PATH;     mkdir -p $PMA_SSL_DIR;     chmod 1777 $SESSION_SAVE_PATH;     chmod 755 $PMA_SSL_DIR;     chown www-data:www-data /etc/phpmyadmin;     chown www-data:www-data $PMA_SSL_DIR;     chown www-data:www-data $SESSION_SAVE_PATH;         {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         {         echo 'session.cookie_httponly=1';         echo 'session.use_strict_mode=1';     } > $PHP_INI_DIR/conf.d/session-strict.ini;         {         echo 'allow_url_fopen=Off';         echo 'max_execution_time=${MAX_EXECUTION_TIME}';         echo 'max_input_vars=10000';         echo 'memory_limit=${MEMORY_LIMIT}';         echo 'post_max_size=${UPLOAD_LIMIT}';         echo 'upload_max_filesize=${UPLOAD_LIMIT}';         echo 'date.timezone=${TZ}';         echo 'session.save_path=${SESSION_SAVE_PATH}';     } > $PHP_INI_DIR/conf.d/phpmyadmin-misc.ini # buildkit
# Tue, 15 Sep 2026 22:13:15 GMT
USER www-data:www-data
# Tue, 15 Sep 2026 22:13:15 GMT
ENV VERSION=5.2.3
# Tue, 15 Sep 2026 22:13:15 GMT
ENV SHA256=57881348297c4412f86c410547cf76b4d8a236574dd2c6b7d6a2beebe7fc44e3
# Tue, 15 Sep 2026 22:13:15 GMT
ENV URL=https://files.phpmyadmin.net/phpMyAdmin/5.2.3/phpMyAdmin-5.2.3-all-languages.tar.xz
# Tue, 15 Sep 2026 22:13:15 GMT
LABEL org.opencontainers.image.title=Official phpMyAdmin Docker image org.opencontainers.image.description=Run phpMyAdmin with Alpine, Apache and PHP FPM. org.opencontainers.image.authors=The phpMyAdmin Team <developers@phpmyadmin.net> org.opencontainers.image.vendor=phpMyAdmin org.opencontainers.image.documentation=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.licenses=GPL-2.0-only org.opencontainers.image.version=5.2.3 org.opencontainers.image.url=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.source=https://github.com/phpmyadmin/docker.git
# Tue, 15 Sep 2026 22:13:18 GMT
RUN set -ex;         export GNUPGHOME="$(mktemp -d)";     export GPGKEY="3D06A59ECE730EB71B511C17CE752F178259BD92";     curl -fsSL -o phpMyAdmin.tar.xz $URL;     curl -fsSL -o phpMyAdmin.tar.xz.asc $URL.asc;     echo "$SHA256 *phpMyAdmin.tar.xz" | sha256sum -c -;     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GPGKEY"         || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver keys.openpgp.org --recv-keys "$GPGKEY";     gpg --batch --verify phpMyAdmin.tar.xz.asc phpMyAdmin.tar.xz;     tar -xf phpMyAdmin.tar.xz -C /var/www/html --strip-components=1;     mkdir -p /var/www/html/tmp;     gpgconf --kill all;     rm -r "$GNUPGHOME" phpMyAdmin.tar.xz phpMyAdmin.tar.xz.asc;     rm -r -v /var/www/html/setup/ /var/www/html/examples/ /var/www/html/js/src/ /var/www/html/babel.config.json /var/www/html/doc/html/_sources/ /var/www/html/RELEASE-DATE-$VERSION /var/www/html/CONTRIBUTING.md;     grep -q -F "'configFile' => ROOT_PATH . 'config.inc.php'," /var/www/html/libraries/vendor_config.php;     sed -i "s@'configFile' => .*@'configFile' => '/etc/phpmyadmin/config.inc.php',@" /var/www/html/libraries/vendor_config.php;     grep -q -F "'configFile' => '/etc/phpmyadmin/config.inc.php'," /var/www/html/libraries/vendor_config.php;     php -l /var/www/html/libraries/vendor_config.php;     find /var/www/html -type d -exec chmod 555 {} \;;     find /var/www/html -type f -exec chmod 444 {} \;;     chmod 1777 /var/www/html/tmp; # buildkit
# Tue, 15 Sep 2026 22:13:18 GMT
COPY --chown=www-data:www-data config.inc.php /etc/phpmyadmin/config.inc.php # buildkit
# Tue, 15 Sep 2026 22:13:18 GMT
COPY --chown=www-data:www-data helpers.php /etc/phpmyadmin/helpers.php # buildkit
# Tue, 15 Sep 2026 22:13:18 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Tue, 15 Sep 2026 22:13:18 GMT
USER root
# Tue, 15 Sep 2026 22:13:18 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Tue, 15 Sep 2026 22:13:18 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27b6809bfa9d7947cde272efb3c353953011d9e0309c3f7db749c3d29381b9b0`  
		Last Modified: Tue, 15 Sep 2026 21:16:21 GMT  
		Size: 5.8 MB (5807686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef45763f16396a2443a037318bcd7dc013a89c57fef0fe5cf2b7ec43bba35067`  
		Last Modified: Tue, 15 Sep 2026 21:16:21 GMT  
		Size: 935.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:315d494f3ccd2edd5ee38e29d84d22d0280a6969e3a9e14238585944395aa932`  
		Last Modified: Tue, 15 Sep 2026 21:16:21 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1811c4b5554dfc6d9ef936f671c54ebd87451ed0c0a46438bfa5fec982fd5b90`  
		Last Modified: Tue, 15 Sep 2026 21:33:42 GMT  
		Size: 12.6 MB (12636177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b1bd51d9d02ccec4e58d5ff54fbe58c15276a5e9533d648701c4a0eb1fc449e`  
		Last Modified: Tue, 15 Sep 2026 21:33:42 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1385cc2633b97bf8090a8b2b37c34aa958f8e5924156b4c150b80b1e298446c6`  
		Last Modified: Tue, 15 Sep 2026 21:33:42 GMT  
		Size: 13.7 MB (13693894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:426dbb15a644db112d65efcbd2b6dd1fd1c1ebf8f5e015eb8660333fc353f0ac`  
		Last Modified: Tue, 15 Sep 2026 21:33:42 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f5eb1ff26ee567c69d856613d1f35343817f8112a7cef11827e22df603e96bd`  
		Last Modified: Tue, 15 Sep 2026 21:33:43 GMT  
		Size: 22.4 KB (22397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfafdeadcb26decdc5299c85ae55fdddb9cf930257c07977eb17efaa23df0822`  
		Last Modified: Tue, 15 Sep 2026 21:33:43 GMT  
		Size: 22.4 KB (22405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3916177e51b3e22ded7bf9ceefc88533d16cf7ab806de00ecfdcae7f38ec96d`  
		Last Modified: Tue, 15 Sep 2026 21:33:44 GMT  
		Size: 9.3 KB (9251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebdba2ab3dc0dd9e40ee296ce71c1646b7492f4bcb6b881acb6ed890491c4751`  
		Last Modified: Tue, 15 Sep 2026 22:13:24 GMT  
		Size: 6.2 MB (6185755 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:797c7eb85918d92cffb7af5046bd54682242b123b84d8d3c14f53ed4a3a29070`  
		Last Modified: Tue, 15 Sep 2026 22:13:24 GMT  
		Size: 3.4 MB (3402074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54759d7d5396e07a044bea87de807ed7bdeb8bf9305bf98d8a68775935facd9a`  
		Last Modified: Tue, 15 Sep 2026 22:13:23 GMT  
		Size: 644.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:84f753bce60e61d44c0ad056351b8db0d37850cf448a44da3f2d1e06d0730dc9`  
		Last Modified: Tue, 15 Sep 2026 22:13:24 GMT  
		Size: 14.1 MB (14087545 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d80349711a1e3e30165305b0ac657a66890a3e8f14e8fc98ed93ce1c8b496582`  
		Last Modified: Tue, 15 Sep 2026 22:13:25 GMT  
		Size: 2.1 KB (2137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3993d8fcde0872174c058c72e90ac2a5acf16bbd174a3c0517511594c7811b2`  
		Last Modified: Tue, 15 Sep 2026 22:13:25 GMT  
		Size: 856.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:88a114b22bbb69ba620aa7e81c933e5cad58741ead8b32da0195b7528833ecf0`  
		Last Modified: Tue, 15 Sep 2026 22:13:25 GMT  
		Size: 800.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `phpmyadmin:fpm-alpine` - unknown; unknown

```console
$ docker pull phpmyadmin@sha256:3b12cd324071082ad896031e04a0555a9cd84ce130ce343bafa98e8dd658f3cb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.8 KB (48848 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2719307710d9dffaf8a400ac3ce591203d2547538d405c1635ca717d3714e59a`

```dockerfile
```

-	Layers:
	-	`sha256:576aaa3a1fd9ac70dcab4bca24ba399e0eae2c551b6469dd6f98fc3a59ebf243`  
		Last Modified: Tue, 15 Sep 2026 22:13:23 GMT  
		Size: 48.8 KB (48848 bytes)  
		MIME: application/vnd.in-toto+json

### `phpmyadmin:fpm-alpine` - linux; ppc64le

```console
$ docker pull phpmyadmin@sha256:eaf773b6bd85ee836890a1471dfebfd1172fa843f4c10c0fcc8a2ec86167cbd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **61.0 MB (61001744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31599e20b29f4e98367c6869c44bec80e530cfbfd885f0a4d6262d576c149d83`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

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
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 27 Aug 2026 20:31:41 GMT
ENV PHP_VERSION=8.3.33
# Thu, 27 Aug 2026 20:31:41 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Thu, 27 Aug 2026 20:31:41 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Tue, 15 Sep 2026 23:59:07 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Tue, 15 Sep 2026 23:59:07 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 00:09:36 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 16 Sep 2026 00:09:36 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 00:09:38 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 16 Sep 2026 00:09:39 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 16 Sep 2026 00:09:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 16 Sep 2026 00:09:40 GMT
WORKDIR /var/www/html
# Wed, 16 Sep 2026 00:09:40 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Wed, 16 Sep 2026 00:09:40 GMT
STOPSIGNAL SIGQUIT
# Wed, 16 Sep 2026 00:09:40 GMT
EXPOSE map[9000/tcp:{}]
# Wed, 16 Sep 2026 00:09:40 GMT
CMD ["php-fpm"]
# Wed, 16 Sep 2026 05:12:42 GMT
ENV UPLOAD_PROGRESS_EXT_URL=https://github.com/php/pecl-php-uploadprogress/archive/refs/tags/uploadprogress-2.0.2.tar.gz
# Wed, 16 Sep 2026 05:12:42 GMT
ENV UPLOAD_PROGRESS_SHA256=fe3f6cdfcedad563c970c4fd1cda31e422cfc0df5cc9a217d8c80ed3c8d137f5
# Wed, 16 Sep 2026 05:12:42 GMT
RUN apk add --no-cache     bash     tzdata     gnupg # buildkit
# Wed, 16 Sep 2026 05:13:47 GMT
RUN set -ex;         apk add --no-cache --virtual .build-deps         bzip2-dev         freetype-dev         libjpeg-turbo-dev         libpng-dev         libwebp-dev         libxpm-dev         libzip-dev     ;         mkdir -p /tmp/uploadprogress;     curl -fsSL -o /tmp/uploadprogress/uploadprogress.tar.gz "$UPLOAD_PROGRESS_EXT_URL";     echo "$UPLOAD_PROGRESS_SHA256 /tmp/uploadprogress/uploadprogress.tar.gz" | sha256sum -c -;     tar -xf /tmp/uploadprogress/uploadprogress.tar.gz -C /tmp/uploadprogress --strip-components=1;         docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp --with-xpm;     docker-php-ext-install -j "$(nproc)"         bz2         gd         mysqli         opcache         zip         bcmath         /tmp/uploadprogress     ;         rm -r /tmp/uploadprogress;         runDeps="$(         scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions             | tr ',' '\n'             | sort -u             | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )";     apk add --no-network --virtual .phpmyadmin-phpexts-rundeps $runDeps;     apk del --no-network .build-deps # buildkit
# Wed, 16 Sep 2026 05:13:47 GMT
ENV PMA_SSL_DIR=/etc/phpmyadmin/ssl
# Wed, 16 Sep 2026 05:13:47 GMT
ENV MAX_EXECUTION_TIME=600
# Wed, 16 Sep 2026 05:13:47 GMT
ENV MEMORY_LIMIT=512M
# Wed, 16 Sep 2026 05:13:47 GMT
ENV UPLOAD_LIMIT=2048K
# Wed, 16 Sep 2026 05:13:47 GMT
ENV TZ=UTC
# Wed, 16 Sep 2026 05:13:47 GMT
ENV SESSION_SAVE_PATH=/sessions
# Wed, 16 Sep 2026 05:13:48 GMT
RUN set -ex;     mkdir $SESSION_SAVE_PATH;     mkdir -p $PMA_SSL_DIR;     chmod 1777 $SESSION_SAVE_PATH;     chmod 755 $PMA_SSL_DIR;     chown www-data:www-data /etc/phpmyadmin;     chown www-data:www-data $PMA_SSL_DIR;     chown www-data:www-data $SESSION_SAVE_PATH;         {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         {         echo 'session.cookie_httponly=1';         echo 'session.use_strict_mode=1';     } > $PHP_INI_DIR/conf.d/session-strict.ini;         {         echo 'allow_url_fopen=Off';         echo 'max_execution_time=${MAX_EXECUTION_TIME}';         echo 'max_input_vars=10000';         echo 'memory_limit=${MEMORY_LIMIT}';         echo 'post_max_size=${UPLOAD_LIMIT}';         echo 'upload_max_filesize=${UPLOAD_LIMIT}';         echo 'date.timezone=${TZ}';         echo 'session.save_path=${SESSION_SAVE_PATH}';     } > $PHP_INI_DIR/conf.d/phpmyadmin-misc.ini # buildkit
# Wed, 16 Sep 2026 05:13:48 GMT
USER www-data:www-data
# Wed, 16 Sep 2026 05:13:48 GMT
ENV VERSION=5.2.3
# Wed, 16 Sep 2026 05:13:48 GMT
ENV SHA256=57881348297c4412f86c410547cf76b4d8a236574dd2c6b7d6a2beebe7fc44e3
# Wed, 16 Sep 2026 05:13:48 GMT
ENV URL=https://files.phpmyadmin.net/phpMyAdmin/5.2.3/phpMyAdmin-5.2.3-all-languages.tar.xz
# Wed, 16 Sep 2026 05:13:48 GMT
LABEL org.opencontainers.image.title=Official phpMyAdmin Docker image org.opencontainers.image.description=Run phpMyAdmin with Alpine, Apache and PHP FPM. org.opencontainers.image.authors=The phpMyAdmin Team <developers@phpmyadmin.net> org.opencontainers.image.vendor=phpMyAdmin org.opencontainers.image.documentation=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.licenses=GPL-2.0-only org.opencontainers.image.version=5.2.3 org.opencontainers.image.url=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.source=https://github.com/phpmyadmin/docker.git
# Wed, 16 Sep 2026 05:13:55 GMT
RUN set -ex;         export GNUPGHOME="$(mktemp -d)";     export GPGKEY="3D06A59ECE730EB71B511C17CE752F178259BD92";     curl -fsSL -o phpMyAdmin.tar.xz $URL;     curl -fsSL -o phpMyAdmin.tar.xz.asc $URL.asc;     echo "$SHA256 *phpMyAdmin.tar.xz" | sha256sum -c -;     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GPGKEY"         || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver keys.openpgp.org --recv-keys "$GPGKEY";     gpg --batch --verify phpMyAdmin.tar.xz.asc phpMyAdmin.tar.xz;     tar -xf phpMyAdmin.tar.xz -C /var/www/html --strip-components=1;     mkdir -p /var/www/html/tmp;     gpgconf --kill all;     rm -r "$GNUPGHOME" phpMyAdmin.tar.xz phpMyAdmin.tar.xz.asc;     rm -r -v /var/www/html/setup/ /var/www/html/examples/ /var/www/html/js/src/ /var/www/html/babel.config.json /var/www/html/doc/html/_sources/ /var/www/html/RELEASE-DATE-$VERSION /var/www/html/CONTRIBUTING.md;     grep -q -F "'configFile' => ROOT_PATH . 'config.inc.php'," /var/www/html/libraries/vendor_config.php;     sed -i "s@'configFile' => .*@'configFile' => '/etc/phpmyadmin/config.inc.php',@" /var/www/html/libraries/vendor_config.php;     grep -q -F "'configFile' => '/etc/phpmyadmin/config.inc.php'," /var/www/html/libraries/vendor_config.php;     php -l /var/www/html/libraries/vendor_config.php;     find /var/www/html -type d -exec chmod 555 {} \;;     find /var/www/html -type f -exec chmod 444 {} \;;     chmod 1777 /var/www/html/tmp; # buildkit
# Wed, 16 Sep 2026 05:13:56 GMT
COPY --chown=www-data:www-data config.inc.php /etc/phpmyadmin/config.inc.php # buildkit
# Wed, 16 Sep 2026 05:13:56 GMT
COPY --chown=www-data:www-data helpers.php /etc/phpmyadmin/helpers.php # buildkit
# Wed, 16 Sep 2026 05:13:56 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Wed, 16 Sep 2026 05:13:56 GMT
USER root
# Wed, 16 Sep 2026 05:13:56 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Wed, 16 Sep 2026 05:13:56 GMT
CMD ["php-fpm"]
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
	-	`sha256:5a0ca3ac279c118d9fedaf88ceb3665195b499bfed69b8a9cc764ad110892627`  
		Last Modified: Wed, 16 Sep 2026 00:04:20 GMT  
		Size: 12.6 MB (12636204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5927d7fce9f27e30857a64da4115333bbbf63f190d89f3938622067073dd3b69`  
		Last Modified: Wed, 16 Sep 2026 00:04:19 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:087cb682d820a15256e4498684a243fc1fc9b41e09743ee8d0e668d6c8e5f55d`  
		Last Modified: Wed, 16 Sep 2026 00:09:58 GMT  
		Size: 14.8 MB (14778055 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d45966d884feff8e8ac4d77a2e683298734edfd31f6c3177843e71cdd55c0e9d`  
		Last Modified: Wed, 16 Sep 2026 00:09:58 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60f64f04768fc0a5c35ba2c19a360a1d0bae46a9037c5467c3feab9cbf01fcfe`  
		Last Modified: Wed, 16 Sep 2026 00:09:58 GMT  
		Size: 22.3 KB (22288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a70de26b7171481d6076a5f6151c9bb29940d038211cf2c9bfa79d7f0e03f99`  
		Last Modified: Wed, 16 Sep 2026 00:09:58 GMT  
		Size: 22.3 KB (22310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79ab01e3a1a4011599fa6ab15605bd4db10c039a9e62956b29d8b43decec5541`  
		Last Modified: Wed, 16 Sep 2026 00:09:59 GMT  
		Size: 9.3 KB (9252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0c2921e403e11150ec32342d5c3991d2794db0943bf0a9b77e51a7cfffb39eb`  
		Last Modified: Wed, 16 Sep 2026 05:14:05 GMT  
		Size: 6.5 MB (6494794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:843a07402dd6eebc1cdf31582073d302afe888fead55c0cee7ec9679d657bd06`  
		Last Modified: Wed, 16 Sep 2026 05:14:05 GMT  
		Size: 3.1 MB (3133011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f473a5354d50f7916f275dbf8ccd38b0d15566540bbad51c64f89ace6f9395a`  
		Last Modified: Wed, 16 Sep 2026 05:14:05 GMT  
		Size: 652.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd9e2479aabe545315cc7451463d4fb6e81b2b4bb5d2d4e9646a941cc32cef78`  
		Last Modified: Wed, 16 Sep 2026 05:14:06 GMT  
		Size: 14.1 MB (14087541 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d70b748412c4dc6bb9dc038af18f68c8f5f8749d174df6674ffcc791f377ea5`  
		Last Modified: Wed, 16 Sep 2026 05:14:06 GMT  
		Size: 2.1 KB (2139 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7207f54bb9c3fc80197f523b499f78735ae76cb50415a3df8b18cd956f235ea`  
		Last Modified: Wed, 16 Sep 2026 05:14:06 GMT  
		Size: 857.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1fef5241f84b68cc1485a572fdb2da645422486bda183d78e2127aef64d83441`  
		Last Modified: Wed, 16 Sep 2026 05:14:07 GMT  
		Size: 797.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `phpmyadmin:fpm-alpine` - unknown; unknown

```console
$ docker pull phpmyadmin@sha256:dc0b6aaf4f0c7a87a6bdd818e436865eeee4d8c08b64474bcf53024786ef5bc3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 KB (48936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4336ff4c80637516a33a87c77f5f2baccde897525a875f75bc594428f06bf0b0`

```dockerfile
```

-	Layers:
	-	`sha256:34281676bfef4b42cf1b5dc9e7b8aa6ac867f4d7fa4e623831645182ba4ad42f`  
		Last Modified: Wed, 16 Sep 2026 05:14:05 GMT  
		Size: 48.9 KB (48936 bytes)  
		MIME: application/vnd.in-toto+json

### `phpmyadmin:fpm-alpine` - linux; riscv64

```console
$ docker pull phpmyadmin@sha256:525195992f122c2aee780358361dfcd6eb4e2cb1f2661a48433463d393c7e9e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **56.7 MB (56651170 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:63bf543c167322cba837ff53380ee650993fc9052d61b7ea4ab7417ef23868b0`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

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
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_VERSION=8.3.33
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Sat, 01 Aug 2026 11:35:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Sat, 01 Aug 2026 11:35:22 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 01 Aug 2026 13:22:30 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 01 Aug 2026 13:22:30 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 01 Aug 2026 13:22:34 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sat, 01 Aug 2026 13:22:39 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 01 Aug 2026 13:22:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 01 Aug 2026 13:22:39 GMT
WORKDIR /var/www/html
# Sat, 01 Aug 2026 13:22:40 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Sat, 01 Aug 2026 13:22:40 GMT
STOPSIGNAL SIGQUIT
# Sat, 01 Aug 2026 13:22:40 GMT
EXPOSE map[9000/tcp:{}]
# Sat, 01 Aug 2026 13:22:40 GMT
CMD ["php-fpm"]
# Mon, 03 Aug 2026 08:21:21 GMT
ENV UPLOAD_PROGRESS_EXT_URL=https://github.com/php/pecl-php-uploadprogress/archive/refs/tags/uploadprogress-2.0.2.tar.gz
# Mon, 03 Aug 2026 08:21:21 GMT
ENV UPLOAD_PROGRESS_SHA256=fe3f6cdfcedad563c970c4fd1cda31e422cfc0df5cc9a217d8c80ed3c8d137f5
# Mon, 03 Aug 2026 08:21:21 GMT
RUN apk add --no-cache     bash     tzdata     gnupg # buildkit
# Mon, 03 Aug 2026 08:27:53 GMT
RUN set -ex;         apk add --no-cache --virtual .build-deps         bzip2-dev         freetype-dev         libjpeg-turbo-dev         libpng-dev         libwebp-dev         libxpm-dev         libzip-dev     ;         mkdir -p /tmp/uploadprogress;     curl -fsSL -o /tmp/uploadprogress/uploadprogress.tar.gz "$UPLOAD_PROGRESS_EXT_URL";     echo "$UPLOAD_PROGRESS_SHA256 /tmp/uploadprogress/uploadprogress.tar.gz" | sha256sum -c -;     tar -xf /tmp/uploadprogress/uploadprogress.tar.gz -C /tmp/uploadprogress --strip-components=1;         docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp --with-xpm;     docker-php-ext-install -j "$(nproc)"         bz2         gd         mysqli         opcache         zip         bcmath         /tmp/uploadprogress     ;         rm -r /tmp/uploadprogress;         runDeps="$(         scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions             | tr ',' '\n'             | sort -u             | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )";     apk add --no-network --virtual .phpmyadmin-phpexts-rundeps $runDeps;     apk del --no-network .build-deps # buildkit
# Mon, 03 Aug 2026 08:27:53 GMT
ENV PMA_SSL_DIR=/etc/phpmyadmin/ssl
# Mon, 03 Aug 2026 08:27:53 GMT
ENV MAX_EXECUTION_TIME=600
# Mon, 03 Aug 2026 08:27:53 GMT
ENV MEMORY_LIMIT=512M
# Mon, 03 Aug 2026 08:27:53 GMT
ENV UPLOAD_LIMIT=2048K
# Mon, 03 Aug 2026 08:27:53 GMT
ENV TZ=UTC
# Mon, 03 Aug 2026 08:27:53 GMT
ENV SESSION_SAVE_PATH=/sessions
# Mon, 03 Aug 2026 08:27:54 GMT
RUN set -ex;     mkdir $SESSION_SAVE_PATH;     mkdir -p $PMA_SSL_DIR;     chmod 1777 $SESSION_SAVE_PATH;     chmod 755 $PMA_SSL_DIR;     chown www-data:www-data /etc/phpmyadmin;     chown www-data:www-data $PMA_SSL_DIR;     chown www-data:www-data $SESSION_SAVE_PATH;         {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         {         echo 'session.cookie_httponly=1';         echo 'session.use_strict_mode=1';     } > $PHP_INI_DIR/conf.d/session-strict.ini;         {         echo 'allow_url_fopen=Off';         echo 'max_execution_time=${MAX_EXECUTION_TIME}';         echo 'max_input_vars=10000';         echo 'memory_limit=${MEMORY_LIMIT}';         echo 'post_max_size=${UPLOAD_LIMIT}';         echo 'upload_max_filesize=${UPLOAD_LIMIT}';         echo 'date.timezone=${TZ}';         echo 'session.save_path=${SESSION_SAVE_PATH}';     } > $PHP_INI_DIR/conf.d/phpmyadmin-misc.ini # buildkit
# Mon, 03 Aug 2026 08:27:54 GMT
USER www-data:www-data
# Mon, 03 Aug 2026 08:27:54 GMT
ENV VERSION=5.2.3
# Mon, 03 Aug 2026 08:27:54 GMT
ENV SHA256=57881348297c4412f86c410547cf76b4d8a236574dd2c6b7d6a2beebe7fc44e3
# Mon, 03 Aug 2026 08:27:54 GMT
ENV URL=https://files.phpmyadmin.net/phpMyAdmin/5.2.3/phpMyAdmin-5.2.3-all-languages.tar.xz
# Mon, 03 Aug 2026 08:27:54 GMT
LABEL org.opencontainers.image.title=Official phpMyAdmin Docker image org.opencontainers.image.description=Run phpMyAdmin with Alpine, Apache and PHP FPM. org.opencontainers.image.authors=The phpMyAdmin Team <developers@phpmyadmin.net> org.opencontainers.image.vendor=phpMyAdmin org.opencontainers.image.documentation=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.licenses=GPL-2.0-only org.opencontainers.image.version=5.2.3 org.opencontainers.image.url=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.source=https://github.com/phpmyadmin/docker.git
# Mon, 03 Aug 2026 08:28:16 GMT
RUN set -ex;         export GNUPGHOME="$(mktemp -d)";     export GPGKEY="3D06A59ECE730EB71B511C17CE752F178259BD92";     curl -fsSL -o phpMyAdmin.tar.xz $URL;     curl -fsSL -o phpMyAdmin.tar.xz.asc $URL.asc;     echo "$SHA256 *phpMyAdmin.tar.xz" | sha256sum -c -;     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GPGKEY"         || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver keys.openpgp.org --recv-keys "$GPGKEY";     gpg --batch --verify phpMyAdmin.tar.xz.asc phpMyAdmin.tar.xz;     tar -xf phpMyAdmin.tar.xz -C /var/www/html --strip-components=1;     mkdir -p /var/www/html/tmp;     gpgconf --kill all;     rm -r "$GNUPGHOME" phpMyAdmin.tar.xz phpMyAdmin.tar.xz.asc;     rm -r -v /var/www/html/setup/ /var/www/html/examples/ /var/www/html/js/src/ /var/www/html/babel.config.json /var/www/html/doc/html/_sources/ /var/www/html/RELEASE-DATE-$VERSION /var/www/html/CONTRIBUTING.md;     grep -q -F "'configFile' => ROOT_PATH . 'config.inc.php'," /var/www/html/libraries/vendor_config.php;     sed -i "s@'configFile' => .*@'configFile' => '/etc/phpmyadmin/config.inc.php',@" /var/www/html/libraries/vendor_config.php;     grep -q -F "'configFile' => '/etc/phpmyadmin/config.inc.php'," /var/www/html/libraries/vendor_config.php;     php -l /var/www/html/libraries/vendor_config.php;     find /var/www/html -type d -exec chmod 555 {} \;;     find /var/www/html -type f -exec chmod 444 {} \;;     chmod 1777 /var/www/html/tmp; # buildkit
# Mon, 03 Aug 2026 08:28:16 GMT
COPY --chown=www-data:www-data config.inc.php /etc/phpmyadmin/config.inc.php # buildkit
# Mon, 03 Aug 2026 08:28:16 GMT
COPY --chown=www-data:www-data helpers.php /etc/phpmyadmin/helpers.php # buildkit
# Mon, 03 Aug 2026 08:28:17 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Mon, 03 Aug 2026 08:28:17 GMT
USER root
# Mon, 03 Aug 2026 08:28:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 03 Aug 2026 08:28:17 GMT
CMD ["php-fpm"]
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
	-	`sha256:3af22f022d7d8e23a9ecbbe2cc4bfa58825e52c769b6bac41b23a9eed1ca711c`  
		Last Modified: Sat, 01 Aug 2026 12:29:12 GMT  
		Size: 12.6 MB (12636181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17cff3d73e192204ebc07778b88bde9d1c24991f0458d4b3b1869b97c347c2c3`  
		Last Modified: Sat, 01 Aug 2026 12:29:08 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b0c15ebb2c94e68ce6f2375ba830df0b2b03dd28db25fd54770baa4ad9ea13f`  
		Last Modified: Sat, 01 Aug 2026 13:23:30 GMT  
		Size: 13.5 MB (13492843 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d716eca2d7cd603aa7a51ea10b56f2d64082ee285f9607dd5aa79774490064d2`  
		Last Modified: Sat, 01 Aug 2026 13:23:28 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61d4ed12e4a0e83e0e155879e44344952765cb9109b320314a27632e07e8fd90`  
		Last Modified: Sat, 01 Aug 2026 13:23:28 GMT  
		Size: 22.2 KB (22209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76ac995fd1fe201a36b155aa01f853267f8475858a679aebebfa292054ce6db9`  
		Last Modified: Sat, 01 Aug 2026 13:23:28 GMT  
		Size: 22.2 KB (22228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10f95965c52707e11d2680da4e5564e8f23fd086f5944d02e60b1289d3a984d9`  
		Last Modified: Sat, 01 Aug 2026 13:23:30 GMT  
		Size: 9.3 KB (9253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a46118bbde5fd4cd346762712b8ada52bdad3ed6cec8e8c42705292448bb42a3`  
		Last Modified: Mon, 03 Aug 2026 08:28:58 GMT  
		Size: 6.3 MB (6346882 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8bae34ec68c24e7384e260d0b6a23283c0db3c1a1da4aa0aaa6d1d856b894c6`  
		Last Modified: Mon, 03 Aug 2026 08:28:57 GMT  
		Size: 2.8 MB (2846375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06a6662aa6ff7c783a728d1f0818bb2e81a8d198af591a413ea0977453d317cd`  
		Last Modified: Mon, 03 Aug 2026 08:28:56 GMT  
		Size: 652.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef8eec3b9e3cc19b45e416d15d912e3ff087631772d1884a6eaae4c2f51587de`  
		Last Modified: Mon, 03 Aug 2026 08:28:59 GMT  
		Size: 14.1 MB (14087558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe00c6d7a9ce9fad07658cfa996692caeb6a850fa67539deb413407867580761`  
		Last Modified: Mon, 03 Aug 2026 08:28:58 GMT  
		Size: 2.1 KB (2142 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b500240c9ea76f4a331604b6eb4b6fa28eaf0f2aa558642191ea20f738010e5`  
		Last Modified: Mon, 03 Aug 2026 08:28:58 GMT  
		Size: 860.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e372573ec0b3ea5724ff086673b5f314893962ea2cc16506a7c0f6d9d6a8e19`  
		Last Modified: Mon, 03 Aug 2026 08:28:59 GMT  
		Size: 800.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `phpmyadmin:fpm-alpine` - unknown; unknown

```console
$ docker pull phpmyadmin@sha256:33fa9822d0bfc95f470b5d05c46eb3eabe6b9ccf495c33411e885028a0a9274a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 KB (48936 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:553a6e0d5ad436cc4d47a013b1dd859393ea88f0bda40d83a26d070a9cb16cc7`

```dockerfile
```

-	Layers:
	-	`sha256:23fc8912251b7cc7e984b2bf3c3853cded3b2ec2737a9abee44de9df49ea07fb`  
		Last Modified: Mon, 03 Aug 2026 08:28:55 GMT  
		Size: 48.9 KB (48936 bytes)  
		MIME: application/vnd.in-toto+json

### `phpmyadmin:fpm-alpine` - linux; s390x

```console
$ docker pull phpmyadmin@sha256:50b453c799a7c951b4632d1bfb566575c813d04264f04715390784f418d3ccaf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **57.1 MB (57074398 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06520c9dda36a8d9c8cbc6f01be5bb774abda3080a138843af9fb80e7a537a35`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

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
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 02 Jul 2026 20:41:15 GMT
ENV PHP_VERSION=8.3.33
# Thu, 02 Jul 2026 20:41:15 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Thu, 02 Jul 2026 20:41:15 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Thu, 30 Jul 2026 23:35:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 23:35:51 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:39:55 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 23:39:55 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:39:56 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 23:39:56 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 23:39:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 23:39:56 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 23:39:56 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 30 Jul 2026 23:39:56 GMT
STOPSIGNAL SIGQUIT
# Thu, 30 Jul 2026 23:39:56 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 30 Jul 2026 23:39:56 GMT
CMD ["php-fpm"]
# Fri, 31 Jul 2026 00:10:37 GMT
ENV UPLOAD_PROGRESS_EXT_URL=https://github.com/php/pecl-php-uploadprogress/archive/refs/tags/uploadprogress-2.0.2.tar.gz
# Fri, 31 Jul 2026 00:10:37 GMT
ENV UPLOAD_PROGRESS_SHA256=fe3f6cdfcedad563c970c4fd1cda31e422cfc0df5cc9a217d8c80ed3c8d137f5
# Fri, 31 Jul 2026 00:10:37 GMT
RUN apk add --no-cache     bash     tzdata     gnupg # buildkit
# Fri, 31 Jul 2026 00:11:31 GMT
RUN set -ex;         apk add --no-cache --virtual .build-deps         bzip2-dev         freetype-dev         libjpeg-turbo-dev         libpng-dev         libwebp-dev         libxpm-dev         libzip-dev     ;         mkdir -p /tmp/uploadprogress;     curl -fsSL -o /tmp/uploadprogress/uploadprogress.tar.gz "$UPLOAD_PROGRESS_EXT_URL";     echo "$UPLOAD_PROGRESS_SHA256 /tmp/uploadprogress/uploadprogress.tar.gz" | sha256sum -c -;     tar -xf /tmp/uploadprogress/uploadprogress.tar.gz -C /tmp/uploadprogress --strip-components=1;         docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp --with-xpm;     docker-php-ext-install -j "$(nproc)"         bz2         gd         mysqli         opcache         zip         bcmath         /tmp/uploadprogress     ;         rm -r /tmp/uploadprogress;         runDeps="$(         scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions             | tr ',' '\n'             | sort -u             | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'     )";     apk add --no-network --virtual .phpmyadmin-phpexts-rundeps $runDeps;     apk del --no-network .build-deps # buildkit
# Fri, 31 Jul 2026 00:11:31 GMT
ENV PMA_SSL_DIR=/etc/phpmyadmin/ssl
# Fri, 31 Jul 2026 00:11:31 GMT
ENV MAX_EXECUTION_TIME=600
# Fri, 31 Jul 2026 00:11:31 GMT
ENV MEMORY_LIMIT=512M
# Fri, 31 Jul 2026 00:11:31 GMT
ENV UPLOAD_LIMIT=2048K
# Fri, 31 Jul 2026 00:11:31 GMT
ENV TZ=UTC
# Fri, 31 Jul 2026 00:11:31 GMT
ENV SESSION_SAVE_PATH=/sessions
# Fri, 31 Jul 2026 00:11:31 GMT
RUN set -ex;     mkdir $SESSION_SAVE_PATH;     mkdir -p $PMA_SSL_DIR;     chmod 1777 $SESSION_SAVE_PATH;     chmod 755 $PMA_SSL_DIR;     chown www-data:www-data /etc/phpmyadmin;     chown www-data:www-data $PMA_SSL_DIR;     chown www-data:www-data $SESSION_SAVE_PATH;         {         echo 'opcache.memory_consumption=128';         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=4000';         echo 'opcache.revalidate_freq=2';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         {         echo 'session.cookie_httponly=1';         echo 'session.use_strict_mode=1';     } > $PHP_INI_DIR/conf.d/session-strict.ini;         {         echo 'allow_url_fopen=Off';         echo 'max_execution_time=${MAX_EXECUTION_TIME}';         echo 'max_input_vars=10000';         echo 'memory_limit=${MEMORY_LIMIT}';         echo 'post_max_size=${UPLOAD_LIMIT}';         echo 'upload_max_filesize=${UPLOAD_LIMIT}';         echo 'date.timezone=${TZ}';         echo 'session.save_path=${SESSION_SAVE_PATH}';     } > $PHP_INI_DIR/conf.d/phpmyadmin-misc.ini # buildkit
# Fri, 31 Jul 2026 00:11:31 GMT
USER www-data:www-data
# Fri, 31 Jul 2026 00:11:31 GMT
ENV VERSION=5.2.3
# Fri, 31 Jul 2026 00:11:31 GMT
ENV SHA256=57881348297c4412f86c410547cf76b4d8a236574dd2c6b7d6a2beebe7fc44e3
# Fri, 31 Jul 2026 00:11:31 GMT
ENV URL=https://files.phpmyadmin.net/phpMyAdmin/5.2.3/phpMyAdmin-5.2.3-all-languages.tar.xz
# Fri, 31 Jul 2026 00:11:31 GMT
LABEL org.opencontainers.image.title=Official phpMyAdmin Docker image org.opencontainers.image.description=Run phpMyAdmin with Alpine, Apache and PHP FPM. org.opencontainers.image.authors=The phpMyAdmin Team <developers@phpmyadmin.net> org.opencontainers.image.vendor=phpMyAdmin org.opencontainers.image.documentation=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.licenses=GPL-2.0-only org.opencontainers.image.version=5.2.3 org.opencontainers.image.url=https://github.com/phpmyadmin/docker#readme org.opencontainers.image.source=https://github.com/phpmyadmin/docker.git
# Fri, 31 Jul 2026 00:11:36 GMT
RUN set -ex;         export GNUPGHOME="$(mktemp -d)";     export GPGKEY="3D06A59ECE730EB71B511C17CE752F178259BD92";     curl -fsSL -o phpMyAdmin.tar.xz $URL;     curl -fsSL -o phpMyAdmin.tar.xz.asc $URL.asc;     echo "$SHA256 *phpMyAdmin.tar.xz" | sha256sum -c -;     gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver pgp.mit.edu --recv-keys "$GPGKEY"         || gpg --batch --keyserver keyserver.pgp.com --recv-keys "$GPGKEY"         || gpg --batch --keyserver keys.openpgp.org --recv-keys "$GPGKEY";     gpg --batch --verify phpMyAdmin.tar.xz.asc phpMyAdmin.tar.xz;     tar -xf phpMyAdmin.tar.xz -C /var/www/html --strip-components=1;     mkdir -p /var/www/html/tmp;     gpgconf --kill all;     rm -r "$GNUPGHOME" phpMyAdmin.tar.xz phpMyAdmin.tar.xz.asc;     rm -r -v /var/www/html/setup/ /var/www/html/examples/ /var/www/html/js/src/ /var/www/html/babel.config.json /var/www/html/doc/html/_sources/ /var/www/html/RELEASE-DATE-$VERSION /var/www/html/CONTRIBUTING.md;     grep -q -F "'configFile' => ROOT_PATH . 'config.inc.php'," /var/www/html/libraries/vendor_config.php;     sed -i "s@'configFile' => .*@'configFile' => '/etc/phpmyadmin/config.inc.php',@" /var/www/html/libraries/vendor_config.php;     grep -q -F "'configFile' => '/etc/phpmyadmin/config.inc.php'," /var/www/html/libraries/vendor_config.php;     php -l /var/www/html/libraries/vendor_config.php;     find /var/www/html -type d -exec chmod 555 {} \;;     find /var/www/html -type f -exec chmod 444 {} \;;     chmod 1777 /var/www/html/tmp; # buildkit
# Fri, 31 Jul 2026 00:11:36 GMT
COPY --chown=www-data:www-data config.inc.php /etc/phpmyadmin/config.inc.php # buildkit
# Fri, 31 Jul 2026 00:11:37 GMT
COPY --chown=www-data:www-data helpers.php /etc/phpmyadmin/helpers.php # buildkit
# Fri, 31 Jul 2026 00:11:37 GMT
COPY docker-entrypoint.sh /docker-entrypoint.sh # buildkit
# Fri, 31 Jul 2026 00:11:37 GMT
USER root
# Fri, 31 Jul 2026 00:11:37 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Fri, 31 Jul 2026 00:11:37 GMT
CMD ["php-fpm"]
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
	-	`sha256:3caa20a06f890c5f1c412f95f700e546bea99551b23250fe0c6a07ba0b1bcdc2`  
		Last Modified: Thu, 30 Jul 2026 23:40:00 GMT  
		Size: 12.6 MB (12636138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f1cabe1bbe5df62c0a171df3f14943384333a7718561f405cb8c2323d80585f`  
		Last Modified: Thu, 30 Jul 2026 23:40:00 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ebff3f662b2475bbb5157598ada71798b6846fd1cd2924f57b1b3fda0bc6eb9`  
		Last Modified: Thu, 30 Jul 2026 23:40:07 GMT  
		Size: 13.4 MB (13400762 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b341a838ce8cfc22d8484d76f418b52e643c516c4bc29e471a83aed85263a841`  
		Last Modified: Thu, 30 Jul 2026 23:40:06 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65d9ffee370b1d613baea056e2cc2890129b56e6ec8451fbf4cdfb72ce632ddd`  
		Last Modified: Thu, 30 Jul 2026 23:40:06 GMT  
		Size: 22.2 KB (22170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d2b6b6903940bb279871d0ca2a4916f7f440ead9f4ca152698eceaa9d912664e`  
		Last Modified: Thu, 30 Jul 2026 23:40:06 GMT  
		Size: 22.2 KB (22180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d046df6e4b35447ab6f6754180e7c21d51139ca1d5c3c56326a5545ed3569e0`  
		Last Modified: Thu, 30 Jul 2026 23:40:07 GMT  
		Size: 9.2 KB (9249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f835ed4d560444e1f820fd2b0b1e6f0a9e8faf57d65ef32a0b3a7a2230cd06c`  
		Last Modified: Fri, 31 Jul 2026 00:11:48 GMT  
		Size: 6.5 MB (6512941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cd57fce9c7344f39d2e6df895b58781297eb20670fdcd62537769dc19cd1c5b`  
		Last Modified: Fri, 31 Jul 2026 00:11:47 GMT  
		Size: 3.0 MB (2999439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7852a82251dc473df445a4800ab37ab6b3ae3282b70bba47ac852d2ab57a07b1`  
		Last Modified: Fri, 31 Jul 2026 00:11:47 GMT  
		Size: 648.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8892f459c620668ecbf3a8871ff9e5ba394e31cc53d3e71ecbde1e9e2aa6b192`  
		Last Modified: Fri, 31 Jul 2026 00:11:48 GMT  
		Size: 14.1 MB (14087558 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:50e1457301e4887dd74e6cfecaec0dfb5afc7100a9ad6720ef0494303a1cac65`  
		Last Modified: Fri, 31 Jul 2026 00:11:48 GMT  
		Size: 2.1 KB (2140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b29db3302197242d18ac0597bb32a860e71fc52a73100294e954f2a73e1ab78`  
		Last Modified: Fri, 31 Jul 2026 00:11:48 GMT  
		Size: 858.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0de3f386fd52f300745ebe56cc3966a2015014951d3717d873462f9c4076c1f7`  
		Last Modified: Fri, 31 Jul 2026 00:11:49 GMT  
		Size: 800.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `phpmyadmin:fpm-alpine` - unknown; unknown

```console
$ docker pull phpmyadmin@sha256:611d7ad226242afb3de91a3fec82274a86ea4bf52254909e20471f09bcd445b5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **48.9 KB (48886 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:70e6fab832908ec7b7fd2a574e6fd4f6767116ebb6e1d423cd6aac0ddfa1d93a`

```dockerfile
```

-	Layers:
	-	`sha256:0a231ef7d4cef591e1a1842d58eb4160687443f0b0f8aa51f921942afd699b87`  
		Last Modified: Fri, 31 Jul 2026 00:11:47 GMT  
		Size: 48.9 KB (48886 bytes)  
		MIME: application/vnd.in-toto+json
