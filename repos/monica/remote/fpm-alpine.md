## `monica:fpm-alpine`

```console
$ docker pull monica@sha256:d18e1cad5bc60e3c1185c3809324f65669328d7c24b3d95d8e8f3b1e1cb37451
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

### `monica:fpm-alpine` - linux; amd64

```console
$ docker pull monica@sha256:5afc6319869252141caef9e71b0ba53eb174e5eafac1e449227f769a74c449f7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **73.8 MB (73811465 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:710f1bf61c5ddfe6f7fe72d401d9080b830a86a2fbf9fc9dc394bd821bf44c67`
-	Entrypoint: `["\/usr\/local\/bin\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

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
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Tue, 15 Sep 2026 21:12:30 GMT
ENV PHP_VERSION=8.2.33
# Tue, 15 Sep 2026 21:12:30 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Tue, 15 Sep 2026 21:12:30 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Tue, 15 Sep 2026 21:33:25 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Tue, 15 Sep 2026 21:33:25 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:35:52 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:35:52 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:35:53 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:35:53 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:35:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:35:54 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 21:35:54 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 15 Sep 2026 21:35:54 GMT
STOPSIGNAL SIGQUIT
# Tue, 15 Sep 2026 21:35:54 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 15 Sep 2026 21:35:54 GMT
CMD ["php-fpm"]
# Tue, 15 Sep 2026 22:40:02 GMT
LABEL org.opencontainers.image.authors=Alexis Saettler <alexis@saettler.org> org.opencontainers.image.title=MonicaHQ, the Personal Relationship Manager org.opencontainers.image.description=This is MonicaHQ, your personal memory! MonicaHQ is like a CRM but for the friends, family, and acquaintances around you. org.opencontainers.image.url=https://monicahq.com org.opencontainers.image.source=https://github.com/monicahq/docker org.opencontainers.image.vendor=Monica
# Tue, 15 Sep 2026 22:40:02 GMT
RUN set -ex;         apk add --no-cache         bash         coreutils # buildkit
# Tue, 15 Sep 2026 22:41:12 GMT
RUN set -ex;         apk add --no-cache --virtual .build-deps         $PHPIZE_DEPS         icu-dev         zlib-dev         libzip-dev         libxml2-dev         freetype-dev         libpng-dev         libpq-dev         libjpeg-turbo-dev         jpeg-dev         gmp-dev         libmemcached-dev         libwebp-dev     ;         docker-php-ext-configure intl;     docker-php-ext-configure gd --with-jpeg --with-freetype --with-webp;     docker-php-ext-configure gmp;     docker-php-ext-install -j "$(nproc)"         intl         zip         bcmath         gd         gmp         pdo_mysql         mysqli         pdo_pgsql         soap     ;     pecl install APCu-5.1.26;     pecl install memcached-3.3.0;     pecl install redis-6.2.0;         docker-php-ext-enable         apcu         memcached         redis     ;         runDeps="$(         scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions         | tr ',' '\n'         | sort -u         | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'         )";     apk add --no-network --virtual .monica-phpext-rundeps $runDeps;     apk del --no-network .build-deps # buildkit
# Tue, 15 Sep 2026 22:41:12 GMT
RUN set -ex;         mkdir -p /var/spool/cron/crontabs;     rm -f /var/spool/cron/crontabs/root;     echo '* * * * * php /var/www/html/artisan schedule:run -v' > /var/spool/cron/crontabs/www-data # buildkit
# Tue, 15 Sep 2026 22:41:12 GMT
ENV PHP_OPCACHE_VALIDATE_TIMESTAMPS=0 PHP_OPCACHE_MAX_ACCELERATED_FILES=20000 PHP_OPCACHE_MEMORY_CONSUMPTION=192 PHP_OPCACHE_MAX_WASTED_PERCENTAGE=10
# Tue, 15 Sep 2026 22:41:12 GMT
ENV PHP_MEMORY_LIMIT=512M PHP_UPLOAD_LIMIT=512M
# Tue, 15 Sep 2026 22:41:12 GMT
RUN set -ex;         docker-php-ext-enable opcache;     {         echo '[opcache]';         echo 'opcache.enable=1';         echo 'opcache.revalidate_freq=0';         echo 'opcache.validate_timestamps=${PHP_OPCACHE_VALIDATE_TIMESTAMPS}';         echo 'opcache.max_accelerated_files=${PHP_OPCACHE_MAX_ACCELERATED_FILES}';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.max_wasted_percentage=${PHP_OPCACHE_MAX_WASTED_PERCENTAGE}';         echo 'opcache.interned_strings_buffer=16';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         echo 'apc.enable_cli=1' >> $PHP_INI_DIR/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > $PHP_INI_DIR/conf.d/limits.ini; # buildkit
# Tue, 15 Sep 2026 22:41:12 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 22:41:12 GMT
ENV MONICA_VERSION=v4.1.2
# Tue, 15 Sep 2026 22:41:12 GMT
LABEL org.opencontainers.image.revision=32028ce3ce79cef38df5d27a297e5b20680f0065 org.opencontainers.image.version=v4.1.2
# Tue, 15 Sep 2026 22:41:18 GMT
RUN set -ex;     apk add --no-cache --virtual .fetch-deps         bzip2         gnupg     ;         for ext in tar.bz2 tar.bz2.asc; do         curl -fsSL -o monica-${MONICA_VERSION}.$ext "https://github.com/monicahq/monica/releases/download/${MONICA_VERSION}/monica-${MONICA_VERSION}.$ext";     done;         GPGKEY='BDAB0D0D36A00466A2964E85DE15667131EA6018';     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$GPGKEY";     gpg --batch --verify monica-${MONICA_VERSION}.tar.bz2.asc monica-${MONICA_VERSION}.tar.bz2;         tar -xf monica-${MONICA_VERSION}.tar.bz2 -C /var/www/html --strip-components=1;         gpgconf --kill all;     rm -rf "$GNUPGHOME" monica-${MONICA_VERSION}.tar.bz2 monica-${MONICA_VERSION}.tar.bz2.asc;         cp /var/www/html/.env.example /var/www/html/.env;     chown -R www-data:www-data /var/www/html;         apk del .fetch-deps # buildkit
# Tue, 15 Sep 2026 22:41:18 GMT
COPY entrypoint.sh queue.sh cron.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:41:18 GMT
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
# Tue, 15 Sep 2026 22:41:18 GMT
CMD ["php-fpm"]
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
	-	`sha256:06eb650e8292521c6aa23e84a90807c91c3ee67fce4f83f875d760d7903f579e`  
		Last Modified: Tue, 15 Sep 2026 21:36:00 GMT  
		Size: 12.2 MB (12189436 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:09a14c63dc21eb6e087916b17000c1231082266328e7996c09c91c9b824e4b42`  
		Last Modified: Tue, 15 Sep 2026 21:35:59 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98cbb319d14cc11a5d36c72eb8af491d88b239b5f4dc68fcbea5f175b85f1e77`  
		Last Modified: Tue, 15 Sep 2026 21:36:00 GMT  
		Size: 13.2 MB (13173296 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:23472ec29005a5d04765362d9060cf1ba11f6b4e28471de6a6adc3d3cae95bcb`  
		Last Modified: Tue, 15 Sep 2026 21:36:00 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9e82434ccad0f04c621491864207e3419e96053d51dfab5c7171d7444cd89fef`  
		Last Modified: Tue, 15 Sep 2026 21:36:01 GMT  
		Size: 22.4 KB (22384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c66c4e1fdf31f14f42d4e2411b8164fce86f989e61f7033f5fbba4a0e2a58d7a`  
		Last Modified: Tue, 15 Sep 2026 21:36:01 GMT  
		Size: 22.4 KB (22388 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c23f7ff2d4799b5c04a10b9d057ca233ab8509fb5419b5f93cea1aa1748f1457`  
		Last Modified: Tue, 15 Sep 2026 21:36:01 GMT  
		Size: 9.3 KB (9251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6559d2f4c2845954575cd8a5d7256558280e423ef514b43ac24e8944aa9f0486`  
		Last Modified: Tue, 15 Sep 2026 22:41:25 GMT  
		Size: 1.2 MB (1247231 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4026aa3cf2db8f878af09d96b1927b64ef8d7cebcb58a2e15521b9846c6834f5`  
		Last Modified: Tue, 15 Sep 2026 22:41:26 GMT  
		Size: 8.9 MB (8924968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:49b770e34b0a71c5fc3dace3381a6f9fd365d534a2297f0c786ee0c9e45af680`  
		Last Modified: Tue, 15 Sep 2026 22:41:25 GMT  
		Size: 219.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a683bcb855dab9d3bac5ca386d2b994b67576794bea1a9f8777a1402b6d2930`  
		Last Modified: Tue, 15 Sep 2026 22:41:25 GMT  
		Size: 32.1 KB (32108 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77e4a287f99f733f398856bcf0a26d1074e31152b7828c137de7c8895a22f95f`  
		Last Modified: Tue, 15 Sep 2026 22:41:27 GMT  
		Size: 28.4 MB (28379303 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ea63da6eba049dcef068df0f4fa08b1acf3ce25c0f2cc2638d7597866703bf7`  
		Last Modified: Tue, 15 Sep 2026 22:41:26 GMT  
		Size: 2.1 KB (2073 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `monica:fpm-alpine` - unknown; unknown

```console
$ docker pull monica@sha256:bd57ceb02289434e6a38581b66821963488409837dd47294c6aea1793c69f95b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.0 KB (47049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3967cd6bd9b1562a826f6f4d63c88cfcfe4452f64c7594e2ca339cc3bff52621`

```dockerfile
```

-	Layers:
	-	`sha256:27e8ae89de0b82305c097507f7ac0be9db9a12b57e25744216b5c59aa10f0eb5`  
		Last Modified: Tue, 15 Sep 2026 22:41:25 GMT  
		Size: 47.0 KB (47049 bytes)  
		MIME: application/vnd.in-toto+json

### `monica:fpm-alpine` - linux; arm variant v6

```console
$ docker pull monica@sha256:689edb41ca57e38bc78827af34132e015fb14932f02f3bfeec78711bb9bad086
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.4 MB (71448132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:28f2b82decd028717313e87aece0229f0a4607bda773b75bed11c35e7c85edc1`
-	Entrypoint: `["\/usr\/local\/bin\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:25 GMT
ADD alpine-minirootfs-3.24.1-armhf.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:25 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 21:12:36 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 15 Sep 2026 21:12:36 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Tue, 15 Sep 2026 21:12:36 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 15 Sep 2026 21:12:36 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:12:36 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:12:36 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:12:36 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:12:36 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:12:36 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Tue, 15 Sep 2026 21:12:36 GMT
ENV PHP_VERSION=8.2.33
# Tue, 15 Sep 2026 21:12:36 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Tue, 15 Sep 2026 21:12:36 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Tue, 15 Sep 2026 21:36:22 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Tue, 15 Sep 2026 21:36:22 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:39:01 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:39:01 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:39:02 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:39:02 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:39:02 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:39:02 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 21:39:02 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 15 Sep 2026 21:39:02 GMT
STOPSIGNAL SIGQUIT
# Tue, 15 Sep 2026 21:39:02 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 15 Sep 2026 21:39:02 GMT
CMD ["php-fpm"]
# Tue, 15 Sep 2026 22:31:56 GMT
LABEL org.opencontainers.image.authors=Alexis Saettler <alexis@saettler.org> org.opencontainers.image.title=MonicaHQ, the Personal Relationship Manager org.opencontainers.image.description=This is MonicaHQ, your personal memory! MonicaHQ is like a CRM but for the friends, family, and acquaintances around you. org.opencontainers.image.url=https://monicahq.com org.opencontainers.image.source=https://github.com/monicahq/docker org.opencontainers.image.vendor=Monica
# Tue, 15 Sep 2026 22:31:56 GMT
RUN set -ex;         apk add --no-cache         bash         coreutils # buildkit
# Tue, 15 Sep 2026 22:33:51 GMT
RUN set -ex;         apk add --no-cache --virtual .build-deps         $PHPIZE_DEPS         icu-dev         zlib-dev         libzip-dev         libxml2-dev         freetype-dev         libpng-dev         libpq-dev         libjpeg-turbo-dev         jpeg-dev         gmp-dev         libmemcached-dev         libwebp-dev     ;         docker-php-ext-configure intl;     docker-php-ext-configure gd --with-jpeg --with-freetype --with-webp;     docker-php-ext-configure gmp;     docker-php-ext-install -j "$(nproc)"         intl         zip         bcmath         gd         gmp         pdo_mysql         mysqli         pdo_pgsql         soap     ;     pecl install APCu-5.1.26;     pecl install memcached-3.3.0;     pecl install redis-6.2.0;         docker-php-ext-enable         apcu         memcached         redis     ;         runDeps="$(         scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions         | tr ',' '\n'         | sort -u         | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'         )";     apk add --no-network --virtual .monica-phpext-rundeps $runDeps;     apk del --no-network .build-deps # buildkit
# Tue, 15 Sep 2026 22:33:51 GMT
RUN set -ex;         mkdir -p /var/spool/cron/crontabs;     rm -f /var/spool/cron/crontabs/root;     echo '* * * * * php /var/www/html/artisan schedule:run -v' > /var/spool/cron/crontabs/www-data # buildkit
# Tue, 15 Sep 2026 22:33:51 GMT
ENV PHP_OPCACHE_VALIDATE_TIMESTAMPS=0 PHP_OPCACHE_MAX_ACCELERATED_FILES=20000 PHP_OPCACHE_MEMORY_CONSUMPTION=192 PHP_OPCACHE_MAX_WASTED_PERCENTAGE=10
# Tue, 15 Sep 2026 22:33:51 GMT
ENV PHP_MEMORY_LIMIT=512M PHP_UPLOAD_LIMIT=512M
# Tue, 15 Sep 2026 22:33:52 GMT
RUN set -ex;         docker-php-ext-enable opcache;     {         echo '[opcache]';         echo 'opcache.enable=1';         echo 'opcache.revalidate_freq=0';         echo 'opcache.validate_timestamps=${PHP_OPCACHE_VALIDATE_TIMESTAMPS}';         echo 'opcache.max_accelerated_files=${PHP_OPCACHE_MAX_ACCELERATED_FILES}';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.max_wasted_percentage=${PHP_OPCACHE_MAX_WASTED_PERCENTAGE}';         echo 'opcache.interned_strings_buffer=16';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         echo 'apc.enable_cli=1' >> $PHP_INI_DIR/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > $PHP_INI_DIR/conf.d/limits.ini; # buildkit
# Tue, 15 Sep 2026 22:33:52 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 22:33:52 GMT
ENV MONICA_VERSION=v4.1.2
# Tue, 15 Sep 2026 22:33:52 GMT
LABEL org.opencontainers.image.revision=32028ce3ce79cef38df5d27a297e5b20680f0065 org.opencontainers.image.version=v4.1.2
# Tue, 15 Sep 2026 22:33:59 GMT
RUN set -ex;     apk add --no-cache --virtual .fetch-deps         bzip2         gnupg     ;         for ext in tar.bz2 tar.bz2.asc; do         curl -fsSL -o monica-${MONICA_VERSION}.$ext "https://github.com/monicahq/monica/releases/download/${MONICA_VERSION}/monica-${MONICA_VERSION}.$ext";     done;         GPGKEY='BDAB0D0D36A00466A2964E85DE15667131EA6018';     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$GPGKEY";     gpg --batch --verify monica-${MONICA_VERSION}.tar.bz2.asc monica-${MONICA_VERSION}.tar.bz2;         tar -xf monica-${MONICA_VERSION}.tar.bz2 -C /var/www/html --strip-components=1;         gpgconf --kill all;     rm -rf "$GNUPGHOME" monica-${MONICA_VERSION}.tar.bz2 monica-${MONICA_VERSION}.tar.bz2.asc;         cp /var/www/html/.env.example /var/www/html/.env;     chown -R www-data:www-data /var/www/html;         apk del .fetch-deps # buildkit
# Tue, 15 Sep 2026 22:33:59 GMT
COPY entrypoint.sh queue.sh cron.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:33:59 GMT
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
# Tue, 15 Sep 2026 22:33:59 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:3c4836a46d600cfe9a422adf7a80205cb534097e6213325e0176c51f6e5cc02e`  
		Last Modified: Sun, 14 Jun 2026 06:44:57 GMT  
		Size: 3.6 MB (3553450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f560419e99d347809a3a4a09a1001c08acd2d94a626a9722d4879fb3f746d9e7`  
		Last Modified: Tue, 15 Sep 2026 21:15:58 GMT  
		Size: 5.5 MB (5549254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01e09ecee3f48e029c71a23b5bbe831f11a460275aaa62533a8a2b1bbfdde7af`  
		Last Modified: Tue, 15 Sep 2026 21:15:57 GMT  
		Size: 936.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60bd5f2c4ac2ae7a3dd5bf5e8bb9a8a0b47519cf87794ec1baec80fc2e840831`  
		Last Modified: Tue, 15 Sep 2026 21:15:57 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8f0daf50194691c55dffe9a9a446cd1720a5cc79724e7f913827364aaee1c92`  
		Last Modified: Tue, 15 Sep 2026 21:39:08 GMT  
		Size: 12.2 MB (12189448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a367e6f3f23ae37a7ff8244c2fe55bf0f11ba965f6d16f66db2507ad1342277`  
		Last Modified: Tue, 15 Sep 2026 21:39:07 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a44eeab897dbcab094576e81be585574676e1cd07041af986c4cdae8384ff6b1`  
		Last Modified: Tue, 15 Sep 2026 21:39:08 GMT  
		Size: 11.9 MB (11923160 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:381c6840edcc990a3fe4fa5eee2bebca65b4d0386c6787154b656a9dd19dceb5`  
		Last Modified: Tue, 15 Sep 2026 21:39:07 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b67e7aa78418c050af109a7646448be3ca88eb82a9fe6c051d523f81338e84c`  
		Last Modified: Tue, 15 Sep 2026 21:39:08 GMT  
		Size: 22.2 KB (22181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a64d991ba2fd5567380c104f63534eefca4893258e118aa2af67033a085f6e76`  
		Last Modified: Tue, 15 Sep 2026 21:39:09 GMT  
		Size: 22.2 KB (22192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a987fbc8efed146dfafd37b217636d1382611c6a9ee140d41b43f76db97b40c1`  
		Last Modified: Tue, 15 Sep 2026 21:39:09 GMT  
		Size: 9.2 KB (9250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25c72739207f0d5301c47d1990ba304596495b42cd4bbbd499a8fcf0a1001d1c`  
		Last Modified: Tue, 15 Sep 2026 22:34:08 GMT  
		Size: 1.3 MB (1295168 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c8fd2047dd714bbfeeef328985efbfba1cd4884b2bf4eef529c3eea81578819`  
		Last Modified: Tue, 15 Sep 2026 22:34:09 GMT  
		Size: 8.5 MB (8466082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a3c207286ad85ac8bc2569049e646a963ebb7a6a95cb71767f925659807a04c`  
		Last Modified: Tue, 15 Sep 2026 22:34:08 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6dba6b08a7880c288cb87cf957a963c7e4eb757ebd038e12080d0f426455eac`  
		Last Modified: Tue, 15 Sep 2026 22:34:08 GMT  
		Size: 32.1 KB (32114 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a51fa8305b3c8e15466063868b36f84c7165abffb90e4a9b2ee4ef43a197bd9`  
		Last Modified: Tue, 15 Sep 2026 22:34:10 GMT  
		Size: 28.4 MB (28379385 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8712308bdf9fb176ff8fac56305c88ef78c912c7408e32da564264676db60c4d`  
		Last Modified: Tue, 15 Sep 2026 22:34:09 GMT  
		Size: 2.1 KB (2076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `monica:fpm-alpine` - unknown; unknown

```console
$ docker pull monica@sha256:e59b329d7a40bc94537192d42fb5a8e8dd72ae3ac2e55101ee19e1cf59e24309
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 KB (47181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04b60ac1cba7f76a45aeea06e820606aeb4f83c4b821aa6a2271f57d7e46486c`

```dockerfile
```

-	Layers:
	-	`sha256:924e0d60e0a87fcf77b6c633a8bee9a66f7904f29e3d09ea21d250f017131f38`  
		Last Modified: Tue, 15 Sep 2026 22:34:08 GMT  
		Size: 47.2 KB (47181 bytes)  
		MIME: application/vnd.in-toto+json

### `monica:fpm-alpine` - linux; arm variant v7

```console
$ docker pull monica@sha256:70e322b69c65a00de1d0c2cc62bac928a2fd18520aa945bbc771a390925d9c84
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **69.9 MB (69865130 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f217e40e3bbb6d339d41da53632656502cbcba00e54a8c4bcfc83ddd9321a11a`
-	Entrypoint: `["\/usr\/local\/bin\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 21:54:42 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 15 Sep 2026 21:54:42 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Tue, 15 Sep 2026 21:54:42 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 15 Sep 2026 21:54:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:54:42 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:54:42 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:54:42 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:54:42 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:54:42 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Tue, 15 Sep 2026 21:54:42 GMT
ENV PHP_VERSION=8.2.33
# Tue, 15 Sep 2026 21:54:42 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Tue, 15 Sep 2026 21:54:42 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Tue, 15 Sep 2026 21:54:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Tue, 15 Sep 2026 21:54:45 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:57:26 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:57:26 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:57:27 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:57:28 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:57:28 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:57:28 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 21:57:28 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 15 Sep 2026 21:57:28 GMT
STOPSIGNAL SIGQUIT
# Tue, 15 Sep 2026 21:57:28 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 15 Sep 2026 21:57:28 GMT
CMD ["php-fpm"]
# Tue, 15 Sep 2026 22:57:22 GMT
LABEL org.opencontainers.image.authors=Alexis Saettler <alexis@saettler.org> org.opencontainers.image.title=MonicaHQ, the Personal Relationship Manager org.opencontainers.image.description=This is MonicaHQ, your personal memory! MonicaHQ is like a CRM but for the friends, family, and acquaintances around you. org.opencontainers.image.url=https://monicahq.com org.opencontainers.image.source=https://github.com/monicahq/docker org.opencontainers.image.vendor=Monica
# Tue, 15 Sep 2026 22:57:22 GMT
RUN set -ex;         apk add --no-cache         bash         coreutils # buildkit
# Tue, 15 Sep 2026 22:59:25 GMT
RUN set -ex;         apk add --no-cache --virtual .build-deps         $PHPIZE_DEPS         icu-dev         zlib-dev         libzip-dev         libxml2-dev         freetype-dev         libpng-dev         libpq-dev         libjpeg-turbo-dev         jpeg-dev         gmp-dev         libmemcached-dev         libwebp-dev     ;         docker-php-ext-configure intl;     docker-php-ext-configure gd --with-jpeg --with-freetype --with-webp;     docker-php-ext-configure gmp;     docker-php-ext-install -j "$(nproc)"         intl         zip         bcmath         gd         gmp         pdo_mysql         mysqli         pdo_pgsql         soap     ;     pecl install APCu-5.1.26;     pecl install memcached-3.3.0;     pecl install redis-6.2.0;         docker-php-ext-enable         apcu         memcached         redis     ;         runDeps="$(         scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions         | tr ',' '\n'         | sort -u         | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'         )";     apk add --no-network --virtual .monica-phpext-rundeps $runDeps;     apk del --no-network .build-deps # buildkit
# Tue, 15 Sep 2026 22:59:25 GMT
RUN set -ex;         mkdir -p /var/spool/cron/crontabs;     rm -f /var/spool/cron/crontabs/root;     echo '* * * * * php /var/www/html/artisan schedule:run -v' > /var/spool/cron/crontabs/www-data # buildkit
# Tue, 15 Sep 2026 22:59:25 GMT
ENV PHP_OPCACHE_VALIDATE_TIMESTAMPS=0 PHP_OPCACHE_MAX_ACCELERATED_FILES=20000 PHP_OPCACHE_MEMORY_CONSUMPTION=192 PHP_OPCACHE_MAX_WASTED_PERCENTAGE=10
# Tue, 15 Sep 2026 22:59:25 GMT
ENV PHP_MEMORY_LIMIT=512M PHP_UPLOAD_LIMIT=512M
# Tue, 15 Sep 2026 22:59:26 GMT
RUN set -ex;         docker-php-ext-enable opcache;     {         echo '[opcache]';         echo 'opcache.enable=1';         echo 'opcache.revalidate_freq=0';         echo 'opcache.validate_timestamps=${PHP_OPCACHE_VALIDATE_TIMESTAMPS}';         echo 'opcache.max_accelerated_files=${PHP_OPCACHE_MAX_ACCELERATED_FILES}';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.max_wasted_percentage=${PHP_OPCACHE_MAX_WASTED_PERCENTAGE}';         echo 'opcache.interned_strings_buffer=16';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         echo 'apc.enable_cli=1' >> $PHP_INI_DIR/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > $PHP_INI_DIR/conf.d/limits.ini; # buildkit
# Tue, 15 Sep 2026 22:59:26 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 22:59:26 GMT
ENV MONICA_VERSION=v4.1.2
# Tue, 15 Sep 2026 22:59:26 GMT
LABEL org.opencontainers.image.revision=32028ce3ce79cef38df5d27a297e5b20680f0065 org.opencontainers.image.version=v4.1.2
# Tue, 15 Sep 2026 22:59:33 GMT
RUN set -ex;     apk add --no-cache --virtual .fetch-deps         bzip2         gnupg     ;         for ext in tar.bz2 tar.bz2.asc; do         curl -fsSL -o monica-${MONICA_VERSION}.$ext "https://github.com/monicahq/monica/releases/download/${MONICA_VERSION}/monica-${MONICA_VERSION}.$ext";     done;         GPGKEY='BDAB0D0D36A00466A2964E85DE15667131EA6018';     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$GPGKEY";     gpg --batch --verify monica-${MONICA_VERSION}.tar.bz2.asc monica-${MONICA_VERSION}.tar.bz2;         tar -xf monica-${MONICA_VERSION}.tar.bz2 -C /var/www/html --strip-components=1;         gpgconf --kill all;     rm -rf "$GNUPGHOME" monica-${MONICA_VERSION}.tar.bz2 monica-${MONICA_VERSION}.tar.bz2.asc;         cp /var/www/html/.env.example /var/www/html/.env;     chown -R www-data:www-data /var/www/html;         apk del .fetch-deps # buildkit
# Tue, 15 Sep 2026 22:59:33 GMT
COPY entrypoint.sh queue.sh cron.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:59:33 GMT
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
# Tue, 15 Sep 2026 22:59:33 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54c575471fd0a415f9d0fa5c3e99e5c4974c081c77e63ef030f25f10155ac5d2`  
		Last Modified: Tue, 15 Sep 2026 21:57:34 GMT  
		Size: 5.2 MB (5200571 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6c4cb33ebd2e370e424eb69bf80a1668e36fd1cdf8bbc2445494018cb196741`  
		Last Modified: Tue, 15 Sep 2026 21:57:34 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:182bda85cd63c7a2eecceee7169be05bd136d7f7ea4d04fa645c16fdd9f3441d`  
		Last Modified: Tue, 15 Sep 2026 21:57:34 GMT  
		Size: 215.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a849691c3ef0b5ec67ac4ff13f72101f71cf23c73c1953ec339b39e50554b121`  
		Last Modified: Tue, 15 Sep 2026 21:57:34 GMT  
		Size: 12.2 MB (12189452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af767334618e4ea7b09e4f1f036ea2b4e0de3b61caa888d9afe8fc871d0aa042`  
		Last Modified: Tue, 15 Sep 2026 21:57:35 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5d471993e773dc70647a17bd2ebf4b81c123d862c0a4e8ed45f0a7eb2ad05c9f`  
		Last Modified: Tue, 15 Sep 2026 21:57:35 GMT  
		Size: 11.2 MB (11224706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58671f3534fc736ccf2bf60f7af8d0f6a8801be426b633434e2dc4eb9201d64b`  
		Last Modified: Tue, 15 Sep 2026 21:57:35 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3831ed3eab8b94dd7e111a7a9a38bc91650fe254f813ebb10978a02c64c5f0cd`  
		Last Modified: Tue, 15 Sep 2026 21:57:35 GMT  
		Size: 22.2 KB (22183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afd12280b91da3db2cac830bd8c3829f748d03e376aa8598ea2620889e3e8540`  
		Last Modified: Tue, 15 Sep 2026 21:57:36 GMT  
		Size: 22.2 KB (22199 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fb5a1ca565b8815222c734b467f9c9ef0211cc28ec2b8c18e4dab42ed815ff5`  
		Last Modified: Tue, 15 Sep 2026 21:57:36 GMT  
		Size: 9.3 KB (9253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:709e7e670cc447a2e973967558e93db74f127e7524988e63d02cc73fccc37cf5`  
		Last Modified: Tue, 15 Sep 2026 22:59:41 GMT  
		Size: 1.2 MB (1172106 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52edaec7d101a04002f6fdc610b0b480c8d2e42a6057678acaa9149b0a537586`  
		Last Modified: Tue, 15 Sep 2026 22:59:42 GMT  
		Size: 8.3 MB (8346085 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64a0ce63673514b8b084a9967fc0c24852d687536a5947b1bc442d7e6cf9f046`  
		Last Modified: Tue, 15 Sep 2026 22:59:41 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cdd94562264dac27221f58b301fb4043c7fc537ca7151049c6805d976e9cd0d`  
		Last Modified: Tue, 15 Sep 2026 22:59:41 GMT  
		Size: 32.1 KB (32147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0230c164e848113487a3117d721a9aaa4937fadf6c9d8ef50886aa986b1a6be0`  
		Last Modified: Tue, 15 Sep 2026 22:59:43 GMT  
		Size: 28.4 MB (28379374 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f96b2141159fcfff1de8d37256b452d5718a76b1c72a3f6fb963dce1ddcaba5b`  
		Last Modified: Tue, 15 Sep 2026 22:59:42 GMT  
		Size: 2.1 KB (2074 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `monica:fpm-alpine` - unknown; unknown

```console
$ docker pull monica@sha256:a52bd1a17708987935133d89492d8af8a22032af03842251c4660776c49c8474
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 KB (47181 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:79556c61f33a435c38ea0dd2cd921803b2fe9e56f9dc89bddbe225b9f916e58a`

```dockerfile
```

-	Layers:
	-	`sha256:404884163430301f4bfcad0672d8bfd7c0ea276c01ee9c047ae00d25a82b7dde`  
		Last Modified: Tue, 15 Sep 2026 22:59:41 GMT  
		Size: 47.2 KB (47181 bytes)  
		MIME: application/vnd.in-toto+json

### `monica:fpm-alpine` - linux; arm64 variant v8

```console
$ docker pull monica@sha256:fea624698eeaff69ab9685b6814e4c759ab3b36e3627aa3b0ccdd1e8a8a086b3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.4 MB (74383336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:eacd539845e6287a5077170bcc635938804baae8f63c5179ce7aa3cd8de750ed`
-	Entrypoint: `["\/usr\/local\/bin\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 21:16:54 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 15 Sep 2026 21:16:54 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Tue, 15 Sep 2026 21:16:55 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 15 Sep 2026 21:16:55 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:16:55 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:16:55 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:16:55 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:16:55 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:16:55 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Tue, 15 Sep 2026 21:16:55 GMT
ENV PHP_VERSION=8.2.33
# Tue, 15 Sep 2026 21:16:55 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Tue, 15 Sep 2026 21:16:55 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Tue, 15 Sep 2026 21:37:48 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Tue, 15 Sep 2026 21:37:48 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:41:59 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:41:59 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:42:00 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:42:01 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:42:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:42:01 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 21:42:01 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 15 Sep 2026 21:42:01 GMT
STOPSIGNAL SIGQUIT
# Tue, 15 Sep 2026 21:42:01 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 15 Sep 2026 21:42:01 GMT
CMD ["php-fpm"]
# Tue, 15 Sep 2026 22:29:49 GMT
LABEL org.opencontainers.image.authors=Alexis Saettler <alexis@saettler.org> org.opencontainers.image.title=MonicaHQ, the Personal Relationship Manager org.opencontainers.image.description=This is MonicaHQ, your personal memory! MonicaHQ is like a CRM but for the friends, family, and acquaintances around you. org.opencontainers.image.url=https://monicahq.com org.opencontainers.image.source=https://github.com/monicahq/docker org.opencontainers.image.vendor=Monica
# Tue, 15 Sep 2026 22:29:49 GMT
RUN set -ex;         apk add --no-cache         bash         coreutils # buildkit
# Tue, 15 Sep 2026 22:31:26 GMT
RUN set -ex;         apk add --no-cache --virtual .build-deps         $PHPIZE_DEPS         icu-dev         zlib-dev         libzip-dev         libxml2-dev         freetype-dev         libpng-dev         libpq-dev         libjpeg-turbo-dev         jpeg-dev         gmp-dev         libmemcached-dev         libwebp-dev     ;         docker-php-ext-configure intl;     docker-php-ext-configure gd --with-jpeg --with-freetype --with-webp;     docker-php-ext-configure gmp;     docker-php-ext-install -j "$(nproc)"         intl         zip         bcmath         gd         gmp         pdo_mysql         mysqli         pdo_pgsql         soap     ;     pecl install APCu-5.1.26;     pecl install memcached-3.3.0;     pecl install redis-6.2.0;         docker-php-ext-enable         apcu         memcached         redis     ;         runDeps="$(         scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions         | tr ',' '\n'         | sort -u         | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'         )";     apk add --no-network --virtual .monica-phpext-rundeps $runDeps;     apk del --no-network .build-deps # buildkit
# Tue, 15 Sep 2026 22:31:26 GMT
RUN set -ex;         mkdir -p /var/spool/cron/crontabs;     rm -f /var/spool/cron/crontabs/root;     echo '* * * * * php /var/www/html/artisan schedule:run -v' > /var/spool/cron/crontabs/www-data # buildkit
# Tue, 15 Sep 2026 22:31:26 GMT
ENV PHP_OPCACHE_VALIDATE_TIMESTAMPS=0 PHP_OPCACHE_MAX_ACCELERATED_FILES=20000 PHP_OPCACHE_MEMORY_CONSUMPTION=192 PHP_OPCACHE_MAX_WASTED_PERCENTAGE=10
# Tue, 15 Sep 2026 22:31:26 GMT
ENV PHP_MEMORY_LIMIT=512M PHP_UPLOAD_LIMIT=512M
# Tue, 15 Sep 2026 22:31:27 GMT
RUN set -ex;         docker-php-ext-enable opcache;     {         echo '[opcache]';         echo 'opcache.enable=1';         echo 'opcache.revalidate_freq=0';         echo 'opcache.validate_timestamps=${PHP_OPCACHE_VALIDATE_TIMESTAMPS}';         echo 'opcache.max_accelerated_files=${PHP_OPCACHE_MAX_ACCELERATED_FILES}';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.max_wasted_percentage=${PHP_OPCACHE_MAX_WASTED_PERCENTAGE}';         echo 'opcache.interned_strings_buffer=16';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         echo 'apc.enable_cli=1' >> $PHP_INI_DIR/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > $PHP_INI_DIR/conf.d/limits.ini; # buildkit
# Tue, 15 Sep 2026 22:31:27 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 22:31:27 GMT
ENV MONICA_VERSION=v4.1.2
# Tue, 15 Sep 2026 22:31:27 GMT
LABEL org.opencontainers.image.revision=32028ce3ce79cef38df5d27a297e5b20680f0065 org.opencontainers.image.version=v4.1.2
# Tue, 15 Sep 2026 22:31:34 GMT
RUN set -ex;     apk add --no-cache --virtual .fetch-deps         bzip2         gnupg     ;         for ext in tar.bz2 tar.bz2.asc; do         curl -fsSL -o monica-${MONICA_VERSION}.$ext "https://github.com/monicahq/monica/releases/download/${MONICA_VERSION}/monica-${MONICA_VERSION}.$ext";     done;         GPGKEY='BDAB0D0D36A00466A2964E85DE15667131EA6018';     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$GPGKEY";     gpg --batch --verify monica-${MONICA_VERSION}.tar.bz2.asc monica-${MONICA_VERSION}.tar.bz2;         tar -xf monica-${MONICA_VERSION}.tar.bz2 -C /var/www/html --strip-components=1;         gpgconf --kill all;     rm -rf "$GNUPGHOME" monica-${MONICA_VERSION}.tar.bz2 monica-${MONICA_VERSION}.tar.bz2.asc;         cp /var/www/html/.env.example /var/www/html/.env;     chown -R www-data:www-data /var/www/html;         apk del .fetch-deps # buildkit
# Tue, 15 Sep 2026 22:31:34 GMT
COPY entrypoint.sh queue.sh cron.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:31:34 GMT
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
# Tue, 15 Sep 2026 22:31:34 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a935d8e291c55b06a0ae70288bb5825f043060ccacd732d5af7d944161ab806a`  
		Last Modified: Tue, 15 Sep 2026 21:20:40 GMT  
		Size: 6.3 MB (6270044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1bbc34d49d79dda0f4c0703708ee689f2bca1d80d0f7cd88c9d6bf3ec396bf3`  
		Last Modified: Tue, 15 Sep 2026 21:20:40 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36d7a72ea8c809f0fd65f731d80ba83625482e802f7a5519f083de7d96b955ae`  
		Last Modified: Tue, 15 Sep 2026 21:20:40 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f51811215d53a19533fd92ab7f9375b73a81f2585839037973680ecbe2fcff95`  
		Last Modified: Tue, 15 Sep 2026 21:42:08 GMT  
		Size: 12.2 MB (12189442 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a511d84f094f6655e8505e2500a4d52f763641fba4d1dcd7954d806cda0f77fd`  
		Last Modified: Tue, 15 Sep 2026 21:42:07 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:20d640ceba3164bb47fdd89b9e01f9df38ff2c405dcedc0d2047766769ad8775`  
		Last Modified: Tue, 15 Sep 2026 21:42:08 GMT  
		Size: 13.1 MB (13077626 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:785946e8eec94c8eccc08eb48a2211602c9afefc01c5f736fba4d0a6cb0378e3`  
		Last Modified: Tue, 15 Sep 2026 21:42:07 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8053d40d94342dfd8c1a44b4798f633e0ad3114a36984fff60695437910f7303`  
		Last Modified: Tue, 15 Sep 2026 21:42:08 GMT  
		Size: 22.2 KB (22209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:721cf76e6a44f6804d6d3d705c652373f169ba72ec79aa7f5cd612f6a974de76`  
		Last Modified: Tue, 15 Sep 2026 21:42:08 GMT  
		Size: 22.2 KB (22224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27f7dce2cb66ea539a29469e3a99148f477680841fe9d7eb72c18ab725fdac04`  
		Last Modified: Tue, 15 Sep 2026 21:42:09 GMT  
		Size: 9.2 KB (9250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10710dda541c84ffe234e8e535c26c815f0a7cbfe74361edd8040790d7307943`  
		Last Modified: Tue, 15 Sep 2026 22:31:43 GMT  
		Size: 1.3 MB (1325242 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99826d1461fe34e9752ddbc518f4e70fab9e5573fc2e4556ce7e7997f27c407f`  
		Last Modified: Tue, 15 Sep 2026 22:31:43 GMT  
		Size: 8.9 MB (8866372 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7843a294264fc9edcc27342d039ea91833a18d458a46bab52019cef715200789`  
		Last Modified: Tue, 15 Sep 2026 22:31:42 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0f3220269372590e38a64ef8595a779fa83a092803b65967a80c55f55360f3d`  
		Last Modified: Tue, 15 Sep 2026 22:31:43 GMT  
		Size: 32.1 KB (32094 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac77983e73ef94c9576543b9084ab3f883bcb5e7572e2e1365a65975e9b3831e`  
		Last Modified: Tue, 15 Sep 2026 22:31:44 GMT  
		Size: 28.4 MB (28379347 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0af48b2cb08b3297f79b0b7e948d3570e98a10e720706f64a892023fbda8a8f2`  
		Last Modified: Tue, 15 Sep 2026 22:31:44 GMT  
		Size: 2.1 KB (2075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `monica:fpm-alpine` - unknown; unknown

```console
$ docker pull monica@sha256:bbcfd4989b09ed19e886b6bad8b67127cd46dea435933d4048c255a2d452f927
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.2 KB (47213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c55b36ffa79c916a15d29662b298687fa7e251a7eb42598e22f6448a5d28fea7`

```dockerfile
```

-	Layers:
	-	`sha256:7d7573f6e2870d1acad00155a875c7e4eeaf7795568ce5f1453917b75250f57e`  
		Last Modified: Tue, 15 Sep 2026 22:31:42 GMT  
		Size: 47.2 KB (47213 bytes)  
		MIME: application/vnd.in-toto+json

### `monica:fpm-alpine` - linux; 386

```console
$ docker pull monica@sha256:9d37b07d42633b3e1ee42afd05c537f6041bb8c39efabc62d0ee78dfb1b730fa
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **74.0 MB (74038331 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f6526242f242702b1017a68bd167bca7f7a8019af0e9d44dccb80c324e1eed88`
-	Entrypoint: `["\/usr\/local\/bin\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Tue, 15 Sep 2026 21:34:48 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Tue, 15 Sep 2026 21:34:48 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Tue, 15 Sep 2026 21:34:48 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Tue, 15 Sep 2026 21:34:48 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Tue, 15 Sep 2026 21:34:49 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Tue, 15 Sep 2026 21:34:49 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:34:49 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Tue, 15 Sep 2026 21:34:49 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Tue, 15 Sep 2026 21:34:49 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Tue, 15 Sep 2026 21:34:49 GMT
ENV PHP_VERSION=8.2.33
# Tue, 15 Sep 2026 21:34:49 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Tue, 15 Sep 2026 21:34:49 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Tue, 15 Sep 2026 21:34:51 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Tue, 15 Sep 2026 21:34:51 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:37:44 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Tue, 15 Sep 2026 21:37:44 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 21:37:44 GMT
RUN docker-php-ext-enable opcache # buildkit
# Tue, 15 Sep 2026 21:37:45 GMT
RUN docker-php-ext-enable sodium # buildkit
# Tue, 15 Sep 2026 21:37:45 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Tue, 15 Sep 2026 21:37:45 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 21:37:45 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Tue, 15 Sep 2026 21:37:45 GMT
STOPSIGNAL SIGQUIT
# Tue, 15 Sep 2026 21:37:45 GMT
EXPOSE map[9000/tcp:{}]
# Tue, 15 Sep 2026 21:37:45 GMT
CMD ["php-fpm"]
# Tue, 15 Sep 2026 22:27:54 GMT
LABEL org.opencontainers.image.authors=Alexis Saettler <alexis@saettler.org> org.opencontainers.image.title=MonicaHQ, the Personal Relationship Manager org.opencontainers.image.description=This is MonicaHQ, your personal memory! MonicaHQ is like a CRM but for the friends, family, and acquaintances around you. org.opencontainers.image.url=https://monicahq.com org.opencontainers.image.source=https://github.com/monicahq/docker org.opencontainers.image.vendor=Monica
# Tue, 15 Sep 2026 22:27:54 GMT
RUN set -ex;         apk add --no-cache         bash         coreutils # buildkit
# Tue, 15 Sep 2026 22:29:11 GMT
RUN set -ex;         apk add --no-cache --virtual .build-deps         $PHPIZE_DEPS         icu-dev         zlib-dev         libzip-dev         libxml2-dev         freetype-dev         libpng-dev         libpq-dev         libjpeg-turbo-dev         jpeg-dev         gmp-dev         libmemcached-dev         libwebp-dev     ;         docker-php-ext-configure intl;     docker-php-ext-configure gd --with-jpeg --with-freetype --with-webp;     docker-php-ext-configure gmp;     docker-php-ext-install -j "$(nproc)"         intl         zip         bcmath         gd         gmp         pdo_mysql         mysqli         pdo_pgsql         soap     ;     pecl install APCu-5.1.26;     pecl install memcached-3.3.0;     pecl install redis-6.2.0;         docker-php-ext-enable         apcu         memcached         redis     ;         runDeps="$(         scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions         | tr ',' '\n'         | sort -u         | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'         )";     apk add --no-network --virtual .monica-phpext-rundeps $runDeps;     apk del --no-network .build-deps # buildkit
# Tue, 15 Sep 2026 22:29:11 GMT
RUN set -ex;         mkdir -p /var/spool/cron/crontabs;     rm -f /var/spool/cron/crontabs/root;     echo '* * * * * php /var/www/html/artisan schedule:run -v' > /var/spool/cron/crontabs/www-data # buildkit
# Tue, 15 Sep 2026 22:29:11 GMT
ENV PHP_OPCACHE_VALIDATE_TIMESTAMPS=0 PHP_OPCACHE_MAX_ACCELERATED_FILES=20000 PHP_OPCACHE_MEMORY_CONSUMPTION=192 PHP_OPCACHE_MAX_WASTED_PERCENTAGE=10
# Tue, 15 Sep 2026 22:29:11 GMT
ENV PHP_MEMORY_LIMIT=512M PHP_UPLOAD_LIMIT=512M
# Tue, 15 Sep 2026 22:29:12 GMT
RUN set -ex;         docker-php-ext-enable opcache;     {         echo '[opcache]';         echo 'opcache.enable=1';         echo 'opcache.revalidate_freq=0';         echo 'opcache.validate_timestamps=${PHP_OPCACHE_VALIDATE_TIMESTAMPS}';         echo 'opcache.max_accelerated_files=${PHP_OPCACHE_MAX_ACCELERATED_FILES}';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.max_wasted_percentage=${PHP_OPCACHE_MAX_WASTED_PERCENTAGE}';         echo 'opcache.interned_strings_buffer=16';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         echo 'apc.enable_cli=1' >> $PHP_INI_DIR/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > $PHP_INI_DIR/conf.d/limits.ini; # buildkit
# Tue, 15 Sep 2026 22:29:12 GMT
WORKDIR /var/www/html
# Tue, 15 Sep 2026 22:29:12 GMT
ENV MONICA_VERSION=v4.1.2
# Tue, 15 Sep 2026 22:29:12 GMT
LABEL org.opencontainers.image.revision=32028ce3ce79cef38df5d27a297e5b20680f0065 org.opencontainers.image.version=v4.1.2
# Tue, 15 Sep 2026 22:29:19 GMT
RUN set -ex;     apk add --no-cache --virtual .fetch-deps         bzip2         gnupg     ;         for ext in tar.bz2 tar.bz2.asc; do         curl -fsSL -o monica-${MONICA_VERSION}.$ext "https://github.com/monicahq/monica/releases/download/${MONICA_VERSION}/monica-${MONICA_VERSION}.$ext";     done;         GPGKEY='BDAB0D0D36A00466A2964E85DE15667131EA6018';     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$GPGKEY";     gpg --batch --verify monica-${MONICA_VERSION}.tar.bz2.asc monica-${MONICA_VERSION}.tar.bz2;         tar -xf monica-${MONICA_VERSION}.tar.bz2 -C /var/www/html --strip-components=1;         gpgconf --kill all;     rm -rf "$GNUPGHOME" monica-${MONICA_VERSION}.tar.bz2 monica-${MONICA_VERSION}.tar.bz2.asc;         cp /var/www/html/.env.example /var/www/html/.env;     chown -R www-data:www-data /var/www/html;         apk del .fetch-deps # buildkit
# Tue, 15 Sep 2026 22:29:19 GMT
COPY entrypoint.sh queue.sh cron.sh /usr/local/bin/ # buildkit
# Tue, 15 Sep 2026 22:29:19 GMT
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
# Tue, 15 Sep 2026 22:29:19 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4eee5487127417313c0466a95def696661166e9d8743da1180a72be91a35d302`  
		Last Modified: Tue, 15 Sep 2026 21:37:52 GMT  
		Size: 5.8 MB (5807645 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:651c8dcd211458131a3bf6e2b741e4b123984bbdd95f8b0f5d1d8675206e68d4`  
		Last Modified: Tue, 15 Sep 2026 21:37:52 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6d1a79897525cb6ec7c4eaec15211d3aa0a81e4968da55ba46246e2fcd1b4bf`  
		Last Modified: Tue, 15 Sep 2026 21:37:52 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c66939e2130c93efa4c339a614da277ee6daf046cb8571d44e46733668be00e`  
		Last Modified: Tue, 15 Sep 2026 21:37:52 GMT  
		Size: 12.2 MB (12189423 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea917aa031d7578735196312f3100d48ec385e65f4cec88dadbf2cc5ae38fc99`  
		Last Modified: Tue, 15 Sep 2026 21:37:53 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81d6ceb969b11db9aa68eb61a9560d87f59aa40787c51f488be0a08d1fb38fdb`  
		Last Modified: Tue, 15 Sep 2026 21:37:53 GMT  
		Size: 13.5 MB (13451935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7535d738e54645d03472a18cc63a842027178ffd844996c567b696b8a8a329cc`  
		Last Modified: Tue, 15 Sep 2026 21:37:53 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fd6d4fc404dfc6042914f724ebecbc268c4a79416d13a43c0a716427d3cffab`  
		Last Modified: Tue, 15 Sep 2026 21:37:54 GMT  
		Size: 22.4 KB (22389 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4348db8b8f36bd19a2274becb4d0e5edf352b2ca7ef8590e2bb15800656b482f`  
		Last Modified: Tue, 15 Sep 2026 21:37:54 GMT  
		Size: 22.4 KB (22407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2847e552fc33d84fedb57fe02639d895fac68336d5228edab2a574217e23d7bd`  
		Last Modified: Tue, 15 Sep 2026 21:37:55 GMT  
		Size: 9.2 KB (9249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d5714fb4cdb5616421af0fce5531ad2d63c66d0f6cbf39f1f21d693ac8c02f8`  
		Last Modified: Tue, 15 Sep 2026 22:29:27 GMT  
		Size: 1.3 MB (1250956 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cefeb25361cd4047bc9fc2a051887b441dea7ed2927dba1516f77b13a6789560`  
		Last Modified: Tue, 15 Sep 2026 22:29:28 GMT  
		Size: 9.2 MB (9196285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7af791b0dd95a556684c3a5fec4b78c82be903c57d24a9eda41e5b85da58b7c`  
		Last Modified: Tue, 15 Sep 2026 22:29:27 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba5787147bd0a08cc3a7615f58555c1d989c62e7a2266b496e109c3e35fa2d4c`  
		Last Modified: Tue, 15 Sep 2026 22:29:27 GMT  
		Size: 32.1 KB (32101 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:11d6ba8e792cf73068fbb50ebad2f5ef647d100348e6cc2189055268a5cbb1f6`  
		Last Modified: Tue, 15 Sep 2026 22:29:29 GMT  
		Size: 28.4 MB (28379355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b48758d2c2c0645fb35db3f054db8c23d9c06b42b8fbeb6515fd159a85aed131`  
		Last Modified: Tue, 15 Sep 2026 22:29:29 GMT  
		Size: 2.1 KB (2070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `monica:fpm-alpine` - unknown; unknown

```console
$ docker pull monica@sha256:29763fff0bc8e9fdcad218f61025794c8fc587a994b0cdea0f1d3cbe4f8c6d54
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.0 KB (47009 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b853a743fa1b832dee801fc66bb4dc0559cd31fac6c005a415f40c07929fd8c2`

```dockerfile
```

-	Layers:
	-	`sha256:6c048d92be9d32fd7d056cf47bb77063274eab5a4fec10aa8ef2d5c60ca9adce`  
		Last Modified: Tue, 15 Sep 2026 22:29:27 GMT  
		Size: 47.0 KB (47009 bytes)  
		MIME: application/vnd.in-toto+json

### `monica:fpm-alpine` - linux; ppc64le

```console
$ docker pull monica@sha256:95c2412653723f257b820ac744ddcd9d26a6dd9a67ffdfcbd1924b9dc79b4a80
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **75.8 MB (75759934 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:778e896a8d5703bc1e216743a9ca06754a225bb8921058ca715cc1c6e9c15dd4`
-	Entrypoint: `["\/usr\/local\/bin\/entrypoint.sh"]`
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
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 27 Aug 2026 20:31:41 GMT
ENV PHP_VERSION=8.2.33
# Thu, 27 Aug 2026 20:31:41 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Thu, 27 Aug 2026 20:31:41 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Wed, 16 Sep 2026 00:38:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Wed, 16 Sep 2026 00:38:02 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 00:47:14 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Wed, 16 Sep 2026 00:47:14 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 00:47:15 GMT
RUN docker-php-ext-enable opcache # buildkit
# Wed, 16 Sep 2026 00:47:17 GMT
RUN docker-php-ext-enable sodium # buildkit
# Wed, 16 Sep 2026 00:47:17 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Wed, 16 Sep 2026 00:47:17 GMT
WORKDIR /var/www/html
# Wed, 16 Sep 2026 00:47:17 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Wed, 16 Sep 2026 00:47:17 GMT
STOPSIGNAL SIGQUIT
# Wed, 16 Sep 2026 00:47:17 GMT
EXPOSE map[9000/tcp:{}]
# Wed, 16 Sep 2026 00:47:17 GMT
CMD ["php-fpm"]
# Wed, 16 Sep 2026 06:28:09 GMT
LABEL org.opencontainers.image.authors=Alexis Saettler <alexis@saettler.org> org.opencontainers.image.title=MonicaHQ, the Personal Relationship Manager org.opencontainers.image.description=This is MonicaHQ, your personal memory! MonicaHQ is like a CRM but for the friends, family, and acquaintances around you. org.opencontainers.image.url=https://monicahq.com org.opencontainers.image.source=https://github.com/monicahq/docker org.opencontainers.image.vendor=Monica
# Wed, 16 Sep 2026 06:28:09 GMT
RUN set -ex;         apk add --no-cache         bash         coreutils # buildkit
# Wed, 16 Sep 2026 06:30:58 GMT
RUN set -ex;         apk add --no-cache --virtual .build-deps         $PHPIZE_DEPS         icu-dev         zlib-dev         libzip-dev         libxml2-dev         freetype-dev         libpng-dev         libpq-dev         libjpeg-turbo-dev         jpeg-dev         gmp-dev         libmemcached-dev         libwebp-dev     ;         docker-php-ext-configure intl;     docker-php-ext-configure gd --with-jpeg --with-freetype --with-webp;     docker-php-ext-configure gmp;     docker-php-ext-install -j "$(nproc)"         intl         zip         bcmath         gd         gmp         pdo_mysql         mysqli         pdo_pgsql         soap     ;     pecl install APCu-5.1.26;     pecl install memcached-3.3.0;     pecl install redis-6.2.0;         docker-php-ext-enable         apcu         memcached         redis     ;         runDeps="$(         scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions         | tr ',' '\n'         | sort -u         | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'         )";     apk add --no-network --virtual .monica-phpext-rundeps $runDeps;     apk del --no-network .build-deps # buildkit
# Wed, 16 Sep 2026 06:30:59 GMT
RUN set -ex;         mkdir -p /var/spool/cron/crontabs;     rm -f /var/spool/cron/crontabs/root;     echo '* * * * * php /var/www/html/artisan schedule:run -v' > /var/spool/cron/crontabs/www-data # buildkit
# Wed, 16 Sep 2026 06:30:59 GMT
ENV PHP_OPCACHE_VALIDATE_TIMESTAMPS=0 PHP_OPCACHE_MAX_ACCELERATED_FILES=20000 PHP_OPCACHE_MEMORY_CONSUMPTION=192 PHP_OPCACHE_MAX_WASTED_PERCENTAGE=10
# Wed, 16 Sep 2026 06:30:59 GMT
ENV PHP_MEMORY_LIMIT=512M PHP_UPLOAD_LIMIT=512M
# Wed, 16 Sep 2026 06:31:02 GMT
RUN set -ex;         docker-php-ext-enable opcache;     {         echo '[opcache]';         echo 'opcache.enable=1';         echo 'opcache.revalidate_freq=0';         echo 'opcache.validate_timestamps=${PHP_OPCACHE_VALIDATE_TIMESTAMPS}';         echo 'opcache.max_accelerated_files=${PHP_OPCACHE_MAX_ACCELERATED_FILES}';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.max_wasted_percentage=${PHP_OPCACHE_MAX_WASTED_PERCENTAGE}';         echo 'opcache.interned_strings_buffer=16';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         echo 'apc.enable_cli=1' >> $PHP_INI_DIR/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > $PHP_INI_DIR/conf.d/limits.ini; # buildkit
# Wed, 16 Sep 2026 06:31:02 GMT
WORKDIR /var/www/html
# Wed, 16 Sep 2026 06:31:02 GMT
ENV MONICA_VERSION=v4.1.2
# Wed, 16 Sep 2026 06:31:02 GMT
LABEL org.opencontainers.image.revision=32028ce3ce79cef38df5d27a297e5b20680f0065 org.opencontainers.image.version=v4.1.2
# Wed, 16 Sep 2026 06:31:11 GMT
RUN set -ex;     apk add --no-cache --virtual .fetch-deps         bzip2         gnupg     ;         for ext in tar.bz2 tar.bz2.asc; do         curl -fsSL -o monica-${MONICA_VERSION}.$ext "https://github.com/monicahq/monica/releases/download/${MONICA_VERSION}/monica-${MONICA_VERSION}.$ext";     done;         GPGKEY='BDAB0D0D36A00466A2964E85DE15667131EA6018';     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$GPGKEY";     gpg --batch --verify monica-${MONICA_VERSION}.tar.bz2.asc monica-${MONICA_VERSION}.tar.bz2;         tar -xf monica-${MONICA_VERSION}.tar.bz2 -C /var/www/html --strip-components=1;         gpgconf --kill all;     rm -rf "$GNUPGHOME" monica-${MONICA_VERSION}.tar.bz2 monica-${MONICA_VERSION}.tar.bz2.asc;         cp /var/www/html/.env.example /var/www/html/.env;     chown -R www-data:www-data /var/www/html;         apk del .fetch-deps # buildkit
# Wed, 16 Sep 2026 06:31:12 GMT
COPY entrypoint.sh queue.sh cron.sh /usr/local/bin/ # buildkit
# Wed, 16 Sep 2026 06:31:12 GMT
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
# Wed, 16 Sep 2026 06:31:12 GMT
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
	-	`sha256:f70ab4e406fdd2f0c05e3e3e41d785340b106a3fa0ab1f20db3e93832a255893`  
		Last Modified: Wed, 16 Sep 2026 00:42:56 GMT  
		Size: 12.2 MB (12189454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22fe0d2a935aca9aa14968dc9cfb5caa573b3f95c0b84a7d4225cf7edcc56749`  
		Last Modified: Wed, 16 Sep 2026 00:42:55 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceb59d7de925ad4c6aadc43df7dfac4779ec95f7fb207eb3c86bb7107d4f3f41`  
		Last Modified: Wed, 16 Sep 2026 00:47:31 GMT  
		Size: 14.5 MB (14514484 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3dfa6ee863701fed0f57946062b6427863bedf377b5ac522cd234b514240221`  
		Last Modified: Wed, 16 Sep 2026 00:47:31 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25e7f2e041256940ecfd6c3d150bec3a0643993201065a83925a09f86826b38d`  
		Last Modified: Wed, 16 Sep 2026 00:47:31 GMT  
		Size: 22.3 KB (22293 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a66d9021c9222582641c3beb7af7d7ba268b71ba2dddfa46014e39cfd30d8cc`  
		Last Modified: Wed, 16 Sep 2026 00:47:31 GMT  
		Size: 22.3 KB (22306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26eb77bfe3175577f64092afcdd28be307b7b04557ac66243b0584073f535815`  
		Last Modified: Wed, 16 Sep 2026 00:47:32 GMT  
		Size: 9.3 KB (9254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:399ff5e11232a3ce254836e6ccfb655b4bed0db8858cb60b5ef238d7bf49bede`  
		Last Modified: Wed, 16 Sep 2026 06:31:26 GMT  
		Size: 1.3 MB (1348954 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3164f76b9f4b9cf128b1ed644857c2d360e88f143a2b546beac752b3341055fa`  
		Last Modified: Wed, 16 Sep 2026 06:31:26 GMT  
		Size: 9.4 MB (9425285 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a43ba5ce9ef5f07ece93f4da7bdf721d46afd536f1a550c8cf978c98e975144b`  
		Last Modified: Wed, 16 Sep 2026 06:31:26 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8f2dbd0ecac92707cf65fbdf26af669eecc7c752194944ea0c4aa01beb6bd91`  
		Last Modified: Wed, 16 Sep 2026 06:31:26 GMT  
		Size: 32.2 KB (32241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73b8220ef253516ef777fc03d69c1eb7f7d93f0030cbb3d9be5b07dfc0e3117e`  
		Last Modified: Wed, 16 Sep 2026 06:31:28 GMT  
		Size: 28.4 MB (28379493 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b50988781c31ffb074ece6afd2449970f563bcf96932eafad83292bf0e97b3cd`  
		Last Modified: Wed, 16 Sep 2026 06:31:27 GMT  
		Size: 2.1 KB (2077 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `monica:fpm-alpine` - unknown; unknown

```console
$ docker pull monica@sha256:ab8f78fab3214d6755b8b39b85bbb68f6d7f3f2f928c81401435829ba5e47a81
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.1 KB (47101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b8205e5e053f13650995a4e00d91d269d9bcc4b595bfc97b980ceffe1a3b259`

```dockerfile
```

-	Layers:
	-	`sha256:92d7d8fd1478e1301c917a59d3b806d7ecdaaedf79b15c531293013383de96d8`  
		Last Modified: Wed, 16 Sep 2026 06:31:26 GMT  
		Size: 47.1 KB (47101 bytes)  
		MIME: application/vnd.in-toto+json

### `monica:fpm-alpine` - linux; riscv64

```console
$ docker pull monica@sha256:55b96fa0e154d5d1760860446629095b218678e65cc7e941d7fd4d27a5656603
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.2 MB (71153108 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c79a29ae1fbf7e9cb0cbfd88540cba700ad475176e29f0d5538c5a65c2dae74b`
-	Entrypoint: `["\/usr\/local\/bin\/entrypoint.sh"]`
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
ENV PHP_VERSION=8.2.33
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.33.tar.xz.asc
# Wed, 17 Jun 2026 10:08:27 GMT
ENV PHP_SHA256=fbdeace9b38220436a4c8fd79b900df92878151db145e641750743a283b514c1
# Sat, 01 Aug 2026 20:22:01 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Sat, 01 Aug 2026 20:22:01 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 01 Aug 2026 21:57:47 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 01 Aug 2026 21:57:47 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 01 Aug 2026 21:57:52 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sat, 01 Aug 2026 21:57:57 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 01 Aug 2026 21:57:57 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 01 Aug 2026 21:57:57 GMT
WORKDIR /var/www/html
# Sat, 01 Aug 2026 21:57:57 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Sat, 01 Aug 2026 21:57:57 GMT
STOPSIGNAL SIGQUIT
# Sat, 01 Aug 2026 21:57:57 GMT
EXPOSE map[9000/tcp:{}]
# Sat, 01 Aug 2026 21:57:57 GMT
CMD ["php-fpm"]
# Sun, 02 Aug 2026 19:54:19 GMT
LABEL org.opencontainers.image.authors=Alexis Saettler <alexis@saettler.org> org.opencontainers.image.title=MonicaHQ, the Personal Relationship Manager org.opencontainers.image.description=This is MonicaHQ, your personal memory! MonicaHQ is like a CRM but for the friends, family, and acquaintances around you. org.opencontainers.image.url=https://monicahq.com org.opencontainers.image.source=https://github.com/monicahq/docker org.opencontainers.image.vendor=Monica
# Sun, 02 Aug 2026 19:54:19 GMT
RUN set -ex;         apk add --no-cache         bash         coreutils # buildkit
# Sun, 02 Aug 2026 20:15:56 GMT
RUN set -ex;         apk add --no-cache --virtual .build-deps         $PHPIZE_DEPS         icu-dev         zlib-dev         libzip-dev         libxml2-dev         freetype-dev         libpng-dev         libpq-dev         libjpeg-turbo-dev         jpeg-dev         gmp-dev         libmemcached-dev         libwebp-dev     ;         docker-php-ext-configure intl;     docker-php-ext-configure gd --with-jpeg --with-freetype --with-webp;     docker-php-ext-configure gmp;     docker-php-ext-install -j "$(nproc)"         intl         zip         bcmath         gd         gmp         pdo_mysql         mysqli         pdo_pgsql         soap     ;     pecl install APCu-5.1.26;     pecl install memcached-3.3.0;     pecl install redis-6.2.0;         docker-php-ext-enable         apcu         memcached         redis     ;         runDeps="$(         scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions         | tr ',' '\n'         | sort -u         | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'         )";     apk add --no-network --virtual .monica-phpext-rundeps $runDeps;     apk del --no-network .build-deps # buildkit
# Sun, 02 Aug 2026 20:15:56 GMT
RUN set -ex;         mkdir -p /var/spool/cron/crontabs;     rm -f /var/spool/cron/crontabs/root;     echo '* * * * * php /var/www/html/artisan schedule:run -v' > /var/spool/cron/crontabs/www-data # buildkit
# Sun, 02 Aug 2026 20:15:56 GMT
ENV PHP_OPCACHE_VALIDATE_TIMESTAMPS=0 PHP_OPCACHE_MAX_ACCELERATED_FILES=20000 PHP_OPCACHE_MEMORY_CONSUMPTION=192 PHP_OPCACHE_MAX_WASTED_PERCENTAGE=10
# Sun, 02 Aug 2026 20:15:56 GMT
ENV PHP_MEMORY_LIMIT=512M PHP_UPLOAD_LIMIT=512M
# Sun, 02 Aug 2026 20:16:01 GMT
RUN set -ex;         docker-php-ext-enable opcache;     {         echo '[opcache]';         echo 'opcache.enable=1';         echo 'opcache.revalidate_freq=0';         echo 'opcache.validate_timestamps=${PHP_OPCACHE_VALIDATE_TIMESTAMPS}';         echo 'opcache.max_accelerated_files=${PHP_OPCACHE_MAX_ACCELERATED_FILES}';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.max_wasted_percentage=${PHP_OPCACHE_MAX_WASTED_PERCENTAGE}';         echo 'opcache.interned_strings_buffer=16';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         echo 'apc.enable_cli=1' >> $PHP_INI_DIR/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > $PHP_INI_DIR/conf.d/limits.ini; # buildkit
# Sun, 02 Aug 2026 20:16:01 GMT
WORKDIR /var/www/html
# Sun, 02 Aug 2026 20:16:01 GMT
ENV MONICA_VERSION=v4.1.2
# Sun, 02 Aug 2026 20:16:01 GMT
LABEL org.opencontainers.image.revision=32028ce3ce79cef38df5d27a297e5b20680f0065 org.opencontainers.image.version=v4.1.2
# Sun, 02 Aug 2026 20:16:43 GMT
RUN set -ex;     apk add --no-cache --virtual .fetch-deps         bzip2         gnupg     ;         for ext in tar.bz2 tar.bz2.asc; do         curl -fsSL -o monica-${MONICA_VERSION}.$ext "https://github.com/monicahq/monica/releases/download/${MONICA_VERSION}/monica-${MONICA_VERSION}.$ext";     done;         GPGKEY='BDAB0D0D36A00466A2964E85DE15667131EA6018';     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$GPGKEY";     gpg --batch --verify monica-${MONICA_VERSION}.tar.bz2.asc monica-${MONICA_VERSION}.tar.bz2;         tar -xf monica-${MONICA_VERSION}.tar.bz2 -C /var/www/html --strip-components=1;         gpgconf --kill all;     rm -rf "$GNUPGHOME" monica-${MONICA_VERSION}.tar.bz2 monica-${MONICA_VERSION}.tar.bz2.asc;         cp /var/www/html/.env.example /var/www/html/.env;     chown -R www-data:www-data /var/www/html;         apk del .fetch-deps # buildkit
# Sun, 02 Aug 2026 20:16:45 GMT
COPY entrypoint.sh queue.sh cron.sh /usr/local/bin/ # buildkit
# Sun, 02 Aug 2026 20:16:45 GMT
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
# Sun, 02 Aug 2026 20:16:45 GMT
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
	-	`sha256:4fb529461b4fd20762d533560127e1f65e88ed245cbc7844e7a4b2faf24e566f`  
		Last Modified: Sat, 01 Aug 2026 21:10:04 GMT  
		Size: 12.2 MB (12189435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5302e68e515bf78b78e4ca96faec5cbd0489bacf066ce84d002d999459930b58`  
		Last Modified: Sat, 01 Aug 2026 21:10:00 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bbb160f87f5d0b937521b284459b655d7e4c794d2f005c521803cfd4cb506b5`  
		Last Modified: Sat, 01 Aug 2026 21:58:47 GMT  
		Size: 13.0 MB (13045339 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b058e800e86c5c7ad73c9035716c4c02b0340fae16e8ad664a0454ae1115f029`  
		Last Modified: Sat, 01 Aug 2026 21:58:45 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15ae28835936e2293028cf63f16ef3855f35c789e2a828223c62356fc20c4f32`  
		Last Modified: Sat, 01 Aug 2026 21:58:45 GMT  
		Size: 22.2 KB (22210 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:098949e6629a24a3b4534e8ece3b2c61c01d4f9cf02fa37856abcc1fd83ac66d`  
		Last Modified: Sat, 01 Aug 2026 21:58:45 GMT  
		Size: 22.2 KB (22229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e2847e84f094457e1f00f71d5317b50d3cd1120deef13e70848c7ff1cb7882fa`  
		Last Modified: Sat, 01 Aug 2026 21:58:46 GMT  
		Size: 9.3 KB (9251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc99cdfe7312110d8b87d1ed4adcb159c6e2b69810cf315b4ab477e072d54121`  
		Last Modified: Sun, 02 Aug 2026 20:18:01 GMT  
		Size: 1.3 MB (1279102 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1d509adb7e00633f82391a5aea58271c5809bbe8818ca35555440f2622624385`  
		Last Modified: Sun, 02 Aug 2026 20:18:03 GMT  
		Size: 9.0 MB (8988560 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:053517a94c77349652ecef646a525d8d3a76be230e617977c8b8a16b8a240e07`  
		Last Modified: Sun, 02 Aug 2026 20:18:01 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a795f32998779a781a94555b4edcc13632b39c0a3e4acd6bb5960581792a9798`  
		Last Modified: Sun, 02 Aug 2026 20:18:01 GMT  
		Size: 32.1 KB (32138 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e870715ab3dacd0143353ec2347d8f8f31eb90a6e2475ac45ce8709e85f152dc`  
		Last Modified: Sun, 02 Aug 2026 20:18:07 GMT  
		Size: 28.4 MB (28379334 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b5b0925a6944af275f8f3e2372fa14d39ff1e079371894e64d7096a029a23a2a`  
		Last Modified: Sun, 02 Aug 2026 20:18:03 GMT  
		Size: 2.1 KB (2076 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `monica:fpm-alpine` - unknown; unknown

```console
$ docker pull monica@sha256:a87ccdfd51a56920b6c669b25699846d4197ba3357b71ba2539a7ff867f6f5a6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.1 KB (47101 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55188403e59555402cc036ed806d43489b39a67a97a44fa0ad43da547b932f99`

```dockerfile
```

-	Layers:
	-	`sha256:8bc5853e0f8d6e95e2fd1a731c549347ac54ee088a9800d0cd0b896a8b83f7ce`  
		Last Modified: Sun, 02 Aug 2026 20:18:01 GMT  
		Size: 47.1 KB (47101 bytes)  
		MIME: application/vnd.in-toto+json

### `monica:fpm-alpine` - linux; s390x

```console
$ docker pull monica@sha256:8ccdff02d553b577442b1d7c9d758ae967faf38e7875b801260267232b6b98be
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **71.7 MB (71691414 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6795eab1171bf28a19dc31b67ff4203f62045925568e741bb0ad81dd2e59bc32`
-	Entrypoint: `["\/usr\/local\/bin\/entrypoint.sh"]`
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
# Fri, 31 Jul 2026 00:59:35 GMT
LABEL org.opencontainers.image.authors=Alexis Saettler <alexis@saettler.org> org.opencontainers.image.title=MonicaHQ, the Personal Relationship Manager org.opencontainers.image.description=This is MonicaHQ, your personal memory! MonicaHQ is like a CRM but for the friends, family, and acquaintances around you. org.opencontainers.image.url=https://monicahq.com org.opencontainers.image.source=https://github.com/monicahq/docker org.opencontainers.image.vendor=Monica
# Fri, 31 Jul 2026 00:59:35 GMT
RUN set -ex;         apk add --no-cache         bash         coreutils # buildkit
# Fri, 31 Jul 2026 01:01:32 GMT
RUN set -ex;         apk add --no-cache --virtual .build-deps         $PHPIZE_DEPS         icu-dev         zlib-dev         libzip-dev         libxml2-dev         freetype-dev         libpng-dev         libpq-dev         libjpeg-turbo-dev         jpeg-dev         gmp-dev         libmemcached-dev         libwebp-dev     ;         docker-php-ext-configure intl;     docker-php-ext-configure gd --with-jpeg --with-freetype --with-webp;     docker-php-ext-configure gmp;     docker-php-ext-install -j "$(nproc)"         intl         zip         bcmath         gd         gmp         pdo_mysql         mysqli         pdo_pgsql         soap     ;     pecl install APCu-5.1.26;     pecl install memcached-3.3.0;     pecl install redis-6.2.0;         docker-php-ext-enable         apcu         memcached         redis     ;         runDeps="$(         scanelf --needed --nobanner --format '%n#p' --recursive /usr/local/lib/php/extensions         | tr ',' '\n'         | sort -u         | awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }'         )";     apk add --no-network --virtual .monica-phpext-rundeps $runDeps;     apk del --no-network .build-deps # buildkit
# Fri, 31 Jul 2026 01:01:32 GMT
RUN set -ex;         mkdir -p /var/spool/cron/crontabs;     rm -f /var/spool/cron/crontabs/root;     echo '* * * * * php /var/www/html/artisan schedule:run -v' > /var/spool/cron/crontabs/www-data # buildkit
# Fri, 31 Jul 2026 01:01:32 GMT
ENV PHP_OPCACHE_VALIDATE_TIMESTAMPS=0 PHP_OPCACHE_MAX_ACCELERATED_FILES=20000 PHP_OPCACHE_MEMORY_CONSUMPTION=192 PHP_OPCACHE_MAX_WASTED_PERCENTAGE=10
# Fri, 31 Jul 2026 01:01:32 GMT
ENV PHP_MEMORY_LIMIT=512M PHP_UPLOAD_LIMIT=512M
# Fri, 31 Jul 2026 01:01:33 GMT
RUN set -ex;         docker-php-ext-enable opcache;     {         echo '[opcache]';         echo 'opcache.enable=1';         echo 'opcache.revalidate_freq=0';         echo 'opcache.validate_timestamps=${PHP_OPCACHE_VALIDATE_TIMESTAMPS}';         echo 'opcache.max_accelerated_files=${PHP_OPCACHE_MAX_ACCELERATED_FILES}';         echo 'opcache.memory_consumption=${PHP_OPCACHE_MEMORY_CONSUMPTION}';         echo 'opcache.max_wasted_percentage=${PHP_OPCACHE_MAX_WASTED_PERCENTAGE}';         echo 'opcache.interned_strings_buffer=16';         echo 'opcache.fast_shutdown=1';     } > $PHP_INI_DIR/conf.d/opcache-recommended.ini;         echo 'apc.enable_cli=1' >> $PHP_INI_DIR/conf.d/docker-php-ext-apcu.ini;         {         echo 'memory_limit=${PHP_MEMORY_LIMIT}';         echo 'upload_max_filesize=${PHP_UPLOAD_LIMIT}';         echo 'post_max_size=${PHP_UPLOAD_LIMIT}';     } > $PHP_INI_DIR/conf.d/limits.ini; # buildkit
# Fri, 31 Jul 2026 01:01:33 GMT
WORKDIR /var/www/html
# Fri, 31 Jul 2026 01:01:33 GMT
ENV MONICA_VERSION=v4.1.2
# Fri, 31 Jul 2026 01:01:33 GMT
LABEL org.opencontainers.image.revision=32028ce3ce79cef38df5d27a297e5b20680f0065 org.opencontainers.image.version=v4.1.2
# Fri, 31 Jul 2026 01:01:40 GMT
RUN set -ex;     apk add --no-cache --virtual .fetch-deps         bzip2         gnupg     ;         for ext in tar.bz2 tar.bz2.asc; do         curl -fsSL -o monica-${MONICA_VERSION}.$ext "https://github.com/monicahq/monica/releases/download/${MONICA_VERSION}/monica-${MONICA_VERSION}.$ext";     done;         GPGKEY='BDAB0D0D36A00466A2964E85DE15667131EA6018';     export GNUPGHOME="$(mktemp -d)";     gpg --batch --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys "$GPGKEY";     gpg --batch --verify monica-${MONICA_VERSION}.tar.bz2.asc monica-${MONICA_VERSION}.tar.bz2;         tar -xf monica-${MONICA_VERSION}.tar.bz2 -C /var/www/html --strip-components=1;         gpgconf --kill all;     rm -rf "$GNUPGHOME" monica-${MONICA_VERSION}.tar.bz2 monica-${MONICA_VERSION}.tar.bz2.asc;         cp /var/www/html/.env.example /var/www/html/.env;     chown -R www-data:www-data /var/www/html;         apk del .fetch-deps # buildkit
# Fri, 31 Jul 2026 01:01:40 GMT
COPY entrypoint.sh queue.sh cron.sh /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 01:01:40 GMT
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
# Fri, 31 Jul 2026 01:01:40 GMT
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
	-	`sha256:c3a2eafad5516785fd90d128ad6822e9c32d19073bd97c5fee85e25bb019ffd3`  
		Last Modified: Fri, 31 Jul 2026 01:01:54 GMT  
		Size: 1.3 MB (1333482 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a8a4565c38f3e227418d9b95ae776628cc93fed4e8ea5bbcfa4f253da3bcc1e`  
		Last Modified: Fri, 31 Jul 2026 01:01:55 GMT  
		Size: 9.3 MB (9282944 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:196635ca7c521be17a46e41387ff191551abbd86832b9ae3ad260963b2ebaff5`  
		Last Modified: Fri, 31 Jul 2026 01:01:54 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9bc5c305da21247bbcc6ca2773c707e878283d343dd35f8318e9466ca78c18a`  
		Last Modified: Fri, 31 Jul 2026 01:01:54 GMT  
		Size: 32.1 KB (32109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca2be882e26425900871871400dd6585ad01410c10286ee78787b7a2b3140a35`  
		Last Modified: Fri, 31 Jul 2026 01:01:56 GMT  
		Size: 28.4 MB (28379428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6c7502b0f5dbed9e83b928bc91bb0a578cad38ffbf0bcec5789c11caa70e9934`  
		Last Modified: Fri, 31 Jul 2026 01:01:55 GMT  
		Size: 2.1 KB (2072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `monica:fpm-alpine` - unknown; unknown

```console
$ docker pull monica@sha256:8d551eb6289359121a6da72e40f6956d492b6052807984fda6b7d905ec52a65e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **47.0 KB (47049 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0a9cebd65024fb3e7b3eebdda58acb6b4e1c11ee71df9a9b8d7aee847fa36532`

```dockerfile
```

-	Layers:
	-	`sha256:e20f44e0bd7d9c57dba2647a6c294352efb2fd2fd55b4820db9141e76db7fdb5`  
		Last Modified: Fri, 31 Jul 2026 01:01:54 GMT  
		Size: 47.0 KB (47049 bytes)  
		MIME: application/vnd.in-toto+json
