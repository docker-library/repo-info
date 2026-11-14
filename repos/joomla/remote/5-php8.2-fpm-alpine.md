## `joomla:5-php8.2-fpm-alpine`

```console
$ docker pull joomla@sha256:e00270dc78c11967da58141f26c96220d95186bf411a74a5c8da36365f51b060
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

### `joomla:5-php8.2-fpm-alpine` - linux; amd64

```console
$ docker pull joomla@sha256:0ea6a403d5581c06edb15661a74b39b2cd7af318b41222e4a53a3ec0b3e02c10
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.8 MB (99827168 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c96a053b674c5f38a4fb0c070d554b6400f01d20b41cdcd617b154e2b65bf1cd`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:28 GMT
ADD alpine-minirootfs-3.24.4-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:28 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:04:21 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 19:04:21 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 19:04:21 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 19:04:21 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 19:04:21 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 19:04:21 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 19:04:21 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 19:04:21 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 19:04:21 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 05 Nov 2026 19:04:21 GMT
ENV PHP_VERSION=8.2.35
# Thu, 05 Nov 2026 19:04:21 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.35.tar.xz.asc
# Thu, 05 Nov 2026 19:04:21 GMT
ENV PHP_SHA256=5737b98601fe5ab1b8c5db0c82ed3158acb9283ed3081ffe2faffb9ac81455e6
# Thu, 05 Nov 2026 19:04:23 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 19:04:23 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:07:08 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 19:07:08 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:07:08 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 19:07:09 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 19:07:09 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 19:07:09 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 19:07:09 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 05 Nov 2026 19:07:09 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 19:07:09 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 05 Nov 2026 19:07:09 GMT
CMD ["php-fpm"]
# Sat, 14 Nov 2026 00:10:58 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Sat, 14 Nov 2026 00:10:58 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 14 Nov 2026 00:10:58 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Sat, 14 Nov 2026 00:10:58 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Sat, 14 Nov 2026 00:10:58 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick; 	apk add --no-cache --virtual .build-deps $PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 		automake 		libtool 		linux-headers 		zlib-dev 		unzip; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.26; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.3.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.2.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Sat, 14 Nov 2026 00:10:58 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	php-fpm -t # buildkit
# Sat, 14 Nov 2026 00:10:58 GMT
ENV JOOMLA_VERSION=5.4.10
# Sat, 14 Nov 2026 00:10:58 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
# Sat, 14 Nov 2026 00:10:58 GMT
ENV JOOMLA_SHA512=31a29996d6234aa8d73384abd9ad91a1b7865cef79a17e747c389164ecf5f7c47deefcb38cd18ebf57eb409d10f531152c390caf7da50e6ad403acc32c791832
# Sat, 14 Nov 2026 00:11:00 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
RUN set -eux; 	apk add --no-cache --virtual .joomla-extract-deps 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apk del --no-network .joomla-extract-deps # buildkit
# Sat, 14 Nov 2026 00:11:00 GMT
VOLUME [/var/www/html]
# Sat, 14 Nov 2026 00:11:00 GMT
WORKDIR /var/www/html
# Sat, 14 Nov 2026 00:11:00 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 14 Nov 2026 00:11:00 GMT
COPY makedb.php /makedb.php # buildkit
# Sat, 14 Nov 2026 00:11:00 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 14 Nov 2026 00:11:00 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:881fc932939efef04ca120ad44bbd2c0917851eb247aa4995428afb1e80ede17`  
		Last Modified: Thu, 05 Nov 2026 18:00:35 GMT  
		Size: 3.9 MB (3853673 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:feb882b057ee5a2fec78e241c0030e6d8ce85884d193388ddb2191b13eb1e730`  
		Last Modified: Thu, 05 Nov 2026 19:07:16 GMT  
		Size: 3.5 MB (3496434 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e5a2058f2fc9d8cd3f9fe56f7ff7379bacf4e5c7d300b12502c481084a095627`  
		Last Modified: Thu, 05 Nov 2026 19:07:15 GMT  
		Size: 931.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c5bcecc2d58bbc5d081a917062f6f57c162bbdee0b04492b2ccbcb1029a8029`  
		Last Modified: Thu, 05 Nov 2026 19:07:15 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ba262cd712b4ab08d6374c7ee4c645e13a712c2703c7863bb1862a5f49112349`  
		Last Modified: Thu, 05 Nov 2026 19:07:16 GMT  
		Size: 12.2 MB (12239440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac19663a0ab26bb4e7f6b4faacb733a456b7a322d2cda9c177bd478c7d666c3a`  
		Last Modified: Thu, 05 Nov 2026 19:07:16 GMT  
		Size: 487.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46b900389c8265239d634f19fef314740dddb0bda3c1f08acfb7598b20e78800`  
		Last Modified: Thu, 05 Nov 2026 19:07:17 GMT  
		Size: 13.2 MB (13217730 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:55246b4586f7154f5a0269191af414f006e160d844a75f0b73a190f8009ac235`  
		Last Modified: Thu, 05 Nov 2026 19:07:17 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4bc11e8a6bfeadcba58f89ea0883310bff03d851c9a3948e021884d8fef67b5`  
		Last Modified: Thu, 05 Nov 2026 19:07:17 GMT  
		Size: 22.3 KB (22340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a5db262a3dae7bfddf61ca945b0d67cb2afe1c2892d776aee1d408a7da23ee20`  
		Last Modified: Thu, 05 Nov 2026 19:07:18 GMT  
		Size: 22.4 KB (22357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30756da07f957bde650d9f5077d3b0f9596be3040c3fcafd1783d223f5db2c9d`  
		Last Modified: Thu, 05 Nov 2026 19:07:18 GMT  
		Size: 9.2 KB (9250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ac1c1d2d45caf6539cb8bd613b6b2da2796bc42fa56292d31d45efc1a8a5e7d`  
		Last Modified: Sat, 14 Nov 2026 00:11:09 GMT  
		Size: 39.2 MB (39199351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:60d0d23ebb05b15a6b6d9eef7015f4451df2e1b92b3adf8bb267faca7d06a102`  
		Last Modified: Sat, 14 Nov 2026 00:11:07 GMT  
		Size: 747.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6f276680e0b424649aaf757c95718b4e1c265666bbd0c87389256702108dd13d`  
		Last Modified: Sat, 14 Nov 2026 00:11:08 GMT  
		Size: 27.8 MB (27754913 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb555e4ed9a2025f8b7637d449c84048653537bb5b72039aaef2ed4bd606e6aa`  
		Last Modified: Sat, 14 Nov 2026 00:11:07 GMT  
		Size: 5.5 KB (5517 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e96aa8acc0a2988030203682778cfeb3dcd36a40c97d032c53b8ac78f0eb38c4`  
		Last Modified: Sat, 14 Nov 2026 00:11:09 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.2-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:660ff334f806aa86b39338745b37f10a3eb471bf65593613ffaa5f89b9e37e9c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 KB (46177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7f65c972e3ba5949e649e922a206d93f062411f96331000f26851ed0b3005b22`

```dockerfile
```

-	Layers:
	-	`sha256:6bdb3c680e2635c7fb04ebcad5fa34421572a974c79dfacbee08fd7f4c3989f8`  
		Last Modified: Sat, 14 Nov 2026 00:11:07 GMT  
		Size: 46.2 KB (46177 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.2-fpm-alpine` - linux; arm variant v6

```console
$ docker pull joomla@sha256:5f21e73b52ca9d7416c7c61146bd0271096305052b0fb8bf11d468aa3376cc76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **94.8 MB (94800040 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d4c6abf92979bcfa152f866a8878d82369ccd197d81e82a93ee052fcdcae6a4e`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armhf.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:32:42 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:32:42 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:32:42 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:32:42 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:32:42 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:32:42 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:32:42 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:32:42 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:32:42 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 05 Nov 2026 18:32:42 GMT
ENV PHP_VERSION=8.2.35
# Thu, 05 Nov 2026 18:32:42 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.35.tar.xz.asc
# Thu, 05 Nov 2026 18:32:42 GMT
ENV PHP_SHA256=5737b98601fe5ab1b8c5db0c82ed3158acb9283ed3081ffe2faffb9ac81455e6
# Thu, 05 Nov 2026 18:35:48 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:35:48 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:38:28 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 18:38:28 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:38:29 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 18:38:29 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 18:38:29 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 18:38:29 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 18:38:29 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 05 Nov 2026 18:38:29 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 18:38:29 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 05 Nov 2026 18:38:29 GMT
CMD ["php-fpm"]
# Sat, 14 Nov 2026 00:10:13 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Sat, 14 Nov 2026 00:10:13 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 14 Nov 2026 00:10:13 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Sat, 14 Nov 2026 00:10:13 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Sat, 14 Nov 2026 00:10:13 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick; 	apk add --no-cache --virtual .build-deps $PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 		automake 		libtool 		linux-headers 		zlib-dev 		unzip; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.26; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.3.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.2.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Sat, 14 Nov 2026 00:10:13 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	php-fpm -t # buildkit
# Sat, 14 Nov 2026 00:10:13 GMT
ENV JOOMLA_VERSION=5.4.10
# Sat, 14 Nov 2026 00:10:13 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
# Sat, 14 Nov 2026 00:10:13 GMT
ENV JOOMLA_SHA512=31a29996d6234aa8d73384abd9ad91a1b7865cef79a17e747c389164ecf5f7c47deefcb38cd18ebf57eb409d10f531152c390caf7da50e6ad403acc32c791832
# Sat, 14 Nov 2026 00:10:16 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
RUN set -eux; 	apk add --no-cache --virtual .joomla-extract-deps 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apk del --no-network .joomla-extract-deps # buildkit
# Sat, 14 Nov 2026 00:10:16 GMT
VOLUME [/var/www/html]
# Sat, 14 Nov 2026 00:10:16 GMT
WORKDIR /var/www/html
# Sat, 14 Nov 2026 00:10:16 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 14 Nov 2026 00:10:16 GMT
COPY makedb.php /makedb.php # buildkit
# Sat, 14 Nov 2026 00:10:16 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 14 Nov 2026 00:10:16 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:bbbd9a2247710d6d877faf0dc146019901aef9271f5acb2dfc6fd59a9f3d0916`  
		Last Modified: Thu, 05 Nov 2026 18:00:37 GMT  
		Size: 3.6 MB (3558401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4964b793cbde39dd7bce89044b898cd7cd769f278a912f481d6e60597cf73d9`  
		Last Modified: Thu, 05 Nov 2026 18:35:36 GMT  
		Size: 3.5 MB (3455728 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c7103c9dd4f9db30a36b9d21c1c4cf170a3df760f99339aee9baf508ebf76946`  
		Last Modified: Thu, 05 Nov 2026 18:35:36 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e5100c29a0e9fac41f400dea8d1d844d6b542ef1cd5d70a7b1be1773fc873cb`  
		Last Modified: Thu, 05 Nov 2026 18:35:36 GMT  
		Size: 217.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0bbb9a7a269ed16b6004cf68d6bdc0151c24a26942991b920a161c4aed574a5`  
		Last Modified: Thu, 05 Nov 2026 18:38:35 GMT  
		Size: 12.2 MB (12239452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:abe5175be6822880ec411c8dea2c1f2b73dbf42b72005e4525322b3cbc15b607`  
		Last Modified: Thu, 05 Nov 2026 18:38:35 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5251324a2e0f5d8dd6a1989b1dd7274bc1d6d170f13b59108e28df95040704e7`  
		Last Modified: Thu, 05 Nov 2026 18:38:35 GMT  
		Size: 12.0 MB (11962340 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:be0e83a7f62950e61266c08c6b30f65fb2b90870e7def58e2409d0f0bdb24907`  
		Last Modified: Thu, 05 Nov 2026 18:38:35 GMT  
		Size: 2.4 KB (2447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:665232ec0f3d200dbae0cf3621081428645fd903b08517efe5f825a943a10f2b`  
		Last Modified: Thu, 05 Nov 2026 18:38:36 GMT  
		Size: 22.1 KB (22136 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f328d051b61fcb49b150c4bb30cd91ffcc0bd3c8e15cc00e5318b17c0785f04`  
		Last Modified: Thu, 05 Nov 2026 18:38:36 GMT  
		Size: 22.1 KB (22148 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f836ad6dfec0acf5e5bdacc049074523c961ffc27b5d80ac9e5e98b7fda57e4f`  
		Last Modified: Thu, 05 Nov 2026 18:38:37 GMT  
		Size: 9.3 KB (9252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45a7cb20952e0baa4772f965e2f9e56c43d46b62532e7c3b38b76898137004e0`  
		Last Modified: Sat, 14 Nov 2026 00:10:24 GMT  
		Size: 35.8 MB (35764097 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d669966b451462d5b70ef4d5c2d604677e954eb991c2ee3fda5fb565e91dca44`  
		Last Modified: Sat, 14 Nov 2026 00:10:23 GMT  
		Size: 751.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0f42db7ffa450230914ee6a41a49f64e9993401ce9f7bf52fe6ba25baae7658`  
		Last Modified: Sat, 14 Nov 2026 00:10:24 GMT  
		Size: 27.8 MB (27754803 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cfee0ce6ac9263be72e73c9cd4af5edbe15322e1a91cbc496092c647e6854618`  
		Last Modified: Sat, 14 Nov 2026 00:10:16 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e040eb496d18d0d2307c87d2fcd8744a1848c3ace825120782ea73860cd85127`  
		Last Modified: Sat, 14 Nov 2026 00:10:17 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.2-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:0269afbbdcce3e2150df6d91d816e5b050d16f7fc5a32dcc72d9d2938a3a6319
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.3 KB (46275 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9151e508bfe1cec45e1be43c4aa4f2e27dc5ef583c928549ca844fa116ce85c4`

```dockerfile
```

-	Layers:
	-	`sha256:c3de192c1aff0c7704826dec27e620ec9733381fbd104dbcb991d59f32deaf59`  
		Last Modified: Sat, 14 Nov 2026 00:10:23 GMT  
		Size: 46.3 KB (46275 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.2-fpm-alpine` - linux; arm variant v7

```console
$ docker pull joomla@sha256:f6b55a5edd074c78f3a61e8670440bf8a15a1af5e05436086da882c48e18ed4f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **91.9 MB (91910697 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3950635bbec9d987c5f850a7afe209a5aa2b966619c14e3991a7ee2d151cce1`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:33 GMT
ADD alpine-minirootfs-3.24.4-armv7.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:33 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:30:37 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:30:37 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:30:37 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:30:37 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:30:37 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:30:37 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:30:37 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:30:37 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:30:37 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 05 Nov 2026 18:30:37 GMT
ENV PHP_VERSION=8.2.35
# Thu, 05 Nov 2026 18:30:37 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.35.tar.xz.asc
# Thu, 05 Nov 2026 18:30:37 GMT
ENV PHP_SHA256=5737b98601fe5ab1b8c5db0c82ed3158acb9283ed3081ffe2faffb9ac81455e6
# Thu, 05 Nov 2026 18:33:46 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:33:46 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:36:29 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 18:36:29 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:36:29 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 18:36:30 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 18:36:30 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 18:36:30 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 18:36:30 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 05 Nov 2026 18:36:30 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 18:36:30 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 05 Nov 2026 18:36:30 GMT
CMD ["php-fpm"]
# Sat, 14 Nov 2026 00:17:22 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Sat, 14 Nov 2026 00:17:22 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 14 Nov 2026 00:17:22 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Sat, 14 Nov 2026 00:17:22 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Sat, 14 Nov 2026 00:17:22 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick; 	apk add --no-cache --virtual .build-deps $PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 		automake 		libtool 		linux-headers 		zlib-dev 		unzip; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.26; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.3.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.2.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Sat, 14 Nov 2026 00:17:23 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	php-fpm -t # buildkit
# Sat, 14 Nov 2026 00:17:23 GMT
ENV JOOMLA_VERSION=5.4.10
# Sat, 14 Nov 2026 00:17:23 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
# Sat, 14 Nov 2026 00:17:23 GMT
ENV JOOMLA_SHA512=31a29996d6234aa8d73384abd9ad91a1b7865cef79a17e747c389164ecf5f7c47deefcb38cd18ebf57eb409d10f531152c390caf7da50e6ad403acc32c791832
# Sat, 14 Nov 2026 00:17:25 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
RUN set -eux; 	apk add --no-cache --virtual .joomla-extract-deps 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apk del --no-network .joomla-extract-deps # buildkit
# Sat, 14 Nov 2026 00:17:25 GMT
VOLUME [/var/www/html]
# Sat, 14 Nov 2026 00:17:25 GMT
WORKDIR /var/www/html
# Sat, 14 Nov 2026 00:17:25 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 14 Nov 2026 00:17:25 GMT
COPY makedb.php /makedb.php # buildkit
# Sat, 14 Nov 2026 00:17:25 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 14 Nov 2026 00:17:25 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:65a28aac190acedef9641ef1fe0a534d87761f771c07944b54d40fcab2536913`  
		Last Modified: Thu, 05 Nov 2026 18:00:41 GMT  
		Size: 3.3 MB (3267733 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce390dde0a218645f5f05c185f9d62c9f2be7ef324ef2ed63ab35c36c241edcc`  
		Last Modified: Thu, 05 Nov 2026 18:33:35 GMT  
		Size: 3.3 MB (3266212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9301253f4abf854728aab3194f14a0904113c4776dbe708bb03b03314e132243`  
		Last Modified: Thu, 05 Nov 2026 18:33:34 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:416f7f6c7ec893fc11b45c87bc9e4aaef335411a915cd4275f406ee7355f535c`  
		Last Modified: Thu, 05 Nov 2026 18:33:34 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:591b2629985ae6b6e477dc72e399b399d4c03fd8f53922c659165f4af39e3ac1`  
		Last Modified: Thu, 05 Nov 2026 18:36:37 GMT  
		Size: 12.2 MB (12239454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46f413aa325902684f459d3ca17e2c98ec477f4bb63b786a97e5fbf78db94e49`  
		Last Modified: Thu, 05 Nov 2026 18:36:36 GMT  
		Size: 490.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:698a0706d815aa466d2cfc876019f5968f54d1eb45eacc163db82db6337cfc4c`  
		Last Modified: Thu, 05 Nov 2026 18:36:36 GMT  
		Size: 11.3 MB (11257504 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59dff84b18fb7b69f104b894a1d0182b830822dce7c6f20e1ba65ef86520b538`  
		Last Modified: Thu, 05 Nov 2026 18:36:36 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ada0dda416bd50710f5539aeff8d736f4b5b66984e560861d287186ab2b8124`  
		Last Modified: Thu, 05 Nov 2026 18:36:37 GMT  
		Size: 22.1 KB (22135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:676a1e8d937d2688f64adf867648341a62376fd7bdfd5f6b44a5b4038014d4cf`  
		Last Modified: Thu, 05 Nov 2026 18:36:37 GMT  
		Size: 22.2 KB (22155 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a68543e89839c87539b9e57963b4adf085ef2a4ac286af3e8c722cf2850de202`  
		Last Modified: Thu, 05 Nov 2026 18:36:38 GMT  
		Size: 9.3 KB (9252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b1ffecec1d7b6f66ef98d88871e89492d0e238fc354282d23fce4ad88287931`  
		Last Modified: Sat, 14 Nov 2026 00:17:33 GMT  
		Size: 34.1 MB (34059715 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a283d5c0c7b8bd052330dc200eb95bc2403632ab0491ee674811476c3678869`  
		Last Modified: Sat, 14 Nov 2026 00:17:31 GMT  
		Size: 748.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6a3d2be943a7011d85d504c9dfc8c47460bfd96c74dfb765659041eabbe422d`  
		Last Modified: Sat, 14 Nov 2026 00:17:33 GMT  
		Size: 27.8 MB (27754848 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a69e26e6023846b5d75fd77995eca4295724b235ccd71fa5ebe59b199390472`  
		Last Modified: Sat, 14 Nov 2026 00:17:31 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5150e9a76aebd84567b1995d9e397d9c7b14bc368e16b51a68880bc46789072a`  
		Last Modified: Sat, 14 Nov 2026 00:17:33 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.2-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:d0e62539de0fa2709520cfc585f5b6d38cf253973dee981c8f6a547c384a4958
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.3 KB (46274 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c6128f58c9310cbc57d55949f459122702a9d003f1c889a90e97a77669a2d8a`

```dockerfile
```

-	Layers:
	-	`sha256:0371d1e0f70b7dacff2d62d63fc0e813a0f56d77806f4ee40f982c3c47c4a3eb`  
		Last Modified: Sat, 14 Nov 2026 00:17:31 GMT  
		Size: 46.3 KB (46274 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.2-fpm-alpine` - linux; arm64 variant v8

```console
$ docker pull joomla@sha256:5abec4ce09f52cab3d8865788bd50d7cc4c7d4dca4d6e979d1200a991e05a405
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.6 MB (99569710 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec77c800830c159557e025459ce8b0bc5864144a7210c3550794fbc0869ae792`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:31 GMT
ADD alpine-minirootfs-3.24.4-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:31 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:55:11 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:55:11 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:55:11 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:55:11 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:55:11 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:55:11 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:55:11 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:55:11 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:55:11 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 05 Nov 2026 18:55:11 GMT
ENV PHP_VERSION=8.2.35
# Thu, 05 Nov 2026 18:55:11 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.35.tar.xz.asc
# Thu, 05 Nov 2026 18:55:11 GMT
ENV PHP_SHA256=5737b98601fe5ab1b8c5db0c82ed3158acb9283ed3081ffe2faffb9ac81455e6
# Thu, 05 Nov 2026 18:58:47 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:58:47 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:02:38 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 19:02:38 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 19:02:39 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 19:02:39 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 19:02:39 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 19:02:40 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 19:02:40 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 05 Nov 2026 19:02:40 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 19:02:40 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 05 Nov 2026 19:02:40 GMT
CMD ["php-fpm"]
# Sat, 14 Nov 2026 00:11:47 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Sat, 14 Nov 2026 00:11:47 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 14 Nov 2026 00:11:47 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Sat, 14 Nov 2026 00:11:47 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Sat, 14 Nov 2026 00:11:47 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick; 	apk add --no-cache --virtual .build-deps $PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 		automake 		libtool 		linux-headers 		zlib-dev 		unzip; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.26; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.3.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.2.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Sat, 14 Nov 2026 00:11:48 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	php-fpm -t # buildkit
# Sat, 14 Nov 2026 00:11:48 GMT
ENV JOOMLA_VERSION=5.4.10
# Sat, 14 Nov 2026 00:11:48 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
# Sat, 14 Nov 2026 00:11:48 GMT
ENV JOOMLA_SHA512=31a29996d6234aa8d73384abd9ad91a1b7865cef79a17e747c389164ecf5f7c47deefcb38cd18ebf57eb409d10f531152c390caf7da50e6ad403acc32c791832
# Sat, 14 Nov 2026 00:11:50 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
RUN set -eux; 	apk add --no-cache --virtual .joomla-extract-deps 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apk del --no-network .joomla-extract-deps # buildkit
# Sat, 14 Nov 2026 00:11:50 GMT
VOLUME [/var/www/html]
# Sat, 14 Nov 2026 00:11:50 GMT
WORKDIR /var/www/html
# Sat, 14 Nov 2026 00:11:50 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 14 Nov 2026 00:11:50 GMT
COPY makedb.php /makedb.php # buildkit
# Sat, 14 Nov 2026 00:11:50 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 14 Nov 2026 00:11:50 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:b90627b8f4292fd3cb63f0f27f0b11c37f04ba88ef3b78d4948ea0ace18c85e9`  
		Last Modified: Thu, 05 Nov 2026 18:00:38 GMT  
		Size: 4.2 MB (4190595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16bb998498e8dd58cc6b9ba08a3cb0957604a4d9799f3bf510cdfb5da5f8a142`  
		Last Modified: Thu, 05 Nov 2026 18:58:36 GMT  
		Size: 3.5 MB (3512471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:682e295bf87ef63c0896bda2142feb20a0bbd7720cc63cc0f9394dd1528442d9`  
		Last Modified: Thu, 05 Nov 2026 18:58:36 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2c5bccc9cb92cf8cca61b3eeabf6d25d4c2dc70014f6c86c0ff64a76b675f7e`  
		Last Modified: Thu, 05 Nov 2026 18:58:36 GMT  
		Size: 214.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1deb6f4bae9cd43c6c959716f5dafc6add7a5e918765553b83227f434216a62e`  
		Last Modified: Thu, 05 Nov 2026 19:02:46 GMT  
		Size: 12.2 MB (12239431 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c08bda079c033336caa31f31d6b0674c540b5ff18bf43c1a4ac1b320908cb5f5`  
		Last Modified: Thu, 05 Nov 2026 19:02:46 GMT  
		Size: 488.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9d698ded6a36b7064137ae123fd146abb97ace203beb851534e31277082186f`  
		Last Modified: Thu, 05 Nov 2026 19:02:46 GMT  
		Size: 13.1 MB (13114250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:028cdb2722b819e4d6b5d4c2ad52c83cdbdf7be14c9032d77036b5d37076a091`  
		Last Modified: Thu, 05 Nov 2026 19:02:46 GMT  
		Size: 2.5 KB (2451 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e7dc877b0446ac7fe70f153c27f1d5db413870566b5d01c7ae368d2d265c4a1`  
		Last Modified: Thu, 05 Nov 2026 19:02:47 GMT  
		Size: 22.2 KB (22165 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ff3126efecd31314e2905332d179862ff8a3c0552a9a3ac02e8c160f393a69c`  
		Last Modified: Thu, 05 Nov 2026 19:02:47 GMT  
		Size: 22.2 KB (22174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64431241db19cdebd85e471a07563ad0b9e7aa66e181f12fd958cea569a5ccc3`  
		Last Modified: Thu, 05 Nov 2026 19:02:48 GMT  
		Size: 9.3 KB (9253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4b16643b78ebcba730625b777102d224af4d8fffe024f466009c0544b9baac20`  
		Last Modified: Sat, 14 Nov 2026 00:11:59 GMT  
		Size: 38.7 MB (38692999 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c20549b9accfade8be700756a24558c16f2815e6dfd023baa9837d799de56e0e`  
		Last Modified: Sat, 14 Nov 2026 00:11:57 GMT  
		Size: 747.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:048af6f01302199ff6ee91ff0b9d5b37956592b8c12a13b9d1f1d5326eda597b`  
		Last Modified: Sat, 14 Nov 2026 00:11:58 GMT  
		Size: 27.8 MB (27754693 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:945b5d3cd0ea57308bb53083f9e89c31f215baa011ca7c36b02602450b4885f6`  
		Last Modified: Sat, 14 Nov 2026 00:11:57 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a8200920cec373f5683e0774b777a4a49968c38172ec1d76c467533693732e4`  
		Last Modified: Sat, 14 Nov 2026 00:11:59 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.2-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:f6ccd4b261af25089cfe97e723e883786bb4b2dd14b739dd23296403726a747c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.3 KB (46299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b5eca67b6617fb7fc79d3fdbb1aaf46804ad8e26ed40e5b86ccf3e3f25d71f06`

```dockerfile
```

-	Layers:
	-	`sha256:62a58d550e28720d847171ff31388c398d27b844ec6c531877343a4810f7571f`  
		Last Modified: Sat, 14 Nov 2026 00:11:57 GMT  
		Size: 46.3 KB (46299 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.2-fpm-alpine` - linux; 386

```console
$ docker pull joomla@sha256:c99fc3e5156ba05a6a0bc010aa6cde5262d8351251a6dc848215e6452e5efb98
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **100.5 MB (100527770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c4faf1234d62ba5e2e2ebad095b4008cc99d2bd2d3a036e8b2df121b4128444`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:36 GMT
ADD alpine-minirootfs-3.24.4-x86.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:36 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 18:16:35 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Thu, 05 Nov 2026 18:16:35 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Thu, 05 Nov 2026 18:16:35 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Thu, 05 Nov 2026 18:16:35 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Thu, 05 Nov 2026 18:16:35 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Thu, 05 Nov 2026 18:16:35 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:16:35 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Thu, 05 Nov 2026 18:16:35 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Thu, 05 Nov 2026 18:16:35 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 05 Nov 2026 18:16:35 GMT
ENV PHP_VERSION=8.2.35
# Thu, 05 Nov 2026 18:16:35 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.35.tar.xz.asc
# Thu, 05 Nov 2026 18:16:35 GMT
ENV PHP_SHA256=5737b98601fe5ab1b8c5db0c82ed3158acb9283ed3081ffe2faffb9ac81455e6
# Thu, 05 Nov 2026 18:23:55 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:23:56 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:26:42 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 18:26:43 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:26:43 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 18:26:44 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 18:26:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 18:26:44 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 18:26:44 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 05 Nov 2026 18:26:44 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 18:26:44 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 05 Nov 2026 18:26:44 GMT
CMD ["php-fpm"]
# Sat, 14 Nov 2026 00:12:56 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Sat, 14 Nov 2026 00:12:56 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 14 Nov 2026 00:12:56 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Sat, 14 Nov 2026 00:12:56 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Sat, 14 Nov 2026 00:12:56 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick; 	apk add --no-cache --virtual .build-deps $PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 		automake 		libtool 		linux-headers 		zlib-dev 		unzip; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.26; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.3.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.2.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Sat, 14 Nov 2026 00:12:56 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	php-fpm -t # buildkit
# Sat, 14 Nov 2026 00:12:56 GMT
ENV JOOMLA_VERSION=5.4.10
# Sat, 14 Nov 2026 00:12:56 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
# Sat, 14 Nov 2026 00:12:56 GMT
ENV JOOMLA_SHA512=31a29996d6234aa8d73384abd9ad91a1b7865cef79a17e747c389164ecf5f7c47deefcb38cd18ebf57eb409d10f531152c390caf7da50e6ad403acc32c791832
# Sat, 14 Nov 2026 00:12:58 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
RUN set -eux; 	apk add --no-cache --virtual .joomla-extract-deps 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apk del --no-network .joomla-extract-deps # buildkit
# Sat, 14 Nov 2026 00:12:58 GMT
VOLUME [/var/www/html]
# Sat, 14 Nov 2026 00:12:58 GMT
WORKDIR /var/www/html
# Sat, 14 Nov 2026 00:12:58 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 14 Nov 2026 00:12:58 GMT
COPY makedb.php /makedb.php # buildkit
# Sat, 14 Nov 2026 00:12:58 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 14 Nov 2026 00:12:58 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:06411751d8457a2918efa7465118355ef368f933fb66e52d872db258f1e92e7e`  
		Last Modified: Thu, 05 Nov 2026 18:00:44 GMT  
		Size: 3.7 MB (3680361 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:65a0e4b2384aaf1431781581eb91ea8b71c2eb77be02f584a02b1ca5aa52d72f`  
		Last Modified: Thu, 05 Nov 2026 18:20:11 GMT  
		Size: 3.5 MB (3532749 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bacfbc4398892ee8d38d0da741b851cd87c62a44033a410717b11f5cff6000b2`  
		Last Modified: Thu, 05 Nov 2026 18:20:10 GMT  
		Size: 933.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9b593db032876cd213206cc1cf61473a6a407cc84758d1b22951166593057e7`  
		Last Modified: Thu, 05 Nov 2026 18:20:10 GMT  
		Size: 220.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ac98cc4e621803264061cf9f578bd98b430bdee568253451fcb98f239e77c3a`  
		Last Modified: Thu, 05 Nov 2026 18:26:50 GMT  
		Size: 12.2 MB (12239428 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:621fae1c54dbd4b26d7269dcfce64290e4e221c80b87577a3c5891bd554a5bba`  
		Last Modified: Thu, 05 Nov 2026 18:26:50 GMT  
		Size: 489.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb180f8f52d10e37a1e43dbaee935e47d2739416dcbe54e80578bcdc99f92031`  
		Last Modified: Thu, 05 Nov 2026 18:26:51 GMT  
		Size: 13.5 MB (13523342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e8aa44a02add644f68eb33de4c0f7a426c334c2589232d3354b22f7fcd2ab38`  
		Last Modified: Thu, 05 Nov 2026 18:26:50 GMT  
		Size: 2.5 KB (2450 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79d55248bd2eb114e0fa0b8e8efc5d374bbc46cdd9338212d62974413a43ddfd`  
		Last Modified: Thu, 05 Nov 2026 18:26:51 GMT  
		Size: 22.3 KB (22342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5313394b52eaf4b8d71bf8e101dc8a955574ee5d3e48c5aca847b804a4ff6552`  
		Last Modified: Thu, 05 Nov 2026 18:26:51 GMT  
		Size: 22.4 KB (22354 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a45dbd76dd82e7638eb94517f995716b290574fd1c103cf59e48d450dd532cb4`  
		Last Modified: Thu, 05 Nov 2026 18:26:52 GMT  
		Size: 9.2 KB (9250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdc3d93b6f2ea4e7aea15e3a60a69c06f1f02917bf375ba49a15e212b4545d73`  
		Last Modified: Sat, 14 Nov 2026 00:13:07 GMT  
		Size: 39.7 MB (39731393 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3217ae1091a8888edf52bc0036fab5d1039a35cc251fc79b32e830d9959b32d3`  
		Last Modified: Sat, 14 Nov 2026 00:13:06 GMT  
		Size: 749.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5736462ed4c3345d6eafc90077864edf6447125eb18d8f18b9fa0beb7f9e6baf`  
		Last Modified: Sat, 14 Nov 2026 00:13:07 GMT  
		Size: 27.8 MB (27754863 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4511610c5f3a3b0b020a8fb4b86249e4de33f4bd5c662ca2eb380b4f646eef58`  
		Last Modified: Sat, 14 Nov 2026 00:13:06 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6cff20211e4f8e1285f4d9b838da0e95320b33dc7acf7fbfcbac9c42fb51a53`  
		Last Modified: Sat, 14 Nov 2026 00:13:07 GMT  
		Size: 1.3 KB (1267 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.2-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:8452f8c4d9d9d45a9ee798f450d0a5cc1246078dbefb2d11fd189cda1cd74bee
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.1 KB (46146 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:40b803d228039b0b7bf69f176c9fb96f92e3dc8dbb251255814a3f9f82bd19d3`

```dockerfile
```

-	Layers:
	-	`sha256:c7529a338a10d542429b39fd6d204f4b6b7c151a28c67d67391175bbab66b8ce`  
		Last Modified: Sat, 14 Nov 2026 00:13:05 GMT  
		Size: 46.1 KB (46146 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.2-fpm-alpine` - linux; ppc64le

```console
$ docker pull joomla@sha256:764ca63e5d96237351964048b269bbc4cd27921f6c14e356d7deade971852875
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.9 MB (101942149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8bcf7456e1667b41164d52a0374407db01f77cd681e8348aa06f7bf2a8b92306`
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
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 05 Nov 2026 21:37:46 GMT
ENV PHP_VERSION=8.2.35
# Thu, 05 Nov 2026 21:37:46 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.35.tar.xz.asc
# Thu, 05 Nov 2026 21:37:46 GMT
ENV PHP_SHA256=5737b98601fe5ab1b8c5db0c82ed3158acb9283ed3081ffe2faffb9ac81455e6
# Thu, 05 Nov 2026 22:37:38 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 22:37:40 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 22:43:10 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 22:43:16 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 22:43:19 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 22:43:21 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 22:43:21 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 22:43:21 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 22:43:22 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 05 Nov 2026 22:43:22 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 22:43:22 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 05 Nov 2026 22:43:22 GMT
CMD ["php-fpm"]
# Sat, 14 Nov 2026 00:59:03 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Sat, 14 Nov 2026 00:59:03 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 14 Nov 2026 00:59:03 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Sat, 14 Nov 2026 00:59:03 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Sat, 14 Nov 2026 00:59:03 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick; 	apk add --no-cache --virtual .build-deps $PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 		automake 		libtool 		linux-headers 		zlib-dev 		unzip; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.26; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.3.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.2.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Sat, 14 Nov 2026 00:59:05 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	php-fpm -t # buildkit
# Sat, 14 Nov 2026 00:59:05 GMT
ENV JOOMLA_VERSION=5.4.10
# Sat, 14 Nov 2026 00:59:05 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
# Sat, 14 Nov 2026 00:59:05 GMT
ENV JOOMLA_SHA512=31a29996d6234aa8d73384abd9ad91a1b7865cef79a17e747c389164ecf5f7c47deefcb38cd18ebf57eb409d10f531152c390caf7da50e6ad403acc32c791832
# Sat, 14 Nov 2026 00:59:09 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
RUN set -eux; 	apk add --no-cache --virtual .joomla-extract-deps 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apk del --no-network .joomla-extract-deps # buildkit
# Sat, 14 Nov 2026 00:59:09 GMT
VOLUME [/var/www/html]
# Sat, 14 Nov 2026 00:59:09 GMT
WORKDIR /var/www/html
# Sat, 14 Nov 2026 00:59:09 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 14 Nov 2026 00:59:09 GMT
COPY makedb.php /makedb.php # buildkit
# Sat, 14 Nov 2026 00:59:09 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 14 Nov 2026 00:59:09 GMT
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
	-	`sha256:8f078e973fafc8e0575fd96fe43cd0b2f917489477fba5d0a34e8706ce3f6a74`  
		Last Modified: Thu, 05 Nov 2026 22:42:14 GMT  
		Size: 12.2 MB (12239441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:eb581f142a472fd6ce902e2a350a65a0b32b679a0846ae49616373d44b1f163f`  
		Last Modified: Thu, 05 Nov 2026 22:42:14 GMT  
		Size: 494.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b4db14c286312e106ae4f7fa12be5233727705579f2f63cd5053f087cb206bc`  
		Last Modified: Thu, 05 Nov 2026 22:43:35 GMT  
		Size: 13.8 MB (13775932 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a76d165e8248afd1460aca238d2f3886f4a0be4794241b3bee14cb7ef733f84d`  
		Last Modified: Thu, 05 Nov 2026 22:43:35 GMT  
		Size: 2.4 KB (2449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1efa3f0462c24186d9e20d53888b4deea9e0f179761ba32ce748be3f587899d2`  
		Last Modified: Thu, 05 Nov 2026 22:43:35 GMT  
		Size: 22.2 KB (22180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ec3069a6dff93e09324b34186bfe71ce21fa526054bb75fdf125c479881a8f8`  
		Last Modified: Thu, 05 Nov 2026 22:43:35 GMT  
		Size: 22.2 KB (22208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f98415a56082c4c353c79f50db1750d7a2652e7757e9cc2e652da197b6b1343`  
		Last Modified: Thu, 05 Nov 2026 22:43:36 GMT  
		Size: 9.3 KB (9254 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10f8b3bf80f398b15a79a09e4ee7a27dd77ade5fdba4d8e6f673f6cd17b76d29`  
		Last Modified: Sat, 14 Nov 2026 00:59:25 GMT  
		Size: 40.6 MB (40611957 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f1600528e428c5b9399797f1280eb957463753415051fc3f52e5e0855db43f79`  
		Last Modified: Sat, 14 Nov 2026 00:59:23 GMT  
		Size: 751.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b63ac5e1557778802a09c1da6c490a9a084360f804d8b33f9318fb95abc118da`  
		Last Modified: Sat, 14 Nov 2026 00:59:25 GMT  
		Size: 27.8 MB (27754855 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ffb530401d16e164b00cf6935de1b1e10c5e663a7633ec6d16454a7f514780d`  
		Last Modified: Sat, 14 Nov 2026 00:59:23 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee2e87633312e0b96d9b24985031a16d8bf81591bb0fd3f39ba35d6602c5e202`  
		Last Modified: Sat, 14 Nov 2026 00:59:25 GMT  
		Size: 1.3 KB (1269 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.2-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:ce66d4e14dff6c7edc090cb027da3dfa3743623b1dcddd980f29ef92d4628a9a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 KB (46219 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:845aa8e9aa2af233c2d5b8d2c013109782bcb9c37df701eb6c102e08ec66ad56`

```dockerfile
```

-	Layers:
	-	`sha256:f639b27a5fd470114f01673dd41273a70f69d0160ac5cdec3ca558a99b2173fd`  
		Last Modified: Sat, 14 Nov 2026 00:59:23 GMT  
		Size: 46.2 KB (46219 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.2-fpm-alpine` - linux; riscv64

```console
$ docker pull joomla@sha256:81f4e59950965fb35dd27c33e39dcf7bb866cce8defb3c2766c85540175aa5f3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **99.3 MB (99335354 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:887fd95a05f75b6318fed95b8e0c71c1327548e7255280ab0f2b3087c01cf328`
-	Entrypoint: `["\/entrypoint.sh"]`
-	Default Command: `["php-fpm"]`

```dockerfile
# Fri, 23 Oct 2026 04:53:36 GMT
ADD alpine-minirootfs-3.24.3-riscv64.tar.gz / # buildkit
# Fri, 23 Oct 2026 04:53:36 GMT
CMD ["/bin/sh"]
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHPIZE_DEPS=autoconf 		dpkg-dev dpkg 		file 		g++ 		gcc 		libc-dev 		make 		pkgconf 		re2c
# Sat, 24 Oct 2026 16:59:15 GMT
RUN apk add --no-cache 		ca-certificates 		curl 		openssl 		tar 		xz # buildkit
# Sat, 24 Oct 2026 16:59:15 GMT
RUN set -eux; 	adduser -u 82 -D -S -G www-data www-data # buildkit
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHP_INI_DIR=/usr/local/etc/php
# Sat, 24 Oct 2026 16:59:15 GMT
RUN set -eux; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	[ ! -d /var/www/html ]; 	mkdir -p /var/www/html; 	chown www-data:www-data /var/www/html; 	chmod 1777 /var/www/html # buildkit
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHP_CFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHP_CPPFLAGS=-fstack-protector-strong -fpic -fpie -O2 -D_LARGEFILE_SOURCE -D_FILE_OFFSET_BITS=64
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHP_LDFLAGS=-Wl,-O1 -pie
# Sat, 24 Oct 2026 16:59:15 GMT
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHP_VERSION=8.2.35
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.35.tar.xz.asc
# Sat, 24 Oct 2026 16:59:15 GMT
ENV PHP_SHA256=5737b98601fe5ab1b8c5db0c82ed3158acb9283ed3081ffe2faffb9ac81455e6
# Sun, 25 Oct 2026 16:54:13 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Sun, 25 Oct 2026 16:54:13 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Sun, 25 Oct 2026 18:38:47 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Sun, 25 Oct 2026 18:38:47 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Sun, 25 Oct 2026 18:38:52 GMT
RUN docker-php-ext-enable opcache # buildkit
# Sun, 25 Oct 2026 18:38:56 GMT
RUN docker-php-ext-enable sodium # buildkit
# Sun, 25 Oct 2026 18:38:56 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Sun, 25 Oct 2026 18:38:57 GMT
WORKDIR /var/www/html
# Sun, 25 Oct 2026 18:38:57 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Sun, 25 Oct 2026 18:38:57 GMT
STOPSIGNAL SIGQUIT
# Sun, 25 Oct 2026 18:38:57 GMT
EXPOSE map[9000/tcp:{}]
# Sun, 25 Oct 2026 18:38:57 GMT
CMD ["php-fpm"]
# Thu, 29 Oct 2026 07:47:02 GMT
LABEL maintainer=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Thu, 29 Oct 2026 07:47:02 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Thu, 29 Oct 2026 07:47:02 GMT
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick 		zstd 	; # buildkit
# Thu, 29 Oct 2026 08:14:35 GMT
RUN set -ex; 		apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 	; 		docker-php-ext-configure gd 		--with-freetype 		--with-jpeg 		--with-webp 	; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip 	; 	pecl install imagick-3.8.0; 	docker-php-ext-enable imagick; 	rm -r /tmp/pear; 		out="$(php -r 'exit(0);')"; 	[ -z "$out" ]; 	err="$(php -r 'exit(0);' 3>&1 1>&2 2>&3)"; 	[ -z "$err" ]; 		extDir="$(php -r 'echo ini_get("extension_dir");')"; 	[ -d "$extDir" ]; 		pecl install APCu-5.1.26; 	pecl install memcached-3.3.0; 	pecl install redis-6.2.0; 		docker-php-ext-enable 		apcu 		memcached 		redis 	; 	rm -r /tmp/pear; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps; 		! { ldd "$extDir"/*.so | grep 'not found'; }; 	err="$(php --version 3>&1 1>&2 2>&3)"; 	[ -z "$err" ] # buildkit
# Thu, 29 Oct 2026 08:14:40 GMT
RUN set -eux; 	docker-php-ext-enable opcache; 	{ 		echo 'opcache.memory_consumption=128'; 		echo 'opcache.interned_strings_buffer=8'; 		echo 'opcache.max_accelerated_files=4000'; 		echo 'opcache.revalidate_freq=2'; 	} > /usr/local/etc/php/conf.d/opcache-recommended.ini # buildkit
# Thu, 29 Oct 2026 08:14:40 GMT
RUN { 		echo 'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR'; 		echo 'display_errors = Off'; 		echo 'display_startup_errors = Off'; 		echo 'log_errors = On'; 		echo 'error_log = /dev/stderr'; 		echo 'log_errors_max_len = 1024'; 		echo 'ignore_repeated_errors = On'; 		echo 'ignore_repeated_source = Off'; 		echo 'html_errors = Off'; 	} > /usr/local/etc/php/conf.d/error-logging.ini # buildkit
# Thu, 29 Oct 2026 08:14:40 GMT
VOLUME [/var/www/html]
# Thu, 29 Oct 2026 08:14:40 GMT
ENV JOOMLA_VERSION=5.4.10
# Thu, 29 Oct 2026 08:14:40 GMT
ENV JOOMLA_SHA512=31a29996d6234aa8d73384abd9ad91a1b7865cef79a17e747c389164ecf5f7c47deefcb38cd18ebf57eb409d10f531152c390caf7da50e6ad403acc32c791832
# Thu, 29 Oct 2026 08:14:54 GMT
RUN set -ex; 	curl -o joomla.tar.zst -SL https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst; 	echo "$JOOMLA_SHA512 *joomla.tar.zst" | sha512sum -c -; 	mkdir /usr/src/joomla; 	tar --zstd -xf joomla.tar.zst -C /usr/src/joomla; 	rm joomla.tar.zst; 	chown -R www-data:www-data /usr/src/joomla # buildkit
# Thu, 29 Oct 2026 08:14:55 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Thu, 29 Oct 2026 08:14:55 GMT
COPY makedb.php /makedb.php # buildkit
# Thu, 29 Oct 2026 08:14:55 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Thu, 29 Oct 2026 08:14:55 GMT
CMD ["php-fpm"]
```

-	Layers:
	-	`sha256:d1f03d57b9e445bf2f081d3fa147f8cb25fb9947e846cfe04bf02b18e5d16d0b`  
		Last Modified: Fri, 23 Oct 2026 04:54:10 GMT  
		Size: 3.6 MB (3580647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c78eff1dba649354d5f1624680b39758fd75d4c2f426fb2d4e2be86e1ad12e27`  
		Last Modified: Sat, 24 Oct 2026 18:03:49 GMT  
		Size: 3.6 MB (3637070 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:adff7d7e828c2b89fff33664584cc15a414f868fa8f6880adb903e1b1ee78be6`  
		Last Modified: Sat, 24 Oct 2026 18:03:48 GMT  
		Size: 932.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ffc140b5c63bfa44ee1e29819cfa6b34b26660b67cda72d06898efd07d37316`  
		Last Modified: Sat, 24 Oct 2026 18:03:48 GMT  
		Size: 223.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aae64206ca35fe28d1cd6ef90d6465e7b910aa3653ac80c6d14b879c91305fa`  
		Last Modified: Sun, 25 Oct 2026 17:46:13 GMT  
		Size: 12.2 MB (12239471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45465ed1f42398b5f7e66d62531ca771013442635566a6bbc7b28844d4a44aa6`  
		Last Modified: Sun, 25 Oct 2026 17:46:09 GMT  
		Size: 495.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0c12e4bb96b6b2cf36bde224e48ec3851ac6a8c2c7759ae4b5eb8f5d80bd389`  
		Last Modified: Sun, 25 Oct 2026 18:39:57 GMT  
		Size: 12.4 MB (12425381 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30ab5b1b29e10f3249149e0c29bed02b37ec573b412504779aeca24bcd0345cb`  
		Last Modified: Sun, 25 Oct 2026 18:39:55 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:548ea87808b22d4b390fe3038401880ba8453ce5baed076d3163ec5791fb6c3b`  
		Last Modified: Sun, 25 Oct 2026 18:39:56 GMT  
		Size: 22.2 KB (22188 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:46120fab5d4a251d58b68820ee6db894b8e256e2d47bd0dbf4e22cdd65cde95e`  
		Last Modified: Sun, 25 Oct 2026 18:39:55 GMT  
		Size: 22.2 KB (22204 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c6faee47f6433062574397f552d3eff7f5382d41bd9966361a09a9292ae8e04`  
		Last Modified: Sun, 25 Oct 2026 18:39:57 GMT  
		Size: 9.3 KB (9253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8dafed7f1059e96df16dc5c3e1b44aac0122034d08d31b99447e29f8f8ad133d`  
		Last Modified: Thu, 29 Oct 2026 08:16:08 GMT  
		Size: 32.4 MB (32413256 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b289e77b9f38c69ff4c74dce59a22dd13595b725660c388edaafb6d1edb5c861`  
		Last Modified: Thu, 29 Oct 2026 08:16:00 GMT  
		Size: 7.2 MB (7225060 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f91816e6cdd483b114d4e08c4229bfd16dab159cee6b61eeb5a1b64d8ff7a8d`  
		Last Modified: Thu, 29 Oct 2026 08:15:58 GMT  
		Size: 72.1 KB (72104 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6746c851d075a21a491753580f5ec113f9e682cdc15284e7d6b7faa82c15cbdf`  
		Last Modified: Thu, 29 Oct 2026 08:15:58 GMT  
		Size: 392.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3e27423a0259047cddd919b6f8b1b099a8375e42db39a35d38f22e883de0b4eb`  
		Last Modified: Thu, 29 Oct 2026 08:16:08 GMT  
		Size: 27.7 MB (27679033 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afaa84a49392a8a3d87d835876d46669540e25834f49aa782c3e4d51181763cf`  
		Last Modified: Thu, 29 Oct 2026 08:16:00 GMT  
		Size: 4.1 KB (4090 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d8fd91010e8c025659134fdeb742df391ba964871167ec30e319cde8b3863fd5`  
		Last Modified: Thu, 29 Oct 2026 08:16:02 GMT  
		Size: 1.1 KB (1071 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.2-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:694da3366f627b0125e3dce623df8414b930b222173bd9e4d52df456a69dfa07
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **45.8 KB (45770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5be7b7ceede0300dc983bd2846f135d091a471eca63aef01c3b73ad8c2da39b5`

```dockerfile
```

-	Layers:
	-	`sha256:cd7156d66d214905f32cc2a395b62bc18ac5b2b0ac606c6aaf564a96d7644f48`  
		Last Modified: Thu, 29 Oct 2026 08:15:58 GMT  
		Size: 45.8 KB (45770 bytes)  
		MIME: application/vnd.in-toto+json

### `joomla:5-php8.2-fpm-alpine` - linux; s390x

```console
$ docker pull joomla@sha256:223db45df232bc5ede6fef6443cd8fe43bb45fcb4b8d3f6e742b1544f61d7b41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **101.0 MB (100993986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1702dd0de5b9820044293a1355a1fcab30c8e5295d6eb7ad0deb1d3a09849be6`
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
ENV GPG_KEYS=39B641343D8C104B2B146DC3F9C39DC0B9698544 E60913E4DF209907D8E30D96659A97C9CF2A795A 1198C0117593497A5EC5C199286AF1F9897469DC
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHP_VERSION=8.2.35
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHP_URL=https://www.php.net/distributions/php-8.2.35.tar.xz PHP_ASC_URL=https://www.php.net/distributions/php-8.2.35.tar.xz.asc
# Thu, 05 Nov 2026 18:18:58 GMT
ENV PHP_SHA256=5737b98601fe5ab1b8c5db0c82ed3158acb9283ed3081ffe2faffb9ac81455e6
# Thu, 05 Nov 2026 18:47:02 GMT
RUN set -eux; 		apk add --no-cache --virtual .fetch-deps gnupg; 		mkdir -p /usr/src; 	cd /usr/src; 		curl -fsSL -o php.tar.xz "$PHP_URL"; 		if [ -n "$PHP_SHA256" ]; then 		echo "$PHP_SHA256 *php.tar.xz" | sha256sum -c -; 	fi; 		curl -fsSL -o php.tar.xz.asc "$PHP_ASC_URL"; 	export GNUPGHOME="$(mktemp -d)"; 	for key in $GPG_KEYS; do 		gpg --batch --keyserver keyserver.ubuntu.com --recv-keys "$key"; 	done; 	gpg --batch --verify php.tar.xz.asc php.tar.xz; 	gpgconf --kill all; 	rm -rf "$GNUPGHOME"; 		apk del --no-network .fetch-deps # buildkit
# Thu, 05 Nov 2026 18:47:03 GMT
COPY docker-php-source /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:51:41 GMT
RUN set -eux; 	apk add --no-cache --virtual .build-deps 		$PHPIZE_DEPS 		argon2-dev 		coreutils 		curl-dev 		gnu-libiconv-dev 		libsodium-dev 		libxml2-dev 		linux-headers 		oniguruma-dev 		openssl-dev 		readline-dev 		sqlite-dev 	; 		rm -vf /usr/include/iconv.h; 		export 		CFLAGS="$PHP_CFLAGS" 		CPPFLAGS="$PHP_CPPFLAGS" 		LDFLAGS="$PHP_LDFLAGS" 		PHP_BUILD_PROVIDER='https://github.com/docker-library/php' 		PHP_UNAME='Linux - Docker' 	; 	docker-php-source extract; 	cd /usr/src/php; 	gnuArch="$(dpkg-architecture --query DEB_BUILD_GNU_TYPE)"; 	case "$gnuArch" in 		'i686-linux-'*) 			export 				CFLAGS="$CFLAGS -msse2 -mfpmath=sse" 				CPPFLAGS="$CPPFLAGS -msse2 -mfpmath=sse" 			; 			;; 	esac; 	test "$PHP_INI_DIR" != "${PHP_INI_DIR%/php}"; 	./configure 		--build="$gnuArch" 		--sysconfdir="${PHP_INI_DIR%/php}" 		--with-config-file-path="$PHP_INI_DIR" 		--with-config-file-scan-dir="$PHP_INI_DIR/conf.d" 				--enable-option-checking=fatal 				--with-mhash 				--with-pic 				--enable-mbstring 		--enable-mysqlnd 		--with-password-argon2 		--with-sodium=shared 		--with-pdo-sqlite=/usr 		--with-sqlite3=/usr 				--with-curl 		--with-iconv=/usr 		--with-openssl 		--with-readline 		--with-zlib 				--disable-phpdbg 				--with-pear 				$(test "$gnuArch" = 'riscv64-linux-musl' && echo '--without-pcre-jit') 				--disable-cgi 				--enable-fpm 		--with-fpm-user=www-data 		--with-fpm-group=www-data 	; 	make -j "$(nproc)"; 	find -type f -name '*.a' -delete; 	make install; 	find 		/usr/local 		-type f 		-perm '/0111' 		-exec sh -euxc ' 			strip --strip-all "$@" || : 		' -- '{}' + 	; 	make clean; 		cp -v php.ini-* "$PHP_INI_DIR/"; 		cd /; 	docker-php-source delete; 		runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive /usr/local 			| tr ',' '\n' 			| sort -u 			| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 	)"; 	apk add --no-cache $runDeps; 		apk del --no-network .build-deps; 		pecl update-channels; 	rm -rf /tmp/pear ~/.pearrc; 		php --version # buildkit
# Thu, 05 Nov 2026 18:51:41 GMT
COPY docker-php-ext-* docker-php-entrypoint /usr/local/bin/ # buildkit
# Thu, 05 Nov 2026 18:51:42 GMT
RUN docker-php-ext-enable opcache # buildkit
# Thu, 05 Nov 2026 18:51:44 GMT
RUN docker-php-ext-enable sodium # buildkit
# Thu, 05 Nov 2026 18:51:44 GMT
ENTRYPOINT ["docker-php-entrypoint"]
# Thu, 05 Nov 2026 18:51:44 GMT
WORKDIR /var/www/html
# Thu, 05 Nov 2026 18:51:45 GMT
RUN set -eux; 	cd "${PHP_INI_DIR%/php}"; 		cp -v php-fpm.conf.default php-fpm.conf; 	cp -v php-fpm.d/www.conf.default php-fpm.d/www.conf; 		grep -E '^listen = 127.0.0.1:9000' php-fpm.d/www.conf; 	sed -ri 's/^(listen = 127.0.0.1:9000)/;\1/' php-fpm.d/www.conf; 	grep -E '^;listen = 127.0.0.1:9000' php-fpm.d/www.conf; 		{ 		echo '[global]'; 		echo 'error_log = /proc/self/fd/2'; 		echo; echo '; https://github.com/docker-library/php/pull/725#issuecomment-443540114'; echo 'log_limit = 8192'; 		echo; 		echo '[www]'; 		echo '; php-fpm closes STDOUT on startup, so sending logs to /proc/self/fd/1 does not work.'; 		echo '; https://bugs.php.net/bug.php?id=73886'; 		echo 'access.log = /proc/self/fd/2'; 		echo; 		echo 'clear_env = no'; 		echo; 		echo '; Ensure worker stdout and stderr are sent to the main error log.'; 		echo 'catch_workers_output = yes'; 		echo 'decorate_workers_output = no'; 		echo; 		echo '; default listen address for easy override in later php-fpm.d/*.conf files'; 		echo 'listen = 9000'; 	} | tee php-fpm.d/docker.conf; 	{ 		echo '[global]'; 		echo 'daemonize = no'; 		echo; 		echo '; the [www] ini section below is for backwards compatibility and will be removed in 8.6+'; 		echo '[www]'; 	} | tee php-fpm.d/zz-docker.conf; 	mkdir -p "$PHP_INI_DIR/conf.d"; 	{ 		echo '; https://github.com/docker-library/php/issues/878#issuecomment-938595965'; 		echo 'fastcgi.logging = Off'; 	} > "$PHP_INI_DIR/conf.d/docker-fpm.ini" # buildkit
# Thu, 05 Nov 2026 18:51:45 GMT
STOPSIGNAL SIGQUIT
# Thu, 05 Nov 2026 18:51:45 GMT
EXPOSE map[9000/tcp:{}]
# Thu, 05 Nov 2026 18:51:45 GMT
CMD ["php-fpm"]
# Sat, 14 Nov 2026 00:41:52 GMT
LABEL org.opencontainers.image.authors=Llewellyn van der Merwe <llewellyn.van-der-merwe@community.joomla.org> (@Llewellynvdm), Harald Leithner <harald.leithner@community.joomla.org> (@HLeithner)
# Sat, 14 Nov 2026 00:41:52 GMT
ENV JOOMLA_INSTALLATION_DISABLE_LOCALHOST_CHECK=1
# Sat, 14 Nov 2026 00:41:52 GMT
ARG PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar
# Sat, 14 Nov 2026 00:41:52 GMT
ARG PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
# Sat, 14 Nov 2026 00:41:52 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	apk add --no-cache 		bash 		ghostscript 		imagemagick; 	apk add --no-cache --virtual .build-deps $PHPIZE_DEPS 		autoconf 		bzip2-dev 		gmp-dev 		icu-dev 		freetype-dev 		imagemagick-dev 		libjpeg-turbo-dev 		libmemcached-dev 		libpng-dev 		libwebp-dev 		libzip-dev 		openldap-dev 		pcre-dev 		postgresql-dev 		automake 		libtool 		linux-headers 		zlib-dev 		unzip; 	docker-php-ext-configure gd --with-freetype --with-jpeg --with-webp; 	docker-php-ext-configure ldap; 	docker-php-ext-install -j "$(nproc)" 		bz2 		bcmath 		exif 		gd 		gmp 		intl 		ldap 		mysqli 		pdo_mysql 		pdo_pgsql 		pgsql 		zip; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$PIE_URL" --output /tmp/pie; 	printf '%s *%s\n' "$PIE_SHA256" /tmp/pie | sha256sum -c -; 	chmod 0755 /tmp/pie; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" apcu/apcu:5.1.26; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" imagick/imagick:3.8.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" php-memcached/php-memcached:3.3.0; 	PIE_WORKING_DIRECTORY=/tmp/joomla-pie /tmp/pie install --no-interaction --no-cache --make-parallel-jobs="$(nproc)" phpredis/phpredis:6.2.0; 	docker-php-ext-enable 		opcache; 	rm -rf /tmp/pie /tmp/joomla-pie /tmp/joomla-npm /tmp/pear /root/.cache; 	extDir="$(php-config --extension-dir)"; 	runDeps="$( 		scanelf --needed --nobanner --format '%n#p' --recursive "$extDir" 		| tr ',' '\n' 		| sort -u 		| awk 'system("[ -e /usr/local/lib/" $1 " ]") == 0 { next } { print "so:" $1 }' 		)"; 	apk add --no-network --virtual .joomla-phpexts-rundeps $runDeps; 	apk del --no-network .build-deps # buildkit
# Sat, 14 Nov 2026 00:41:53 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7
RUN set -eux; 	mkdir -p 		/usr/local/etc/php 		/usr/local/etc/php/conf.d; 	printf '%s\n' 		'error_reporting = E_ERROR | E_WARNING | E_PARSE | E_CORE_ERROR | E_CORE_WARNING | E_COMPILE_ERROR | E_COMPILE_WARNING | E_RECOVERABLE_ERROR' 		'display_errors = Off' 		'display_startup_errors = Off' 		'log_errors = On' 		'error_log = /dev/stderr' 		'ignore_repeated_errors = On' 		'ignore_repeated_source = Off' 		'html_errors = Off' 		> /usr/local/etc/php/conf.d/error-logging.ini; 	printf '%s\n' 		'expose_php = Off' 		> /usr/local/etc/php/conf.d/expose-php.ini; 	printf '%s\n' 		opcache.memory_consumption=128 		opcache.interned_strings_buffer=8 		opcache.max_accelerated_files=4000 		opcache.revalidate_freq=2 		> /usr/local/etc/php/conf.d/opcache-recommended.ini; 	printf '%s\n' 		'; Opt-in PHP hardening.' 		'; Retained outside conf.d; the entrypoint copies it when JOOMLA_SECURITY_HARDENED=true.' 		'expose_php = Off' 		'session.cookie_httponly = On' 		'session.cookie_secure = On' 		'session.use_strict_mode = On' 		'session.use_cookies = On' 		'session.use_only_cookies = On' 		'session.cookie_samesite = Lax' 		'allow_url_include = Off' 		'zend.exception_ignore_args = On' 		'session.upload_progress.enabled = Off' 		> /usr/local/etc/php/joomla-hardening.ini; 	if ! php --version 2> /tmp/php-startup-errors.txt; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	if [ -s /tmp/php-startup-errors.txt ]; then cat /tmp/php-startup-errors.txt >&2; exit 1; fi; 	php --ri 'Zend OPcache' > /dev/null; 	php --ri apcu > /dev/null; 	php --ri bcmath > /dev/null; 	php --ri bz2 > /dev/null; 	php --ri exif > /dev/null; 	php --ri gd > /dev/null; 	php --ri gmp > /dev/null; 	php --ri imagick > /dev/null; 	php --ri intl > /dev/null; 	php --ri ldap > /dev/null; 	php --ri memcached > /dev/null; 	php --ri mysqli > /dev/null; 	php --ri pdo_mysql > /dev/null; 	php --ri pdo_pgsql > /dev/null; 	php --ri pgsql > /dev/null; 	php --ri redis > /dev/null; 	php --ri zip > /dev/null; 	rm -f /tmp/php-startup-errors.txt; 	php-fpm -t # buildkit
# Sat, 14 Nov 2026 00:41:53 GMT
ENV JOOMLA_VERSION=5.4.10
# Sat, 14 Nov 2026 00:41:53 GMT
ARG JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
# Sat, 14 Nov 2026 00:41:53 GMT
ENV JOOMLA_SHA512=31a29996d6234aa8d73384abd9ad91a1b7865cef79a17e747c389164ecf5f7c47deefcb38cd18ebf57eb409d10f531152c390caf7da50e6ad403acc32c791832
# Sat, 14 Nov 2026 00:41:55 GMT
# ARGS: PIE_URL=https://github.com/php/pie/releases/download/1.5.2/pie.phar PIE_SHA256=fe70c59738cf56ec00a818cf9cb9593da171aac86f5f1f859995b8839dfd2cc7 JOOMLA_URL=https://github.com/joomla/joomla-cms/releases/download/5.4.10/Joomla_5.4.10-Stable-Full_Package.tar.zst
RUN set -eux; 	apk add --no-cache --virtual .joomla-extract-deps 		zstd; 	curl --fail --show-error --silent --location 		--retry 3 --retry-all-errors --connect-timeout 15 --max-time 300 		--proto '=https' --proto-redir '=https' 		"$JOOMLA_URL" --output /tmp/joomla.tar.zst; 	printf '%s *%s\n' "$JOOMLA_SHA512" /tmp/joomla.tar.zst | sha512sum -c -; 	mkdir -p /usr/src/joomla; 	tar --zstd -xf /tmp/joomla.tar.zst -C /usr/src/joomla --no-same-owner; 	test -s /usr/src/joomla/index.php; 	test -s /usr/src/joomla/cli/joomla.php; 	chown -R www-data:www-data /usr/src/joomla; 	rm -f /tmp/joomla.tar.zst; 	apk del --no-network .joomla-extract-deps # buildkit
# Sat, 14 Nov 2026 00:41:55 GMT
VOLUME [/var/www/html]
# Sat, 14 Nov 2026 00:41:56 GMT
WORKDIR /var/www/html
# Sat, 14 Nov 2026 00:41:56 GMT
COPY docker-entrypoint.sh /entrypoint.sh # buildkit
# Sat, 14 Nov 2026 00:41:56 GMT
COPY makedb.php /makedb.php # buildkit
# Sat, 14 Nov 2026 00:41:56 GMT
ENTRYPOINT ["/entrypoint.sh"]
# Sat, 14 Nov 2026 00:41:56 GMT
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
	-	`sha256:40eed50893f9069cca4f92a71d3eb47b54cf2a2c8e8bd50f563538dfc9407f59`  
		Last Modified: Thu, 05 Nov 2026 18:52:02 GMT  
		Size: 12.2 MB (12239441 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c0bb533e59c95ba8c9f8e64fab19578ab3a59e97db31ad57dcc95fea820bf65d`  
		Last Modified: Thu, 05 Nov 2026 18:52:01 GMT  
		Size: 491.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0f368de0a4602f2495c90700b4141a786c8e91d719cb8de04bdfaf8fc38bc3f0`  
		Last Modified: Thu, 05 Nov 2026 18:52:02 GMT  
		Size: 13.1 MB (13087669 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d18622eb28ff16dbd21d057a7040cb674f5d452afa284fe259c10d9a8698797`  
		Last Modified: Thu, 05 Nov 2026 18:52:02 GMT  
		Size: 2.5 KB (2452 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aad7203562a9650a2e3fd0395a03a17b2a9eef9f9f74304b46a651aff0095ed`  
		Last Modified: Thu, 05 Nov 2026 18:52:02 GMT  
		Size: 22.1 KB (22129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:989d9365aec3a9ecfd8e8a0687e60bf12f6e29c702c5cf25193e1a159f4cb61e`  
		Last Modified: Thu, 05 Nov 2026 18:52:03 GMT  
		Size: 22.2 KB (22153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:765eca62f2991f5c2c916927c45b1ec5ebd9969c965a96eed7348baaaa20e11c`  
		Last Modified: Thu, 05 Nov 2026 18:52:03 GMT  
		Size: 9.2 KB (9247 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48e27fe67c710de394726614e9c30aafcbd644d36e82e5369940d8373bf83f7e`  
		Last Modified: Sat, 14 Nov 2026 00:42:12 GMT  
		Size: 40.4 MB (40437118 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6829e2a4fb14115991d3e0c15e4db4e5f94e70314a07af7241d9cad2535ab36`  
		Last Modified: Sat, 14 Nov 2026 00:42:10 GMT  
		Size: 750.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c68c8fcc2ac4c40e18655e02d871654b7673bd27cb22a29747a8e5ebacc04e5b`  
		Last Modified: Sat, 14 Nov 2026 00:42:12 GMT  
		Size: 27.8 MB (27752879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a94daa5bd69d532611945890b6f45c3b3c38d7f4763b698d3448a052da54024`  
		Last Modified: Sat, 14 Nov 2026 00:42:10 GMT  
		Size: 5.5 KB (5516 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0a28e151531aaea27095ee76a93d7ee9dc517bd996b72476af39826f085008c`  
		Last Modified: Sat, 14 Nov 2026 00:42:11 GMT  
		Size: 1.3 KB (1268 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `joomla:5-php8.2-fpm-alpine` - unknown; unknown

```console
$ docker pull joomla@sha256:8dc053af1dfbbd8a2ed123093225a1751828a93c9918dc0b51ce22f319f3eb1a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **46.2 KB (46177 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6fd25927f1eab01a04b7a8592c9bc072d39504712c560e12763ec23c2fdae915`

```dockerfile
```

-	Layers:
	-	`sha256:8e8350edf08bc66e96c2d215d12541fcda3950cbe371943b01a7578591864cfe`  
		Last Modified: Sat, 14 Nov 2026 00:42:10 GMT  
		Size: 46.2 KB (46177 bytes)  
		MIME: application/vnd.in-toto+json
