## `friendica:rc-fpm-alpine`

```console
$ docker pull friendica@sha256:e932d54bfd4a4aa634e55d787804c1e18f83238b2d3b602f389e5d7860b91cb9
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

### `friendica:rc-fpm-alpine` - linux; amd64

```console
$ docker pull friendica@sha256:847314679794f6d4524d1c13b1809f27ab5dc1ec10b4896e3ce693b8d04484c5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.3 MB (67262271 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6d7de3b8bcd25934a8bb8245e475a203e654104cf0eb382f3b8fa049e7f75f7a`
-	Entrypoint: `["\/entrypoint-dev.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 20:20:52 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 27 Aug 2026 20:20:52 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 27 Aug 2026 20:20:52 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 27 Aug 2026 20:20:52 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 27 Aug 2026 20:20:52 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 27 Aug 2026 20:20:52 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:20:52 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:20:52 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 27 Aug 2026 20:20:52 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 27 Aug 2026 20:20:52 GMT
ENV PHP_VERSION=8.4.25
# Thu, 27 Aug 2026 20:20:52 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 27 Aug 2026 20:20:52 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 27 Aug 2026 20:20:55 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 27 Aug 2026 20:20:55 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:24:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 27 Aug 2026 20:24:00 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:24:01 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 27 Aug 2026 20:24:01 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 27 Aug 2026 20:24:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 27 Aug 2026 20:24:01 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 20:24:01 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 27 Aug 2026 20:24:01 GMT
STOPSIGNAL SIGQUIT
# Thu, 27 Aug 2026 20:24:01 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 27 Aug 2026 20:24:01 GMT
CMD ["php-fpm"]
# Thu, 27 Aug 2026 20:33:10 GMT
RUN set -ex;     apk add --no-cache         rsync         imagemagick         msmtp         shadow         tini; # buildkit
# Thu, 27 Aug 2026 20:33:12 GMT
ENV GOSU_VERSION=1.17
# Thu, 27 Aug 2026 20:33:12 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 27 Aug 2026 20:34:50 GMT
RUN set -ex;         apk add --no-cache --virtual .build-deps         mariadb-client         bash         $PHPIZE_DEPS         libpng-dev         libjpeg-turbo-dev         imagemagick-dev         libtool         libmemcached-dev         cyrus-sasl-dev         libjpeg-turbo-dev         freetype-dev         libwebp-dev         librsvg         pcre-dev         libzip-dev         icu-dev         openldap-dev         gmp-dev         gettext     ;         docker-php-ext-configure gd         --with-freetype         --with-jpeg         --with-webp     ;         docker-php-ext-install -j "$(nproc)"         pdo_mysql         exif         gd         zip         opcache         pcntl         ldap         gmp         intl     ;         pecl install APCu-5.1.28;     pecl install memcached-3.4.0;     pecl install redis-6.3.0;     pecl install imagick-3.8.1;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;         runDeps="$(         scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions             | tr ',' '\n'             | sort -u             | awk 'system("[ -e /usr/local/lib" $1 " ]") == 0 { next } { print "so:" $1 }'     )";     apk add --no-network --virtual .friendica-phpext-rundeps $runDeps;     apk del --no-network .build-deps; # buildkit
# Thu, 27 Aug 2026 20:34:50 GMT
ENV PHP_MEMORY_LIMIT=512M
# Thu, 27 Aug 2026 20:34:50 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Thu, 27 Aug 2026 20:34:50 GMT
RUN set -ex;     {         echo 'opcache.enable=1' ;         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidte_freq=60';         echo 'opcache.jit=tracing';         echo 'opcache.jit_buffer_size=32M';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         {         echo sendmail_path = "/usr/bin/msmtp -t";     } > /usr/local/etc/php/conf.d/sendmail.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > /usr/local/etc/php/conf.d/friendica.ini;     ln -s /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini # buildkit
# Thu, 27 Aug 2026 20:34:51 GMT
RUN set -ex;     echo access.format = '"%{REMOTE_ADDR}e - %u %t \"%m %r\" %s"' >> /usr/local/etc/php-fpm.d/docker.conf; # buildkit
# Thu, 27 Aug 2026 20:34:51 GMT
RUN set -ex;     mkdir -p -m 775 /var/www/data;     chown -R www-data:www-data /var/www/data # buildkit
# Thu, 27 Aug 2026 20:34:51 GMT
VOLUME [/var/www/html]
# Thu, 27 Aug 2026 20:34:51 GMT
VOLUME [/var/www/data]
# Thu, 27 Aug 2026 20:34:51 GMT
ENV FRIENDICA_SYSLOG_FLAGS=39
# Thu, 27 Aug 2026 20:34:51 GMT
ENV FRIENDICA_VERSION=2026.08-rc
# Thu, 27 Aug 2026 20:34:51 GMT
RUN set -ex;     apk add --no-cache --virtual .fetch-deps       gnupg     ; # buildkit
# Thu, 27 Aug 2026 20:34:51 GMT
COPY *.sh upgrade.exclude / # buildkit
# Thu, 27 Aug 2026 20:34:51 GMT
COPY config/* /usr/src/friendica/config/ # buildkit
# Thu, 27 Aug 2026 20:34:51 GMT
ENTRYPOINT ["/entrypoint-dev.sh"]
# Thu, 27 Aug 2026 20:34:51 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0d9e2ddced056a88d75fc7c7ac84037b5e84fc61627cdebfaccf1cf2b29b816`  
		Last Modified: Thu, 27 Aug 2026 20:24:08 GMT  
		Size: 5.9 MB (5947442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20597139957ab522fa6c9eecc29e3b5c428ae9188e6da0cde98907cd6c81582c`  
		Last Modified: Thu, 27 Aug 2026 20:24:08 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13dc8b7d57b29d468eb1cd8ef9a57abbac0621e93e3f4b7da864dac826bdb3b9`  
		Last Modified: Thu, 27 Aug 2026 20:24:08 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8124bc38dfe4b6ed6d0a2fb26e5921dddf1a7e21e77ebbd4005ae7259d545005`  
		Last Modified: Thu, 27 Aug 2026 20:24:09 GMT  
		Size: 13.8 MB (13782395 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51268cd560f80397456d5ce135383ff5759ebb991bd1c534ef4244044ac8ad1a`  
		Last Modified: Thu, 27 Aug 2026 20:24:09 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad879fc33398997ebfd1beeb80833a895abbd342604dde3cc3ef6aa2971a2352`  
		Last Modified: Thu, 27 Aug 2026 20:24:10 GMT  
		Size: 15.4 MB (15387495 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c12d8557eb108721d469e22a93f71570520a43ae3b29102637825a577b46c22e`  
		Last Modified: Thu, 27 Aug 2026 20:24:10 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19270c2d5fe3ef1b6fe5f2ea22c92f2cf03040673e16c9c39fe8baa8549aded4`  
		Last Modified: Thu, 27 Aug 2026 20:24:10 GMT  
		Size: 22.4 KB (22377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a87910f69c129d399ecd1c402e5f470b259b425fd1db013c197e5095028f527`  
		Last Modified: Thu, 27 Aug 2026 20:24:10 GMT  
		Size: 22.4 KB (22389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:742132fe46c7dfeaff9e0ecdce8aaebd18e558d58815ae04aa7ddaba265e18b9`  
		Last Modified: Thu, 27 Aug 2026 20:24:11 GMT  
		Size: 9.3 KB (9264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e3e3770d573315521c48dedcf4c5c5f0137bc0ac9141e5529aa597439672c88`  
		Last Modified: Thu, 27 Aug 2026 20:34:57 GMT  
		Size: 12.8 MB (12760885 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eea9363fba0dcd7ff2da01a05789e315b487316eb3f290b93bffb8222fcd1db`  
		Last Modified: Thu, 27 Aug 2026 20:34:57 GMT  
		Size: 1.0 MB (1037560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c821a4693a0bcfaf93070daaba7a8c8c6f6fcd7cf2e869460ee8ef6696bf1b90`  
		Last Modified: Thu, 27 Aug 2026 20:34:57 GMT  
		Size: 10.0 MB (9987079 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c73efe1865f517ab4132c5e2c593268e61e04bb5a5f3fcf3cdc972991685f9ca`  
		Last Modified: Thu, 27 Aug 2026 20:34:56 GMT  
		Size: 584.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c8d42afb7692d5955522a615c8f7968c6c860b515109f0040bdf177e729ea6e`  
		Last Modified: Thu, 27 Aug 2026 20:34:58 GMT  
		Size: 570.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04bbc87e46420444e5fae7af1c5e5f688a59d17855dc1d8cc7eaee84a3fc71e3`  
		Last Modified: Thu, 27 Aug 2026 20:34:58 GMT  
		Size: 141.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b43c718c6db6a8e394f6554f968211df4e852b1298f27488edb8bf659f81b13`  
		Last Modified: Thu, 27 Aug 2026 20:34:59 GMT  
		Size: 4.4 MB (4448931 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a84e4dc6db05f0f41af498fe85b7579d76cea12aee2c68df983291613149e801`  
		Last Modified: Thu, 27 Aug 2026 20:34:58 GMT  
		Size: 3.7 KB (3725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a1efde5920613fe3674a7393a8416191a233c489bd2d44c12399c5bc354a807`  
		Last Modified: Thu, 27 Aug 2026 20:34:59 GMT  
		Size: 917.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `friendica:rc-fpm-alpine` - unknown; unknown

```console
$ docker pull friendica@sha256:ba97c35cce7510236b12629e96c2b9a89e338bd60c83f7dfa64b9812568063b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 KB (55528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:855f034508e9b0c1b4ce206aeb4e0e6c6d84e52e9afaf93789ef37c10210b96a`

```dockerfile
```

-	Layers:
	-	`sha256:e65a0c9b280362c1f053808cfb1a977e3f073a17e6e698f49d82e8be1cb1c1fa`  
		Last Modified: Thu, 27 Aug 2026 20:34:56 GMT  
		Size: 55.5 KB (55528 bytes)  
		MIME: application/vnd.in-toto+json

### `friendica:rc-fpm-alpine` - linux; arm variant v6

```console
$ docker pull friendica@sha256:498d02135a0a783061aedcd737d6dbbcb7054a18d2b45b58b5dd5286e6493f46
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.3 MB (63275798 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5bf2a91f1ebebd068b53e21005e6e806d6915f0c221c862f1d466da9ade486a2`
-	Entrypoint: `["\/entrypoint-dev.sh"]`
-	Default Command: `["php-fpm"]`

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
# Thu, 27 Aug 2026 20:16:26 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 27 Aug 2026 20:16:26 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:16:27 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 27 Aug 2026 20:16:28 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 27 Aug 2026 20:16:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 27 Aug 2026 20:16:28 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 20:16:28 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 27 Aug 2026 20:16:28 GMT
STOPSIGNAL SIGQUIT
# Thu, 27 Aug 2026 20:16:28 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 27 Aug 2026 20:16:28 GMT
CMD ["php-fpm"]
# Thu, 27 Aug 2026 20:38:40 GMT
RUN set -ex;     apk add --no-cache         rsync         imagemagick         msmtp         shadow         tini; # buildkit
# Thu, 27 Aug 2026 20:38:43 GMT
ENV GOSU_VERSION=1.17
# Thu, 27 Aug 2026 20:38:43 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 27 Aug 2026 20:41:06 GMT
RUN set -ex;         apk add --no-cache --virtual .build-deps         mariadb-client         bash         $PHPIZE_DEPS         libpng-dev         libjpeg-turbo-dev         imagemagick-dev         libtool         libmemcached-dev         cyrus-sasl-dev         libjpeg-turbo-dev         freetype-dev         libwebp-dev         librsvg         pcre-dev         libzip-dev         icu-dev         openldap-dev         gmp-dev         gettext     ;         docker-php-ext-configure gd         --with-freetype         --with-jpeg         --with-webp     ;         docker-php-ext-install -j "$(nproc)"         pdo_mysql         exif         gd         zip         opcache         pcntl         ldap         gmp         intl     ;         pecl install APCu-5.1.28;     pecl install memcached-3.4.0;     pecl install redis-6.3.0;     pecl install imagick-3.8.1;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;         runDeps="$(         scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions             | tr ',' '\n'             | sort -u             | awk 'system("[ -e /usr/local/lib" $1 " ]") == 0 { next } { print "so:" $1 }'     )";     apk add --no-network --virtual .friendica-phpext-rundeps $runDeps;     apk del --no-network .build-deps; # buildkit
# Thu, 27 Aug 2026 20:41:06 GMT
ENV PHP_MEMORY_LIMIT=512M
# Thu, 27 Aug 2026 20:41:06 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Thu, 27 Aug 2026 20:41:06 GMT
RUN set -ex;     {         echo 'opcache.enable=1' ;         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidte_freq=60';         echo 'opcache.jit=tracing';         echo 'opcache.jit_buffer_size=32M';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         {         echo sendmail_path = "/usr/bin/msmtp -t";     } > /usr/local/etc/php/conf.d/sendmail.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > /usr/local/etc/php/conf.d/friendica.ini;     ln -s /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini # buildkit
# Thu, 27 Aug 2026 20:41:06 GMT
RUN set -ex;     echo access.format = '"%{REMOTE_ADDR}e - %u %t \"%m %r\" %s"' >> /usr/local/etc/php-fpm.d/docker.conf; # buildkit
# Thu, 27 Aug 2026 20:41:07 GMT
RUN set -ex;     mkdir -p -m 775 /var/www/data;     chown -R www-data:www-data /var/www/data # buildkit
# Thu, 27 Aug 2026 20:41:07 GMT
VOLUME [/var/www/html]
# Thu, 27 Aug 2026 20:41:07 GMT
VOLUME [/var/www/data]
# Thu, 27 Aug 2026 20:41:07 GMT
ENV FRIENDICA_SYSLOG_FLAGS=39
# Thu, 27 Aug 2026 20:41:07 GMT
ENV FRIENDICA_VERSION=2026.08-rc
# Thu, 27 Aug 2026 20:41:07 GMT
RUN set -ex;     apk add --no-cache --virtual .fetch-deps       gnupg     ; # buildkit
# Thu, 27 Aug 2026 20:41:07 GMT
COPY *.sh upgrade.exclude / # buildkit
# Thu, 27 Aug 2026 20:41:07 GMT
COPY config/* /usr/src/friendica/config/ # buildkit
# Thu, 27 Aug 2026 20:41:07 GMT
ENTRYPOINT ["/entrypoint-dev.sh"]
# Thu, 27 Aug 2026 20:41:07 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdb5626e594ea3aad8ebfb8ce371ba19c9271ba01069abc91faeb8150bf85c87`  
		Last Modified: Thu, 27 Aug 2026 20:16:34 GMT  
		Size: 5.5 MB (5537269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d577c7b9d0a355ea7477a68ab0a79b74d8522fda711a838acda8429cc328b34`  
		Last Modified: Thu, 27 Aug 2026 20:16:22 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:74cfa9628820322a9e2b5be4774b1abb706827f334dea996ccb8565e8e319659`  
		Last Modified: Thu, 27 Aug 2026 20:16:23 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79a0f07ce2ed7cb3402f933c04e2cf5b938501d50554a2d14e70470930c3849d`  
		Last Modified: Thu, 27 Aug 2026 20:16:35 GMT  
		Size: 13.8 MB (13782401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c42924a3a6157809a13e6e0005cab465b81a856d884334e39037d2540429abf`  
		Last Modified: Thu, 27 Aug 2026 20:16:34 GMT  
		Size: 485.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17b5aa46168d4eafb26758524954c37d5338e9a53a61d5dab2a80450090187d6`  
		Last Modified: Thu, 27 Aug 2026 20:16:35 GMT  
		Size: 13.8 MB (13821203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e04ba9ca83f0b97e03561a9a4056261cf47992d728e36bd501ce59eee29a7d3f`  
		Last Modified: Thu, 27 Aug 2026 20:16:35 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9dfa5967d5c62e8df520a66bfd80ab9170314c6eafe4c72ad2c9f71ac7f3cbe`  
		Last Modified: Thu, 27 Aug 2026 20:16:35 GMT  
		Size: 22.2 KB (22159 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8d5d96fab98d7bb3df14f56a11305f67f6d5fb2346512f7980cf1e2e436bf01`  
		Last Modified: Thu, 27 Aug 2026 20:16:36 GMT  
		Size: 22.2 KB (22176 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62b8c4218b1c2fda6582576375d663bd57c231c9102b0ff728a07d1fb5e6fa60`  
		Last Modified: Thu, 27 Aug 2026 20:16:36 GMT  
		Size: 9.3 KB (9261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7c61f4773a8059cf314ac7a84d93567e32828fbf63b0c9e5e8fe76b93405327`  
		Last Modified: Thu, 27 Aug 2026 20:41:13 GMT  
		Size: 12.0 MB (11996685 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5688494f59b501babeb9bc8c842182c8e0fa15859e93a47dac2367f8580704f`  
		Last Modified: Thu, 27 Aug 2026 20:41:13 GMT  
		Size: 1.0 MB (1005157 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f6cf2afaff9af7c6c342a45c1973a791529b719fde4770c85ae1da756fe1245`  
		Last Modified: Thu, 27 Aug 2026 20:41:13 GMT  
		Size: 9.0 MB (9002369 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d08f2e86cdfafd2874216c861a6b62b89141282d235fbe4355418cb6a9a9deeb`  
		Last Modified: Thu, 27 Aug 2026 20:41:12 GMT  
		Size: 583.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbb31f4e042bdfe2ca17e6a51a55bca6489fdcc8e27093a9a7f0f5ee151845e2`  
		Last Modified: Thu, 27 Aug 2026 20:41:14 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4fa3951813332128618ef68f468f7f50f996877c43881b2a53a74786d6ab2dd8`  
		Last Modified: Thu, 27 Aug 2026 20:41:14 GMT  
		Size: 141.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:931d2c17da02f8b8ad42f3160e4cd50134e3945060f80bab4c5b5693b322e673`  
		Last Modified: Thu, 27 Aug 2026 20:41:14 GMT  
		Size: 4.5 MB (4513618 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6153a72b295cb456a9a9487c5b012c51d5a834ed3b808d50231f1c1f9458a851`  
		Last Modified: Thu, 27 Aug 2026 20:41:14 GMT  
		Size: 3.7 KB (3725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d186d8ee86ae87a043cc092a092fea64b219db4b4ce235f5edb7198a9e5d2b16`  
		Last Modified: Thu, 27 Aug 2026 20:41:15 GMT  
		Size: 919.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `friendica:rc-fpm-alpine` - unknown; unknown

```console
$ docker pull friendica@sha256:3cab6a9c89c0d320451f476a9f7566e10f48d0f5178ecf910de00d8af6a29a82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 KB (55670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:283cdcb77aa222b306537ea99defc53c81e17535ab2fc896362b5fbd567517fd`

```dockerfile
```

-	Layers:
	-	`sha256:b4d71d34586fb120d3ec4783224e92cb907aad1dd173d4e824c9e16f1475a4d1`  
		Last Modified: Thu, 27 Aug 2026 20:41:12 GMT  
		Size: 55.7 KB (55670 bytes)  
		MIME: application/vnd.in-toto+json

### `friendica:rc-fpm-alpine` - linux; arm variant v7

```console
$ docker pull friendica@sha256:f88a54fa286c6b68b8e2c27779cfa8e96c91ab27d5715558c48c71b4db50bf09
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **60.3 MB (60342512 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4905dc2c30764f8355459ed18f354af429714827048b663b4b86d8294c25b85f`
-	Entrypoint: `["\/entrypoint-dev.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 20:26:50 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 27 Aug 2026 20:26:50 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 27 Aug 2026 20:26:50 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 27 Aug 2026 20:26:50 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 27 Aug 2026 20:26:50 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 27 Aug 2026 20:26:50 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:26:50 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:26:50 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 27 Aug 2026 20:26:50 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 27 Aug 2026 20:26:50 GMT
ENV PHP_VERSION=8.4.25
# Thu, 27 Aug 2026 20:26:50 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 27 Aug 2026 20:26:50 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 27 Aug 2026 20:26:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 27 Aug 2026 20:26:53 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:29:55 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 27 Aug 2026 20:29:55 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:29:56 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 27 Aug 2026 20:29:57 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 27 Aug 2026 20:29:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 27 Aug 2026 20:29:57 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 20:29:57 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 27 Aug 2026 20:29:57 GMT
STOPSIGNAL SIGQUIT
# Thu, 27 Aug 2026 20:29:57 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 27 Aug 2026 20:29:57 GMT
CMD ["php-fpm"]
# Thu, 27 Aug 2026 21:18:18 GMT
RUN set -ex;     apk add --no-cache         rsync         imagemagick         msmtp         shadow         tini; # buildkit
# Thu, 27 Aug 2026 21:18:21 GMT
ENV GOSU_VERSION=1.17
# Thu, 27 Aug 2026 21:18:21 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 27 Aug 2026 21:20:45 GMT
RUN set -ex;         apk add --no-cache --virtual .build-deps         mariadb-client         bash         $PHPIZE_DEPS         libpng-dev         libjpeg-turbo-dev         imagemagick-dev         libtool         libmemcached-dev         cyrus-sasl-dev         libjpeg-turbo-dev         freetype-dev         libwebp-dev         librsvg         pcre-dev         libzip-dev         icu-dev         openldap-dev         gmp-dev         gettext     ;         docker-php-ext-configure gd         --with-freetype         --with-jpeg         --with-webp     ;         docker-php-ext-install -j "$(nproc)"         pdo_mysql         exif         gd         zip         opcache         pcntl         ldap         gmp         intl     ;         pecl install APCu-5.1.28;     pecl install memcached-3.4.0;     pecl install redis-6.3.0;     pecl install imagick-3.8.1;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;         runDeps="$(         scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions             | tr ',' '\n'             | sort -u             | awk 'system("[ -e /usr/local/lib" $1 " ]") == 0 { next } { print "so:" $1 }'     )";     apk add --no-network --virtual .friendica-phpext-rundeps $runDeps;     apk del --no-network .build-deps; # buildkit
# Thu, 27 Aug 2026 21:20:45 GMT
ENV PHP_MEMORY_LIMIT=512M
# Thu, 27 Aug 2026 21:20:45 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Thu, 27 Aug 2026 21:20:45 GMT
RUN set -ex;     {         echo 'opcache.enable=1' ;         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidte_freq=60';         echo 'opcache.jit=tracing';         echo 'opcache.jit_buffer_size=32M';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         {         echo sendmail_path = "/usr/bin/msmtp -t";     } > /usr/local/etc/php/conf.d/sendmail.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > /usr/local/etc/php/conf.d/friendica.ini;     ln -s /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini # buildkit
# Thu, 27 Aug 2026 21:20:45 GMT
RUN set -ex;     echo access.format = '"%{REMOTE_ADDR}e - %u %t \"%m %r\" %s"' >> /usr/local/etc/php-fpm.d/docker.conf; # buildkit
# Thu, 27 Aug 2026 21:20:45 GMT
RUN set -ex;     mkdir -p -m 775 /var/www/data;     chown -R www-data:www-data /var/www/data # buildkit
# Thu, 27 Aug 2026 21:20:45 GMT
VOLUME [/var/www/html]
# Thu, 27 Aug 2026 21:20:45 GMT
VOLUME [/var/www/data]
# Thu, 27 Aug 2026 21:20:45 GMT
ENV FRIENDICA_SYSLOG_FLAGS=39
# Thu, 27 Aug 2026 21:20:45 GMT
ENV FRIENDICA_VERSION=2026.08-rc
# Thu, 27 Aug 2026 21:21:16 GMT
RUN set -ex;     apk add --no-cache --virtual .fetch-deps       gnupg     ; # buildkit
# Thu, 27 Aug 2026 21:21:16 GMT
COPY *.sh upgrade.exclude / # buildkit
# Thu, 27 Aug 2026 21:21:16 GMT
COPY config/* /usr/src/friendica/config/ # buildkit
# Thu, 27 Aug 2026 21:21:16 GMT
ENTRYPOINT ["/entrypoint-dev.sh"]
# Thu, 27 Aug 2026 21:21:16 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6118af44a32b99faa3d7f67a9d4f42592c124090cb8f9424799d9d435bb69c2e`  
		Last Modified: Thu, 27 Aug 2026 20:30:04 GMT  
		Size: 5.2 MB (5185962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bfb3da469e588c5719c73ed948659ce9714be635c7ccb505ad26e16bf738a9c4`  
		Last Modified: Thu, 27 Aug 2026 20:30:03 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4e05915f7471e9783fff69e5b044ad471eda90f63c8c9d444e5fc339cb9ba03f`  
		Last Modified: Thu, 27 Aug 2026 20:30:03 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:63640c61716dcb921c5ec4907ebfab426fc8b0eceeb4f14ed85e8415b68d0fa9`  
		Last Modified: Thu, 27 Aug 2026 20:30:04 GMT  
		Size: 13.8 MB (13782404 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a55536f947930734a636e6b35bde69f42f26fdcd2116d47c8709437bbb95e0d`  
		Last Modified: Thu, 27 Aug 2026 20:30:04 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a489236b2496b071f96c0b260a2ee0af601cd0ff4f441b4af4bd7dff22c4e97f`  
		Last Modified: Thu, 27 Aug 2026 20:30:05 GMT  
		Size: 13.0 MB (13044380 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37a308b9c7c54c01bba17bd8a328b35fac0ad2dd135dd0e135dd364b4ad8a6df`  
		Last Modified: Thu, 27 Aug 2026 20:30:05 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2279ce378dd9fe46637a95b0be4f75af1772c815d5174625d5c6793413b36a8`  
		Last Modified: Thu, 27 Aug 2026 20:30:05 GMT  
		Size: 22.2 KB (22174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56bf0acf1c7b1800660b52ffe911b4337651ecf12164bf952f95d8e94ce08f7c`  
		Last Modified: Thu, 27 Aug 2026 20:30:06 GMT  
		Size: 22.2 KB (22188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a2019ce2ab9f70195895bf455e551caa070e66be9bf50417be31c42ccc814c77`  
		Last Modified: Thu, 27 Aug 2026 20:30:06 GMT  
		Size: 9.3 KB (9264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13b933e235d2d44c8a0dc71a6bd238363395e41c22d4ba02884e7f78b549d7fa`  
		Last Modified: Thu, 27 Aug 2026 21:21:05 GMT  
		Size: 11.0 MB (11049254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0cd31ce0ed3f67441654d27a8528cdf99a043ecc1bc9e455d9808578a85ce27`  
		Last Modified: Thu, 27 Aug 2026 21:21:05 GMT  
		Size: 1.0 MB (1005187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73e840ca019e0f98ba8b5cd6e953a6a952bc650822c17b93869927d69b473d0d`  
		Last Modified: Thu, 27 Aug 2026 21:21:05 GMT  
		Size: 8.9 MB (8933849 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:396e8b5c1b08d1a98f88363d5283871c6682c56eb9adea0057da66ce97cb3ccf`  
		Last Modified: Thu, 27 Aug 2026 21:21:04 GMT  
		Size: 582.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:393318ca669b4ff5f6ca110bbc53da3aa8a989df67c2048b0927184eb7b920e9`  
		Last Modified: Thu, 27 Aug 2026 21:21:05 GMT  
		Size: 569.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e57ec93eb7ff83d9fd0895434d8988068df452c5ec59cba965e132d9be3a6b8`  
		Last Modified: Thu, 27 Aug 2026 21:21:06 GMT  
		Size: 141.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e73e92350d4a6d5a04c429b42f8421578475496639006d49f97d12716caa0b7`  
		Last Modified: Thu, 27 Aug 2026 21:21:21 GMT  
		Size: 4.0 MB (4017183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4817141f7d1295f3a7996f5fbc385b8995a9d364c33ce13e53eb1e2da0017052`  
		Last Modified: Thu, 27 Aug 2026 21:21:21 GMT  
		Size: 3.7 KB (3725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64f7cc984850d039779a1bda65e23591d691916398fd6fc626bd1683291dd125`  
		Last Modified: Thu, 27 Aug 2026 21:21:21 GMT  
		Size: 918.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `friendica:rc-fpm-alpine` - unknown; unknown

```console
$ docker pull friendica@sha256:a7d848e2ea9b0a928beb71d32e4af61ca1b0ccc8a9d27ba25e30668c83fe2983
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 KB (55670 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3537f9284fd363ead8538f5635f2a8d9c614cc0a1bf91286ad51b719aa8cc3e`

```dockerfile
```

-	Layers:
	-	`sha256:19672b827897b9616f5e60ee01a62706958143ac7287c9944c78e2b846364dee`  
		Last Modified: Thu, 27 Aug 2026 21:21:21 GMT  
		Size: 55.7 KB (55670 bytes)  
		MIME: application/vnd.in-toto+json

### `friendica:rc-fpm-alpine` - linux; arm64 variant v8

```console
$ docker pull friendica@sha256:d4ba7d1128292f1776c0a87149b2306644450567edc6c878d7e378143ef1cad4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.7 MB (66713259 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bd6440db46aeda8ce7cd12a88e9d2db0e69fe9e795fb3b4d74f4cf6744a6e7f`
-	Entrypoint: `["\/entrypoint-dev.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 20:21:23 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 27 Aug 2026 20:21:23 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 27 Aug 2026 20:21:23 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 27 Aug 2026 20:21:23 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 27 Aug 2026 20:21:23 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 27 Aug 2026 20:21:23 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:21:23 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:21:23 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 27 Aug 2026 20:21:23 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 27 Aug 2026 20:21:23 GMT
ENV PHP_VERSION=8.4.25
# Thu, 27 Aug 2026 20:21:23 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 27 Aug 2026 20:21:23 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 27 Aug 2026 20:21:26 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 27 Aug 2026 20:21:26 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:24:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 27 Aug 2026 20:24:41 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:24:42 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 27 Aug 2026 20:24:43 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 27 Aug 2026 20:24:43 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 27 Aug 2026 20:24:43 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 20:24:43 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 27 Aug 2026 20:24:43 GMT
STOPSIGNAL SIGQUIT
# Thu, 27 Aug 2026 20:24:43 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 27 Aug 2026 20:24:43 GMT
CMD ["php-fpm"]
# Thu, 27 Aug 2026 20:30:59 GMT
RUN set -ex;     apk add --no-cache         rsync         imagemagick         msmtp         shadow         tini; # buildkit
# Thu, 27 Aug 2026 20:31:01 GMT
ENV GOSU_VERSION=1.17
# Thu, 27 Aug 2026 20:31:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 27 Aug 2026 20:33:14 GMT
RUN set -ex;         apk add --no-cache --virtual .build-deps         mariadb-client         bash         $PHPIZE_DEPS         libpng-dev         libjpeg-turbo-dev         imagemagick-dev         libtool         libmemcached-dev         cyrus-sasl-dev         libjpeg-turbo-dev         freetype-dev         libwebp-dev         librsvg         pcre-dev         libzip-dev         icu-dev         openldap-dev         gmp-dev         gettext     ;         docker-php-ext-configure gd         --with-freetype         --with-jpeg         --with-webp     ;         docker-php-ext-install -j "$(nproc)"         pdo_mysql         exif         gd         zip         opcache         pcntl         ldap         gmp         intl     ;         pecl install APCu-5.1.28;     pecl install memcached-3.4.0;     pecl install redis-6.3.0;     pecl install imagick-3.8.1;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;         runDeps="$(         scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions             | tr ',' '\n'             | sort -u             | awk 'system("[ -e /usr/local/lib" $1 " ]") == 0 { next } { print "so:" $1 }'     )";     apk add --no-network --virtual .friendica-phpext-rundeps $runDeps;     apk del --no-network .build-deps; # buildkit
# Thu, 27 Aug 2026 20:33:14 GMT
ENV PHP_MEMORY_LIMIT=512M
# Thu, 27 Aug 2026 20:33:14 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Thu, 27 Aug 2026 20:33:14 GMT
RUN set -ex;     {         echo 'opcache.enable=1' ;         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidte_freq=60';         echo 'opcache.jit=tracing';         echo 'opcache.jit_buffer_size=32M';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         {         echo sendmail_path = "/usr/bin/msmtp -t";     } > /usr/local/etc/php/conf.d/sendmail.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > /usr/local/etc/php/conf.d/friendica.ini;     ln -s /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini # buildkit
# Thu, 27 Aug 2026 20:33:14 GMT
RUN set -ex;     echo access.format = '"%{REMOTE_ADDR}e - %u %t \"%m %r\" %s"' >> /usr/local/etc/php-fpm.d/docker.conf; # buildkit
# Thu, 27 Aug 2026 20:33:14 GMT
RUN set -ex;     mkdir -p -m 775 /var/www/data;     chown -R www-data:www-data /var/www/data # buildkit
# Thu, 27 Aug 2026 20:33:14 GMT
VOLUME [/var/www/html]
# Thu, 27 Aug 2026 20:33:14 GMT
VOLUME [/var/www/data]
# Thu, 27 Aug 2026 20:33:14 GMT
ENV FRIENDICA_SYSLOG_FLAGS=39
# Thu, 27 Aug 2026 20:33:14 GMT
ENV FRIENDICA_VERSION=2026.08-rc
# Thu, 27 Aug 2026 20:33:43 GMT
RUN set -ex;     apk add --no-cache --virtual .fetch-deps       gnupg     ; # buildkit
# Thu, 27 Aug 2026 20:33:43 GMT
COPY *.sh upgrade.exclude / # buildkit
# Thu, 27 Aug 2026 20:33:43 GMT
COPY config/* /usr/src/friendica/config/ # buildkit
# Thu, 27 Aug 2026 20:33:43 GMT
ENTRYPOINT ["/entrypoint-dev.sh"]
# Thu, 27 Aug 2026 20:33:43 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c5a2841823df44ee75d91eadbca48b9a5087d845d0502ae651ee7c3642c5811f`  
		Last Modified: Thu, 27 Aug 2026 20:24:50 GMT  
		Size: 6.3 MB (6257372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51ec15aaabab5bc36313afb01062656ecf78b9d9b9bc440fecd5204dba04355a`  
		Last Modified: Thu, 27 Aug 2026 20:24:49 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8d7eafd682737f58dd0f65999afdcc67633bf57b296cdb67a9a0e1efb6dc3df`  
		Last Modified: Thu, 27 Aug 2026 20:24:49 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f0fb40f2468b8a5aa162c06e22439fad94dd166d75848e1c799b66b5e4bb8d5`  
		Last Modified: Thu, 27 Aug 2026 20:24:50 GMT  
		Size: 13.8 MB (13782377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:13fbb32a018123b8636432e34fd47ce4a6d84b2021710f04e5063259d6740e89`  
		Last Modified: Thu, 27 Aug 2026 20:24:51 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8aa89a2334a89f6576195021f8b5467dde4f2bbea66109bf3f145cb0c7955ab4`  
		Last Modified: Thu, 27 Aug 2026 20:24:51 GMT  
		Size: 14.9 MB (14892789 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bdec4c71ac8a7d91e61282da4cfa53e4d112d559b6fa55a44d6e6fe415f8d8e`  
		Last Modified: Thu, 27 Aug 2026 20:24:51 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:817344582caa96803be314d77f8170e73a87ad36aec7109e30515ae5f030654e`  
		Last Modified: Thu, 27 Aug 2026 20:24:51 GMT  
		Size: 22.2 KB (22191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92b0e7dd3837671795573a653b02be6e2d552ec930bfce7556d288277cbe1176`  
		Last Modified: Thu, 27 Aug 2026 20:24:52 GMT  
		Size: 22.2 KB (22205 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd8370e82fe7fcba7b81fdbd27155876c660fd0cb84e667e6b5dc2b914e38f3a`  
		Last Modified: Thu, 27 Aug 2026 20:24:52 GMT  
		Size: 9.3 KB (9265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9448719ddb0b7bf2bfa393ecd85e91e862a3ad23117b63bbfe6fb1e2b29022fe`  
		Last Modified: Thu, 27 Aug 2026 20:33:32 GMT  
		Size: 12.4 MB (12403197 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:07ec1f2849399e1e536b5e7c9a7fe0fc9acb74c33a39876a3ce6b69baed548f8`  
		Last Modified: Thu, 27 Aug 2026 20:33:32 GMT  
		Size: 969.5 KB (969451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fdbe998edb836be649619aa19fa70565f1c9deaa1f3d93d781b378c3e21bb246`  
		Last Modified: Thu, 27 Aug 2026 20:33:32 GMT  
		Size: 9.8 MB (9760627 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e72355f3754ba6f891a75bec7a8ee6e2f659b6eb78209b0f9cddd03f8df1ca79`  
		Last Modified: Thu, 27 Aug 2026 20:33:32 GMT  
		Size: 582.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:673a607572117e486fe49deca6fca5ce98412fc7fdbdb49f3c62171799c5a500`  
		Last Modified: Thu, 27 Aug 2026 20:33:33 GMT  
		Size: 568.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3b7a37049d5307ba77c261243a6bbe95d17eea79af6c094ebcbf60a1f849fb42`  
		Last Modified: Thu, 27 Aug 2026 20:33:33 GMT  
		Size: 140.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:349455dda3f58a28e06ebab2841f1a14f8339311b5127501ee5061510370933f`  
		Last Modified: Thu, 27 Aug 2026 20:33:48 GMT  
		Size: 4.4 MB (4400701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2bc289710c2a1ccfa246a1efa4e1b82f9bad87930015136fffe000a40f7af24f`  
		Last Modified: Thu, 27 Aug 2026 20:33:48 GMT  
		Size: 3.7 KB (3724 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7dc95aea01f1073f6772570292c8da92502355a114315d061c1526c3d30b2ca3`  
		Last Modified: Thu, 27 Aug 2026 20:33:48 GMT  
		Size: 919.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `friendica:rc-fpm-alpine` - unknown; unknown

```console
$ docker pull friendica@sha256:abe1cef1c21ddeef45f72e14dd93e0ecaf6202da1b00edec025d3cdbf46794c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.7 KB (55690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:199e577ac27f609321d81a30b46d9a5ecd47acdbf338c793c1f9a83e467c66d8`

```dockerfile
```

-	Layers:
	-	`sha256:9a08681a478b9d60444fa3761bf9dc450ffd751283282b852b05b582e2effd51`  
		Last Modified: Thu, 27 Aug 2026 20:33:47 GMT  
		Size: 55.7 KB (55690 bytes)  
		MIME: application/vnd.in-toto+json

### `friendica:rc-fpm-alpine` - linux; 386

```console
$ docker pull friendica@sha256:70add90d3bb8f36daec4e3443c7710b3a70abe0de39f2bc6da4cc0fabd786824
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.7 MB (67657016 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab8377bbff4ace3a958b1328ac4a47528dd312a30d4bffb6127ad79b9ca4018d`
-	Entrypoint: `["\/entrypoint-dev.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Thu, 27 Aug 2026 20:21:05 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 27 Aug 2026 20:21:05 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 27 Aug 2026 20:21:05 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 27 Aug 2026 20:21:05 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 27 Aug 2026 20:21:05 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 27 Aug 2026 20:21:05 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:21:05 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 27 Aug 2026 20:21:05 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 27 Aug 2026 20:21:05 GMT
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 27 Aug 2026 20:21:05 GMT
ENV PHP_VERSION=8.4.25
# Thu, 27 Aug 2026 20:21:05 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.25.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.25.tar.xz.asc
# Thu, 27 Aug 2026 20:21:05 GMT
ENV PHP_SHA256=dc1ad8b4109898d9db49744450403874858c23efc685b1032a50bd1e83906848
# Thu, 27 Aug 2026 20:24:55 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 27 Aug 2026 20:24:55 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:28:18 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 27 Aug 2026 20:28:18 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 27 Aug 2026 20:28:19 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 27 Aug 2026 20:28:19 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 27 Aug 2026 20:28:19 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 27 Aug 2026 20:28:19 GMT
WORKDIR /var/www/html
# Thu, 27 Aug 2026 20:28:19 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 27 Aug 2026 20:28:19 GMT
STOPSIGNAL SIGQUIT
# Thu, 27 Aug 2026 20:28:19 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 27 Aug 2026 20:28:19 GMT
CMD ["php-fpm"]
# Thu, 27 Aug 2026 21:15:09 GMT
RUN set -ex;     apk add --no-cache         rsync         imagemagick         msmtp         shadow         tini; # buildkit
# Thu, 27 Aug 2026 21:15:11 GMT
ENV GOSU_VERSION=1.17
# Thu, 27 Aug 2026 21:15:11 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Thu, 27 Aug 2026 21:17:12 GMT
RUN set -ex;         apk add --no-cache --virtual .build-deps         mariadb-client         bash         $PHPIZE_DEPS         libpng-dev         libjpeg-turbo-dev         imagemagick-dev         libtool         libmemcached-dev         cyrus-sasl-dev         libjpeg-turbo-dev         freetype-dev         libwebp-dev         librsvg         pcre-dev         libzip-dev         icu-dev         openldap-dev         gmp-dev         gettext     ;         docker-php-ext-configure gd         --with-freetype         --with-jpeg         --with-webp     ;         docker-php-ext-install -j "$(nproc)"         pdo_mysql         exif         gd         zip         opcache         pcntl         ldap         gmp         intl     ;         pecl install APCu-5.1.28;     pecl install memcached-3.4.0;     pecl install redis-6.3.0;     pecl install imagick-3.8.1;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;         runDeps="$(         scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions             | tr ',' '\n'             | sort -u             | awk 'system("[ -e /usr/local/lib" $1 " ]") == 0 { next } { print "so:" $1 }'     )";     apk add --no-network --virtual .friendica-phpext-rundeps $runDeps;     apk del --no-network .build-deps; # buildkit
# Thu, 27 Aug 2026 21:17:12 GMT
ENV PHP_MEMORY_LIMIT=512M
# Thu, 27 Aug 2026 21:17:12 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Thu, 27 Aug 2026 21:17:12 GMT
RUN set -ex;     {         echo 'opcache.enable=1' ;         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidte_freq=60';         echo 'opcache.jit=tracing';         echo 'opcache.jit_buffer_size=32M';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         {         echo sendmail_path = "/usr/bin/msmtp -t";     } > /usr/local/etc/php/conf.d/sendmail.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > /usr/local/etc/php/conf.d/friendica.ini;     ln -s /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini # buildkit
# Thu, 27 Aug 2026 21:17:12 GMT
RUN set -ex;     echo access.format = '"%{REMOTE_ADDR}e - %u %t \"%m %r\" %s"' >> /usr/local/etc/php-fpm.d/docker.conf; # buildkit
# Thu, 27 Aug 2026 21:17:13 GMT
RUN set -ex;     mkdir -p -m 775 /var/www/data;     chown -R www-data:www-data /var/www/data # buildkit
# Thu, 27 Aug 2026 21:17:13 GMT
VOLUME [/var/www/html]
# Thu, 27 Aug 2026 21:17:13 GMT
VOLUME [/var/www/data]
# Thu, 27 Aug 2026 21:17:13 GMT
ENV FRIENDICA_SYSLOG_FLAGS=39
# Thu, 27 Aug 2026 21:17:13 GMT
ENV FRIENDICA_VERSION=2026.08-rc
# Thu, 27 Aug 2026 21:17:13 GMT
RUN set -ex;     apk add --no-cache --virtual .fetch-deps       gnupg     ; # buildkit
# Thu, 27 Aug 2026 21:17:13 GMT
COPY *.sh upgrade.exclude / # buildkit
# Thu, 27 Aug 2026 21:17:13 GMT
COPY config/* /usr/src/friendica/config/ # buildkit
# Thu, 27 Aug 2026 21:17:13 GMT
ENTRYPOINT ["/entrypoint-dev.sh"]
# Thu, 27 Aug 2026 21:17:13 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a98a5a72ac216a4758c7acdbe7a296f7bbffc76595a5b266fa1af7170395103`  
		Last Modified: Thu, 27 Aug 2026 20:24:43 GMT  
		Size: 5.8 MB (5793462 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f3f154befdf13db7fe7f0d836c1768fc52de3087de57c179bd2fa7e5e23905bb`  
		Last Modified: Thu, 27 Aug 2026 20:24:42 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d201ed10dfccc6d33d618f56c026a229db4800a199e94259aea9844761af034`  
		Last Modified: Thu, 27 Aug 2026 20:24:41 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a172480239f0a767cdf806a91302c9c0f66e52a6de6bb8b3e35b3f68853c46e5`  
		Last Modified: Thu, 27 Aug 2026 20:28:27 GMT  
		Size: 13.8 MB (13782382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b15a618093f63b7bfdcea1af1c6d9bffabc69697606bf270dd9427c4d0700d5e`  
		Last Modified: Thu, 27 Aug 2026 20:28:27 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9101fdfc23b9d6f228b0d250c3cd7fc6006c827b48bfb557bc9aea1131fa42e7`  
		Last Modified: Thu, 27 Aug 2026 20:28:27 GMT  
		Size: 15.7 MB (15703053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87b8f1840e6dbd72e5462807e2db01e6eb9a08b6c7f47098acd19c02b3f3c8eb`  
		Last Modified: Thu, 27 Aug 2026 20:28:27 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3b93e9679b4658ed491f54e4f3ce793db37374a0ad72cbfda851d16eee92cf6`  
		Last Modified: Thu, 27 Aug 2026 20:28:28 GMT  
		Size: 22.4 KB (22389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce2ac208f84f01fbbb7a3e3c255347b4897389dc94a486e7273064b4846fd7eb`  
		Last Modified: Thu, 27 Aug 2026 20:28:28 GMT  
		Size: 22.4 KB (22397 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f105af85cb8ba89cac1d9fd7c33e67cc9c3c1e20223cfa572ee6170afec8e53d`  
		Last Modified: Thu, 27 Aug 2026 20:28:28 GMT  
		Size: 9.3 KB (9264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:208fa794c23570ac025604e9011e68fd7ef68928124b0eaeb93983fe1e13d99d`  
		Last Modified: Thu, 27 Aug 2026 21:17:20 GMT  
		Size: 13.0 MB (13005301 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce0e1d2abbba7ae755cf8a8cd9df3a0da27eb59fe29f38eabde3d8c3dd6d06af`  
		Last Modified: Thu, 27 Aug 2026 21:17:19 GMT  
		Size: 1.0 MB (1012768 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76e076c24ed13f4361fac3c3a8b15fef064866db461c34c78342b7a3c2592808`  
		Last Modified: Thu, 27 Aug 2026 21:17:20 GMT  
		Size: 10.2 MB (10205480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c261fd3d367fc0adae317260418d958111dd4ea2a8f7e1f734aee7ecc2b531f3`  
		Last Modified: Thu, 27 Aug 2026 21:17:19 GMT  
		Size: 586.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e1473dc054633e9dc52914e11590bb002b439c4a5011c477b9034fb7f520f04`  
		Last Modified: Thu, 27 Aug 2026 21:17:20 GMT  
		Size: 567.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c7b90fd68196f821222d9c0c336fcb1ee11fcc569e2757f58f6979269ed66ab`  
		Last Modified: Thu, 27 Aug 2026 21:17:20 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4c56d3ed28913e26871962be47eafdcab2a60c5baea93a3e9cd8fad0630096e`  
		Last Modified: Thu, 27 Aug 2026 21:17:21 GMT  
		Size: 4.4 MB (4420319 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:386bbda239f2108c3e4214733f55b0c4b64252645adc5cfa04a70e4ac280d5fc`  
		Last Modified: Thu, 27 Aug 2026 21:17:21 GMT  
		Size: 3.7 KB (3726 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5408ce4ab301866c8ac392e9c8c707577ab003d250f06364ffde4d806d61a030`  
		Last Modified: Thu, 27 Aug 2026 21:17:21 GMT  
		Size: 920.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `friendica:rc-fpm-alpine` - unknown; unknown

```console
$ docker pull friendica@sha256:16b9d833a248f15cae26926cd4423bc9c99320811581e8664631a6091e793148
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 KB (55501 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:945761681cb644e5ea59343d89220f15a15c2849060e083e2829d45e5768b125`

```dockerfile
```

-	Layers:
	-	`sha256:68001af135c6cf96f037e3eaee42d57550a322e45f439d65821d5205b65c0ad3`  
		Last Modified: Thu, 27 Aug 2026 21:17:19 GMT  
		Size: 55.5 KB (55501 bytes)  
		MIME: application/vnd.in-toto+json

### `friendica:rc-fpm-alpine` - linux; ppc64le

```console
$ docker pull friendica@sha256:5c380c372538cc02e5eb9eeef37a354488d437e82b2737bdbec3410a36f0de49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.3 MB (66329226 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5065a851969bb46c5ac3ac764bd11b880be8bfb1ca240255c9fa0a321e9d081`
-	Entrypoint: `["\/entrypoint-dev.sh"]`
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
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 02 Jul 2026 20:57:30 GMT
ENV PHP_VERSION=8.4.24
# Thu, 02 Jul 2026 20:57:30 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Thu, 02 Jul 2026 20:57:30 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Fri, 31 Jul 2026 00:22:54 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Fri, 31 Jul 2026 00:22:55 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:28:02 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 31 Jul 2026 00:28:03 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:28:05 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 31 Jul 2026 00:28:06 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 31 Jul 2026 00:28:06 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 31 Jul 2026 00:28:07 GMT
WORKDIR /var/www/html
# Fri, 31 Jul 2026 00:28:07 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Fri, 31 Jul 2026 00:28:07 GMT
STOPSIGNAL SIGQUIT
# Fri, 31 Jul 2026 00:28:07 GMT
EXPOSE map[9000/tcp:{}]
# Fri, 31 Jul 2026 00:28:07 GMT
CMD ["php-fpm"]
# Mon, 17 Aug 2026 18:05:40 GMT
RUN set -ex;     apk add --no-cache         rsync         imagemagick         msmtp         shadow         tini; # buildkit
# Mon, 17 Aug 2026 18:05:43 GMT
ENV GOSU_VERSION=1.17
# Mon, 17 Aug 2026 18:05:43 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 17 Aug 2026 18:08:46 GMT
RUN set -ex;         apk add --no-cache --virtual .build-deps         mariadb-client         bash         $PHPIZE_DEPS         libpng-dev         libjpeg-turbo-dev         imagemagick-dev         libtool         libmemcached-dev         cyrus-sasl-dev         libjpeg-turbo-dev         freetype-dev         libwebp-dev         librsvg         pcre-dev         libzip-dev         icu-dev         openldap-dev         gmp-dev         gettext     ;         docker-php-ext-configure gd         --with-freetype         --with-jpeg         --with-webp     ;         docker-php-ext-install -j "$(nproc)"         pdo_mysql         exif         gd         zip         opcache         pcntl         ldap         gmp         intl     ;         pecl install APCu-5.1.28;     pecl install memcached-3.4.0;     pecl install redis-6.3.0;     pecl install imagick-3.8.1;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;         runDeps="$(         scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions             | tr ',' '\n'             | sort -u             | awk 'system("[ -e /usr/local/lib" $1 " ]") == 0 { next } { print "so:" $1 }'     )";     apk add --no-network --virtual .friendica-phpext-rundeps $runDeps;     apk del --no-network .build-deps; # buildkit
# Mon, 17 Aug 2026 18:08:46 GMT
ENV PHP_MEMORY_LIMIT=512M
# Mon, 17 Aug 2026 18:08:46 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Mon, 17 Aug 2026 18:08:46 GMT
RUN set -ex;     {         echo 'opcache.enable=1' ;         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidte_freq=60';         echo 'opcache.jit=tracing';         echo 'opcache.jit_buffer_size=32M';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         {         echo sendmail_path = "/usr/bin/msmtp -t";     } > /usr/local/etc/php/conf.d/sendmail.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > /usr/local/etc/php/conf.d/friendica.ini;     ln -s /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini # buildkit
# Mon, 17 Aug 2026 18:08:46 GMT
RUN set -ex;     echo access.format = '"%{REMOTE_ADDR}e - %u %t \"%m %r\" %s"' >> /usr/local/etc/php-fpm.d/docker.conf; # buildkit
# Mon, 17 Aug 2026 18:08:47 GMT
RUN set -ex;     mkdir -p -m 775 /var/www/data;     chown -R www-data:www-data /var/www/data # buildkit
# Mon, 17 Aug 2026 18:08:47 GMT
VOLUME [/var/www/html]
# Mon, 17 Aug 2026 18:08:47 GMT
VOLUME [/var/www/data]
# Mon, 17 Aug 2026 18:08:47 GMT
ENV FRIENDICA_SYSLOG_FLAGS=39
# Mon, 17 Aug 2026 18:08:47 GMT
ENV FRIENDICA_VERSION=2026.08-rc
# Mon, 17 Aug 2026 18:08:48 GMT
RUN set -ex;     apk add --no-cache --virtual .fetch-deps       gnupg     ; # buildkit
# Mon, 17 Aug 2026 18:08:48 GMT
COPY *.sh upgrade.exclude / # buildkit
# Mon, 17 Aug 2026 18:08:49 GMT
COPY config/* /usr/src/friendica/config/ # buildkit
# Mon, 17 Aug 2026 18:08:49 GMT
ENTRYPOINT ["/entrypoint-dev.sh"]
# Mon, 17 Aug 2026 18:08:49 GMT
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
	-	`sha256:f2c7b089b0f336ff2d1b5c725e46ba0ac6ef7702950d5420f2c05f5b2e47cc81`  
		Last Modified: Fri, 31 Jul 2026 00:27:47 GMT  
		Size: 13.8 MB (13775215 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbe377fe0947caf068edcd996de5dcca8f22e5e9ed068dffbd6996e03ac949a5`  
		Last Modified: Fri, 31 Jul 2026 00:27:46 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ade48299cddbd67703240ca7ceaf5fb7f64e446e51ab732c75de491e117818ba`  
		Last Modified: Fri, 31 Jul 2026 00:28:20 GMT  
		Size: 16.1 MB (16056291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4841fd828117edacabf4038f1edc30db43cdf84fb38b2c47655f65b9d5647e5a`  
		Last Modified: Fri, 31 Jul 2026 00:28:19 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d542e0e9899dabcb388b1452fa13e24bc42f4660b84a6ab7f2586aa8bfd52d8e`  
		Last Modified: Fri, 31 Jul 2026 00:28:19 GMT  
		Size: 22.2 KB (22201 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:790bb5aa8eb33dd8ab9377bf8f2c08cfad558361c0ba1dc0d010e8791f079bea`  
		Last Modified: Fri, 31 Jul 2026 00:28:19 GMT  
		Size: 22.2 KB (22224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:df907396147251c2544e31958da2a392ef123d7eaac71a1c2b0527da89f4fcf2`  
		Last Modified: Fri, 31 Jul 2026 00:28:20 GMT  
		Size: 9.3 KB (9266 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb699868a3f1e5a103289a6a3a8b79687dce2e4fda1894528c6f5f25415890ef`  
		Last Modified: Mon, 17 Aug 2026 18:08:57 GMT  
		Size: 13.6 MB (13621190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c65c2560e458f6b73f8a507ad4c2e62183f45b7ebdc9d7c161fddd3961374c20`  
		Last Modified: Mon, 17 Aug 2026 18:08:57 GMT  
		Size: 958.3 KB (958345 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f8ef53d726c334f52585411aba62261cbd8bbf4e2f35f6f52839d55ce3cc537`  
		Last Modified: Mon, 17 Aug 2026 18:08:57 GMT  
		Size: 9.9 MB (9866991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afc3a27c1afbd5681c5f08f03b44e9d19577a4c6d2a539dabe91f9ad5237439a`  
		Last Modified: Mon, 17 Aug 2026 18:08:57 GMT  
		Size: 588.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdf4fd0aac06b2356c322a7bc86362fbe8c1cc99afdd3a5c9a3a3eb78466793c`  
		Last Modified: Mon, 17 Aug 2026 18:08:58 GMT  
		Size: 573.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f44ac3b45a13429e20b9000b1ebbda4c47d1d16536e7611cce5734aceef43ad`  
		Last Modified: Mon, 17 Aug 2026 18:08:58 GMT  
		Size: 142.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d690818d303e120c54c2fa7a28de597c35b10e80051f61c926ce6b82bc703a`  
		Last Modified: Mon, 17 Aug 2026 18:08:59 GMT  
		Size: 4.5 MB (4526683 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cefb74b6c779a20caa9f35c4ac9d7b9b7fcc88ee4e59e3eb67aa1faa4b3db6c`  
		Last Modified: Mon, 17 Aug 2026 18:08:59 GMT  
		Size: 3.7 KB (3723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7dbb9b6fdafab3b8fb2336db36fd476d571f26debf997916091fc2dfed31a8f`  
		Last Modified: Mon, 17 Aug 2026 18:09:00 GMT  
		Size: 918.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `friendica:rc-fpm-alpine` - unknown; unknown

```console
$ docker pull friendica@sha256:4bb972c5e6759cf580874020ddec204cfe9fd3684ac11255d1da0113b3187421
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 KB (55564 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:31b37f41b30e8cf9c97498dd198689e0e66476d47656e74bf3c32350cc461c23`

```dockerfile
```

-	Layers:
	-	`sha256:a98660df905ba7fe537778e006fbd46d2fea757ce0ccd3cb9e881fc9de985a7c`  
		Last Modified: Mon, 17 Aug 2026 18:08:57 GMT  
		Size: 55.6 KB (55564 bytes)  
		MIME: application/vnd.in-toto+json

### `friendica:rc-fpm-alpine` - linux; riscv64

```console
$ docker pull friendica@sha256:d41ba949ac2944f91a8acb3b3cdee07dd417bb2e49613b77878608eda180f5e9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **63.8 MB (63766509 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c85faa1bde29b408cf5ee2b988f40d0aa3795831a474fef6d11fa4cad7a89521`
-	Entrypoint: `["\/entrypoint-dev.sh"]`
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
# Sat, 01 Aug 2026 03:55:25 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 01 Aug 2026 03:55:25 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 01 Aug 2026 03:55:30 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sat, 01 Aug 2026 03:55:34 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 01 Aug 2026 03:55:34 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 01 Aug 2026 03:55:35 GMT
WORKDIR /var/www/html
# Sat, 01 Aug 2026 03:55:35 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Sat, 01 Aug 2026 03:55:35 GMT
STOPSIGNAL SIGQUIT
# Sat, 01 Aug 2026 03:55:35 GMT
EXPOSE map[9000/tcp:{}]
# Sat, 01 Aug 2026 03:55:35 GMT
CMD ["php-fpm"]
# Mon, 17 Aug 2026 18:43:55 GMT
RUN set -ex;     apk add --no-cache         rsync         imagemagick         msmtp         shadow         tini; # buildkit
# Mon, 17 Aug 2026 18:44:05 GMT
ENV GOSU_VERSION=1.17
# Mon, 17 Aug 2026 18:44:05 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 17 Aug 2026 19:08:57 GMT
RUN set -ex;         apk add --no-cache --virtual .build-deps         mariadb-client         bash         $PHPIZE_DEPS         libpng-dev         libjpeg-turbo-dev         imagemagick-dev         libtool         libmemcached-dev         cyrus-sasl-dev         libjpeg-turbo-dev         freetype-dev         libwebp-dev         librsvg         pcre-dev         libzip-dev         icu-dev         openldap-dev         gmp-dev         gettext     ;         docker-php-ext-configure gd         --with-freetype         --with-jpeg         --with-webp     ;         docker-php-ext-install -j "$(nproc)"         pdo_mysql         exif         gd         zip         opcache         pcntl         ldap         gmp         intl     ;         pecl install APCu-5.1.28;     pecl install memcached-3.4.0;     pecl install redis-6.3.0;     pecl install imagick-3.8.1;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;         runDeps="$(         scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions             | tr ',' '\n'             | sort -u             | awk 'system("[ -e /usr/local/lib" $1 " ]") == 0 { next } { print "so:" $1 }'     )";     apk add --no-network --virtual .friendica-phpext-rundeps $runDeps;     apk del --no-network .build-deps; # buildkit
# Mon, 17 Aug 2026 19:08:57 GMT
ENV PHP_MEMORY_LIMIT=512M
# Mon, 17 Aug 2026 19:08:57 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Mon, 17 Aug 2026 19:08:57 GMT
RUN set -ex;     {         echo 'opcache.enable=1' ;         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidte_freq=60';         echo 'opcache.jit=tracing';         echo 'opcache.jit_buffer_size=32M';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         {         echo sendmail_path = "/usr/bin/msmtp -t";     } > /usr/local/etc/php/conf.d/sendmail.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > /usr/local/etc/php/conf.d/friendica.ini;     ln -s /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini # buildkit
# Mon, 17 Aug 2026 19:08:57 GMT
RUN set -ex;     echo access.format = '"%{REMOTE_ADDR}e - %u %t \"%m %r\" %s"' >> /usr/local/etc/php-fpm.d/docker.conf; # buildkit
# Mon, 17 Aug 2026 19:08:58 GMT
RUN set -ex;     mkdir -p -m 775 /var/www/data;     chown -R www-data:www-data /var/www/data # buildkit
# Mon, 17 Aug 2026 19:08:58 GMT
VOLUME [/var/www/html]
# Mon, 17 Aug 2026 19:08:58 GMT
VOLUME [/var/www/data]
# Mon, 17 Aug 2026 19:08:58 GMT
ENV FRIENDICA_SYSLOG_FLAGS=39
# Mon, 17 Aug 2026 19:08:58 GMT
ENV FRIENDICA_VERSION=2026.08-rc
# Mon, 17 Aug 2026 19:34:32 GMT
RUN set -ex;     apk add --no-cache --virtual .fetch-deps       gnupg     ; # buildkit
# Mon, 17 Aug 2026 19:34:32 GMT
COPY *.sh upgrade.exclude / # buildkit
# Mon, 17 Aug 2026 19:34:32 GMT
COPY config/* /usr/src/friendica/config/ # buildkit
# Mon, 17 Aug 2026 19:34:32 GMT
ENTRYPOINT ["/entrypoint-dev.sh"]
# Mon, 17 Aug 2026 19:34:32 GMT
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
	-	`sha256:5c153cd523b6d149e8125fd84af1719725e21a89c8f4ffd44621109ab3eae54d`  
		Last Modified: Sat, 01 Aug 2026 02:56:38 GMT  
		Size: 13.8 MB (13775231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22c074f8062e63f84853bc8d83804f1053e086f373f1ec15fd0e0990f205b7a4`  
		Last Modified: Sat, 01 Aug 2026 02:56:34 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a7263fc42b5bb1ecd6e242dfa75d1e5f3370fc01608e76b9a5798cbd7a3e00b`  
		Last Modified: Sat, 01 Aug 2026 03:56:29 GMT  
		Size: 15.3 MB (15294508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:035678238a791ec108aaed4d4c4f9290a74e140d57aff66276979c95b0721569`  
		Last Modified: Sat, 01 Aug 2026 03:56:27 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:86aa157223d5b2319392528b255e5ae720cb4543c3e9a97586e3e3ed05fab654`  
		Last Modified: Sat, 01 Aug 2026 03:56:27 GMT  
		Size: 22.2 KB (22211 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcc1149692f5e6babac73d5f75cd3bef90a981c70590410b2f19016a7bdb3838`  
		Last Modified: Sat, 01 Aug 2026 03:56:27 GMT  
		Size: 22.2 KB (22228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:431a01eef9020b79095f065f57f22f49b8bf761915349f101341ca942d473955`  
		Last Modified: Sat, 01 Aug 2026 03:56:28 GMT  
		Size: 9.3 KB (9270 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bcb1ad25d84bf138f02b6c5ddc83a2fd75712b91290d401784e9f4ac42b22e00`  
		Last Modified: Mon, 17 Aug 2026 19:11:03 GMT  
		Size: 12.5 MB (12508602 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f55a81e2d8ecee0713567b0c7273b86152a2822ac59f1a864bb4fd031b8b3236`  
		Last Modified: Mon, 17 Aug 2026 19:11:00 GMT  
		Size: 1.0 MB (1008991 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60b470c8b111d2e209734bf8b5c0056c192f9dfb8d498e97626e2a7451d28474`  
		Last Modified: Mon, 17 Aug 2026 19:11:02 GMT  
		Size: 9.5 MB (9453557 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dd86cfc0afb8cda00febaf8e2f4d8fd1c24e41130373e0dd14d12fd9e9bace9c`  
		Last Modified: Mon, 17 Aug 2026 19:10:59 GMT  
		Size: 588.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3db5a32a09469332b219b233af7420c9760912f2b8e3af5d02c888374050dc1`  
		Last Modified: Mon, 17 Aug 2026 19:11:01 GMT  
		Size: 575.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b270ee7fb66adbc30c23978b4f9f9f08c64e3d41aea10a598426cc9232599b69`  
		Last Modified: Mon, 17 Aug 2026 19:11:02 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce15d7a7f7ebd8c7d1cab350e13ee89d33b4594175714e068211d4c916e6c7b3`  
		Last Modified: Mon, 17 Aug 2026 19:34:55 GMT  
		Size: 4.5 MB (4482774 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f8ba1697ebb153f88f3277465fcfc55ddc5b860610b7fa1b0836d73ffcd92d8`  
		Last Modified: Mon, 17 Aug 2026 19:34:54 GMT  
		Size: 3.7 KB (3723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afe0f64cafcc269b07a4bccaad8275c8115e847a1e60b419cce23837163a2418`  
		Last Modified: Mon, 17 Aug 2026 19:34:54 GMT  
		Size: 919.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `friendica:rc-fpm-alpine` - unknown; unknown

```console
$ docker pull friendica@sha256:82c7666a770939e4dd2e7beeb2b0720b81470de9b2ea046b7f656d60b16049e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.6 KB (55572 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f54c7dc0f449737adea1c26d6a11397a828cd5c79914abce8738fa95d934101`

```dockerfile
```

-	Layers:
	-	`sha256:8b67128d0ced7cbc0d239d2637a88bff076060c2332eaa8a9d5992cc0e53c35f`  
		Last Modified: Mon, 17 Aug 2026 19:34:53 GMT  
		Size: 55.6 KB (55572 bytes)  
		MIME: application/vnd.in-toto+json

### `friendica:rc-fpm-alpine` - linux; s390x

```console
$ docker pull friendica@sha256:024f462a9369c3033ca2916d08debbf8e80aebf4605b7cbf7a3ff56dcb141751
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **64.8 MB (64779597 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4bc41bd53030b3b60dfa9f0533a3c1135d399247db6c422645918f220a1a87f6`
-	Entrypoint: `["\/entrypoint-dev.sh"]`
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
ENV GPG_KEYS=AFD8691FDAEDF03BDF6E460563F15A9B715376CA 9D7F99A0CB8F05C8A6958D6256A97AF7600A39A6 0616E93D95AF471243E26761770426E17EBBB3DD
# Thu, 30 Jul 2026 22:43:29 GMT
ENV PHP_VERSION=8.4.24
# Thu, 30 Jul 2026 22:43:29 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.4.24.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.4.24.tar.xz.asc
# Thu, 30 Jul 2026 22:43:29 GMT
ENV PHP_SHA256=e127be09a8506f4327c5cfa78a614b00d210714484ec215ce0011b4a03c00731
# Thu, 30 Jul 2026 23:19:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 23:19:13 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:24:11 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 23:24:11 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:24:12 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 23:24:13 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 23:24:13 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 23:24:13 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 23:24:13 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 30 Jul 2026 23:24:13 GMT
STOPSIGNAL SIGQUIT
# Thu, 30 Jul 2026 23:24:13 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 30 Jul 2026 23:24:13 GMT
CMD ["php-fpm"]
# Mon, 17 Aug 2026 17:51:56 GMT
RUN set -ex;     apk add --no-cache         rsync         imagemagick         msmtp         shadow         tini; # buildkit
# Mon, 17 Aug 2026 17:52:00 GMT
ENV GOSU_VERSION=1.17
# Mon, 17 Aug 2026 17:52:00 GMT
RUN set -eux; 		apk add --no-cache --virtual .gosu-deps 		ca-certificates 		dpkg 		gnupg 	; 		dpkgArch="$(dpkg --print-architecture | awk -F- '{ print $NF }')"; 	wget -O /usr/local/bin/gosu "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch"; 	wget -O /usr/local/bin/gosu.asc "https://github.com/tianon/gosu/releases/download/$GOSU_VERSION/gosu-$dpkgArch.asc"; 		export GNUPGHOME="$(mktemp -d)"; 	gpg --batch --keyserver hkps://keys.openpgp.org --recv-keys B42F6819007F00F88E364FD4036A9C25BF357DD4; 	gpg --batch --verify /usr/local/bin/gosu.asc /usr/local/bin/gosu; 	command -v gpgconf && gpgconf --kill all || :; 	rm -rf "$GNUPGHOME" /usr/local/bin/gosu.asc; 		apk del --no-network .gosu-deps; 		chmod +x /usr/local/bin/gosu; 	gosu --version; 	gosu nobody true # buildkit
# Mon, 17 Aug 2026 17:54:34 GMT
RUN set -ex;         apk add --no-cache --virtual .build-deps         mariadb-client         bash         $PHPIZE_DEPS         libpng-dev         libjpeg-turbo-dev         imagemagick-dev         libtool         libmemcached-dev         cyrus-sasl-dev         libjpeg-turbo-dev         freetype-dev         libwebp-dev         librsvg         pcre-dev         libzip-dev         icu-dev         openldap-dev         gmp-dev         gettext     ;         docker-php-ext-configure gd         --with-freetype         --with-jpeg         --with-webp     ;         docker-php-ext-install -j "$(nproc)"         pdo_mysql         exif         gd         zip         opcache         pcntl         ldap         gmp         intl     ;         pecl install APCu-5.1.28;     pecl install memcached-3.4.0;     pecl install redis-6.3.0;     pecl install imagick-3.8.1;         docker-php-ext-enable         apcu         memcached         redis         imagick     ;         runDeps="$(         scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions             | tr ',' '\n'             | sort -u             | awk 'system("[ -e /usr/local/lib" $1 " ]") == 0 { next } { print "so:" $1 }'     )";     apk add --no-network --virtual .friendica-phpext-rundeps $runDeps;     apk del --no-network .build-deps; # buildkit
# Mon, 17 Aug 2026 17:54:34 GMT
ENV PHP_MEMORY_LIMIT=512M
# Mon, 17 Aug 2026 17:54:34 GMT
ENV PHP_UPLOAD_LIMIT=512M
# Mon, 17 Aug 2026 17:54:34 GMT
RUN set -ex;     {         echo 'opcache.enable=1' ;         echo 'opcache.interned_strings_buffer=8';         echo 'opcache.max_accelerated_files=10000';         echo 'opcache.memory_consumption=128';         echo 'opcache.save_comments=1';         echo 'opcache.revalidte_freq=60';         echo 'opcache.jit=tracing';         echo 'opcache.jit_buffer_size=32M';     } > /usr/local/etc/php/conf.d/opcache-recommended.ini;         {         echo sendmail_path = "/usr/bin/msmtp -t";     } > /usr/local/etc/php/conf.d/sendmail.ini;         echo 'apc.enable_cli=1' >> /usr/local/etc/php/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > /usr/local/etc/php/conf.d/friendica.ini;     ln -s /usr/local/etc/php/php.ini-production /usr/local/etc/php/php.ini # buildkit
# Mon, 17 Aug 2026 17:54:35 GMT
RUN set -ex;     echo access.format = '"%{REMOTE_ADDR}e - %u %t \"%m %r\" %s"' >> /usr/local/etc/php-fpm.d/docker.conf; # buildkit
# Mon, 17 Aug 2026 17:54:36 GMT
RUN set -ex;     mkdir -p -m 775 /var/www/data;     chown -R www-data:www-data /var/www/data # buildkit
# Mon, 17 Aug 2026 17:54:36 GMT
VOLUME [/var/www/html]
# Mon, 17 Aug 2026 17:54:36 GMT
VOLUME [/var/www/data]
# Mon, 17 Aug 2026 17:54:36 GMT
ENV FRIENDICA_SYSLOG_FLAGS=39
# Mon, 17 Aug 2026 17:54:36 GMT
ENV FRIENDICA_VERSION=2026.08-rc
# Mon, 17 Aug 2026 17:54:38 GMT
RUN set -ex;     apk add --no-cache --virtual .fetch-deps       gnupg     ; # buildkit
# Mon, 17 Aug 2026 17:54:38 GMT
COPY *.sh upgrade.exclude / # buildkit
# Mon, 17 Aug 2026 17:54:39 GMT
COPY config/* /usr/src/friendica/config/ # buildkit
# Mon, 17 Aug 2026 17:54:39 GMT
ENTRYPOINT ["/entrypoint-dev.sh"]
# Mon, 17 Aug 2026 17:54:39 GMT
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
	-	`sha256:73d87be8fcbf1c06cd96b0c521f50b6548de0431ce926cb160e67e6b8dc82240`  
		Last Modified: Thu, 30 Jul 2026 23:23:50 GMT  
		Size: 13.8 MB (13775185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:883bae79c45ab750aa8e8fedb91b57469a5cd200cb94f89cc9ce3b646e297720`  
		Last Modified: Thu, 30 Jul 2026 23:23:50 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:817c068d0dacd0eab784a8e5635666c0ee6da673978437274ba277a416667817`  
		Last Modified: Thu, 30 Jul 2026 23:24:25 GMT  
		Size: 15.1 MB (15117070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:780396055d50dd572b06d587ba1367b0f25e6baad7bf59ffb220893ace33ab9a`  
		Last Modified: Thu, 30 Jul 2026 23:24:24 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:077f723cac9bf62d9b42b5aba5f2022df0038c3a974a1dfc11cb927c99203c5c`  
		Last Modified: Thu, 30 Jul 2026 23:24:25 GMT  
		Size: 22.1 KB (22140 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4fd542e0f5fd7e7d53513a9f19578a0c3888c8053156a2d789b4bb05b2aca1c`  
		Last Modified: Thu, 30 Jul 2026 23:24:25 GMT  
		Size: 22.2 KB (22161 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c01ccd0b03586305999781a8798f33afc8471a28e2d48f5ac3a90f6578aa79b`  
		Last Modified: Thu, 30 Jul 2026 23:24:25 GMT  
		Size: 9.3 KB (9265 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a312c3feb6e75f70fceee5ca58208bb081421514503b66a222271777a9d716a8`  
		Last Modified: Mon, 17 Aug 2026 17:54:53 GMT  
		Size: 13.0 MB (13018813 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6813507121ec3e5428bacd2af849b9da753c07f4733a47bb68f0c3e7375f529`  
		Last Modified: Mon, 17 Aug 2026 17:54:52 GMT  
		Size: 1.0 MB (1003898 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d8f9c35dce478d64a1dc7b489d4a26a1a4c0006550ddf55329031e22302a20d`  
		Last Modified: Mon, 17 Aug 2026 17:54:53 GMT  
		Size: 9.7 MB (9736228 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4630b873c318ce59f63fce4bca72f730f948f29001ac345acb9557c2316b3a66`  
		Last Modified: Mon, 17 Aug 2026 17:54:52 GMT  
		Size: 587.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fa9be0346558ebe73113004a3dabb9dace98e587ee7c22aff617ad932c0b5f71`  
		Last Modified: Mon, 17 Aug 2026 17:54:53 GMT  
		Size: 574.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0354d375c3d7adaf0c4a7b535f934b141b1e5f0455adfd1bc06371541337ec2`  
		Last Modified: Mon, 17 Aug 2026 17:54:53 GMT  
		Size: 143.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:066c37b10aca3d052660ef6e982def61082b269a65a805254554ac57e8177003`  
		Last Modified: Mon, 17 Aug 2026 17:54:54 GMT  
		Size: 4.7 MB (4689106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0cf799b37dbc10b679ac5b426c96ad50a955be109d5ec260556c33616dfb2b3`  
		Last Modified: Mon, 17 Aug 2026 17:54:54 GMT  
		Size: 3.7 KB (3723 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf0917514cc91236e4fe08e25f785b09c91b8da42b7848025f9f1e010182b56c`  
		Last Modified: Mon, 17 Aug 2026 17:54:54 GMT  
		Size: 919.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `friendica:rc-fpm-alpine` - unknown; unknown

```console
$ docker pull friendica@sha256:09bd7d96068ffc2f6fe4fb35b41e5da3f8fe86992b5caffa1e1b0fe54d10eb92
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **55.5 KB (55528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:359676b227de2676de83960ccd813584ecaf924919335a7a5a2159d0b30c7c20`

```dockerfile
```

-	Layers:
	-	`sha256:93194ca18189c69cbf4f6cfdcc5acfa97d353f2e62e8b7a163b493e2ac019838`  
		Last Modified: Mon, 17 Aug 2026 17:54:51 GMT  
		Size: 55.5 KB (55528 bytes)  
		MIME: application/vnd.in-toto+json
