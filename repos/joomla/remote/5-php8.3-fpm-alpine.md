## `joomla:5-php8.3-fpm-alpine`

```console
$ docker pull joomla@sha256:082630f9d92ba32e65e74714dd5616661d5730e5da2648cc0afd286725ce51ff
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
$ docker pull joomla@sha256:92058aed215f8993dd99014d4efb96a183b1b4654ec83d6c1462c717cd419472
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.8 MB (102849306 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6a059801b77cce2a19ec301876b7898775465f473cf0594d02c4f46ac7fe4032`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 14:38:18 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 19 Nov 2026 14:38:18 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 19 Nov 2026 14:38:18 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 19 Nov 2026 14:38:18 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:38:19 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:38:19 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:38:19 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:38:19 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:38:19 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 19 Nov 2026 14:38:19 GMT
ENV PHP_VERSION=8.3.37
# Thu, 19 Nov 2026 14:38:19 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.37.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.37.tar.xz.asc
# Thu, 19 Nov 2026 14:38:19 GMT
ENV PHP_SHA256=0237af84478b7a7649d3964153f1b8653d622550b846f56d63062de683fb86bb
# Thu, 19 Nov 2026 14:38:21 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 14:38:21 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:41:12 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:41:12 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:41:13 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:41:14 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:41:14 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:41:14 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:41:14 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 14:41:14 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 14:41:14 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 14:41:14 GMT
CMD ["php-fpm"]
# Thu, 19 Nov 2026 15:06:28 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 19 Nov 2026 15:06:28 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 19 Nov 2026 15:06:28 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Thu, 19 Nov 2026 15:06:28 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Thu, 19 Nov 2026 15:06:28 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick; 	apk add --no-cache --virtual .build-deps $PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 		automake 		libtool 		linux-headers 		zlib-dev 		unzip; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.27; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.4.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.3.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 19 Nov 2026 15:06:28 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	php-fpm -t # buildkit
# Thu, 19 Nov 2026 15:06:28 GMT
ENV JOOMLA_VERSION=5.4.10
# Thu, 19 Nov 2026 15:06:28 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
# Thu, 19 Nov 2026 15:06:28 GMT
ENV JOOMLA_SHA512=31a29996d6234aa8d73384abd9ad91a1b7865cef79a17e747c389164ecf5f7c47deefcb38cd18ebf57eb409d10f531152c390caf7da50e6ad403acc32c791832
# Thu, 19 Nov 2026 15:06:30 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
RUN set -eux; 	apk add --no-cache --virtual .joomla-extract-deps 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apk del --no-network .joomla-extract-deps # buildkit
# Thu, 19 Nov 2026 15:06:30 GMT
VOLUME [/var/www/html]
# Thu, 19 Nov 2026 15:06:30 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:06:30 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 19 Nov 2026 15:06:30 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 19 Nov 2026 15:06:30 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 19 Nov 2026 15:06:30 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e1a2520f86462d04fb817c2facba2e4cfaf9631b5d67ae03bb5e6c3a7a3db4b6`  
		Last Modified: Thu, 19 Nov 2026 14:41:21 GMT  
		Size: 6.0 MB (5974104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8d7389b76437f72410ff7ced8437eeb76a24fa661067f6a24fa29358d308cd8a`  
		Last Modified: Thu, 19 Nov 2026 14:41:20 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d0ac9aecf3c12cf6f1e25bd9df696cb19e00ce400e2851748fb58b0931dc637`  
		Last Modified: Thu, 19 Nov 2026 14:41:20 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42bcb60376b05329ee9d8d9ff9dbf502a0353c9e8f573242df20cf555cc01df5`  
		Last Modified: Thu, 19 Nov 2026 14:41:21 GMT  
		Size: 12.7 MB (12705037 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5df0437c91c6847601785bc290b0bf2c35b0b4d200c9be547e15a1271fe7b9e7`  
		Last Modified: Thu, 19 Nov 2026 14:41:22 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c4bff1d0b0fc5506db8e77d9539df59fd77e767a94083282c6141f7062e689a`  
		Last Modified: Thu, 19 Nov 2026 14:41:22 GMT  
		Size: 13.5 MB (13521206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:068f25af282736b6af7d24ddcb3965622735e07c3db30f3baaf5f4de06dd51a0`  
		Last Modified: Thu, 19 Nov 2026 14:41:22 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d4df9e15d4bbbdc65627c5a85a4e500771af9410744ac00ca731f5042f3cce0`  
		Last Modified: Thu, 19 Nov 2026 14:41:22 GMT  
		Size: 22.4 KB (22394 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:471eb37d2ca9df8ca8a89b5b05da0b4061228cd571a929881c6c9aa9702a3fe8`  
		Last Modified: Thu, 19 Nov 2026 14:41:23 GMT  
		Size: 22.4 KB (22402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5b6633c5890de356ea93130d0147809033aa16c0c54791774d1a6fe2567d8e4`  
		Last Modified: Thu, 19 Nov 2026 14:41:23 GMT  
		Size: 9.2 KB (9249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:35bbb7336282db534e73e6a6ac7aa3493dc7c9f489d2d69d39ec56fda9c817e1`  
		Last Modified: Thu, 19 Nov 2026 15:06:39 GMT  
		Size: 39.0 MB (38974831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:56854117245e46d55f389d61580e33c8951be64b8894d743db1483d665a78997`  
		Last Modified: Thu, 19 Nov 2026 15:06:38 GMT  
		Size: 744.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a95e47e3a6b67b41320a3ce62d059718ae1482064658ffc389ec4fce60c1344`  
		Last Modified: Thu, 19 Nov 2026 15:06:39 GMT  
		Size: 27.8 MB (27754736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97d24927a7f51304f7ff0964742134f335c92220c7d57a07917a6159ad2756a0`  
		Last Modified: Thu, 19 Nov 2026 15:06:38 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d524e90f94f4357e08899d78cd2bd53892f4db21b2e2aaf67aa0a59f7952a61`  
		Last Modified: Thu, 19 Nov 2026 15:06:39 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.3-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:a3ec1e77acc6327cc0b58870dd026c4ac390425365a10892074237ffec54db2d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 KB (46176 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:94c339685c3d06bbfc3a556d73c4b9503031f5c0221bb8c4635e95cf263f638b`

```dockerfile
```

-	Layers:
	-	`sha256:748fbf30a58bf747946a45be8fc6a1055ba623dc2fe2fbe060f7fd1a9fd01967`  
		Last Modified: Thu, 19 Nov 2026 15:06:37 GMT  
		Size: 46.2 KB (46176 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.3-fpm-alpine` - linux; arm variant v6

```console
$ docker pull joomla@sha256:e371886b3b9caac6a3c47feffd2f7a0de15ef4614891e0253debd6831a96279e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **97.4 MB (97433010 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ddb72d68bc4929c9a3252781028977ef6122831f990a82e5ef9579ea9317ad0`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 14:52:47 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 19 Nov 2026 14:52:47 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 19 Nov 2026 14:52:47 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 19 Nov 2026 14:52:47 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:52:47 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:52:47 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:52:47 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:52:47 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:52:47 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 19 Nov 2026 14:52:47 GMT
ENV PHP_VERSION=8.3.37
# Thu, 19 Nov 2026 14:52:47 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.37.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.37.tar.xz.asc
# Thu, 19 Nov 2026 14:52:47 GMT
ENV PHP_SHA256=0237af84478b7a7649d3964153f1b8653d622550b846f56d63062de683fb86bb
# Thu, 19 Nov 2026 14:52:50 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 14:52:50 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:55:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:55:41 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:55:41 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:55:42 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:55:42 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:55:42 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:55:42 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 14:55:42 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 14:55:42 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 14:55:42 GMT
CMD ["php-fpm"]
# Thu, 19 Nov 2026 15:50:40 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 19 Nov 2026 15:50:40 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 19 Nov 2026 15:50:40 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Thu, 19 Nov 2026 15:50:40 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Thu, 19 Nov 2026 15:50:40 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick; 	apk add --no-cache --virtual .build-deps $PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 		automake 		libtool 		linux-headers 		zlib-dev 		unzip; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.27; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.4.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.3.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 19 Nov 2026 15:50:41 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	php-fpm -t # buildkit
# Thu, 19 Nov 2026 15:50:41 GMT
ENV JOOMLA_VERSION=5.4.10
# Thu, 19 Nov 2026 15:50:41 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
# Thu, 19 Nov 2026 15:50:41 GMT
ENV JOOMLA_SHA512=31a29996d6234aa8d73384abd9ad91a1b7865cef79a17e747c389164ecf5f7c47deefcb38cd18ebf57eb409d10f531152c390caf7da50e6ad403acc32c791832
# Thu, 19 Nov 2026 15:50:43 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
RUN set -eux; 	apk add --no-cache --virtual .joomla-extract-deps 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apk del --no-network .joomla-extract-deps # buildkit
# Thu, 19 Nov 2026 15:50:43 GMT
VOLUME [/var/www/html]
# Thu, 19 Nov 2026 15:50:43 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:50:43 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 19 Nov 2026 15:50:43 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 19 Nov 2026 15:50:43 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 19 Nov 2026 15:50:43 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53211df930fc44fd7b3156eb9f08a9de215832056480ab78a17238d8816a1f1a`  
		Last Modified: Thu, 19 Nov 2026 14:55:47 GMT  
		Size: 5.6 MB (5566940 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:955e435758cfab96bc3b3c93a7d87b3354abe7db36dc641009620345dde2e731`  
		Last Modified: Thu, 19 Nov 2026 14:55:41 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e820cde76c0c919d60c76dbd89521577e7d37fa72e4e1ce35ea27ce05f1ed0b4`  
		Last Modified: Thu, 19 Nov 2026 14:55:41 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9ec1212808b13595e56318f798a977a6e557dc794e46dda201bb0888c4483ba`  
		Last Modified: Thu, 19 Nov 2026 14:55:48 GMT  
		Size: 12.7 MB (12705053 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7b786099eaa5a4fc2fd1f3dfe58abc43889daeb2ce0b313bf85b022da4d89cff`  
		Last Modified: Thu, 19 Nov 2026 14:55:42 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25ec5decad99ced71e09441b9b717a3da73ae5340b5d43085212cf4f2d12f068`  
		Last Modified: Thu, 19 Nov 2026 14:55:48 GMT  
		Size: 12.2 MB (12240091 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:37201c8d7377c685cc0bba2cbea6927804ec4dbc2526495564e745bc8f4db566`  
		Last Modified: Thu, 19 Nov 2026 14:55:47 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e02c09cc3d8e26e0118e34b5510712dbd3e5a7f8141ea626a90f51c12a0799fd`  
		Last Modified: Thu, 19 Nov 2026 14:55:48 GMT  
		Size: 22.2 KB (22163 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db1186fd2361223ccb75f92fbf488522c5c74a3cfeeeb7be2fd5b55805d3216c`  
		Last Modified: Thu, 19 Nov 2026 14:55:49 GMT  
		Size: 22.2 KB (22184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d00b9afb3f83d974e0e928d83f9be6e919f4f2721eb4036ca22520610299d690`  
		Last Modified: Thu, 19 Nov 2026 14:55:49 GMT  
		Size: 9.2 KB (9249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ceef6197cd3c03dacc743e79e4447cba1045d930ea6cce871a662e8c98739666`  
		Last Modified: Thu, 19 Nov 2026 15:50:52 GMT  
		Size: 35.5 MB (35543871 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a0711c4bb578a8a1b59528cf264b1ced9e040df57c1893d681459a1867abb5c3`  
		Last Modified: Thu, 19 Nov 2026 15:50:50 GMT  
		Size: 745.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2319bbf639f96b792ac635f57ef09576c977d68cec9105c3f90c292db6b083b8`  
		Last Modified: Thu, 19 Nov 2026 15:50:52 GMT  
		Size: 27.8 MB (27753384 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:082e24d7db5e25934bf184996c2f8763fdd3b522fb6dea65af989def04cb332a`  
		Last Modified: Thu, 19 Nov 2026 15:50:50 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e7c717d76c2b9979c4fcc6f1eb0cf8ade8bdfdae8c1b133913b07371afc7a6b5`  
		Last Modified: Thu, 19 Nov 2026 15:50:52 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.3-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:7b227435ab2c6188787a645e46c682a051b661a89a649431812c6101273f7476
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.3 KB (46275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:46ad39a939a5aca9fcb0b23467318c02dcae191d850ae216ea5bd61ff8ce15e8`

```dockerfile
```

-	Layers:
	-	`sha256:8ff6dc76159f94acf8906af80154f1627d60dfc0c44a4e53ef925d7d9c79085b`  
		Last Modified: Thu, 19 Nov 2026 15:50:50 GMT  
		Size: 46.3 KB (46275 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.3-fpm-alpine` - linux; arm variant v7

```console
$ docker pull joomla@sha256:182876fb35aef5863b4ff2cc931322fa27aec2f07a94ea700c1e88f440336603
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.4 MB (94394217 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:352f047b520a96d6156721d4f602df5125e4c1400d2b04b03134c83b07e35c4b`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 14:42:42 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 19 Nov 2026 14:42:42 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 19 Nov 2026 14:42:42 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 19 Nov 2026 14:42:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:42:42 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:42:42 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:42:42 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:42:42 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:42:42 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 19 Nov 2026 14:42:42 GMT
ENV PHP_VERSION=8.3.37
# Thu, 19 Nov 2026 14:42:42 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.37.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.37.tar.xz.asc
# Thu, 19 Nov 2026 14:42:42 GMT
ENV PHP_SHA256=0237af84478b7a7649d3964153f1b8653d622550b846f56d63062de683fb86bb
# Thu, 19 Nov 2026 14:42:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 14:42:45 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:45:29 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:45:29 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:45:30 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:45:30 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:45:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:45:30 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:45:30 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 14:45:30 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 14:45:30 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 14:45:30 GMT
CMD ["php-fpm"]
# Thu, 19 Nov 2026 15:08:31 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 19 Nov 2026 15:08:31 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 19 Nov 2026 15:08:31 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Thu, 19 Nov 2026 15:08:31 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Thu, 19 Nov 2026 15:08:31 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick; 	apk add --no-cache --virtual .build-deps $PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 		automake 		libtool 		linux-headers 		zlib-dev 		unzip; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.27; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.4.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.3.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 19 Nov 2026 15:08:32 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	php-fpm -t # buildkit
# Thu, 19 Nov 2026 15:08:32 GMT
ENV JOOMLA_VERSION=5.4.10
# Thu, 19 Nov 2026 15:08:32 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
# Thu, 19 Nov 2026 15:08:32 GMT
ENV JOOMLA_SHA512=31a29996d6234aa8d73384abd9ad91a1b7865cef79a17e747c389164ecf5f7c47deefcb38cd18ebf57eb409d10f531152c390caf7da50e6ad403acc32c791832
# Thu, 19 Nov 2026 15:08:52 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
RUN set -eux; 	apk add --no-cache --virtual .joomla-extract-deps 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apk del --no-network .joomla-extract-deps # buildkit
# Thu, 19 Nov 2026 15:08:52 GMT
VOLUME [/var/www/html]
# Thu, 19 Nov 2026 15:08:52 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:08:53 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 19 Nov 2026 15:08:53 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 19 Nov 2026 15:08:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 19 Nov 2026 15:08:53 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4c8e860d92d3c39d318203ab6ce936ee07b7fc9ff25f929da5d8a08ab8fc8ea`  
		Last Modified: Thu, 19 Nov 2026 14:45:37 GMT  
		Size: 5.2 MB (5211702 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2123876f5707ee58ee24719bd41e6fcf08ced2b666dc680aaae5297d9e1cfef9`  
		Last Modified: Thu, 19 Nov 2026 14:45:36 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a6b409e771662affe0500e936126690d420d191b2982be7d9320cc0720b18bae`  
		Last Modified: Thu, 19 Nov 2026 14:45:37 GMT  
		Size: 222.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c93d52c50a84778cbb3f2179e34cc125859e4c6360099def8f002b5fdfb0d987`  
		Last Modified: Thu, 19 Nov 2026 14:45:37 GMT  
		Size: 12.7 MB (12705054 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8595d68d0dbaef7b1153b881ce39648e8467546229db6f371b346cc93d2c842c`  
		Last Modified: Thu, 19 Nov 2026 14:45:38 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18ebd1b1f02cf8f59024eaf501cc4856086105e980787ca8ff864f9448914223`  
		Last Modified: Thu, 19 Nov 2026 14:45:38 GMT  
		Size: 11.5 MB (11527800 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f630e4911b77a4b8850fec9434e51a384d61892f899b6ba60944d7e8e850d018`  
		Last Modified: Thu, 19 Nov 2026 14:45:38 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3bdf26f4767f14a033067b566f895cdbf38e5a15c72ac35ae722d99b1f4156a1`  
		Last Modified: Thu, 19 Nov 2026 14:45:38 GMT  
		Size: 22.2 KB (22177 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:53a2c470195f224201fb8a6e82ac896fa7e56de93b6f00bef16e9f8bea6da3ed`  
		Last Modified: Thu, 19 Nov 2026 14:45:39 GMT  
		Size: 22.2 KB (22190 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19f20d27afa39f6d6df5a50d40f1fa93292fe4ab4182247ac7259621fc06c7e9`  
		Last Modified: Thu, 19 Nov 2026 14:45:39 GMT  
		Size: 9.2 KB (9249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8c8b54b86d6bc6f0762fac3cd07a7134e89f34503c55b9f299c2170d9213019e`  
		Last Modified: Thu, 19 Nov 2026 15:08:43 GMT  
		Size: 33.9 MB (33861894 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a4123206b4193640cd98e6e1e58b6a3c5da3451962755a2cbc9ad0c142e63fb`  
		Last Modified: Thu, 19 Nov 2026 15:08:41 GMT  
		Size: 745.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7401aaa8fa7e3a51da1bb77c4023be76fa0376d75b5e350c0977889bdb85cf8e`  
		Last Modified: Thu, 19 Nov 2026 15:09:00 GMT  
		Size: 27.8 MB (27754736 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb3460ffc4e52c9f55a4636a7bae62a00472ecc5718bffc7eaa75289fc2a4db7`  
		Last Modified: Thu, 19 Nov 2026 15:08:59 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f4fb7b11e4bd0237026de98b35a3b0f54400362cb36c19fd988d7ff46fee3b2`  
		Last Modified: Thu, 19 Nov 2026 15:09:00 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.3-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:ffde914c18d17e609c5a06c215eb0e30bd20e431003a1331f67ed2881056f4a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.3 KB (46274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a1251edf737b090d45e30da36e61b08e05c1c7eb1e0b2791f3cfb0824e0d7839`

```dockerfile
```

-	Layers:
	-	`sha256:7f9d3d91807a780cbbb475b50e5ccb6ac701ac63bb383c937be9df921703bc71`  
		Last Modified: Thu, 19 Nov 2026 15:08:59 GMT  
		Size: 46.3 KB (46274 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.3-fpm-alpine` - linux; arm64 variant v8

```console
$ docker pull joomla@sha256:368ab2decde59ef505f296b6ae3da32c29dad82f8969aff1675a1b8c9d5966a1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.9 MB (102923912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9025d35e9a46458d4ad859e36d601248b673c50e8d64b9fbaff9e446abd1daca`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 14:39:31 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 19 Nov 2026 14:39:31 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 19 Nov 2026 14:39:32 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 19 Nov 2026 14:39:32 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:39:32 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:39:32 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:39:32 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:39:32 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:39:32 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 19 Nov 2026 14:39:32 GMT
ENV PHP_VERSION=8.3.37
# Thu, 19 Nov 2026 14:39:32 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.37.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.37.tar.xz.asc
# Thu, 19 Nov 2026 14:39:32 GMT
ENV PHP_SHA256=0237af84478b7a7649d3964153f1b8653d622550b846f56d63062de683fb86bb
# Thu, 19 Nov 2026 14:39:41 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 14:39:41 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:52:57 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:52:57 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:52:57 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:52:58 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:52:58 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:52:58 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:52:58 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 14:52:58 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 14:52:58 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 14:52:58 GMT
CMD ["php-fpm"]
# Thu, 19 Nov 2026 15:24:57 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 19 Nov 2026 15:24:57 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 19 Nov 2026 15:24:57 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Thu, 19 Nov 2026 15:24:57 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Thu, 19 Nov 2026 15:24:57 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick; 	apk add --no-cache --virtual .build-deps $PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 		automake 		libtool 		linux-headers 		zlib-dev 		unzip; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.27; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.4.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.3.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 19 Nov 2026 15:24:58 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	php-fpm -t # buildkit
# Thu, 19 Nov 2026 15:24:58 GMT
ENV JOOMLA_VERSION=5.4.10
# Thu, 19 Nov 2026 15:24:58 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
# Thu, 19 Nov 2026 15:24:58 GMT
ENV JOOMLA_SHA512=31a29996d6234aa8d73384abd9ad91a1b7865cef79a17e747c389164ecf5f7c47deefcb38cd18ebf57eb409d10f531152c390caf7da50e6ad403acc32c791832
# Thu, 19 Nov 2026 15:25:00 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
RUN set -eux; 	apk add --no-cache --virtual .joomla-extract-deps 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apk del --no-network .joomla-extract-deps # buildkit
# Thu, 19 Nov 2026 15:25:00 GMT
VOLUME [/var/www/html]
# Thu, 19 Nov 2026 15:25:00 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:25:00 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 19 Nov 2026 15:25:00 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 19 Nov 2026 15:25:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 19 Nov 2026 15:25:00 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7b3dddc448b3522566a6bf89d2dee78a5fde822ec7550cafb1c1eca7008f862`  
		Last Modified: Thu, 19 Nov 2026 14:44:20 GMT  
		Size: 6.3 MB (6288531 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdd2fd1249768c3315c69c01678d7fbe057a5749f3b36b3012838e0d2ff22222`  
		Last Modified: Thu, 19 Nov 2026 14:44:20 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75cf329e2c6d0a54d180a5cf570e341138bec0c2d83bdeff595b0ad765bc59f7`  
		Last Modified: Thu, 19 Nov 2026 14:44:20 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f5f255ef35a828576d060cabf589b642f04b13c9046ab773c65d8cb6c2bf1216`  
		Last Modified: Thu, 19 Nov 2026 14:44:20 GMT  
		Size: 12.7 MB (12705027 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd5076e5d0a2b3e0dcfca20ef5104a31f43bcb3d97d9b2585cb48528a4cb0ee8`  
		Last Modified: Thu, 19 Nov 2026 14:44:21 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b83eb06407a672ecb17e3df6aa9a156bc9daf38adb1927f44b42f6d71d45b521`  
		Last Modified: Thu, 19 Nov 2026 14:53:05 GMT  
		Size: 13.4 MB (13424751 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:756ab3006683c67df0ed453ee936f46db03e6c162cc52c6e1de65bed858496cc`  
		Last Modified: Thu, 19 Nov 2026 14:53:04 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:124319c5d170fe5fa2b7ac99ef75c5ff9bf7ebd38e4a1551a60b2d1e256be115`  
		Last Modified: Thu, 19 Nov 2026 14:53:04 GMT  
		Size: 22.2 KB (22208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c2eceecbc621f1b6fcd67c6057b7c3b6784576ab8c69828bcd8c8e58162d059`  
		Last Modified: Thu, 19 Nov 2026 14:53:04 GMT  
		Size: 22.2 KB (22222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:158285afef1ae3d5819cf8cf78e554f1561325c0c1636e93d33c85d0dbfa3e9b`  
		Last Modified: Thu, 19 Nov 2026 14:53:06 GMT  
		Size: 9.2 KB (9249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:617da856bab18e036c9959dad509765dfeea4d52ac9266bae268d39fcd09549f`  
		Last Modified: Thu, 19 Nov 2026 15:25:09 GMT  
		Size: 38.5 MB (38495001 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae85bc9f948e01a496646c1ecff44dc3a8067e23f8568e327d53427044b4c24a`  
		Last Modified: Thu, 19 Nov 2026 15:25:07 GMT  
		Size: 745.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:019c0c576646f9096a0f9ae46971313c42b6ef3325318c624b924945fa372606`  
		Last Modified: Thu, 19 Nov 2026 15:25:09 GMT  
		Size: 27.8 MB (27754644 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b96ab0a1c3a20d3b8ecf2d3d6d20719f6d9ea8e13bdcc60180b1d3557c129634`  
		Last Modified: Thu, 19 Nov 2026 15:25:07 GMT  
		Size: 5.5 KB (5517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4d421c35ec34ca9a13d6ead38bbc82a434b1a487c4bd6aa4ac82da9d189d03d8`  
		Last Modified: Thu, 19 Nov 2026 15:25:08 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.3-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:d2cef64eaefffd3636a976146772fe47602dc814cc19d8c76afe9e59ae5bea15
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.3 KB (46299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:30e5a65ce2985f4a9a0fa882c991cfa3b93c9a3daf12f9afd0bd20185033fd58`

```dockerfile
```

-	Layers:
	-	`sha256:1351132663403dbaa623bac3f735fc3c78c5843c4bc74632da6a1a9f3ce60d23`  
		Last Modified: Thu, 19 Nov 2026 15:25:07 GMT  
		Size: 46.3 KB (46299 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.3-fpm-alpine` - linux; 386

```console
$ docker pull joomla@sha256:15d94c46e5bc53ff3a97641b90b5007be8d7511cf088f97c74423075c4018309
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **103.3 MB (103330891 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aed16c6d4550656702d66556618271412978f1d9b8ceee6de5f901b0da75fda7`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Thu, 19 Nov 2026 14:25:16 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 19 Nov 2026 14:25:16 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 19 Nov 2026 14:25:16 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 19 Nov 2026 14:25:16 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 19 Nov 2026 14:25:16 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 19 Nov 2026 14:25:16 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:25:16 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 19 Nov 2026 14:25:16 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 19 Nov 2026 14:25:16 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 19 Nov 2026 14:25:16 GMT
ENV PHP_VERSION=8.3.37
# Thu, 19 Nov 2026 14:25:16 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.37.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.37.tar.xz.asc
# Thu, 19 Nov 2026 14:25:16 GMT
ENV PHP_SHA256=0237af84478b7a7649d3964153f1b8653d622550b846f56d63062de683fb86bb
# Thu, 19 Nov 2026 14:36:45 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 14:36:45 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:39:40 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:39:40 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:39:41 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:39:41 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:39:41 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:39:41 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:39:41 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 14:39:41 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 14:39:41 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 14:39:41 GMT
CMD ["php-fpm"]
# Thu, 19 Nov 2026 15:06:31 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 19 Nov 2026 15:06:31 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 19 Nov 2026 15:06:31 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Thu, 19 Nov 2026 15:06:31 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Thu, 19 Nov 2026 15:06:31 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick; 	apk add --no-cache --virtual .build-deps $PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 		automake 		libtool 		linux-headers 		zlib-dev 		unzip; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.27; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.4.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.3.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 19 Nov 2026 15:06:32 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	php-fpm -t # buildkit
# Thu, 19 Nov 2026 15:06:32 GMT
ENV JOOMLA_VERSION=5.4.10
# Thu, 19 Nov 2026 15:06:32 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
# Thu, 19 Nov 2026 15:06:32 GMT
ENV JOOMLA_SHA512=31a29996d6234aa8d73384abd9ad91a1b7865cef79a17e747c389164ecf5f7c47deefcb38cd18ebf57eb409d10f531152c390caf7da50e6ad403acc32c791832
# Thu, 19 Nov 2026 15:06:34 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
RUN set -eux; 	apk add --no-cache --virtual .joomla-extract-deps 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apk del --no-network .joomla-extract-deps # buildkit
# Thu, 19 Nov 2026 15:06:34 GMT
VOLUME [/var/www/html]
# Thu, 19 Nov 2026 15:06:34 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:06:34 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 19 Nov 2026 15:06:34 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 19 Nov 2026 15:06:34 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 19 Nov 2026 15:06:34 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:01a0de7615a357bc22b2dd89cd050436147362f38c9881bd2e9592cfc81cebc9`  
		Last Modified: Thu, 19 Nov 2026 14:28:54 GMT  
		Size: 5.8 MB (5820628 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6799a893f66d2ba92572d807c06fe17b9f84adc10cc6b5605fae1b8e9d26b8b6`  
		Last Modified: Thu, 19 Nov 2026 14:28:54 GMT  
		Size: 930.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:304b2ad0af0e85cf516872a7148e464dedad45d4595b0755c1f4c9cf87043746`  
		Last Modified: Thu, 19 Nov 2026 14:28:54 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd3a949b03cb15dfb3135483a97ae4af8783857ea0f7c3584272c2df13240f68`  
		Last Modified: Thu, 19 Nov 2026 14:39:48 GMT  
		Size: 12.7 MB (12705022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95a67340cb03f03d7f1c30d5c99d5e5864320462b878922caee424dd083d9c15`  
		Last Modified: Thu, 19 Nov 2026 14:39:48 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0ebb28cda987dea4164278fa87f471157a895d87121877df2f101878baacedd`  
		Last Modified: Thu, 19 Nov 2026 14:39:48 GMT  
		Size: 13.8 MB (13810320 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f52b2b778191bbf135fa591bc0e349b1b876d3a184a3042fdd1b86212f33f02f`  
		Last Modified: Thu, 19 Nov 2026 14:39:48 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:790ac2ebed7f6d59d75d89ce69aa0d40b6edbee396492edaf2435e5d6c92e8f8`  
		Last Modified: Thu, 19 Nov 2026 14:39:49 GMT  
		Size: 22.4 KB (22387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55a764d9fbc20086dfc0269e4c94f1667a4cc5e37507f2b37a861cbf548f9a9a`  
		Last Modified: Thu, 19 Nov 2026 14:39:49 GMT  
		Size: 22.4 KB (22393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6316720f63806e111266c66abf9c1452493b9491979ec53dbaf6cb2f68840251`  
		Last Modified: Thu, 19 Nov 2026 14:39:49 GMT  
		Size: 9.2 KB (9249 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67f3ed82c1d6f96f2dc24eae499d5d590acb1762ea858362fe5e652a9bc5d292`  
		Last Modified: Thu, 19 Nov 2026 15:06:43 GMT  
		Size: 39.5 MB (39494268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b24094de4e0e9818a8ed9eb9302d6e5d88c33cd04170e2b1a9dd1a5b8074c3c6`  
		Last Modified: Thu, 19 Nov 2026 15:06:42 GMT  
		Size: 745.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5fc966625ea98f712fb861ae467b7c194a37b4eb967e6e823bc2c5e3643c5be8`  
		Last Modified: Thu, 19 Nov 2026 15:06:43 GMT  
		Size: 27.8 MB (27754584 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:73e7a50666e4dfbc21b8458f9b87d6b7eb7d4e34e3ba78b6bd867e3e21d50676`  
		Last Modified: Thu, 19 Nov 2026 15:06:42 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3860c02cd797adcc2156a693da16f3357d122e5f152f55eecf04e2ea59e7b4c2`  
		Last Modified: Thu, 19 Nov 2026 15:06:43 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.3-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:776e804a273539b671097b36166634d9f362206b13d9a1d0f57eada7ef9c64ca
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 KB (46145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb93b79a082c1623de471b411cbc66858528e806252021049377ddf3e8730f54`

```dockerfile
```

-	Layers:
	-	`sha256:71b799cc8e814035ea462ac7d85416eb35fa01e8a65cf519e18ba3bf1e1a8ba2`  
		Last Modified: Thu, 19 Nov 2026 15:06:41 GMT  
		Size: 46.1 KB (46145 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.3-fpm-alpine` - linux; ppc64le

```console
$ docker pull joomla@sha256:92eb505276d781e074b5d3e69e73605a14bbd73458ad28c518aa74e1b860e757
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **105.3 MB (105348494 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2df91655431c4187605cf51a71018526249b5c1574359c53ff1e1e1d64079ea0`
-	Entrypoint: `["\/entrypoint.sh"]`
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
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 05 Nov 2026 21:37:46 GMT
ENV PHP_VERSION=8.3.37
# Thu, 05 Nov 2026 21:37:46 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.37.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.37.tar.xz.asc
# Thu, 05 Nov 2026 21:37:46 GMT
ENV PHP_SHA256=0237af84478b7a7649d3964153f1b8653d622550b846f56d63062de683fb86bb
# Thu, 19 Nov 2026 16:06:32 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 16:06:33 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 16:13:49 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 16:13:50 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 16:13:51 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 16:13:53 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 16:13:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 16:13:53 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 16:13:54 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 16:13:54 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 16:13:54 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 16:13:54 GMT
CMD ["php-fpm"]
# Thu, 19 Nov 2026 19:10:48 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 19 Nov 2026 19:10:48 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 19 Nov 2026 19:10:48 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Thu, 19 Nov 2026 19:10:48 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Thu, 19 Nov 2026 19:10:48 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick; 	apk add --no-cache --virtual .build-deps $PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 		automake 		libtool 		linux-headers 		zlib-dev 		unzip; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.27; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.4.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.3.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 19 Nov 2026 19:10:50 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	php-fpm -t # buildkit
# Thu, 19 Nov 2026 19:10:50 GMT
ENV JOOMLA_VERSION=5.4.10
# Thu, 19 Nov 2026 19:10:50 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
# Thu, 19 Nov 2026 19:10:50 GMT
ENV JOOMLA_SHA512=31a29996d6234aa8d73384abd9ad91a1b7865cef79a17e747c389164ecf5f7c47deefcb38cd18ebf57eb409d10f531152c390caf7da50e6ad403acc32c791832
# Thu, 19 Nov 2026 19:10:54 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
RUN set -eux; 	apk add --no-cache --virtual .joomla-extract-deps 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apk del --no-network .joomla-extract-deps # buildkit
# Thu, 19 Nov 2026 19:10:54 GMT
VOLUME [/var/www/html]
# Thu, 19 Nov 2026 19:10:55 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 19:10:56 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 19 Nov 2026 19:10:56 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 19 Nov 2026 19:10:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 19 Nov 2026 19:10:56 GMT
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
	-	`sha256:f42f3543716b00211ea71a6f5f56ab40c718780cd37721251abe81662dc9cab5`  
		Last Modified: Thu, 19 Nov 2026 16:11:11 GMT  
		Size: 12.7 MB (12705024 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbc2e5443b93494ee746e4acbf85192b5a10c658e19cf59f2650459ab71f76e3`  
		Last Modified: Thu, 19 Nov 2026 16:11:10 GMT  
		Size: 493.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f28125198687a7c7802ed0c96a99881723eef53485a76c4291e1aca3b6ff3a15`  
		Last Modified: Thu, 19 Nov 2026 16:14:08 GMT  
		Size: 16.9 MB (16908795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5d3908b00722defcec4caf639b367d12b5e236954aa416bdbb57b8255f64456`  
		Last Modified: Thu, 19 Nov 2026 16:14:08 GMT  
		Size: 2.5 KB (2453 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad0a6a1a118a66ccef7eb28938a896405141b55dd233149499b782df6ade20ce`  
		Last Modified: Thu, 19 Nov 2026 16:14:08 GMT  
		Size: 22.3 KB (22257 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fca372af8b9c4323f56dffd472679b8c7dcda3905ff7e73518a677e1814e2615`  
		Last Modified: Thu, 19 Nov 2026 16:14:08 GMT  
		Size: 22.3 KB (22264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:592beeb7c02028b6178b811deebdf594e314a3976c5495a27a979dc92fc90e9d`  
		Last Modified: Thu, 19 Nov 2026 16:14:09 GMT  
		Size: 9.3 KB (9252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91680e31ffabc3d25deb13cde3f63a46c853b578c0f9546507197be849a95c0e`  
		Last Modified: Thu, 19 Nov 2026 19:11:14 GMT  
		Size: 40.4 MB (40419290 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:356afb7be2bd001b4a127798caf7658d570b6bc368945e11952df9f8eb042d64`  
		Last Modified: Thu, 19 Nov 2026 19:11:13 GMT  
		Size: 750.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:def016ea4619f1ed8657e1c2e72f27f776eab027005401177eef40f2c126e865`  
		Last Modified: Thu, 19 Nov 2026 19:11:14 GMT  
		Size: 27.8 MB (27755288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9b98c7c6820cc599424e2b7c5dbb9b6130673e28833428d98b026b9144c15b9`  
		Last Modified: Thu, 19 Nov 2026 19:11:13 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:462d616a95170ee941594e1bb7d0e14bd71b4467655d34cf0a07b6b506a3508e`  
		Last Modified: Thu, 19 Nov 2026 19:11:14 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.3-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:eaea5525b9ccd241f356433b35a991e15477cbf7719b74328de5cdabe01970ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 KB (46219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3c2f981b9f47f8825f655f23c8551be47bfd98c1d69000053757009c2d9eb062`

```dockerfile
```

-	Layers:
	-	`sha256:3e71940e3c747d581806bd3371902bbf305bf92c43dd369cd0bb7f8e66c8a861`  
		Last Modified: Thu, 19 Nov 2026 19:11:12 GMT  
		Size: 46.2 KB (46219 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.3-fpm-alpine` - linux; riscv64

```console
$ docker pull joomla@sha256:f37325ed99567fc92859e0eb562f546e3db5b2b762472941dd37c3f21be3a2f6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **102.5 MB (102532948 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2068167f349924543394b70ba059e1cda09545c8d6de981a977edcdea02b1212`
-	Entrypoint: `["\/entrypoint.sh"]`
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
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Tue, 10 Nov 2026 01:56:57 GMT
ENV PHP_VERSION=8.3.37
# Tue, 10 Nov 2026 01:56:57 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.37.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.37.tar.xz.asc
# Tue, 10 Nov 2026 01:56:57 GMT
ENV PHP_SHA256=0237af84478b7a7649d3964153f1b8653d622550b846f56d63062de683fb86bb
# Sat, 21 Nov 2026 00:09:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Sat, 21 Nov 2026 00:09:02 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sat, 21 Nov 2026 02:02:43 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sat, 21 Nov 2026 02:02:43 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sat, 21 Nov 2026 02:02:48 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sat, 21 Nov 2026 02:02:53 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sat, 21 Nov 2026 02:02:53 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sat, 21 Nov 2026 02:02:53 GMT
WORKDIR /var/www/html
# Sat, 21 Nov 2026 02:02:53 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Sat, 21 Nov 2026 02:02:53 GMT
STOPSIGNAL SIGQUIT
# Sat, 21 Nov 2026 02:02:53 GMT
EXPOSE map[9000/tcp:{}]
# Sat, 21 Nov 2026 02:02:53 GMT
CMD ["php-fpm"]
# Tue, 24 Nov 2026 10:34:14 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Tue, 24 Nov 2026 10:34:14 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Tue, 24 Nov 2026 10:34:14 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Tue, 24 Nov 2026 10:34:14 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Tue, 24 Nov 2026 10:34:14 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick; 	apk add --no-cache --virtual .build-deps $PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 		automake 		libtool 		linux-headers 		zlib-dev 		unzip; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.27; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.4.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.3.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Tue, 24 Nov 2026 10:34:23 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	php-fpm -t # buildkit
# Tue, 24 Nov 2026 10:34:23 GMT
ENV JOOMLA_VERSION=5.4.10
# Tue, 24 Nov 2026 10:34:23 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
# Tue, 24 Nov 2026 10:34:23 GMT
ENV JOOMLA_SHA512=31a29996d6234aa8d73384abd9ad91a1b7865cef79a17e747c389164ecf5f7c47deefcb38cd18ebf57eb409d10f531152c390caf7da50e6ad403acc32c791832
# Tue, 24 Nov 2026 11:43:52 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
RUN set -eux; 	apk add --no-cache --virtual .joomla-extract-deps 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apk del --no-network .joomla-extract-deps # buildkit
# Tue, 24 Nov 2026 11:43:52 GMT
VOLUME [/var/www/html]
# Tue, 24 Nov 2026 11:43:53 GMT
WORKDIR /var/www/html
# Tue, 24 Nov 2026 11:43:53 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Tue, 24 Nov 2026 11:43:53 GMT
COPY makedb.php /makedb.php # buildkit
# Tue, 24 Nov 2026 11:43:53 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Tue, 24 Nov 2026 11:43:53 GMT
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
	-	`sha256:74223c06dc25aa7f83bdfb4180bb92b2e66669c55dd009dd275a64ad65d0f969`  
		Last Modified: Sat, 21 Nov 2026 01:06:04 GMT  
		Size: 12.7 MB (12705041 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51dfe18cbf497cba07b1bc0cc1058ec6895be78520b07e28201d5383359e412a`  
		Last Modified: Sat, 21 Nov 2026 01:06:00 GMT  
		Size: 496.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf1ca2b3209cdc717f0cec2cf1c96ad11027326becdb6603b19061c0891aa330`  
		Last Modified: Sat, 21 Nov 2026 02:03:48 GMT  
		Size: 15.5 MB (15536772 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:529b78f27e38f82ac87c1212eff6dfff6201bbc1826b289ac1bf05e20989e70a`  
		Last Modified: Sat, 21 Nov 2026 02:03:45 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4986900f24c9793aa947141da5a5d546b6c4baf70faa5278da2ca221ecf86707`  
		Last Modified: Sat, 21 Nov 2026 02:03:45 GMT  
		Size: 22.2 KB (22236 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8848ef3d4e28ff9297938a2deb8bfe810ce6d476fa874bf61bb72e1b8f77d41e`  
		Last Modified: Sat, 21 Nov 2026 02:03:45 GMT  
		Size: 22.3 KB (22261 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0507aaab2accf04a7cd7eb5d1d60459c3c64af19a1c58b2165d26befdcf1b2da`  
		Last Modified: Sat, 21 Nov 2026 02:03:47 GMT  
		Size: 9.3 KB (9254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8b0833a5cebbf1ed5ce2f1b31030c2e09467ecf2e2dc69dfae04021b0d34c43`  
		Last Modified: Tue, 24 Nov 2026 10:35:58 GMT  
		Size: 39.2 MB (39248795 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:27bd439a078c0844a41e3c80345cc9f3a648f0e3653a3abc129d5084909bc460`  
		Last Modified: Tue, 24 Nov 2026 10:35:48 GMT  
		Size: 750.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a7a3a49456bd92f7da4e444265df874ab1e06efc5a3265016949c5fcc186adc`  
		Last Modified: Tue, 24 Nov 2026 11:44:59 GMT  
		Size: 27.8 MB (27756192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab97663354c17c6bd4bda22423ea1471464ecc2c81105a73da8ea573ddbebebf`  
		Last Modified: Tue, 24 Nov 2026 11:44:54 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3be3928277b54ef69fd58d500caaa11b018e04d6ca77170382830cccf1a4eda5`  
		Last Modified: Tue, 24 Nov 2026 11:44:54 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.3-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:d56f07b56f5335f230362443b1f5568c04714aedc86068f5492dac8ffcab7eda
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 KB (46219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:14f7a9db016752dbb3bbff4feac890a7e90e7df25993eae4fcf757203a82ac5f`

```dockerfile
```

-	Layers:
	-	`sha256:99435de3bbcabf7a4bb27b476f62f3a8666fc73b08e3a3b1dc33581ac6036b0b`  
		Last Modified: Tue, 24 Nov 2026 11:44:54 GMT  
		Size: 46.2 KB (46219 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.3-fpm-alpine` - linux; s390x

```console
$ docker pull joomla@sha256:15f31491302fc5cb3911819aaa46e25a3b848375451833174477fd39f5fb3cf7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.3 MB (104293211 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:839cd167d33ed528e5ccccdacf8e0929f2ce05c61c81bc4bb1e1d897119ad33a`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 17:59:34 GMT
ADD alpine-minirootfs-3.24.4-s390x.tar.gz / # buildkit
# Thu, 05 Nov 2026 17:59:34 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:18:58 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:18:58 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:18:58 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:18:58 GMT
ENV GPG_KEYS=1198C0117593497A5EC5C199286AF1F9897469DC C28D937575603EB4ABB725861C0779DC5C0A9DE4 AFD8691FDAEDF03BDF6E460563F15A9B715376CA
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHP_VERSION=8.3.37
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.3.37.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.3.37.tar.xz.asc
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHP_SHA256=0237af84478b7a7649d3964153f1b8653d622550b846f56d63062de683fb86bb
# Thu, 19 Nov 2026 14:51:53 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 19 Nov 2026 14:51:53 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:55:15 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 						--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 19 Nov 2026 14:55:15 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 19 Nov 2026 14:55:16 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 19 Nov 2026 14:55:16 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 19 Nov 2026 14:55:16 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 19 Nov 2026 14:55:16 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 14:55:17 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 19 Nov 2026 14:55:17 GMT
STOPSIGNAL SIGQUIT
# Thu, 19 Nov 2026 14:55:17 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 19 Nov 2026 14:55:17 GMT
CMD ["php-fpm"]
# Thu, 19 Nov 2026 15:34:32 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 19 Nov 2026 15:34:32 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 19 Nov 2026 15:34:32 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Thu, 19 Nov 2026 15:34:32 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Thu, 19 Nov 2026 15:34:32 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick; 	apk add --no-cache --virtual .build-deps $PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 		automake 		libtool 		linux-headers 		zlib-dev 		unzip; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.27; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.4.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.3.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Thu, 19 Nov 2026 15:34:32 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	php-fpm -t # buildkit
# Thu, 19 Nov 2026 15:34:32 GMT
ENV JOOMLA_VERSION=5.4.10
# Thu, 19 Nov 2026 15:34:32 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
# Thu, 19 Nov 2026 15:34:32 GMT
ENV JOOMLA_SHA512=31a29996d6234aa8d73384abd9ad91a1b7865cef79a17e747c389164ecf5f7c47deefcb38cd18ebf57eb409d10f531152c390caf7da50e6ad403acc32c791832
# Thu, 19 Nov 2026 15:38:37 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
RUN set -eux; 	apk add --no-cache --virtual .joomla-extract-deps 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apk del --no-network .joomla-extract-deps # buildkit
# Thu, 19 Nov 2026 15:38:37 GMT
VOLUME [/var/www/html]
# Thu, 19 Nov 2026 15:38:37 GMT
WORKDIR /var/www/html
# Thu, 19 Nov 2026 15:38:38 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 19 Nov 2026 15:38:38 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 19 Nov 2026 15:38:38 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 19 Nov 2026 15:38:38 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:f6c87f14eed8192c7e7f03f26f84cfe5203d90e32c61d885929f4567d4731497`  
		Last Modified: Thu, 05 Nov 2026 17:59:43 GMT  
		Size: 3.7 MB (3720670 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9722c0427342697b5cdc3ada96c16379515126b96d9784dc533dd21780acaa3d`  
		Last Modified: Thu, 05 Nov 2026 18:24:02 GMT  
		Size: 3.7 MB (3690989 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c6cce96afb7d29f5567987a267924cefd3043f5bf382a8f086e4ca582accbaf8`  
		Last Modified: Thu, 05 Nov 2026 18:24:02 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8531dc7abbb6c03e22a51e331a5b8ec6512eb261a07cb4b271b34d6fdd2c2253`  
		Last Modified: Thu, 05 Nov 2026 18:24:02 GMT  
		Size: 218.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51d1fdd10739b24284074795c9c63e84d2ab769aaa50fa803d6ba1928d8052a8`  
		Last Modified: Thu, 19 Nov 2026 14:55:27 GMT  
		Size: 12.7 MB (12705014 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97546aa889168b336f61488a9c29856758987f117edc6e272ff06618adfde9e9`  
		Last Modified: Thu, 19 Nov 2026 14:55:27 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3984d8b552f1f45556cebfcc5375b756cdb60c79fe844a3154e6e41ceaefbe89`  
		Last Modified: Thu, 19 Nov 2026 14:55:27 GMT  
		Size: 16.1 MB (16142185 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59b64883acbc0e46aec9d8ac042b8ebe199782be907b272d74091c1b884db04b`  
		Last Modified: Thu, 19 Nov 2026 14:55:27 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:535e047d1ff1c412605f925ec9bd785c597db8fbd61a94b79f8f0ac9ceafc087`  
		Last Modified: Thu, 19 Nov 2026 14:55:28 GMT  
		Size: 22.2 KB (22191 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:479ad379617ff96e6b24ee63dd69626b2d483268a5fd7b833dbcab93f9468568`  
		Last Modified: Thu, 19 Nov 2026 14:55:28 GMT  
		Size: 22.2 KB (22200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7e538ba2f187b5f1bd7544654f7a3cfbcc4f3001054843729f882601ad733e40`  
		Last Modified: Thu, 19 Nov 2026 14:55:28 GMT  
		Size: 9.3 KB (9251 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:12fedec30534af6882c6bdcb341c9b691987a0bfbd8c78fcfbe056634eb7b173`  
		Last Modified: Thu, 19 Nov 2026 15:34:49 GMT  
		Size: 40.2 MB (40213763 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a3cbdc6cd23aefd66cc1bcc2cb319778fffb88f74e164c89fff428f024654b8`  
		Last Modified: Thu, 19 Nov 2026 15:34:48 GMT  
		Size: 746.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f7b4cd51cc41472f5fbaf82c52da3b5ea8fc76fdd580a54b725901f5e953af08`  
		Last Modified: Thu, 19 Nov 2026 15:38:50 GMT  
		Size: 27.8 MB (27755259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0a49c1b2b21ace39691ec72e44ce22eec82a5977ec887e1aec16acef3ebac14a`  
		Last Modified: Thu, 19 Nov 2026 15:38:50 GMT  
		Size: 5.5 KB (5517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbd79fc27b2e32294471f79a1c4cf8e92d5ddb3b06cecedd1c6cf40c44464d12`  
		Last Modified: Thu, 19 Nov 2026 15:38:50 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.3-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:fb1ba0fd2167f7c4dedce21ec1f7fd5b4efd246bcc4e670544be58b67994ccdf
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 KB (46177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e90f1d48288e049ecacd9ccdaf8a683c1118583601830114af58535b29129a27`

```dockerfile
```

-	Layers:
	-	`sha256:def61d9087a0174bc6e4cc7cfc0d4e7cc84c45c5cd442c068c4895c878e7b2cd`  
		Last Modified: Thu, 19 Nov 2026 15:38:50 GMT  
		Size: 46.2 KB (46177 bytes)  
		MIME: application/vnd.in-toto+json
