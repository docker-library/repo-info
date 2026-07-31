## `wordpress:beta-7.1-php8.2-fpm-alpine`

```console
$ docker pull wordpress@sha256:7e28de99aaac48f6545f0e8e1e574b3afcbb24e84680ce2d5cf1266b6776fc0a
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

### `wordpress:beta-7.1-php8.2-fpm-alpine` - linux; amd64

```console
$ docker pull wordpress@sha256:7428e4500c886fc40234a0a0c392a5782cfbc29bfe98d99f9cab7af9bb4a833e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.7 MB (110685625 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f571288858134812d7312a97ee24c4f5b785fc967a1bdaf457bda85fc660959`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 22:38:48 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 30 Jul 2026 22:38:48 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 30 Jul 2026 22:38:48 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 30 Jul 2026 22:38:48 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:38:48 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:38:48 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:38:48 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:38:48 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:38:48 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 30 Jul 2026 22:38:48 GMT
ENV PHP_VERSION=8.2.33
# Thu, 30 Jul 2026 22:38:48 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Thu, 30 Jul 2026 22:38:48 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Thu, 30 Jul 2026 22:55:31 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 22:55:31 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:58:20 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:58:20 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:58:21 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 22:58:21 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:58:21 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:58:21 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 22:58:21 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 30 Jul 2026 22:58:21 GMT
STOPSIGNAL SIGQUIT
# Thu, 30 Jul 2026 22:58:21 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 30 Jul 2026 22:58:21 GMT
CMD ["php-fpm"]
# Fri, 31 Jul 2026 00:06:17 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 	; # buildkit
# Fri, 31 Jul 2026 00:06:55 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Fri, 31 Jul 2026 00:06:55 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Fri, 31 Jul 2026 00:06:56 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Fri, 31 Jul 2026 00:06:58 GMT
RUN set -eux; 	version='7.1-beta4'; 	sha1='f65ede139d03b6e2c1890c6e5ecfdd911ab4e292'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Fri, 31 Jul 2026 00:06:58 GMT
VOLUME [/var/www/html]
# Fri, 31 Jul 2026 00:06:58 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Fri, 31 Jul 2026 00:06:58 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:06:58 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Fri, 31 Jul 2026 00:06:58 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 00:06:58 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f06dd5c33a87fa6887a36c262914657a307be048e73d83791e01815fe5c99ebe`  
		Last Modified: Thu, 30 Jul 2026 22:42:11 GMT  
		Size: 3.5 MB (3476122 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:82009a69cdd8e91ed9d50d02f8a7e3080992b210ad55dcda29e0db42701c7565`  
		Last Modified: Thu, 30 Jul 2026 22:42:11 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65c81354d66583ea91a61452afca9fe27ad774d81b7635b9593e8fb732bc833d`  
		Last Modified: Thu, 30 Jul 2026 22:42:11 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95efac96cd7b572bfe2f2f7b431862a2504dc17660c27d9fbd1b78703491f78c`  
		Last Modified: Thu, 30 Jul 2026 22:58:28 GMT  
		Size: 12.2 MB (12189400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:052a675ba967690b8f907eff50238373bc26052ba049526bc0e3ae0137ff00fa`  
		Last Modified: Thu, 30 Jul 2026 22:58:28 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:89224f41909caad1a33fe0f4cade131c22b98f285a356076866b42da140949a2`  
		Last Modified: Thu, 30 Jul 2026 22:58:29 GMT  
		Size: 13.2 MB (13173402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad1cc92f47bc2985b56ad4d0851e5d371d4676ac806bfb6593c3539d5f0b613b`  
		Last Modified: Thu, 30 Jul 2026 22:58:28 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fec11436024a55551ec20733215da4e1c86be6f78a1977f41e966b1c68d34c08`  
		Last Modified: Thu, 30 Jul 2026 22:58:29 GMT  
		Size: 22.3 KB (22344 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1682c8a633ca508eec01ab74bbbcaab0a8cc9aabd0e13cbb34ad59747f76526`  
		Last Modified: Thu, 30 Jul 2026 22:58:29 GMT  
		Size: 22.4 KB (22350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae4f8579f8ac7f13ed51c3f965d7dc1aee7ea5d598f7ca1a5c78462fc92b0d9b`  
		Last Modified: Thu, 30 Jul 2026 22:58:30 GMT  
		Size: 9.2 KB (9248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dec96c84007cdd427092542f4d5b78e8ad21f88c58c1dd7ecf0c9554ab8769ce`  
		Last Modified: Fri, 31 Jul 2026 00:07:10 GMT  
		Size: 32.9 MB (32880602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e584da3a041ab58767a874f760727f2ace2d6478aef84bf99b2e67619239f746`  
		Last Modified: Fri, 31 Jul 2026 00:07:09 GMT  
		Size: 9.5 MB (9466794 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f1470ebb359b7ac0e31bfc61511bb659a6e20e2fda2c21ad436da9fad3cb4ca`  
		Last Modified: Fri, 31 Jul 2026 00:07:09 GMT  
		Size: 309.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:28d8f612d4b5cbd30cdb937531c1c8bda291df7a11dca5d372bee604ab022d95`  
		Last Modified: Fri, 31 Jul 2026 00:07:09 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0274b47ec587cdf9223634302d41a5e76d50138bf115de17972d034451ec6dcb`  
		Last Modified: Fri, 31 Jul 2026 00:07:11 GMT  
		Size: 35.6 MB (35589748 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bacfb64cf40e42f121dfd24fbb29a6fab513cc284686fb6ba4eb1475a404eb66`  
		Last Modified: Fri, 31 Jul 2026 00:07:10 GMT  
		Size: 2.4 KB (2438 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74022b857992703b424516ac8ac68ff5e5460ab5f1c08b7bf48396d13a798cfc`  
		Last Modified: Fri, 31 Jul 2026 00:07:11 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eafd1d3b1ec1d515f61a771ade8187435046501ce71b1c5026621669856c51d`  
		Last Modified: Fri, 31 Jul 2026 00:07:11 GMT  
		Size: 196.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.1-php8.2-fpm-alpine` - unknown; unknown

```console
$ docker pull wordpress@sha256:2bed9c1aa0c16afa08bf4cd24093862b5609aa36b79142cfeba0ec197a3af5bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1154584 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:634b5abf07dbc5623cc81fa96d0fd91b5d23af0080289635de13b47cbcc0223b`

```dockerfile
```

-	Layers:
	-	`sha256:721db869827831f808c48e66368fe80afd01711ac4e2e718e0f7806784da83f6`  
		Last Modified: Fri, 31 Jul 2026 00:07:08 GMT  
		Size: 1.1 MB (1102805 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:00bbef5d60882beffbf1d9002015b260b8527d10ce407bc631dc9cbfcdc82730`  
		Last Modified: Fri, 31 Jul 2026 00:07:08 GMT  
		Size: 51.8 KB (51779 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.1-php8.2-fpm-alpine` - linux; arm variant v6

```console
$ docker pull wordpress@sha256:4ed816abf7fd4a9c68d925963b33a8023d89d39b1a918f167bd0191ba40d4bd3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.4 MB (103426179 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2706d4a4a2da035b2f6bd748e759c4ca62ce8a8c29e1914e54e82f4432081292`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 22:42:30 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 30 Jul 2026 22:42:30 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 30 Jul 2026 22:42:30 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 30 Jul 2026 22:42:30 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:42:30 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:42:30 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:42:30 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:42:30 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:42:30 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 30 Jul 2026 22:42:30 GMT
ENV PHP_VERSION=8.2.33
# Thu, 30 Jul 2026 22:42:30 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Thu, 30 Jul 2026 22:42:30 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Thu, 30 Jul 2026 22:55:06 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 22:55:06 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:57:45 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:57:45 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:57:46 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 22:57:47 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:57:47 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:57:47 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 22:57:47 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 30 Jul 2026 22:57:47 GMT
STOPSIGNAL SIGQUIT
# Thu, 30 Jul 2026 22:57:47 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 30 Jul 2026 22:57:47 GMT
CMD ["php-fpm"]
# Fri, 31 Jul 2026 00:05:43 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 	; # buildkit
# Fri, 31 Jul 2026 00:06:51 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Fri, 31 Jul 2026 00:06:51 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Fri, 31 Jul 2026 00:06:51 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Fri, 31 Jul 2026 00:06:54 GMT
RUN set -eux; 	version='7.1-beta4'; 	sha1='f65ede139d03b6e2c1890c6e5ecfdd911ab4e292'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Fri, 31 Jul 2026 00:06:54 GMT
VOLUME [/var/www/html]
# Fri, 31 Jul 2026 00:06:54 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Fri, 31 Jul 2026 00:06:54 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:06:55 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Fri, 31 Jul 2026 00:06:55 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 00:06:55 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3331bd0cb7bedf414e481d696eef5a43224f4ad8030fe73841ba5edd445b408`  
		Last Modified: Thu, 30 Jul 2026 22:45:39 GMT  
		Size: 3.4 MB (3433047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d74ce3ca808abd651a47b54de0821a13aa2cf32f76d3f112665150358f91c7fa`  
		Last Modified: Thu, 30 Jul 2026 22:45:39 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39a050bcf4ff42aaa5b8e1105368e8dd30b1d1711e8a7c1ebb1236c598f09f81`  
		Last Modified: Thu, 30 Jul 2026 22:45:39 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b048dd68710a29234fc796087d0c295c81912b9447a8507aa797677b280bb269`  
		Last Modified: Thu, 30 Jul 2026 22:57:52 GMT  
		Size: 12.2 MB (12189392 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:786dbc350424c5bbf4fd15f9266f318620c597e2da4dc35b070cd30bd07d978b`  
		Last Modified: Thu, 30 Jul 2026 22:57:52 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16faf44cdb1da6015483a83c13128e554ad2630802712e5ebeec8d845b86ad4e`  
		Last Modified: Thu, 30 Jul 2026 22:57:52 GMT  
		Size: 11.9 MB (11921380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a50e1d4209fdd4719ebae708812902362285942f5d7460050c97524e9315338a`  
		Last Modified: Thu, 30 Jul 2026 22:57:52 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f79609fe8fe4788412eb6319c1db552315d52ce0d0f9b720497d74aa2dcd5176`  
		Last Modified: Thu, 30 Jul 2026 22:57:53 GMT  
		Size: 22.1 KB (22117 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb37008fb96a648df94131c6801c83fb35eaba45a403d82a7c14399e95e08796`  
		Last Modified: Thu, 30 Jul 2026 22:57:53 GMT  
		Size: 22.1 KB (22133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6f14bab765ee93d2f4495631969ac4307494d07b85c52a6c56827449873f127`  
		Last Modified: Thu, 30 Jul 2026 22:57:53 GMT  
		Size: 9.3 KB (9251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5792a71af979e037d594ae00cfc3680d46c5557e0573c01e2454107ea7ba43c9`  
		Last Modified: Fri, 31 Jul 2026 00:07:03 GMT  
		Size: 28.8 MB (28844031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db0fe53d02f322b3283d4676c6cba2a6895bd0337a5522d5527c62c893847ff6`  
		Last Modified: Fri, 31 Jul 2026 00:07:03 GMT  
		Size: 7.8 MB (7832421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7d253e93acc48f08765ed250a4d5062e58b396ceef67d9729eee76357c9230e`  
		Last Modified: Fri, 31 Jul 2026 00:07:02 GMT  
		Size: 310.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f8e8c7cd1112330072ce2d44cd6107944f0a197b850a688a0e6df67e036d892`  
		Last Modified: Fri, 31 Jul 2026 00:07:02 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5d5a84d534063c94e7047be691903bb6d3ba51ef13dd7ea3e56ba9a3fa5b363`  
		Last Modified: Fri, 31 Jul 2026 00:07:04 GMT  
		Size: 35.6 MB (35589743 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42cca388465f0eaab784d81619d09115d986d615e8207f9e37239d1473bb381c`  
		Last Modified: Fri, 31 Jul 2026 00:07:03 GMT  
		Size: 2.4 KB (2437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4786e926e030cb009f24a598eec0629b673c252e1fae451ee319e61bfb89b6b7`  
		Last Modified: Fri, 31 Jul 2026 00:07:04 GMT  
		Size: 1.8 KB (1765 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:237564d52dc6ef18636a6ed703af2ceee6443581ba5ab531ad79df7507fc6a96`  
		Last Modified: Fri, 31 Jul 2026 00:07:04 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.1-php8.2-fpm-alpine` - unknown; unknown

```console
$ docker pull wordpress@sha256:2deb6d8cacff238892975771b25cdc879372a2c79623b5d992d27bbacf4e0a46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **51.7 KB (51709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:84f07b2322104314638530c96df4121b1952f8d929cd8bf7fe14a2d375429a6b`

```dockerfile
```

-	Layers:
	-	`sha256:32dbfa989d4970fbf95172f4e09ebe7fca01d62873e65aa6b97f8421b64f8cf6`  
		Last Modified: Fri, 31 Jul 2026 00:07:02 GMT  
		Size: 51.7 KB (51709 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.1-php8.2-fpm-alpine` - linux; arm variant v7

```console
$ docker pull wordpress@sha256:4ffa5c82c6f7284a6a55e093141f57c8fe1c872a132fc5d3abcb39864c240ae4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.6 MB (101593270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6f220937dc9e600ee0cff23221166bd2ef7ccae9121cc3c064adacfa5750129`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 23:08:00 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 30 Jul 2026 23:08:00 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 30 Jul 2026 23:08:01 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 30 Jul 2026 23:08:01 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 23:08:01 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 23:08:01 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 23:08:01 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 23:08:01 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 23:08:01 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 30 Jul 2026 23:08:01 GMT
ENV PHP_VERSION=8.2.33
# Thu, 30 Jul 2026 23:08:01 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Thu, 30 Jul 2026 23:08:01 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Thu, 30 Jul 2026 23:17:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 23:17:01 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:19:45 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 23:19:45 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:19:46 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 23:19:46 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 23:19:46 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 23:19:46 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 23:19:46 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 30 Jul 2026 23:19:46 GMT
STOPSIGNAL SIGQUIT
# Thu, 30 Jul 2026 23:19:46 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 30 Jul 2026 23:19:46 GMT
CMD ["php-fpm"]
# Fri, 31 Jul 2026 00:17:33 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 	; # buildkit
# Fri, 31 Jul 2026 00:18:40 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Fri, 31 Jul 2026 00:18:40 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Fri, 31 Jul 2026 00:18:41 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Fri, 31 Jul 2026 00:18:43 GMT
RUN set -eux; 	version='7.1-beta4'; 	sha1='f65ede139d03b6e2c1890c6e5ecfdd911ab4e292'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Fri, 31 Jul 2026 00:18:44 GMT
VOLUME [/var/www/html]
# Fri, 31 Jul 2026 00:18:44 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Fri, 31 Jul 2026 00:18:44 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:18:44 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Fri, 31 Jul 2026 00:18:44 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 00:18:44 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aca01353880cd4913b5f7b0fb2d07bb40e706bedd6f457e623013c62c2bd38e1`  
		Last Modified: Thu, 30 Jul 2026 23:11:15 GMT  
		Size: 3.2 MB (3247150 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81e80e9180f60ddb5f64527f1349a400c0bc0eda1b7ef094570306cf72e7f72e`  
		Last Modified: Thu, 30 Jul 2026 23:11:15 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7495bb06baf5f2bc72fe4ef91ab1b32ae31bc7ed42f6d8e2e3ca4a14ba60143d`  
		Last Modified: Thu, 30 Jul 2026 23:11:15 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c939756669121f822a1812976405d8c0c9c2302b968a1ac68dbe12d91fc9039`  
		Last Modified: Thu, 30 Jul 2026 23:19:53 GMT  
		Size: 12.2 MB (12189409 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f13e4e13df2472967f4641cd458b7307130831448ebe9c9846a425b8d1bc5a3`  
		Last Modified: Thu, 30 Jul 2026 23:19:52 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3a249e814237023f6cbff027120ac99a0937376acd7432ab91f7b6a74890f2d`  
		Last Modified: Thu, 30 Jul 2026 23:19:53 GMT  
		Size: 11.2 MB (11223414 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5c93b1e3154b588bfc7d5e67fa88146ffc8d54811baaba34e48c87f50cb7d2a`  
		Last Modified: Thu, 30 Jul 2026 23:19:52 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3fe8e952abdf4555adbd72f7ba87d360c4f47a7a62f5ba3344c1cfd73cf919c3`  
		Last Modified: Thu, 30 Jul 2026 23:19:54 GMT  
		Size: 22.1 KB (22136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:528e1d5882653e7f0928a7d15bdfdf454d06546411e134873855fb244eb2938e`  
		Last Modified: Thu, 30 Jul 2026 23:19:54 GMT  
		Size: 22.1 KB (22149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c91bde078e976dedbb35302e5c9bb1fb59a6e255dc06a2793d3dd0f1025d3629`  
		Last Modified: Thu, 30 Jul 2026 23:19:54 GMT  
		Size: 9.3 KB (9251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c52df5e2e5b54cd0d8c3392a8b1ef8c37f72e47434db6105b07c2d591541606`  
		Last Modified: Fri, 31 Jul 2026 00:18:55 GMT  
		Size: 27.2 MB (27173301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:faa1604b0e0e9f62c3d15b37b84116ca82af8d8962f1509db284d888cd953435`  
		Last Modified: Fri, 31 Jul 2026 00:18:54 GMT  
		Size: 8.8 MB (8846888 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cee7dbcdd774ae51dd7a0253ee0906e1183b125c8e7d296308d758638646b83`  
		Last Modified: Fri, 31 Jul 2026 00:18:54 GMT  
		Size: 308.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:498f2cf1cbbee99b76f1ca91c8481cf2859d74f494e3561f02f943ba41dd0750`  
		Last Modified: Fri, 31 Jul 2026 00:18:54 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e475de2f17d3c0dc2515cd7d65f964ccb264d036a3137a0d1f05d0ca9799768b`  
		Last Modified: Fri, 31 Jul 2026 00:18:56 GMT  
		Size: 35.6 MB (35589740 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47fdc7a1e909a8073c7d7b30feccf261a9609bbef6745d7b5c714858141b7934`  
		Last Modified: Fri, 31 Jul 2026 00:18:55 GMT  
		Size: 2.4 KB (2437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc34203f8fa7116591dc92eda21e08e52dee7e722107d5376035c93831e7582e`  
		Last Modified: Fri, 31 Jul 2026 00:18:56 GMT  
		Size: 1.8 KB (1763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1ce410dea76b5e2a6ec18886424abde483b51e277a07c97b0072c52186451ad`  
		Last Modified: Fri, 31 Jul 2026 00:18:56 GMT  
		Size: 193.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.1-php8.2-fpm-alpine` - unknown; unknown

```console
$ docker pull wordpress@sha256:071e140b3b6bd34ab54168b3b76bb860b77d243a893df9ec0f4d039b51d3d7d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1152871 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:045bcec027c2c67b06d4b4c4dd6633da9dfe91f2db25beb27adb1b41b9c757cc`

```dockerfile
```

-	Layers:
	-	`sha256:85b7aa0afdbe880e535287c282ef3427ed550bff271464a6fba96e86c97fdaf5`  
		Last Modified: Fri, 31 Jul 2026 00:18:54 GMT  
		Size: 1.1 MB (1100947 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2fe9437d5ccedefac533d345811b7b2cfbbe40f8d2a4d2798aa611e33b636ec3`  
		Last Modified: Fri, 31 Jul 2026 00:18:54 GMT  
		Size: 51.9 KB (51924 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.1-php8.2-fpm-alpine` - linux; arm64 variant v8

```console
$ docker pull wordpress@sha256:5409f6459607aa627f2dd787acb30861aada5a4715dbdc728056256606924b47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.3 MB (110345966 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e6e6cda475ef286a218c0cb06891b1152839072b2c9f795793094072419dd940`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 22:42:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 30 Jul 2026 22:42:36 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 30 Jul 2026 22:42:36 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 30 Jul 2026 22:42:36 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:42:36 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:42:36 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:42:36 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:42:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:42:36 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 30 Jul 2026 22:42:36 GMT
ENV PHP_VERSION=8.2.33
# Thu, 30 Jul 2026 22:42:36 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Thu, 30 Jul 2026 22:42:36 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Thu, 30 Jul 2026 22:58:24 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 22:58:24 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:02:23 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 23:02:23 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:02:23 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 23:02:24 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 23:02:24 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 23:02:24 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 23:02:24 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 30 Jul 2026 23:02:24 GMT
STOPSIGNAL SIGQUIT
# Thu, 30 Jul 2026 23:02:24 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 30 Jul 2026 23:02:24 GMT
CMD ["php-fpm"]
# Fri, 31 Jul 2026 00:09:27 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 	; # buildkit
# Fri, 31 Jul 2026 00:10:17 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Fri, 31 Jul 2026 00:10:17 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Fri, 31 Jul 2026 00:10:17 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Fri, 31 Jul 2026 00:10:20 GMT
RUN set -eux; 	version='7.1-beta4'; 	sha1='f65ede139d03b6e2c1890c6e5ecfdd911ab4e292'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Fri, 31 Jul 2026 00:10:20 GMT
VOLUME [/var/www/html]
# Fri, 31 Jul 2026 00:10:20 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Fri, 31 Jul 2026 00:10:20 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:10:20 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Fri, 31 Jul 2026 00:10:20 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 00:10:20 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b13b5c2bf01f18c32725f4727f909e7158f01f59e1f76b77ed6e86468e10be32`  
		Last Modified: Thu, 30 Jul 2026 22:46:19 GMT  
		Size: 3.5 MB (3486008 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09e65a453eadf3c16e733b2a120dd31ee053355230c025d89a422e7a5ed6270b`  
		Last Modified: Thu, 30 Jul 2026 22:46:19 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba15fd80750899114b35bad0d1da0c1fed6a0a24e786ed16edf17367d3b862e7`  
		Last Modified: Thu, 30 Jul 2026 22:46:19 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39562b18bf7613cbf47afcd97acd6d67735a8b312b6705b6638d404039046911`  
		Last Modified: Thu, 30 Jul 2026 23:02:31 GMT  
		Size: 12.2 MB (12189395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a45c590da8f79ecc79328e8949f0595cb235036c758a95349271ae42a392109d`  
		Last Modified: Thu, 30 Jul 2026 23:02:30 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fe55b629a657573d77210c1326d097ee693bba7732565185b67961ac26a21350`  
		Last Modified: Thu, 30 Jul 2026 23:02:31 GMT  
		Size: 13.1 MB (13077852 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ed1633e8deff841f3f8213e3cadd44dc7af0c0bd54cef6afd5a12dff2147c63`  
		Last Modified: Thu, 30 Jul 2026 23:02:30 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:69fcd018497390c7c193b2f3fb1df265a9b021e5f5fb9ab3e1540c31a4ea968a`  
		Last Modified: Thu, 30 Jul 2026 23:02:32 GMT  
		Size: 22.2 KB (22164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45fd18b98027a875e8a17647c9bc8520b2ef38805b47d0ca572e23df3a2a1ff6`  
		Last Modified: Thu, 30 Jul 2026 23:02:32 GMT  
		Size: 22.2 KB (22180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263926ed08f647bd4f904a8b6810ec2774d80833d40502055958b75719b05d95`  
		Last Modified: Thu, 30 Jul 2026 23:02:32 GMT  
		Size: 9.2 KB (9250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4ed270ec60376c2992ea76aaa9f3b15fa3b891faf42a07c700f32a13316d55a`  
		Last Modified: Fri, 31 Jul 2026 00:10:32 GMT  
		Size: 32.5 MB (32492975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d598987716fbe681c06dff3c9004595d71a17a8cb5a376a36a8409c32310f235`  
		Last Modified: Fri, 31 Jul 2026 00:10:31 GMT  
		Size: 9.3 MB (9264127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f22f8d0c0a593252e4cbfc7c32d17417370594d2674aa52093f3083040545529`  
		Last Modified: Fri, 31 Jul 2026 00:10:31 GMT  
		Size: 311.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f7f1cfd79330238093dee7da9133467da9942c97f51d9a463f6d641da641552`  
		Last Modified: Fri, 31 Jul 2026 00:10:31 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:087cece1a6fb58465dacc0266f2d6a1c61010ffe161d690930bf8ac083f34c2a`  
		Last Modified: Fri, 31 Jul 2026 00:10:33 GMT  
		Size: 35.6 MB (35589761 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96d0332565c883eb70d8445316a0d674226208c740ff7e2c09d8ebf3761cd4da`  
		Last Modified: Fri, 31 Jul 2026 00:10:32 GMT  
		Size: 2.4 KB (2436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:743b3c89db69453e70aaf084acb6bf92cc74a890f777b801c0194b888ed180b8`  
		Last Modified: Fri, 31 Jul 2026 00:10:32 GMT  
		Size: 1.8 KB (1766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9199eb0683521bfc960ec1e635f868e23b520ce2faeb925b0665d2b21e3c264c`  
		Last Modified: Fri, 31 Jul 2026 00:10:33 GMT  
		Size: 194.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.1-php8.2-fpm-alpine` - unknown; unknown

```console
$ docker pull wordpress@sha256:b28678c3ae201b74907822c733ac16ea338f30a6dbd734d4ca309881c8e05831
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1152925 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:be7cf2b5e9af197fd3798beb4bb048f7b35110a8f4177257772e4b66b80c187c`

```dockerfile
```

-	Layers:
	-	`sha256:b4cdd7d9e96b57e5c422461c6094f43cc02e70b5fa6b0ac71560b2ae0c7fe6bc`  
		Last Modified: Fri, 31 Jul 2026 00:10:31 GMT  
		Size: 1.1 MB (1100967 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0f48767b2378f52485b462836846a4e3f28a009a02ebc4b41bd5eead4346154`  
		Last Modified: Fri, 31 Jul 2026 00:10:31 GMT  
		Size: 52.0 KB (51958 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.1-php8.2-fpm-alpine` - linux; 386

```console
$ docker pull wordpress@sha256:c33c4317602fda254d8dcd360344bea7b387c2529161d388ab9c3e4e139e29dd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **110.1 MB (110099394 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7ca50d58f6615d0ead6a35bacb5e3f2e79fc3da595a3cfb20aa72802293b39e3`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 22:37:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 30 Jul 2026 22:37:39 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 30 Jul 2026 22:37:39 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 30 Jul 2026 22:37:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:37:39 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:37:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:37:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:37:39 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:37:39 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 30 Jul 2026 22:37:39 GMT
ENV PHP_VERSION=8.2.33
# Thu, 30 Jul 2026 22:37:39 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Thu, 30 Jul 2026 22:37:39 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Thu, 30 Jul 2026 22:56:40 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 22:56:40 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:59:48 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:59:48 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:59:49 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 22:59:50 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:59:50 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:59:50 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 22:59:50 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 30 Jul 2026 22:59:50 GMT
STOPSIGNAL SIGQUIT
# Thu, 30 Jul 2026 22:59:50 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 30 Jul 2026 22:59:50 GMT
CMD ["php-fpm"]
# Fri, 31 Jul 2026 00:06:25 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 	; # buildkit
# Fri, 31 Jul 2026 00:07:15 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Fri, 31 Jul 2026 00:07:15 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Fri, 31 Jul 2026 00:07:15 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Fri, 31 Jul 2026 00:07:18 GMT
RUN set -eux; 	version='7.1-beta4'; 	sha1='f65ede139d03b6e2c1890c6e5ecfdd911ab4e292'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Fri, 31 Jul 2026 00:07:18 GMT
VOLUME [/var/www/html]
# Fri, 31 Jul 2026 00:07:18 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Fri, 31 Jul 2026 00:07:18 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:07:18 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Fri, 31 Jul 2026 00:07:18 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 00:07:18 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33c76c39278aad2baedd2cadc10109cf855403cbff9575af86e05e61f38c80b2`  
		Last Modified: Thu, 30 Jul 2026 22:41:26 GMT  
		Size: 3.5 MB (3507270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d17f53000c6f89d824ab30f00eed8faacc039d813054605407b1b8858afc2aa9`  
		Last Modified: Thu, 30 Jul 2026 22:41:26 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a460e4fe1771e133c7660c15704de44d7c3855f510189d5a7a1c5559e0db73d`  
		Last Modified: Thu, 30 Jul 2026 22:41:26 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2e5cebcd51794b45a46e95677bd7c0a6a8c9eeaaee7b496a990de897b980070`  
		Last Modified: Thu, 30 Jul 2026 22:59:57 GMT  
		Size: 12.2 MB (12189387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1aaa93b1ecce6b212fc4de7e5606ca0d63f0f7c1f7f885e0c3973eb2c2d7cdfc`  
		Last Modified: Thu, 30 Jul 2026 22:59:56 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9324c26284dee2e67c2cf9e1ecfb8ed9fbe01260cef9a4cbc4004d6ee4e42fa`  
		Last Modified: Thu, 30 Jul 2026 22:59:57 GMT  
		Size: 13.5 MB (13452450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9d02124ecb22e9140da77e817688d2195f8854e0772e82b57851782eca8c0546`  
		Last Modified: Thu, 30 Jul 2026 22:59:56 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25651f727cbe0ed8ba064e358c85ee12608ff4dee6770b1a9172f4709a4b6130`  
		Last Modified: Thu, 30 Jul 2026 22:59:57 GMT  
		Size: 22.4 KB (22359 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd562e732116f86f653b0af365b90a4312928e0e8218598689f6a75539a9353b`  
		Last Modified: Thu, 30 Jul 2026 22:59:57 GMT  
		Size: 22.4 KB (22373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f853d22ce7c26689c4765eaba0dbfc9d54a3da2989a8c40776641e165a97852`  
		Last Modified: Thu, 30 Jul 2026 22:59:58 GMT  
		Size: 9.3 KB (9252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80f35158bc54952afba464fe0ef17664d9d66ebeeb30db53e9e8035e17a88cc3`  
		Last Modified: Fri, 31 Jul 2026 00:07:30 GMT  
		Size: 33.3 MB (33296258 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:821ac3d3ec33391fbe0c3344c65e9e02bb03ccbcdbf5352d9fe0e29f52f33f57`  
		Last Modified: Fri, 31 Jul 2026 00:07:29 GMT  
		Size: 8.3 MB (8330948 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f0e384b8c50927873b25afbbba449f18db2a191caf295b19565520234652975`  
		Last Modified: Fri, 31 Jul 2026 00:07:29 GMT  
		Size: 309.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5efd3a9877ff112e3d581dd9090809f927361cebebb4e6c2276ccca08b53e04`  
		Last Modified: Fri, 31 Jul 2026 00:07:29 GMT  
		Size: 388.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52b07a0f8003977918130de5b43cdbf061f68fd4bcfe98bc49076890e509d370`  
		Last Modified: Fri, 31 Jul 2026 00:07:31 GMT  
		Size: 35.6 MB (35589736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:040828013944e2ca404ac0be76b0e4025bfb7f094f6daf31afc42290a3326f61`  
		Last Modified: Fri, 31 Jul 2026 00:07:30 GMT  
		Size: 2.4 KB (2439 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3961fb7e1e0a3f55f711987d56f6dc7d3bbd4f2cb66d26e421614438f995207`  
		Last Modified: Fri, 31 Jul 2026 00:07:31 GMT  
		Size: 1.8 KB (1764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:34094d398465f70f9dd347ea39523a940ac81a8a99c4264f38961b1d7e9ba58c`  
		Last Modified: Fri, 31 Jul 2026 00:07:31 GMT  
		Size: 195.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.1-php8.2-fpm-alpine` - unknown; unknown

```console
$ docker pull wordpress@sha256:90297e781d4fccc02eb5d154f39436b5dca2d464fbc9fc24bbd61745dfc8f1cf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1154517 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2e659c93f0d90f85fa7041eec8f560bc343c89b4e27c5c5419aae78826cbf03`

```dockerfile
```

-	Layers:
	-	`sha256:bbb5c9db3abea1b941856e220940014038342e07420449dd5906aa274aeaf224`  
		Last Modified: Fri, 31 Jul 2026 00:07:29 GMT  
		Size: 1.1 MB (1102780 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c1f04c09eb3a8e5d39acdc5f79e9e34c6f76f7e282d33ed0c50c43de725957a7`  
		Last Modified: Fri, 31 Jul 2026 00:07:29 GMT  
		Size: 51.7 KB (51737 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.1-php8.2-fpm-alpine` - linux; ppc64le

```console
$ docker pull wordpress@sha256:b416fd1af047cfc2e0413086ea06e7a57b1b7485f762727f64f298438681f6bc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **112.2 MB (112177607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:22c20773a6b7100aa451972d48c02b0067682c4dfd96d25a4c8b25854088d89f`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

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
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 02 Jul 2026 20:57:30 GMT
ENV PHP_VERSION=8.2.32
# Thu, 02 Jul 2026 20:57:30 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.32.tar.xz.asc
# Thu, 02 Jul 2026 20:57:30 GMT
ENV PHP_SHA256=e02aa173c236c12791696254d607da680e6d5516f8f5c2339642de7c4f944bd2
# Thu, 02 Jul 2026 22:41:48 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 02 Jul 2026 22:41:48 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 22:51:49 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 02 Jul 2026 22:51:49 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 02 Jul 2026 22:51:50 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 02 Jul 2026 22:51:51 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 02 Jul 2026 22:51:51 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 02 Jul 2026 22:51:52 GMT
WORKDIR /var/www/html
# Thu, 02 Jul 2026 22:51:52 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 02 Jul 2026 22:51:52 GMT
STOPSIGNAL SIGQUIT
# Thu, 02 Jul 2026 22:51:52 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 02 Jul 2026 22:51:52 GMT
CMD ["php-fpm"]
# Wed, 22 Jul 2026 22:38:12 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 	; # buildkit
# Wed, 22 Jul 2026 22:39:46 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Wed, 22 Jul 2026 22:39:46 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Wed, 22 Jul 2026 22:39:47 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Wed, 22 Jul 2026 22:39:51 GMT
RUN set -eux; 	version='7.1-beta3'; 	sha1='ba5bc834a1c29e43789ee1e2a305f02765ed8dc8'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Wed, 22 Jul 2026 22:39:51 GMT
VOLUME [/var/www/html]
# Wed, 22 Jul 2026 22:39:51 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Wed, 22 Jul 2026 22:39:51 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Wed, 22 Jul 2026 22:39:52 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Wed, 22 Jul 2026 22:39:52 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Wed, 22 Jul 2026 22:39:52 GMT
CMD ["php-fpm"]
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
	-	`sha256:fb7f74d2d492982ade4bb755b040f80aadfbf981ddd90d89933b1a5844d944f4`  
		Last Modified: Thu, 02 Jul 2026 22:46:54 GMT  
		Size: 12.2 MB (12185084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8ed15d581ee474a9881c0c7163c5cc53bda5f929eb7ae00b1d09742c255690ad`  
		Last Modified: Thu, 02 Jul 2026 22:46:54 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da7ed044a2ea9c648651cd2ff339c954f2e11bcabf45b2025e2d4eca5985541f`  
		Last Modified: Thu, 02 Jul 2026 22:52:08 GMT  
		Size: 13.7 MB (13721217 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:735978a5d88c57c8487ec1463e2837b666efae88030b94b0beb93e7219c80610`  
		Last Modified: Thu, 02 Jul 2026 22:52:08 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0ef2376b6658adbfbbeb60d6ed6638b40359f9e65cefbc1b126dfd9efc45acf`  
		Last Modified: Thu, 02 Jul 2026 22:52:07 GMT  
		Size: 22.2 KB (22190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20b6ffa4a4299ffdda962e325d3d5abe930a301f77e1d8d5b8dbdab14b4d84fd`  
		Last Modified: Thu, 02 Jul 2026 22:52:08 GMT  
		Size: 22.2 KB (22208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c9567120ebeef578b927308d52ff92ef04cc7fcd5f71083cb1e5e972f2f23f4`  
		Last Modified: Thu, 02 Jul 2026 22:52:09 GMT  
		Size: 9.3 KB (9253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7985608a8ea9949d3a19f00b9903e1c77b4609931c5b34c39163161255d7cba2`  
		Last Modified: Wed, 22 Jul 2026 22:40:16 GMT  
		Size: 34.1 MB (34091075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed11e995cb368d7b2dfc2c7cba6eb72d20cf5b5c73fce67af245bdb320409130`  
		Last Modified: Wed, 22 Jul 2026 22:40:16 GMT  
		Size: 9.1 MB (9068588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:90c6c4722699944f12c00d70ff765738f735ddf8783c2ce95c667e2babaf620a`  
		Last Modified: Wed, 22 Jul 2026 22:40:15 GMT  
		Size: 311.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41c2800ff5b0f8878d9744d17dca0c4b46f5ce4ef6cf7e6190cc41ab1dec2364`  
		Last Modified: Wed, 22 Jul 2026 22:40:15 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e56d5922c7070887e0464b6b7624b4f875fa933123da3a54eff8d994fcf4258`  
		Last Modified: Wed, 22 Jul 2026 22:40:17 GMT  
		Size: 35.6 MB (35588009 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d39b707cea36a622724fd68c374411aca6091f2929472f585a78dac28f05e12`  
		Last Modified: Wed, 22 Jul 2026 22:40:16 GMT  
		Size: 2.4 KB (2437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f11d86da47e1ad15c3bd1f02d6771300d8a14f47cb55e75c3153ec09865aedd6`  
		Last Modified: Wed, 22 Jul 2026 22:40:17 GMT  
		Size: 1.8 KB (1767 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f744ba1bea7dce9d10ccc642286427ae57deac54b54bede1d388bb5b6d1d7653`  
		Last Modified: Wed, 22 Jul 2026 22:40:17 GMT  
		Size: 197.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.1-php8.2-fpm-alpine` - unknown; unknown

```console
$ docker pull wordpress@sha256:f9382073766785a91d42b843751804923643449e1606d6a95fef917416c431bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1152777 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:842b7948ea76085b47140c882b100cf8f89252f795e763b3f51cfbd965c98ee2`

```dockerfile
```

-	Layers:
	-	`sha256:39e9a4f5c0b1b6e8303da0b04ab68c8eed986b6e6574d533aa8581b470f1534f`  
		Last Modified: Wed, 22 Jul 2026 22:40:15 GMT  
		Size: 1.1 MB (1100944 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:883ecfa7fdcc6f804ee99351f6e5b83f926cb4fc11d4425b827a5adfaeee7de8`  
		Last Modified: Wed, 22 Jul 2026 22:40:15 GMT  
		Size: 51.8 KB (51833 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.1-php8.2-fpm-alpine` - linux; riscv64

```console
$ docker pull wordpress@sha256:5fad3fb0982175f1f57c118c258f96ed5cdaa5335226f3e725b9c37a373b0171
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **107.8 MB (107758411 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:756e2d09438b39c0794343ad9242719701e67458adf2f335819abd9a4531b912`
-	Entrypoint: `["docker-entrypoint.sh"]`
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
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_VERSION=8.2.32
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.32.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.32.tar.xz.asc
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_SHA256=e02aa173c236c12791696254d607da680e6d5516f8f5c2339642de7c4f944bd2
# Sat, 04 Jul 2026 03:05:34 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Sat, 04 Jul 2026 03:05:34 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 04 Jul 2026 04:39:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 04 Jul 2026 04:39:12 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 04 Jul 2026 04:39:16 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sat, 04 Jul 2026 04:39:21 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 04 Jul 2026 04:39:21 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 04 Jul 2026 04:39:21 GMT
WORKDIR /var/www/html
# Sat, 04 Jul 2026 04:39:22 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Sat, 04 Jul 2026 04:39:22 GMT
STOPSIGNAL SIGQUIT
# Sat, 04 Jul 2026 04:39:22 GMT
EXPOSE map[9000/tcp:{}]
# Sat, 04 Jul 2026 04:39:22 GMT
CMD ["php-fpm"]
# Sat, 04 Jul 2026 08:39:53 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 	; # buildkit
# Sat, 04 Jul 2026 08:52:51 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 09 Jul 2026 23:05:04 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Sun, 19 Jul 2026 22:30:00 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Thu, 23 Jul 2026 14:21:30 GMT
RUN set -eux; 	version='7.1-beta3'; 	sha1='ba5bc834a1c29e43789ee1e2a305f02765ed8dc8'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Thu, 23 Jul 2026 14:21:30 GMT
VOLUME [/var/www/html]
# Thu, 23 Jul 2026 14:21:30 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Thu, 23 Jul 2026 14:21:31 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Thu, 23 Jul 2026 14:21:31 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Thu, 23 Jul 2026 14:21:31 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 23 Jul 2026 14:21:31 GMT
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
	-	`sha256:7be7b446ebc84c96c5c9e953343649f95f6ca62faff34dd4f2063a4c7ae9e538`  
		Last Modified: Sat, 04 Jul 2026 03:52:34 GMT  
		Size: 12.2 MB (12185100 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:903d25b98e4b3c4e36a7a14f739db227491150b13462eaaab0006e095a210d90`  
		Last Modified: Sat, 04 Jul 2026 03:52:31 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b0f152dc9cd08b17b2a682b6c9e63ea4db37079d44a3db4e31d1f8c6f2d5f9e`  
		Last Modified: Sat, 04 Jul 2026 04:40:11 GMT  
		Size: 12.9 MB (12930417 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c45ac4a954363380639cc0e92e04729a187e1fbc1e9eb8a1fcec7c3a35af010a`  
		Last Modified: Sat, 04 Jul 2026 04:40:08 GMT  
		Size: 2.5 KB (2454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f015eb0c62f1012ef442a6eb33dc1700cc45ca7285d715d1875ee41f435f99ac`  
		Last Modified: Sat, 04 Jul 2026 04:40:09 GMT  
		Size: 22.2 KB (22194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a1293ef5341bf65f90f15152f827d5278fdc38fe22c41355f1a525e1b952401`  
		Last Modified: Sat, 04 Jul 2026 04:40:09 GMT  
		Size: 22.2 KB (22218 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6216ee07a8e301ba98666d1188f2d16884e203503e6c3a320ff302431e5c851`  
		Last Modified: Sat, 04 Jul 2026 04:40:10 GMT  
		Size: 9.3 KB (9251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fed950641bae4b311f0937141cf390a14959819ffd7e9096a75b3bbd01f72b19`  
		Last Modified: Sat, 04 Jul 2026 08:55:04 GMT  
		Size: 32.7 MB (32655811 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cd48e4fdd51a3ae79e262f8631a84fd900dda87c6547d00dd91d307cf21f9709`  
		Last Modified: Sat, 04 Jul 2026 08:54:57 GMT  
		Size: 7.2 MB (7157098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65783a5f8c00ca5d5d5cbdba3673a3cc17f9b78b12bc26a420f7aa4397aa5507`  
		Last Modified: Thu, 09 Jul 2026 23:07:03 GMT  
		Size: 315.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f0cb1472768ed54d63ab601092c7c5d9ae6195e121cced2feaf3883c88bce3b`  
		Last Modified: Sun, 19 Jul 2026 22:32:10 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7777202a9a5970baefff346586b3ad6bc8fca7c32c635b589eccb7ffb5abd6e`  
		Last Modified: Thu, 23 Jul 2026 14:23:34 GMT  
		Size: 35.6 MB (35588013 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ccd8e9ed07ddf400d68c6bdb4c3fe942ab340c3784e53d3eba5f4271323ec2b`  
		Last Modified: Thu, 23 Jul 2026 14:23:29 GMT  
		Size: 2.4 KB (2441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a0549b2ed9d720b1713ad9d382af9edc507351273f9fa9acdbc807ec49817f9`  
		Last Modified: Thu, 23 Jul 2026 14:23:29 GMT  
		Size: 1.8 KB (1770 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4051c35bff55a80417b8bd30c4858e07e4f14f6ecbb441f6722b459409db0af3`  
		Last Modified: Thu, 23 Jul 2026 14:23:29 GMT  
		Size: 198.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.1-php8.2-fpm-alpine` - unknown; unknown

```console
$ docker pull wordpress@sha256:acc7ccc0452c3dcecaa7adf3fef76d0ca9db8014b34ad428d0e938ae0f122cd9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1152773 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b5954c9a2cf149cbeb44241884eef1d2bb935a7dbc79edf120834dcfa26607d`

```dockerfile
```

-	Layers:
	-	`sha256:215a93068962116d26118d4823222889448ec1dbdcac2e815e390f4eedce137d`  
		Last Modified: Thu, 23 Jul 2026 14:23:29 GMT  
		Size: 1.1 MB (1100940 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed2e58f5882b60802a8798b83fa7b8e4e45749090c733f59f727245e0fda4bc7`  
		Last Modified: Thu, 23 Jul 2026 14:23:28 GMT  
		Size: 51.8 KB (51833 bytes)  
		MIME: application/vnd.in-toto+json

### `wordpress:beta-7.1-php8.2-fpm-alpine` - linux; s390x

```console
$ docker pull wordpress@sha256:0670cb77e6162bff34fb7226a4bce533933f02d507b3e31bcf806c69c1d4daa9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **111.0 MB (111021857 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:13e16de0cb294932c293d1f0f50b56d835b7cbae1db1f682735dd9b76e79f0ef`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:21 GMT
ADD alpine-minirootfs-3.24.1-s390x.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:21 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 22:43:28 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 30 Jul 2026 22:43:28 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 30 Jul 2026 22:43:28 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 30 Jul 2026 22:43:28 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:43:29 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:43:29 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:43:29 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:43:29 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:43:29 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 30 Jul 2026 22:43:29 GMT
ENV PHP_VERSION=8.2.33
# Thu, 30 Jul 2026 22:43:29 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Thu, 30 Jul 2026 22:43:29 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Thu, 30 Jul 2026 23:49:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 23:49:25 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:52:51 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 23:52:52 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:52:52 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 23:52:53 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 23:52:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 23:52:53 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 23:52:53 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 30 Jul 2026 23:52:53 GMT
STOPSIGNAL SIGQUIT
# Thu, 30 Jul 2026 23:52:53 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 30 Jul 2026 23:52:53 GMT
CMD ["php-fpm"]
# Fri, 31 Jul 2026 00:19:16 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 	; # buildkit
# Fri, 31 Jul 2026 00:20:25 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		freetype-dev 		icu-dev 		imagemagick-dev libheif-dev 		libavif-dev 		libjpeg-turbo-dev 		libpng-dev 		libwebp-dev 		libzip-dev 	; 		docker-php-ext-configure gd 		--with-avif 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-install -j "$(nproc)" 		bcmath 		exif 		gd 		intl 		mysqli 		zip 	; 	pecl install imagick-3.8.1; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .wordpress-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Fri, 31 Jul 2026 00:20:25 GMT
RUN set -eux; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > "$PHP_INI_DIR/conf.d/opcache-recommended.ini" # buildkit
# Fri, 31 Jul 2026 00:20:25 GMT
RUN set -eux; 	{ 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > "$PHP_INI_DIR/conf.d/error-logging.ini" # buildkit
# Fri, 31 Jul 2026 00:20:27 GMT
RUN set -eux; 	version='7.1-beta4'; 	sha1='f65ede139d03b6e2c1890c6e5ecfdd911ab4e292'; 		curl -o wordpress.tar.gz -fL "https://wordpress.org/wordpress-$version.tar.gz"; 	echo "$sha1 *wordpress.tar.gz" | sha1sum -c -; 		tar -xzf wordpress.tar.gz -C /usr/src/; 	rm wordpress.tar.gz; 		[ ! -e /usr/src/wordpress/.htaccess ]; 	{ 		echo '# BEGIN WordPress'; 		echo ''; 		echo 'RewriteEngine On'; 		echo 'RewriteRule .* - [E=HTTP_AUTHORIZATION:%{HTTP:Authorization}]'; 		echo 'RewriteBase /'; 		echo 'RewriteRule ^index\.php$ - [L]'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-f'; 		echo 'RewriteCond %{REQUEST_FILENAME} !-d'; 		echo 'RewriteRule . /index.php [L]'; 		echo ''; 		echo '# END WordPress'; 	} > /usr/src/wordpress/.htaccess; 		chown -R www-data:www-data /usr/src/wordpress; 	mkdir wp-content; 	for dir in /usr/src/wordpress/wp-content/*/ cache; do 		dir="$(basename "${dir%/}")"; 		mkdir "wp-content/$dir"; 	done; 	chown -R www-data:www-data wp-content; 	chmod -R 1777 wp-content # buildkit
# Fri, 31 Jul 2026 00:20:27 GMT
VOLUME [/var/www/html]
# Fri, 31 Jul 2026 00:20:27 GMT
COPY --chown=www-data:www-data wp-config-docker.php /usr/src/wordpress/ # buildkit
# Fri, 31 Jul 2026 00:20:27 GMT
COPY docker-entrypoint.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:20:27 GMT
RUN ln -svfT docker-entrypoint.sh /usr/local/bin/docker-ensure-installed.sh # buildkit
# Fri, 31 Jul 2026 00:20:27 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Fri, 31 Jul 2026 00:20:27 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:da43be6afaaa3ec1b607461ce64380942a6d76c3d52cda4337b0770d9a96fa89`  
		Last Modified: Sun, 14 Jun 2026 06:47:25 GMT  
		Size: 3.7 MB (3709320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d5e44288c6a1afad23bd054b0111d8827fd26d8061721a7bea924dd9b48445b`  
		Last Modified: Thu, 30 Jul 2026 22:49:33 GMT  
		Size: 3.7 MB (3666337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c6677e65fb2898a008bae096ad35d16f36adb3c368e86734a557ac5c1299b52`  
		Last Modified: Thu, 30 Jul 2026 22:49:33 GMT  
		Size: 935.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da30f4bdf45f853bcac9ba8471ffb31efd611e4272a12481b46605ffbd7c0619`  
		Last Modified: Thu, 30 Jul 2026 22:49:33 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f239fddd4326ac51548b3951b47070f0b861d5ac98f336e6e7d31b707dd1957f`  
		Last Modified: Thu, 30 Jul 2026 23:53:04 GMT  
		Size: 12.2 MB (12189387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdcacf651c3d97a9e7688ab090ab0e4ae808ce3e470cc4b3c12b508e31351c78`  
		Last Modified: Thu, 30 Jul 2026 23:53:03 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b7c93753ff1dd480bd41bf6430554e9151b63b4d5ffdbba5a58a81fb20fd1545`  
		Last Modified: Thu, 30 Jul 2026 23:53:04 GMT  
		Size: 13.0 MB (13038405 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:088a5ea83e9c66ea92a0cc745d2dfd7758d883fccd7dbef4b4f4c018f9d9b18b`  
		Last Modified: Thu, 30 Jul 2026 23:53:03 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8cd7098f4bda11d4109979ab71f7ee024be74ab81d790991840be751a53b959b`  
		Last Modified: Thu, 30 Jul 2026 23:53:04 GMT  
		Size: 22.1 KB (22137 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72ecf255229275190da0260c9448d2116f469ab5993648e812926cab3b2a9b33`  
		Last Modified: Thu, 30 Jul 2026 23:53:04 GMT  
		Size: 22.2 KB (22162 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:840bc316d96cf057233d02930da8638e21036d037e918611cb177ed51c321108`  
		Last Modified: Thu, 30 Jul 2026 23:53:05 GMT  
		Size: 9.3 KB (9251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a772b853f35e7b052d59b72940c2627dfd3c8f6b45dc1ffcbd5786566430546a`  
		Last Modified: Fri, 31 Jul 2026 00:20:46 GMT  
		Size: 34.0 MB (34047368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:14b0790a67beb0250f11ef4762d4f27554211ecff1790ee8d832961890cc15fe`  
		Last Modified: Fri, 31 Jul 2026 00:20:46 GMT  
		Size: 8.7 MB (8718493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a841edbde5e051298518c7e1b00f3194176f23ffdd7d4b01a93f2a2816358471`  
		Last Modified: Fri, 31 Jul 2026 00:20:46 GMT  
		Size: 310.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60164dd405345819808820184a2265f968c7668384038a9533075beda7cc5a5c`  
		Last Modified: Fri, 31 Jul 2026 00:20:46 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:626272e3d1aa34079681389aefa0dea0a3aa8f3da03045fa35be3b7642ed5f28`  
		Last Modified: Fri, 31 Jul 2026 00:20:47 GMT  
		Size: 35.6 MB (35589775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d406b74b49c893fc75098fee8a5f580950a39ff67d3a8d9af36413f6738b6fa`  
		Last Modified: Fri, 31 Jul 2026 00:20:47 GMT  
		Size: 2.4 KB (2436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aec19be1f806c61c7ccedb57308b212bd05e9ff6e1c780c9cf6ea34487e71edb`  
		Last Modified: Fri, 31 Jul 2026 00:20:47 GMT  
		Size: 1.8 KB (1763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cac7310f481c7d11329fec005f4212d4bc8bd4640cc6ab9fdbfe26cdf7281cb`  
		Last Modified: Fri, 31 Jul 2026 00:20:48 GMT  
		Size: 192.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `wordpress:beta-7.1-php8.2-fpm-alpine` - unknown; unknown

```console
$ docker pull wordpress@sha256:4859cd9f260f36d181c57301f3d1640fb667d07238425ac5ce2d0de5bd5abd4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **1.2 MB (1152689 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f611ff09ee843b5787d8b63077f602d458c89ac31f6a9fe4a4700b5e8d8afa7c`

```dockerfile
```

-	Layers:
	-	`sha256:4a1e3ce7deec2a245326528e07ebb77dc5bf50ec572ee30fbe1de9bf1b995a7c`  
		Last Modified: Fri, 31 Jul 2026 00:20:46 GMT  
		Size: 1.1 MB (1100910 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ac4ee1e802863665532f29ede60b64d369b7fc4e91bee83035676f15c7ecbb69`  
		Last Modified: Fri, 31 Jul 2026 00:20:45 GMT  
		Size: 51.8 KB (51779 bytes)  
		MIME: application/vnd.in-toto+json
