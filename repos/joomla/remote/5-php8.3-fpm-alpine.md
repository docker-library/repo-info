## `joomla:5-php8.3-fpm-alpine`

```console
$ docker pull joomla@sha256:39ab7407629aa10f34e78749bfbe06807637c6a399edd531d4b8dd089471da74
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

### `joomla:5-php8.3-fpm-alpine` - linux; amd64

```console
$ docker pull joomla@sha256:365c170a8cefc6e6fbe613cc312116a9e8b46531eaa91ecd5468f4ec6233f116
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.1 MB (101074772 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d193cd4831e8146b389ec9600df48ffbd0c7091dade8599bad16bfc02272fb7c`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 22:51:39 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 30 Jul 2026 22:51:39 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 30 Jul 2026 22:51:39 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 30 Jul 2026 22:51:39 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:51:39 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:51:39 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:51:39 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:51:39 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:51:39 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 30 Jul 2026 22:51:39 GMT
ENV PHP_VERSION=8.3.33
# Thu, 30 Jul 2026 22:51:39 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Thu, 30 Jul 2026 22:51:39 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Thu, 30 Jul 2026 22:51:42 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 22:51:42 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:54:30 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:54:30 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:54:30 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 22:54:31 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:54:31 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:54:31 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 22:54:31 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 30 Jul 2026 22:54:31 GMT
STOPSIGNAL SIGQUIT
# Thu, 30 Jul 2026 22:54:31 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 30 Jul 2026 22:54:31 GMT
CMD ["php-fpm"]
# Wed, 19 Aug 2026 20:59:01 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Wed, 19 Aug 2026 20:59:01 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Wed, 19 Aug 2026 20:59:01 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 		zstd 	; # buildkit
# Wed, 19 Aug 2026 21:00:38 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 		pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Wed, 19 Aug 2026 21:00:38 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Wed, 19 Aug 2026 21:00:38 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Wed, 19 Aug 2026 21:00:38 GMT
VOLUME [/var/www/html]
# Wed, 19 Aug 2026 21:00:38 GMT
ENV JOOMLA_VERSION=5.4.8
# Wed, 19 Aug 2026 21:00:38 GMT
ENV JOOMLA_SHA512=84fe04fe224a376209a85f36781c73db7c7787ee572b633ae1b31739af39a1e8e310f10faaac30f8bf8181536dc118182e873143346c4f47cd33b7d785c86b6e
# Wed, 19 Aug 2026 21:00:40 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/5.4.8/Joomla_5.4.8-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Wed, 19 Aug 2026 21:00:40 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 19 Aug 2026 21:00:40 GMT
COPY makedb.php /makedb.php # buildkit
# Wed, 19 Aug 2026 21:00:40 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Aug 2026 21:00:40 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a3191987f7d0a5bb7ffc72c983d46756c982c361359f6e90f8bdec6048f9d15f`  
		Last Modified: Thu, 30 Jul 2026 22:54:38 GMT  
		Size: 3.5 MB (3476125 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cf72d4bf7c22b3d4cb05ccf5601758b0037f894b6224a0a7442a446bd96c07ea`  
		Last Modified: Thu, 30 Jul 2026 22:54:37 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ffbf1646d0b06284981a43516b72fa4104ec7905033109f1e8b3c6259fd2c3cf`  
		Last Modified: Thu, 30 Jul 2026 22:54:37 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76a1744247cf5a372c1534af4e300085ba0f3a865332d0f6ec293abc1d7af66d`  
		Last Modified: Thu, 30 Jul 2026 22:54:38 GMT  
		Size: 12.6 MB (12636143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0507c5b9b50c75bfa69a26e71075607cc8e07dd6328da1462197d298af72bff9`  
		Last Modified: Thu, 30 Jul 2026 22:54:38 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5feae54097f2b878f0a4cfa817e1b4f66ebd303f541e710c9796f1c1589b51e1`  
		Last Modified: Thu, 30 Jul 2026 22:54:39 GMT  
		Size: 13.4 MB (13417351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1eb6299255f373536a849c9c1b05a56a92e61efbf0c0206be8a1842e6b3d02a9`  
		Last Modified: Thu, 30 Jul 2026 22:54:39 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:af85c7e0ad5241b425bd3235511e4bcbc4eb6095db9b6e5fc4a19eb51ecb9821`  
		Last Modified: Thu, 30 Jul 2026 22:54:39 GMT  
		Size: 22.3 KB (22335 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9db738446c8eb5dd8c75b338775e66f56b639a1240846db79694e2e1fda377fa`  
		Last Modified: Thu, 30 Jul 2026 22:54:40 GMT  
		Size: 22.4 KB (22354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45cf0d5835a05e18d4d9dc1b776e0fcb0cbf8210a9cad60958f15193b7b17011`  
		Last Modified: Thu, 30 Jul 2026 22:54:40 GMT  
		Size: 9.2 KB (9250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:156db8a8e9d3ebe3ca251f61eada5c2315478f9777cdba6c1bed5ab989ede395`  
		Last Modified: Wed, 19 Aug 2026 21:00:48 GMT  
		Size: 33.0 MB (33018615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:755ceaba0d9b15f8c6a51c26a309b4730af812d353eb056dcef45c35b8c476f6`  
		Last Modified: Wed, 19 Aug 2026 21:00:49 GMT  
		Size: 7.0 MB (6979601 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbcaa7e36871486b68d6cc98ef697982f9d7c588705ce0b775194fb4b8efd6c4`  
		Last Modified: Wed, 19 Aug 2026 21:00:47 GMT  
		Size: 72.0 KB (72045 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d71d623d42c49f91e5536cbab7c102cc2acb9ce4db1c94bc0c1f9af6db57ad8`  
		Last Modified: Wed, 19 Aug 2026 21:00:48 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c247b3ed49590d3576da448598e3090abe8d990345987a54a7276d0e639023f`  
		Last Modified: Wed, 19 Aug 2026 21:00:54 GMT  
		Size: 27.6 MB (27565327 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64724d5eb4f096d0c9390f8a27d1fe7cb16ef7a5fd208a17e273f02af753b76e`  
		Last Modified: Wed, 19 Aug 2026 21:00:49 GMT  
		Size: 3.7 KB (3655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54c32abccd52148d9f64646ee50f4ebf146dbca395419240df4b118538224a49`  
		Last Modified: Wed, 19 Aug 2026 21:00:51 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.3-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:835cfd508229f9660a67ada15067f731beaa1e1f4a05b159be15e6d8e2d3ea21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 KB (45715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a14a2dcc6e46c0ea912cd20008f9051d913ca3ee463e6cad895dfc11f940927`

```dockerfile
```

-	Layers:
	-	`sha256:d67e9f0399967dbffcdaee7c6a674a3757f5adda28a16a35c4e03f801ddbe756`  
		Last Modified: Wed, 19 Aug 2026 21:00:47 GMT  
		Size: 45.7 KB (45715 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.3-fpm-alpine` - linux; arm variant v6

```console
$ docker pull joomla@sha256:f4d303bd731ebd95f52587b91390072a1ff8a9e678a2154e6401b80717fc5e56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **96.1 MB (96078105 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d3cd9225a3781fd11f8e9b721d6862e86615929d75ae42e3a0b6fc6e37b03896`
-	Entrypoint: `["\/entrypoint.sh"]`
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
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 30 Jul 2026 22:42:30 GMT
ENV PHP_VERSION=8.3.33
# Thu, 30 Jul 2026 22:42:30 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Thu, 30 Jul 2026 22:42:30 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Thu, 30 Jul 2026 22:49:09 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 22:49:09 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:51:51 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:51:51 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:51:51 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 22:51:52 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:51:52 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:51:52 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 22:51:52 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 30 Jul 2026 22:51:52 GMT
STOPSIGNAL SIGQUIT
# Thu, 30 Jul 2026 22:51:52 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 30 Jul 2026 22:51:52 GMT
CMD ["php-fpm"]
# Wed, 19 Aug 2026 20:54:05 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Wed, 19 Aug 2026 20:54:05 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Wed, 19 Aug 2026 20:54:05 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 		zstd 	; # buildkit
# Wed, 19 Aug 2026 20:56:30 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 		pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Wed, 19 Aug 2026 20:56:30 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Wed, 19 Aug 2026 20:56:30 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Wed, 19 Aug 2026 20:56:30 GMT
VOLUME [/var/www/html]
# Wed, 19 Aug 2026 20:56:30 GMT
ENV JOOMLA_VERSION=5.4.8
# Wed, 19 Aug 2026 20:56:30 GMT
ENV JOOMLA_SHA512=84fe04fe224a376209a85f36781c73db7c7787ee572b633ae1b31739af39a1e8e310f10faaac30f8bf8181536dc118182e873143346c4f47cd33b7d785c86b6e
# Wed, 19 Aug 2026 20:56:32 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/5.4.8/Joomla_5.4.8-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Wed, 19 Aug 2026 20:56:32 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 19 Aug 2026 20:56:32 GMT
COPY makedb.php /makedb.php # buildkit
# Wed, 19 Aug 2026 20:56:32 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Aug 2026 20:56:32 GMT
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
	-	`sha256:ddd1955deea33753f0e571d6e94b2648bf9cb595dfb0941e51e9e343aec92e65`  
		Last Modified: Thu, 30 Jul 2026 22:51:58 GMT  
		Size: 12.6 MB (12636135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2d03ce30939185062e9cab64b09d5c0f3a1da7657a9ee4fdafc3f59280b67f84`  
		Last Modified: Thu, 30 Jul 2026 22:51:57 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76c41d8d45d5cb386ef5f40a02c23a359cc09f96ed077cb4d0df9f6a8efed860`  
		Last Modified: Thu, 30 Jul 2026 22:51:58 GMT  
		Size: 12.2 MB (12159432 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7df53bed5968269df92adbc8a4f650f9e3e4d98a34a30097e0516257fc36c652`  
		Last Modified: Thu, 30 Jul 2026 22:51:57 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5eba046114bc93d32693673b3193b3cde762a8a57075452f5a5feb27643afa15`  
		Last Modified: Thu, 30 Jul 2026 22:51:58 GMT  
		Size: 22.1 KB (22118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5e15003ebef9084a07518381779c18d2e205f8d98694545d655aa088aec7bc1d`  
		Last Modified: Thu, 30 Jul 2026 22:51:58 GMT  
		Size: 22.1 KB (22143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81321aac108981c32f0ff9754851a1583f9f945a3205c9dbca54f84919f45e7c`  
		Last Modified: Thu, 30 Jul 2026 22:51:59 GMT  
		Size: 9.3 KB (9251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9cc5e37c5d2b88a3b743ca5515fb3978cbf15994efdcb26d02ac91cd78550465`  
		Last Modified: Wed, 19 Aug 2026 20:56:40 GMT  
		Size: 29.9 MB (29915566 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d23e53bc19b4548302b270656cef7f3cab695314da62abb53b7e50dfd2514d7b`  
		Last Modified: Wed, 19 Aug 2026 20:56:40 GMT  
		Size: 6.7 MB (6680918 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2b8b2812f5416b8f64fc014fb3f0ef4492c732eafc3701c3eccf9a6336aeb221`  
		Last Modified: Wed, 19 Aug 2026 20:56:39 GMT  
		Size: 72.1 KB (72069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b9dba49dd65a01983ff873a878262f238752e01d0f4da176351463476954142`  
		Last Modified: Wed, 19 Aug 2026 20:56:39 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:36e59924335bd80cc7433673e9a8cd5533899c5dc960a80509b0d54ff0bed15b`  
		Last Modified: Wed, 19 Aug 2026 20:56:41 GMT  
		Size: 27.6 MB (27564741 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dddd6897fd8b2c400573d575156295b38a38f407441b82c3aabfda4d9c257bcf`  
		Last Modified: Wed, 19 Aug 2026 20:56:40 GMT  
		Size: 3.7 KB (3655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8671dfd86b5816015ffe5954a1c6c19a24e2ce3d071ea84dcc151356abf51dfa`  
		Last Modified: Wed, 19 Aug 2026 20:56:41 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.3-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:f2a847f944b84152a4e1573f31af4f8fecef5765c5713490a09ec956b8c65e72
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 KB (45839 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:285fffa79e1420368d183a0fa9ee5ac76846e7a89685a9d4dfa5fecd289d772e`

```dockerfile
```

-	Layers:
	-	`sha256:de296b531833678e5186805f19e2aa6125c2f20113c58df881739e64c5187b3b`  
		Last Modified: Wed, 19 Aug 2026 20:56:39 GMT  
		Size: 45.8 KB (45839 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.3-fpm-alpine` - linux; arm variant v7

```console
$ docker pull joomla@sha256:8ca7f88fd34f14cbf6a784445e06ec6dc70ab41efe98308f57e1aaa1eee391f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **93.2 MB (93170321 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48f03e74dbe326549d062e71415bf0e926da3564c721e42fe852dc76bcf85167`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 16 Jun 2026 00:00:26 GMT
ADD alpine-minirootfs-3.24.1-armv7.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:00:26 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 23:12:26 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 30 Jul 2026 23:12:26 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 30 Jul 2026 23:12:26 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 30 Jul 2026 23:12:26 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 23:12:26 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 23:12:26 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 23:12:26 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 23:12:26 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 23:12:26 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 30 Jul 2026 23:12:26 GMT
ENV PHP_VERSION=8.3.33
# Thu, 30 Jul 2026 23:12:26 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Thu, 30 Jul 2026 23:12:26 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Thu, 30 Jul 2026 23:12:29 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 23:12:29 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:15:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 23:15:15 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 23:15:15 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 23:15:16 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 23:15:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 23:15:16 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 23:15:16 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 30 Jul 2026 23:15:16 GMT
STOPSIGNAL SIGQUIT
# Thu, 30 Jul 2026 23:15:16 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 30 Jul 2026 23:15:16 GMT
CMD ["php-fpm"]
# Wed, 19 Aug 2026 21:00:30 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Wed, 19 Aug 2026 21:00:30 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Wed, 19 Aug 2026 21:00:30 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 		zstd 	; # buildkit
# Wed, 19 Aug 2026 21:02:57 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 		pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Wed, 19 Aug 2026 21:02:58 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Wed, 19 Aug 2026 21:02:58 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Wed, 19 Aug 2026 21:02:58 GMT
VOLUME [/var/www/html]
# Wed, 19 Aug 2026 21:02:58 GMT
ENV JOOMLA_VERSION=5.4.8
# Wed, 19 Aug 2026 21:02:58 GMT
ENV JOOMLA_SHA512=84fe04fe224a376209a85f36781c73db7c7787ee572b633ae1b31739af39a1e8e310f10faaac30f8bf8181536dc118182e873143346c4f47cd33b7d785c86b6e
# Wed, 19 Aug 2026 21:02:59 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/5.4.8/Joomla_5.4.8-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Wed, 19 Aug 2026 21:02:59 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 19 Aug 2026 21:02:59 GMT
COPY makedb.php /makedb.php # buildkit
# Wed, 19 Aug 2026 21:02:59 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Aug 2026 21:02:59 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:bc03a9e5b4dd452551f246e199537fe7afc1765f53f510bc81d26df9845e4008`  
		Last Modified: Sun, 14 Jun 2026 06:45:22 GMT  
		Size: 3.3 MB (3260615 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:058c44e9a0a200ce5c101bd9c9accbb71ae35e8fbae024141c04c6bc666654f3`  
		Last Modified: Thu, 30 Jul 2026 23:15:22 GMT  
		Size: 3.2 MB (3247147 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c45da376d460fd17033a3d96453d6400a43c08140a9bcafb988f63d1e236e9bf`  
		Last Modified: Thu, 30 Jul 2026 23:15:22 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e43bd5d543de800592a000acb5505e4379394d701133e04bb9e73291b54549e8`  
		Last Modified: Thu, 30 Jul 2026 23:15:22 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b153a722e247e1a0ca4bf2ae5272463d9ae2ea2d7ec7a446a62a6ff52682062`  
		Last Modified: Thu, 30 Jul 2026 23:15:23 GMT  
		Size: 12.6 MB (12636149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2adeef29828774e5217f32b65e52501c2607471d46f293e052910ae50d6fb94d`  
		Last Modified: Thu, 30 Jul 2026 23:15:23 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9191671aa76a22060b5be621fc6ad23365628a3e5bb6b2bacaa2dbe45f6de252`  
		Last Modified: Thu, 30 Jul 2026 23:15:24 GMT  
		Size: 11.4 MB (11444686 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:560898721b30e982463a2227651154e2a90e1b89256a7323f416b28d54866480`  
		Last Modified: Thu, 30 Jul 2026 23:15:24 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba49081256662f0018e0837284bf137beca598df74090940eb18bf8d39dbf95a`  
		Last Modified: Thu, 30 Jul 2026 23:15:24 GMT  
		Size: 22.1 KB (22127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8009e257ea827f4e7317dc4c4f12401888367541cbf7d51eba5edfbbc5fe1730`  
		Last Modified: Thu, 30 Jul 2026 23:15:24 GMT  
		Size: 22.1 KB (22145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4f5126f47e3321a1e1c8883e0223de80846a251c8a56a752bf57a6498593155`  
		Last Modified: Thu, 30 Jul 2026 23:15:25 GMT  
		Size: 9.3 KB (9251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:447a91ce10b085b3ba4cd5c20d705f6a3e6a802944ba744198d1c4964f5f98ce`  
		Last Modified: Wed, 19 Aug 2026 21:03:07 GMT  
		Size: 28.2 MB (28171170 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0971f8911c441d3e33668152e5aec0a3ec8914075ea440513b341ca68e79832e`  
		Last Modified: Wed, 19 Aug 2026 21:03:07 GMT  
		Size: 6.7 MB (6710579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7154bf37e1b92b23dbf75d1e382dec8ca8b430dd4cda48a74b54610923618b5`  
		Last Modified: Wed, 19 Aug 2026 21:03:06 GMT  
		Size: 72.1 KB (72075 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9a1d317f92c1a10871abd0c4279f527ed28febd7c66d5f5baad22afac8cf68d`  
		Last Modified: Wed, 19 Aug 2026 21:03:06 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d55f9a64e4675dc885da5b837adf6949372d0b9e0b2e5d8b2afb8d4290cb547a`  
		Last Modified: Wed, 19 Aug 2026 21:03:08 GMT  
		Size: 27.6 MB (27565149 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e433e83ffe8c23cf36e2937f4806f7b6875707746de4a1f1be418dacb93f646`  
		Last Modified: Wed, 19 Aug 2026 21:03:07 GMT  
		Size: 3.7 KB (3655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:248abafc75f75632ffa4a050461646e323ccafd514a379758630bd756e68f67a`  
		Last Modified: Wed, 19 Aug 2026 21:03:08 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.3-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:1ac3f8d1938ba71657c66bbba67695f80b3184904d1f6051fc8ca23577b55903
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 KB (45838 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57078861a7ba9ab6f93e4ad2faf85b9f3902a420934d32a3baa2c22ada5d37c0`

```dockerfile
```

-	Layers:
	-	`sha256:d079315f4d3b5c79c775a46b70edbb94696fa9468ec1a40dca51aef1d8edfe62`  
		Last Modified: Wed, 19 Aug 2026 21:03:06 GMT  
		Size: 45.8 KB (45838 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.3-fpm-alpine` - linux; arm64 variant v8

```console
$ docker pull joomla@sha256:8ea0822525bce52b4264ac2d270662df0ccbf9f6eeb1529870127c12b16587b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100853390 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2767755c8399b82451354d3dcfe025c711a3e8487f126d5a947ac0eb46829d8b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:20 GMT
ADD alpine-minirootfs-3.24.1-aarch64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:20 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 22:52:42 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 30 Jul 2026 22:52:42 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 30 Jul 2026 22:52:42 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 30 Jul 2026 22:52:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:52:42 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:52:42 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:52:42 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:52:42 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:52:42 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 30 Jul 2026 22:52:42 GMT
ENV PHP_VERSION=8.3.33
# Thu, 30 Jul 2026 22:52:42 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Thu, 30 Jul 2026 22:52:42 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Thu, 30 Jul 2026 22:52:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 22:52:45 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:57:00 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:57:00 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:57:00 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 22:57:01 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:57:01 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:57:01 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 22:57:01 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 30 Jul 2026 22:57:01 GMT
STOPSIGNAL SIGQUIT
# Thu, 30 Jul 2026 22:57:01 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 30 Jul 2026 22:57:01 GMT
CMD ["php-fpm"]
# Wed, 19 Aug 2026 20:52:33 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Wed, 19 Aug 2026 20:52:33 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Wed, 19 Aug 2026 20:52:33 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 		zstd 	; # buildkit
# Wed, 19 Aug 2026 20:54:37 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 		pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Wed, 19 Aug 2026 20:54:38 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Wed, 19 Aug 2026 20:54:38 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Wed, 19 Aug 2026 20:54:38 GMT
VOLUME [/var/www/html]
# Wed, 19 Aug 2026 20:54:38 GMT
ENV JOOMLA_VERSION=5.4.8
# Wed, 19 Aug 2026 20:54:38 GMT
ENV JOOMLA_SHA512=84fe04fe224a376209a85f36781c73db7c7787ee572b633ae1b31739af39a1e8e310f10faaac30f8bf8181536dc118182e873143346c4f47cd33b7d785c86b6e
# Wed, 19 Aug 2026 20:54:58 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/5.4.8/Joomla_5.4.8-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Wed, 19 Aug 2026 20:54:58 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 19 Aug 2026 20:54:58 GMT
COPY makedb.php /makedb.php # buildkit
# Wed, 19 Aug 2026 20:54:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Aug 2026 20:54:58 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:5de55e5ef9c033997441461efe7ba23a986db059c0bb78b38f84ee0d72b99167`  
		Last Modified: Sun, 14 Jun 2026 06:44:31 GMT  
		Size: 4.2 MB (4183037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0c6ebd63f1b2938a1450ae86957023716c0addb406803323456d6339b0b09bf`  
		Last Modified: Thu, 30 Jul 2026 22:57:08 GMT  
		Size: 3.5 MB (3485975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:065b607e1694de31fc1432c31ef6a32509f62e03f2f61724073962f985bcd903`  
		Last Modified: Thu, 30 Jul 2026 22:57:07 GMT  
		Size: 934.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fabde3f6c81768edd6258c511c9128de7a1e27a985f7612511ccfe855b6a627b`  
		Last Modified: Thu, 30 Jul 2026 22:57:07 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:014b7920163f36739fa52d671f8145275e62eae5053ea2f212c9101f9d2d01fe`  
		Last Modified: Thu, 30 Jul 2026 22:57:08 GMT  
		Size: 12.6 MB (12636134 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad348780d952779f55e344e304a5ade91ff39300284a195f3db94b8aafc82a16`  
		Last Modified: Thu, 30 Jul 2026 22:57:08 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9f7aa26536730ace16edc8f7af0aa904d0f286e20151fd3838725cd6cedeff14`  
		Last Modified: Thu, 30 Jul 2026 22:57:09 GMT  
		Size: 13.3 MB (13320067 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:125f25d0e95cfd8745e5d444f43537b146f639ce87762d9814ba9c6717e15984`  
		Last Modified: Thu, 30 Jul 2026 22:57:09 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a2fdae545001df3d9d76e108a6740dcd093ee8c3df838036684b3052f8f198c`  
		Last Modified: Thu, 30 Jul 2026 22:57:09 GMT  
		Size: 22.2 KB (22156 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3de018043c28fbc3d35c2ffe1b5ea065d1cb6ca745f7a0c3f9fdf4576bfb62e5`  
		Last Modified: Thu, 30 Jul 2026 22:57:10 GMT  
		Size: 22.2 KB (22177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16888b72c7c8d1e9a29dbbb4aaa0a2efdaf3dba44bf39070b7c764cb621a3c9c`  
		Last Modified: Thu, 30 Jul 2026 22:57:10 GMT  
		Size: 9.2 KB (9250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c48f0ba7e6789c7cc8c5656a353b8ead6e0bc757fae30d354eb05f56fdf10c26`  
		Last Modified: Wed, 19 Aug 2026 20:54:48 GMT  
		Size: 32.6 MB (32622456 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04815324ef5f6c2ec074d423bae2c06c8ad6bcd796a39bd1cec58209e42c52db`  
		Last Modified: Wed, 19 Aug 2026 20:54:47 GMT  
		Size: 6.9 MB (6905676 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71763782fe2b13257fbce73f3bc20a4eb0450b0fccff6f1f622e2b2effbc28c5`  
		Last Modified: Wed, 19 Aug 2026 20:54:47 GMT  
		Size: 72.1 KB (72064 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3823fb60a238d4baa8085126b02cf7620aea70c49bc0dbd29e7d7509b5df4b8a`  
		Last Modified: Wed, 19 Aug 2026 20:54:47 GMT  
		Size: 390.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9105d6ef9f616b3fb4a1128c0e35501819d1509a82f7b308c4e27ef92c5bceba`  
		Last Modified: Wed, 19 Aug 2026 20:55:05 GMT  
		Size: 27.6 MB (27565165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01e6d62fbb2ef0a9b795ca6c483792f2b6d13f01a24f4467d40c1fe6d3939191`  
		Last Modified: Wed, 19 Aug 2026 20:55:05 GMT  
		Size: 3.7 KB (3655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5453738063394fd873ba44ddd25d838b9987a3a10d2152d7c67e34c86ee857cd`  
		Last Modified: Wed, 19 Aug 2026 20:55:04 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.3-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:87436a79b9ac4f7ecf046a8774d1aff743e1029d375bdb5d62a08f6df5d3b3b1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.9 KB (45867 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c28be2239403c99c414d6b290e57ff492fc63f1c1e9a5f6710df0e2e359851b8`

```dockerfile
```

-	Layers:
	-	`sha256:9e5f28aed110f9fe2a30e5696b97226696f06f863ad4786284e91f9805e0e6c9`  
		Last Modified: Wed, 19 Aug 2026 20:55:04 GMT  
		Size: 45.9 KB (45867 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.3-fpm-alpine` - linux; 386

```console
$ docker pull joomla@sha256:1a76fe2453fbd5f6fc8bcfac9a52ee690e5fed36ffd17afc5280ccafbb73c8b2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.7 MB (101727083 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:92cccbe06a18f397ab8bf1defbeb890c352caac7f9a419f70d078b507505108f`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:19 GMT
ADD alpine-minirootfs-3.24.1-x86.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:19 GMT
CMD ["/bin/sh"]
# Thu, 30 Jul 2026 22:52:55 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 30 Jul 2026 22:52:55 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 30 Jul 2026 22:52:55 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 30 Jul 2026 22:52:55 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 30 Jul 2026 22:52:55 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 30 Jul 2026 22:52:55 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:52:55 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 30 Jul 2026 22:52:55 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 30 Jul 2026 22:52:55 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 30 Jul 2026 22:52:55 GMT
ENV PHP_VERSION=8.3.33
# Thu, 30 Jul 2026 22:52:55 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Thu, 30 Jul 2026 22:52:55 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Thu, 30 Jul 2026 22:52:58 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 30 Jul 2026 22:52:58 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:55:52 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 30 Jul 2026 22:55:52 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 30 Jul 2026 22:55:52 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 30 Jul 2026 22:55:53 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 30 Jul 2026 22:55:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 30 Jul 2026 22:55:53 GMT
WORKDIR /var/www/html
# Thu, 30 Jul 2026 22:55:53 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 30 Jul 2026 22:55:53 GMT
STOPSIGNAL SIGQUIT
# Thu, 30 Jul 2026 22:55:53 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 30 Jul 2026 22:55:53 GMT
CMD ["php-fpm"]
# Wed, 19 Aug 2026 20:53:53 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Wed, 19 Aug 2026 20:53:53 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Wed, 19 Aug 2026 20:53:53 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 		zstd 	; # buildkit
# Wed, 19 Aug 2026 20:55:31 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 		pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Wed, 19 Aug 2026 20:55:31 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Wed, 19 Aug 2026 20:55:31 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Wed, 19 Aug 2026 20:55:31 GMT
VOLUME [/var/www/html]
# Wed, 19 Aug 2026 20:55:31 GMT
ENV JOOMLA_VERSION=5.4.8
# Wed, 19 Aug 2026 20:55:31 GMT
ENV JOOMLA_SHA512=84fe04fe224a376209a85f36781c73db7c7787ee572b633ae1b31739af39a1e8e310f10faaac30f8bf8181536dc118182e873143346c4f47cd33b7d785c86b6e
# Wed, 19 Aug 2026 20:55:48 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/5.4.8/Joomla_5.4.8-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Wed, 19 Aug 2026 20:55:48 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 19 Aug 2026 20:55:48 GMT
COPY makedb.php /makedb.php # buildkit
# Wed, 19 Aug 2026 20:55:48 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Aug 2026 20:55:48 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f86df9d778509895efbf9363d8fcb0cbe0b772de536c7218e4c4c947f0be879f`  
		Last Modified: Sun, 14 Jun 2026 06:45:46 GMT  
		Size: 3.7 MB (3670141 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1292f6319463ec7caf142c68a315c34d69a71576461aa552729be8c7c49407ea`  
		Last Modified: Thu, 30 Jul 2026 22:56:00 GMT  
		Size: 3.5 MB (3507259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ff4546ad9aec6004e6fde5bcf1878e3c5a906ec72a8c1c57d91c45b9fa30460`  
		Last Modified: Thu, 30 Jul 2026 22:55:59 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b75006745d790c9f40a305a2e37fed0d6c810744dd5fd12cb76fc375dc4c6251`  
		Last Modified: Thu, 30 Jul 2026 22:55:59 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0508da1e42de25defe297d0be760034fcdda62174395101146f98a927e135c45`  
		Last Modified: Thu, 30 Jul 2026 22:56:00 GMT  
		Size: 12.6 MB (12636128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dcfe28622ccfc26731c082fbec36dde90c37d8a1f98e4df6612c529de27dd805`  
		Last Modified: Thu, 30 Jul 2026 22:56:00 GMT  
		Size: 486.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ca944111a9c423992b27f1db8207f8a79e9d22a444c3e778eaf19671ec4e9f92`  
		Last Modified: Thu, 30 Jul 2026 22:56:01 GMT  
		Size: 13.7 MB (13691039 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7a375471bc1e7b390a3943a03e627cae267f890552a69acaeec1f15de4dd333`  
		Last Modified: Thu, 30 Jul 2026 22:56:01 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03959fcc161a3bf6be663dd6351b2fbded83e89d56e5d0644e094f0d10f9aba8`  
		Last Modified: Thu, 30 Jul 2026 22:56:01 GMT  
		Size: 22.4 KB (22355 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7bfa49094f03d076dbf3dc6e251380279a76b013f3cbc5549edf05966e41a37`  
		Last Modified: Thu, 30 Jul 2026 22:56:02 GMT  
		Size: 22.4 KB (22366 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e9f8f54ace6a460654d51664d6f16a6a1940c281290c7b09c0176b419f7c1f06`  
		Last Modified: Thu, 30 Jul 2026 22:56:02 GMT  
		Size: 9.3 KB (9251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab6f76a51782ae3c46c8e732e70283f79f06142ec48fe6af1d6ea53c40d46289`  
		Last Modified: Wed, 19 Aug 2026 20:55:40 GMT  
		Size: 33.4 MB (33436502 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b6769e2a4c50bba100e8786f111c559695a78f442fde435de5f1f646cf99fb8`  
		Last Modified: Wed, 19 Aug 2026 20:55:40 GMT  
		Size: 7.1 MB (7086145 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c611b9966998b87d35abdf63bf6ceb1454692f373e2a815bfbbf932006060ea`  
		Last Modified: Wed, 19 Aug 2026 20:55:39 GMT  
		Size: 72.0 KB (72022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f6acfe98872f5270faa6b3eae788cfc824a5de6e8685ef9bf18e73355feb562`  
		Last Modified: Wed, 19 Aug 2026 20:55:40 GMT  
		Size: 389.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fd534449deb71cfbea39b7b4eb074eda0c4640b0609dca557136e81704b6a7a3`  
		Last Modified: Wed, 19 Aug 2026 20:55:55 GMT  
		Size: 27.6 MB (27564646 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a6656ad02b174cb4d92b3f3c67482e3ecc3679f468fb7dd7d20242e9a38b1fb`  
		Last Modified: Wed, 19 Aug 2026 20:55:55 GMT  
		Size: 3.7 KB (3653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:662830757d50723d010cedeba10bb88b8dcc16ce1a7ea3c034d295fa5c0bc882`  
		Last Modified: Wed, 19 Aug 2026 20:55:55 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.3-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:0fbcf4d9caa35d143068816acad9e2f3370d3a8c7d04e0f407cba600dc3edc38
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 KB (45678 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57f2da9a14d8439d2b88c650ab0e14d8ccfd0c02b894b70d2e58291b4cfc81f5`

```dockerfile
```

-	Layers:
	-	`sha256:3076394393f68eadad9a1d14176fc6c389273947201f0ecf00c672b89d12362e`  
		Last Modified: Wed, 19 Aug 2026 20:55:54 GMT  
		Size: 45.7 KB (45678 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.3-fpm-alpine` - linux; ppc64le

```console
$ docker pull joomla@sha256:88ead0deced3a8aad8c2a5f814025596b9fc44fa450f80ba9f66aeb7b2dd99cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.4 MB (103373362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc3b4f887669b82a9155e5c1f190bab6452718bc10224861554979cc78337aeb`
-	Entrypoint: `["\/entrypoint.sh"]`
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
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 02 Jul 2026 20:57:30 GMT
ENV PHP_VERSION=8.3.33
# Thu, 02 Jul 2026 20:57:30 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.33.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.33.tar.xz.asc
# Thu, 02 Jul 2026 20:57:30 GMT
ENV PHP_SHA256=e293ed620cec74651bb4a071317892a478aa6840fab22db45c72d77cd42f9676
# Fri, 31 Jul 2026 00:54:43 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Fri, 31 Jul 2026 00:54:43 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:59:40 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Fri, 31 Jul 2026 00:59:40 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Fri, 31 Jul 2026 00:59:41 GMT
RUN docker-php-ext-enable opcache # buildkit
# Fri, 31 Jul 2026 00:59:42 GMT
RUN docker-php-ext-enable sodium # buildkit
# Fri, 31 Jul 2026 00:59:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Fri, 31 Jul 2026 00:59:43 GMT
WORKDIR /var/www/html
# Fri, 31 Jul 2026 00:59:43 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Fri, 31 Jul 2026 00:59:43 GMT
STOPSIGNAL SIGQUIT
# Fri, 31 Jul 2026 00:59:43 GMT
EXPOSE map[9000/tcp:{}]
# Fri, 31 Jul 2026 00:59:43 GMT
CMD ["php-fpm"]
# Wed, 19 Aug 2026 21:48:00 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Wed, 19 Aug 2026 21:48:00 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Wed, 19 Aug 2026 21:48:00 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 		zstd 	; # buildkit
# Wed, 19 Aug 2026 21:51:31 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 		pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Wed, 19 Aug 2026 21:51:34 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Wed, 19 Aug 2026 21:51:34 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Wed, 19 Aug 2026 21:51:34 GMT
VOLUME [/var/www/html]
# Wed, 19 Aug 2026 21:51:34 GMT
ENV JOOMLA_VERSION=5.4.8
# Wed, 19 Aug 2026 21:51:34 GMT
ENV JOOMLA_SHA512=84fe04fe224a376209a85f36781c73db7c7787ee572b633ae1b31739af39a1e8e310f10faaac30f8bf8181536dc118182e873143346c4f47cd33b7d785c86b6e
# Wed, 19 Aug 2026 22:08:38 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/5.4.8/Joomla_5.4.8-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Wed, 19 Aug 2026 22:08:38 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 19 Aug 2026 22:08:38 GMT
COPY makedb.php /makedb.php # buildkit
# Wed, 19 Aug 2026 22:08:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Aug 2026 22:08:38 GMT
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
	-	`sha256:e5651958cf7d15def572f08bdb3ed3b50e34333a943cbc4f83808fd9ad5d6ac7`  
		Last Modified: Fri, 31 Jul 2026 00:58:31 GMT  
		Size: 12.6 MB (12636164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:58c01b4956aa88b5620bd35c809931f33601e3d6677980863c8494cc302c3b2e`  
		Last Modified: Fri, 31 Jul 2026 00:58:30 GMT  
		Size: 492.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67275686507f8d34fbbb36937859cd07c8ad42b3363ebbaaf8d7980b55650c7f`  
		Last Modified: Fri, 31 Jul 2026 00:59:57 GMT  
		Size: 14.1 MB (14120050 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a55011a46c17ed3cc451d562a3255db8520fff557a1dfcdace877bcdcc11cdb`  
		Last Modified: Fri, 31 Jul 2026 00:59:56 GMT  
		Size: 2.4 KB (2448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6a0357d5d711816396403d9f5197d7a84f2f68d41c51575f1bf10e379f1c50bb`  
		Last Modified: Fri, 31 Jul 2026 00:59:56 GMT  
		Size: 22.2 KB (22206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcadd2ffbebd0fc0165c6b39225dc48e8c96a369f924a6fab414b3f99b0be355`  
		Last Modified: Fri, 31 Jul 2026 00:59:56 GMT  
		Size: 22.2 KB (22229 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f05a303537e7458f8cb710f68711a6ec86506e2a8b44e91f553d4233d5d16851`  
		Last Modified: Fri, 31 Jul 2026 00:59:57 GMT  
		Size: 9.3 KB (9252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:acc2d23f913ece070de7e13183dbcd3ae34efc06fc5dec07d00f523ca5cbc06f`  
		Last Modified: Wed, 19 Aug 2026 21:51:52 GMT  
		Size: 34.3 MB (34254255 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98432b39fbdeb130a3f6e982b717f57e8ca54cb3f03d8740c1555bed57825563`  
		Last Modified: Wed, 19 Aug 2026 21:51:51 GMT  
		Size: 7.2 MB (7202018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66d1a3ce3925d612f2d6e54e4f8e74a9fb547d95cc3b7ba6d2d927f408f0c2f3`  
		Last Modified: Wed, 19 Aug 2026 21:51:50 GMT  
		Size: 72.1 KB (72127 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8f96cbee7e487269a8af0af5f023457e0a9245131a1dbc050263f73af5825aa4`  
		Last Modified: Wed, 19 Aug 2026 21:51:50 GMT  
		Size: 393.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e51b77b02640ef3f90120891095878d5d370f0da32ee329ad8fc8721877714ea`  
		Last Modified: Wed, 19 Aug 2026 22:08:51 GMT  
		Size: 27.6 MB (27565070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:018acbb602f33f9ea2c39f3d06bbb01f7a886f3a252124f3d2566f42673a4def`  
		Last Modified: Wed, 19 Aug 2026 22:08:50 GMT  
		Size: 3.7 KB (3655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5517df9f707f4c75e2aef2c203cd162950d066abf0faaa9eeb01cf74c91db51c`  
		Last Modified: Wed, 19 Aug 2026 22:08:50 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.3-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:9e98616272817a2244912df67049e22a2b9438f980baa6841a1513d258c93a8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 KB (45761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:220d3a0eb59949460f41be6b8b1be5e22d88636094dd038381f135adb33b1516`

```dockerfile
```

-	Layers:
	-	`sha256:c0382663c9008c3821a31374e08ac35df3412cda951edc6a4c248f2ee8750955`  
		Last Modified: Wed, 19 Aug 2026 22:08:49 GMT  
		Size: 45.8 KB (45761 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.3-fpm-alpine` - linux; riscv64

```console
$ docker pull joomla@sha256:322303bd45facbf9a118ab7bbd2f290ca4c48528be0e7d596a13468e10c7d8c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.9 MB (100880438 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b653db6ce9c182338d04fb2dadc18355257f133eee0bf6de017ae34788c31cfa`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Thu, 20 Aug 2026 08:42:08 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 20 Aug 2026 08:42:08 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 20 Aug 2026 08:42:08 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 		zstd 	; # buildkit
# Thu, 20 Aug 2026 09:07:07 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 		pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 20 Aug 2026 09:07:12 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 20 Aug 2026 09:07:12 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Thu, 20 Aug 2026 09:07:12 GMT
VOLUME [/var/www/html]
# Thu, 20 Aug 2026 09:07:12 GMT
ENV JOOMLA_VERSION=5.4.8
# Thu, 20 Aug 2026 09:07:12 GMT
ENV JOOMLA_SHA512=84fe04fe224a376209a85f36781c73db7c7787ee572b633ae1b31739af39a1e8e310f10faaac30f8bf8181536dc118182e873143346c4f47cd33b7d785c86b6e
# Thu, 20 Aug 2026 09:07:26 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/5.4.8/Joomla_5.4.8-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Thu, 20 Aug 2026 09:07:27 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 20 Aug 2026 09:07:27 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 20 Aug 2026 09:07:27 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 20 Aug 2026 09:07:27 GMT
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
	-	`sha256:0879429badf0557962111051b87de23a86aaf78c52359bacc916173bb1aa59b6`  
		Last Modified: Thu, 20 Aug 2026 09:08:37 GMT  
		Size: 32.8 MB (32816371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1724c3c641653bf94c2cdc7f476d998252b068bf62d89d3aec0178606ef54094`  
		Last Modified: Thu, 20 Aug 2026 09:08:30 GMT  
		Size: 7.1 MB (7055544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52f2d95f843c2efc00095a4aa00deefe16f0618ec7de5ea3b2b7e5b5e03aa8da`  
		Last Modified: Thu, 20 Aug 2026 09:08:28 GMT  
		Size: 72.1 KB (72086 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72f2439c197a35620d4a9651f02d0abc2de36c7399087303dcd29ec2c9ca7570`  
		Last Modified: Thu, 20 Aug 2026 09:08:28 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a30598737893be6f590bf2126d8a4e7d0e79e2d602480e022af07674a951352e`  
		Last Modified: Thu, 20 Aug 2026 09:08:37 GMT  
		Size: 27.6 MB (27565418 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95b3fabf020f90208b242b8978ddb11dd1a1391205b4676e1d0d2c045d8a09ef`  
		Last Modified: Thu, 20 Aug 2026 09:08:30 GMT  
		Size: 3.7 KB (3656 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:00a058673cc71758c3150a2da9f6eb4464b443bf08271d2faddc3320b40f3219`  
		Last Modified: Thu, 20 Aug 2026 09:08:31 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.3-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:1d4e2a5473f8dd75f1be37c465c285c0083a7a7da2b136361b7953e4d98a31d1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 KB (45761 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:91185f84df087677ffc90dbe40c010caa6a2ef71afb9e6bef330625ff6e28790`

```dockerfile
```

-	Layers:
	-	`sha256:be92853381639198fc3b25b79ad303328ebb4497a1024ea92217e7bc23696ba6`  
		Last Modified: Thu, 20 Aug 2026 09:08:27 GMT  
		Size: 45.8 KB (45761 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.3-fpm-alpine` - linux; s390x

```console
$ docker pull joomla@sha256:d796cebe2e9be9d42e6bcf0f721e4933dcb2a20ed59d8752e50229408c208a6a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.4 MB (102393816 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52cc57cf5df98a782879a1dd0884399cdfe5190b5aa9521954eaf8247598a7ac`
-	Entrypoint: `["\/entrypoint.sh"]`
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
# Wed, 19 Aug 2026 20:58:47 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Wed, 19 Aug 2026 20:58:47 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Wed, 19 Aug 2026 20:58:47 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 		zstd 	; # buildkit
# Wed, 19 Aug 2026 21:00:47 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 		pecl install APCu-5.1.27; 	pecl install memcached-3.4.0; 	pecl install redis-6.3.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Wed, 19 Aug 2026 21:00:48 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Wed, 19 Aug 2026 21:00:48 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Wed, 19 Aug 2026 21:00:48 GMT
VOLUME [/var/www/html]
# Wed, 19 Aug 2026 21:00:48 GMT
ENV JOOMLA_VERSION=5.4.8
# Wed, 19 Aug 2026 21:00:48 GMT
ENV JOOMLA_SHA512=84fe04fe224a376209a85f36781c73db7c7787ee572b633ae1b31739af39a1e8e310f10faaac30f8bf8181536dc118182e873143346c4f47cd33b7d785c86b6e
# Wed, 19 Aug 2026 21:00:49 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/5.4.8/Joomla_5.4.8-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Wed, 19 Aug 2026 21:00:49 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Wed, 19 Aug 2026 21:00:49 GMT
COPY makedb.php /makedb.php # buildkit
# Wed, 19 Aug 2026 21:00:49 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Wed, 19 Aug 2026 21:00:49 GMT
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
	-	`sha256:ce7c0ac9dd5f4f7595af69efac3b7c1b876a0c8924fbdebf441cbf55b5f819c8`  
		Last Modified: Wed, 19 Aug 2026 21:01:04 GMT  
		Size: 34.2 MB (34174531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:337e6dbe9891fcd87e92e35dbac9cefdc71fdc529f1fc96cc7efcb66def36a5d`  
		Last Modified: Wed, 19 Aug 2026 21:01:02 GMT  
		Size: 7.1 MB (7107253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:80e465347c2827ad18a97206f73b91e0704a8c3345e8dc79710a541bc3c054a7`  
		Last Modified: Wed, 19 Aug 2026 21:01:02 GMT  
		Size: 72.1 KB (72111 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e5d652766dd32869e2842f606b6c6e18defdbae67d69eceac5567ea2610ab70`  
		Last Modified: Wed, 19 Aug 2026 21:01:01 GMT  
		Size: 391.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f34172ea8ec11a12387cebbf104f2c8706e9f1a084ab01192c7777a02ff590d4`  
		Last Modified: Wed, 19 Aug 2026 21:01:03 GMT  
		Size: 27.6 MB (27564792 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c30c323f7d78a89f31fb361b1cecb57a0390910500a9d7cf5ee2ac795dfd38ce`  
		Last Modified: Wed, 19 Aug 2026 21:01:03 GMT  
		Size: 3.7 KB (3655 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2351bd656b7ebf43bb3ffb37e84a924c137ca7d669bf4ebd8fde951a83dfbb79`  
		Last Modified: Wed, 19 Aug 2026 21:01:04 GMT  
		Size: 1.1 KB (1069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.3-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:562145754b8d1ee0c9f974647febef904bea579e5bd885d9722164a4825d71d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.7 KB (45715 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7fbd26bb5b8c604510b054e295669fee39f40451ab9cbb0d342e48692982bd6d`

```dockerfile
```

-	Layers:
	-	`sha256:3e033ad8995e0b5c8bb388846bef10db879cc0aa481b9140b5912b567f54f928`  
		Last Modified: Wed, 19 Aug 2026 21:01:01 GMT  
		Size: 45.7 KB (45715 bytes)  
		MIME: application/vnd.in-toto+json
